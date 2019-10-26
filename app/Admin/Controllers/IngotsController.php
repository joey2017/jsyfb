<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Ingots;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class IngotsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '法宝';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Ingots);

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('quantity', trans('admin.quantity'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return Ingots::getStatusName($status);
        })->label(['warning', 'primary']);
        //$grid->column('expire_time', trans('admin.expire_time'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->like('user.nickname', trans('admin.nickname'));
        });

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
        $show = new Show(Ingots::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('quantity', trans('admin.quantity'));
        //$show->field('expire_time', trans('admin.expire_time'));
        $show->field('status', trans('admin.status'))->using(Ingots::STATUSES);
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
        $form = new Form(new Ingots);

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
        $form->number('quantity', trans('admin.quantity'))->required();
        //$form->datetime('expire_time', trans('admin.expire_time'))->default(date('Y-m-d H:i:s'));

        $user_id  = null;
        $quantity = null;
        $form->saving(function (Form $form) {
            if (Ingots::findOrFail($form->user_id)) {
                admin_error('新增失败', '该用户法宝数据已存在，无需重复添加');
                return back();
            }
            return;
        });
        $form->saved(function (Form $form) {
            $user_id  = $form->model()->user_id;
            $quantity = $form->model()->quantity;
            User::where('id', $user_id)->first()->update(['ingots' => $quantity]);
            //todo 发送消息给用户
        });

        /*
        $form->deleted(function () use ($user_id, $quantity) {
            return User::findOrFail($user_id)->update(['ingots' => $quantity]);
        });
        */
        return $form;
    }
}
