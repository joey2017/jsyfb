<?php

namespace App\Admin\Controllers;

use App\Models\UserSign;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class UserSignController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '签到';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new UserSign);

        $grid->column('id', __('Id'));
        //$grid->user()->username(trans('admin.username'));
        $grid->column('user.username',trans('admin.username'));
        $grid->column('sign_count', trans('admin.sign_count'));
        $grid->column('count', trans('admin.count'));
        $grid->column('last_sign_time', trans('admin.last_sign_time'));
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
        $show = new Show(UserSign::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('sign_count', trans('admin.sign_count'));
        $show->field('count', trans('admin.count'));
        $show->field('last_sign_time', trans('admin.last_sign_time'));
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
        $form = new Form(new UserSign);

        $form->number('user_id', trans('admin.user_id'));
        $form->number('sign_count', trans('admin.user_id'));
        $form->number('count', trans('admin.user_id'));
        $form->datetime('last_sign_time', trans('admin.user_id'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
