<?php

namespace App\Admin\Controllers;

use App\BusinessCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BusinessCategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '业务分类';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BusinessCategory);

        $grid->column('id', __('Id'));
        $grid->column('title', trans('admin.title'));
        $grid->column('descr', trans('admin.descr'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return BusinessCategory::$_statuses[$status];
        })->label(['warning','primary']);
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
        $show = new Show(BusinessCategory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', trans('admin.title'));
        $show->field('descr', trans('admin.descr'));
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
        $form = new Form(new BusinessCategory);

        $form->text('title', trans('admin.title'));
        $form->text('descr', trans('admin.descr'));

        return $form;
    }
}
