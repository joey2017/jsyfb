<?php

namespace App\Admin\Controllers;

use App\Laywer;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LaywerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '律师';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Laywer);

        $grid->column('id', __('Id'));
        $grid->column('name', trans('admin.name'));
        $grid->column('class_id', trans('admin.class_id'));
        $grid->column('level', trans('admin.level'));
        $grid->column('title', trans('admin.title'));
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
        $show = new Show(Laywer::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('class_id', trans('admin.class_id'));
        $show->field('level', trans('admin.level'));
        $show->field('title', trans('admin.title'));
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
        $form = new Form(new Laywer);

        $form->text('name', trans('admin.name'));
        $form->number('class_id', trans('admin.class_id'));
        $form->number('level', trans('admin.level'));
        $form->text('title', trans('admin.title'));
        $form->switch('status', trans('admin.status'))->default(1);
        $form->switch('is_deleted', trans('admin.is_deleted'));

        return $form;
    }
}
