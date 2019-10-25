<?php

namespace App\Admin\Controllers;

use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class UserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '用户';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User);

        $grid->column('id', __('Id'));
        $grid->column('username', trans('admin.username'));
        $grid->column('nickname', trans('admin.nickname'));
        $grid->column('email', trans('admin.email'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('user.username', trans('admin.inviter'));
        $grid->column('last_login_time', trans('admin.last_login_time'));
        $grid->column('is_verified', trans('admin.is_verified'))->using(['未认证','已认证'])->label([
            0 => 'info',
            1 => 'success',
        ]);
        $grid->column('ingots', trans('admin.ingots'));
        $grid->column('invitation_code', trans('admin.invitation_code'));
        $grid->column('is_vip', trans('admin.is_vip'))->using(['否','是'])->label([
            0 => 'info',
            1 => 'success',
        ]);
        $grid->column('status', trans('admin.status'))->display(function($status){
            return User::getStatusName($status);
        })->label(['warning','primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->disableCreateButton();

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
        $show = new Show(User::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('username', trans('admin.username'));
        $show->field('nickname', trans('admin.nickname'));
        $show->field('email', trans('admin.email'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('user.username', trans('admin.username'));
        $show->field('descr', trans('admin.descr'));
        $show->field('last_login_ip', trans('admin.last_login_ip'));
        $show->field('last_login_time', trans('admin.last_login_time'));
        $show->field('is_verified', trans('admin.is_verified'));
        $show->field('ingots', trans('admin.ingots'));
        $show->field('invitation_code', trans('admin.invitation_code'));
        $show->field('is_vip', trans('admin.is_vip'));
        $show->field('status', trans('admin.status'))->using(User::STATUSES);
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
        $form = new Form(new User);

        $form->text('username', trans('admin.username'));
        $form->password('password', trans('admin.password'));
        $form->text('nickname', trans('admin.nickname'));
        $form->image('avatar', trans('admin.avatar'));
        $form->email('email', trans('admin.email'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->number('inviter_id', trans('admin.inviter_id'));
        $form->text('descr', trans('admin.descr'));
        $form->text('last_login_ip', trans('admin.last_login_ip'));
        $form->datetime('last_login_time', trans('admin.last_login_time'))->default(date('Y-m-d H:i:s'));
        $form->switch('is_verified', trans('admin.is_verified'));
        $form->number('ingots', trans('admin.ingots'));
        $form->text('invitation_code', trans('admin.invitation_code'));
        $form->switch('is_vip', trans('admin.is_vip'));

        return $form;
    }
}
