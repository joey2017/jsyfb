<?php

namespace App\Admin\Controllers;

use \App\Ingots;
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
    protected $title = '元宝';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Ingots);

        $grid->column('id', __('Id'));
        $grid->column('user_id', trans('admin.user_id'));
        $grid->column('quantity', trans('admin.quantity'));
        $grid->column('status', trans('admin.status'));
        $grid->column('is_deleted', trans('admin.is_deleted'));
        $grid->column('expire_time', trans('admin.expire_time'));
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
        $show = new Show(Ingots::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('quantity', __('Quantity'));
        $show->field('status', __('Status'));
        $show->field('is_deleted', __('Is deleted'));
        $show->field('expire_time', __('Expire time'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

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

        $form->number('user_id', __('User id'));
        $form->number('quantity', __('Quantity'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));
        $form->datetime('expire_time', __('Expire time'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
