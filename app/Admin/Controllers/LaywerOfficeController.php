<?php

namespace App\Admin\Controllers;

use App\Models\LaywerOffice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LaywerOfficeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '律师事务所';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new LaywerOffice);

        $grid->column('id', __('Id'));
        $grid->column('name', trans('admin.name'));
        $grid->column('title', trans('admin.user_title'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('telephone', trans('admin.telephone'));
        $grid->column('email', trans('admin.email'));
        //$grid->column('qq','qq');
        //$grid->column('wechat', trans('admin.wechat'));
        $grid->column('company', trans('admin.company'));
        $grid->column('cate_id', trans('admin.cate_id'));
        //$grid->column('descr', trans('admin.descr'));
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
        $show = new Show(LaywerOffice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('title', trans('admin.user_title'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('telephone', trans('admin.telephone'));
        $show->field('email', trans('admin.email'));
        //$show->field('qq', trans('admin.qq'));
        //$show->field('wechat', trans('admin.wechat'));
        $show->field('company', trans('admin.company'));
        $show->field('cate_id', trans('admin.cate_id'));
        //$show->field('descr', trans('admin.descr'));
        $show->field('status', trans('admin.status'));
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
        $form = new Form(new LaywerOffice);

        $form->text('name', trans('admin.name'));
        $form->text('title', trans('admin.user_title'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->text('telephone', trans('admin.telephone'));
        //$form->email('email', trans('admin.email'));
        //$form->text('qq', trans('admin.qq'));
        //$form->text('wechat', trans('admin.wechat'));
        $form->text('company', trans('admin.company'));
        $form->number('cate_id', trans('admin.cate_id'));
        $form->text('descr', trans('admin.descr'));

        return $form;
    }
}
