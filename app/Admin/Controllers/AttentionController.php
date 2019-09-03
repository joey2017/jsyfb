<?php

namespace App\Admin\Controllers;

use App\Attention;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AttentionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '关注';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Attention);

        $grid->column('id', __('Id'));
        $grid->column('user_id', trans('admin.user_id'));
        $grid->column('role_id', trans('admin.role_id'));
        $grid->column('role', trans('admin.role'));
        $grid->column('status', trans('admin.status'));
        $grid->column('is_deleted', trans('admin.is_deleted'));
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
        $show = new Show(Attention::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('role_id', trans('admin.role_id'));
        $show->field('role', trans('admin.role'));
        $show->field('status', trans('admin.status'));
        $show->field('is_deleted', trans('admin.is_deleted'));
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
        $form = new Form(new Attention);

        $form->number('user_id', trans('admin.user_id'));
        $form->number('role_id', trans('admin.role_id'));
        $form->text('role', trans('admin.role'));
        $form->switch('status', trans('admin.status'))->default(1);
        $form->switch('is_deleted', trans('admin.is_deleted'));

        return $form;
    }
}
