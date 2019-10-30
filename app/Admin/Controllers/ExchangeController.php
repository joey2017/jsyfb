<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Exchange;
use App\Models\Goods;
use App\Models\IngotsLog;
use App\Models\User;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Doctrine\DBAL\Driver\PDOException;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ExchangeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '商品兑换';

    /**
     * @var IngotsService
     */
    protected $ingots;

    /**
     * @var NoticeService
     */
    protected $notice;

    /**
     * ExchangeController constructor.
     * @param IngotsService $ingotsService
     * @param NoticeService $noticeService
     */
    public function __construct(IngotsService $ingotsService, NoticeService $noticeService)
    {
        $this->ingots = $ingotsService;
        $this->notice = $noticeService;
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Exchange);

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('goods.goods_name', trans('admin.goods_name'));
        $grid->column('receiver', trans('admin.receiver'));
        $grid->column('receiver_mobile', trans('admin.receiver_mobile'));
        $grid->column('address', trans('admin.address'));
        $grid->column('ingots', trans('admin.ingots'));
        $grid->column('quantity', trans('admin.quantity'));
        $grid->column('status', trans('admin.status'))->using(Exchange::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Exchange::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.nickname'))->as(function ($user_id) {
            return User::findOrFail($user_id)->nickname;
        });
        $show->field('goods_id', trans('admin.goods_name'))->as(function ($goods_id) {
            return Goods::findOrFail($goods_id)->goods_name;
        });
        $show->field('receiver', trans('admin.receiver'));
        $show->field('receiver_mobile', trans('admin.receiver_mobile'));
        $show->field('address', trans('admin.address'));
        $show->field('ingots', trans('admin.ingots'));
        $show->field('quantity', trans('admin.quantity'));
        $show->field('status', trans('admin.status'))->using(Exchange::STATUSES);
        $show->field('created_at', trans('admin.created_at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Exchange);

        if ($form->isCreating()) {
            $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
            $form->select('goods_id', trans('admin.goods_name'))->options(Goods::where('stock', '>', 0)->pluck('goods_name', 'id')->toArray())->required();
            $form->number('ingots', trans('admin.ingots'))->required();
            $form->number('quantity', trans('admin.quantity'))->required();
        } else {
            $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->readOnly();
            $form->select('goods_id', trans('admin.goods_name'))->options(Goods::where('stock', '>', 0)->pluck('goods_name', 'id')->toArray())->readOnly();
            $form->number('ingots', trans('admin.ingots'))->readonly();
            $form->number('quantity', trans('admin.quantity'))->readonly();
        }

        $form->text('receiver', trans('admin.receiver'))->required();
        $form->text('receiver_mobile', trans('admin.receiver_mobile'))->required();
        $form->text('address', trans('admin.address'))->required();

        $form->saved(function (Form $form) {
            try {
                DB::transaction(function () use ($form) {
                    //更新法宝数量
                    $this->ingots->update($form->model()->ingots, '兑换商品', IngotsLog::TYPE_DECRE, User::findOrFail($form->model()->user_id));
                    //更新库存
                    $goods = $this->updateStock($form->model()->goods_id, $form->model()->quantity);
                    //发消息
                    $this->notice->add('法宝兑换', '后台管理员【' . Admin::user()->name . '】帮您使用' . $form->model()->ingots . '个法宝兑换' . $form->model()->quantity . '件商品,该商品为' . $goods->goods_name, $form->model()->user_id, 2);
                    return true;
                });

            } catch (PDOException $exception) {
                Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage());
            }

        });

        return $form;
    }

    /**
     * @param $goods_id
     * @param $quantity
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Database\Eloquent\Model|static|static[]
     */
    protected function updateStock($goods_id, $quantity)
    {
        $goods        = Goods::findOrFail($goods_id);
        $goods->stock -= $quantity;
        $goods->save();
        return $goods;
    }
}
