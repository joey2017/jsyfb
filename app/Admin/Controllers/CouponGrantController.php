<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndUsername;
use App\Models\Coupon;
use App\Models\CouponGrant;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\MessageBag;
use Illuminate\Support\Str;

class CouponGrantController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '优惠券发放';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CouponGrant);

        $grid->column('id', __('Id'));
        $grid->column('user.username', trans('admin.username'));
        //$grid->column('coupon.name', '优惠券名称');
        $grid->column('name', '优惠券名称');
        $grid->column('num', trans('admin.num'));
        $grid->column('amount', trans('admin.amount'));
        $grid->column('condition', trans('admin.condition'));
        $grid->column('start_time', trans('admin.start_time'));
        $grid->column('end_time', trans('admin.end_time'));
        $grid->column('remark', trans('admin.remark'));
        $grid->column('status', trans('admin.status'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

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
        $show = new Show(CouponGrant::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('coupon_id', trans('admin.coupon_id'));
        $show->field('name', trans('admin.name'));
        $show->field('num', trans('admin.num'));
        $show->field('amount', trans('admin.amount'));
        $show->field('condition', trans('admin.condition'));
        $show->field('start_time', trans('admin.start_time'));
        $show->field('end_time', trans('admin.end_time'));
        $show->field('remark', trans('admin.remark'));
        $show->field('created_at', trans('admin.created_at'));
        $show->field('updated_at', trans('admin.updated_at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new CouponGrant);

        $form->select('user_id', trans('admin.username'))->options(getAllUsersIdAndUsername())->required();
        $form->select('coupon_id', trans('admin.coupon'))->options(Coupon::where([['status',1],['total_num','>','distribute']])->pluck('name','id')->toArray())->required();
        $form->text('name', trans('admin.coupon_name'))->required();
        $form->text('total_num', '剩余发放数量')->readonly()->placeholder('剩余发放数量');
        $form->number('num', '发放数量')->required();
        $form->decimal('amount', trans('admin.amount'))->required();
        $form->decimal('condition', trans('admin.condition'))->required();
        $form->datetime('start_time', trans('admin.start_time'))->required();
        $form->datetime('end_time', trans('admin.end_time'))->required();
        $form->text('remark', trans('admin.remark'));

        //忽略掉不需要保存的字段
        $form->ignore(['total_num']);

        $script = <<<EOT
$(document).on('change', ".coupon_id", function () {
    $.get("/admin/coupons/getInfo?id="+this.value, function (data) {
        $('#name').val(data.name);
        $('#total_num').val(data.total_num);
        $('#num').val(data.num);
        $('#amount').val(data.amount);
        $('#condition').val(data.condition);
    },'JSON');
});
EOT;

        //保存前回调
        $form->saving(function (Form $form) {
            //...
            $originalData = $form->model()->toArray();
            //$form->input('coupon_id');
            //request()->input('coupon_id');
            //request('coupon_id');

            $result = Coupon::findOrFail($form->input('coupon_id'))->toArray();

            if ($result['total_num'] - $result['distribute'] < 0) {

                //
                $error = new MessageBag([
                    'title'   => '不足',
                    'message' => '优惠券发放完了',
                ]);

                return back()->with(compact('error'));
            }
            if (Str::endsWith(\request()->route()->getName(),'.update')) {//编辑
                DB::transaction(function () use ($originalData) {
                    DB::table((new Coupon)->getTable())->where('id', $originalData['coupon_id'])->where('status', 1)->decrement('distribute', $originalData['num']);
                });
            }
        });

        //保存后回调
        $form->saved(function (Form $form) {
            $grantData = $form->model()->toArray();
            if (Str::endsWith(\request()->route()->getName(),'.store')) {//新增
                DB::transaction(function () use ($grantData) {
                    DB::table((new Coupon)->getTable())->where('id', $grantData['coupon_id'])->where('status', 1)->increment('distribute', $grantData['num']);
                });
            }

            if (Str::endsWith(\request()->route()->getName(),'.update')) {//编辑
                DB::transaction(function () use ($grantData) {
                    DB::table((new Coupon)->getTable())->where('id', $grantData['coupon_id'])->where('status', 1)->increment('distribute', $grantData['num']);
                });
            }
        });

        /*
        // 在表单提交前调用
        $form->submitted(function (Form $form) {
            //...

        });

        //保存前回调
        $form->saving(function (Form $form) {
            //...
            global $originalData;
            $originalData = $form->model()->toArray();
        });

        //保存后回调
        $form->saved(function (Form $form) {
            //...
            $grantData = $form->model()->toArray();

            //判断当前表单页是创建页面还是更新页面 Since v1.7.6
            if ($form->isCreating()) {//新增
                DB::transaction(function ($data) use ($grantData) {
                    DB::table(Coupon::getTable())->where('id',$data['id'])->where('status',1)->decrement('distribute',$data['num']);
                });
            }

            if ($form->isUpdating()) {//编辑
                DB::transaction(function ($data) use ($originalData) {
                    DB::table(Coupon::getTable())->where('id',$data['id'])->where('status',1)->decrement('distribute',$data['num']);
                });
            }
            //dd($form->model()->toArray());
        });

        */
        Admin::script($script);
        return $form;
    }
}
