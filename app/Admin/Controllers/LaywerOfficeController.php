<?php

namespace App\Admin\Controllers;

use App\LaywerOffice;
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
        $grid->column('name', __('Name'));
        $grid->column('title', __('Title'));
        $grid->column('mobile', __('Mobile'));
        $grid->column('telephone', __('Telephone'));
        $grid->column('email', __('Email'));
        $grid->column('qq', __('Qq'));
        $grid->column('wechat', __('Wechat'));
        $grid->column('company', __('Company'));
        $grid->column('cate_id', __('Cate id'));
        $grid->column('descr', __('Descr'));
        $grid->column('status', __('Status'));
        $grid->column('is_deleted', __('Is deleted'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show->field('name', __('Name'));
        $show->field('title', __('Title'));
        $show->field('mobile', __('Mobile'));
        $show->field('telephone', __('Telephone'));
        $show->field('email', __('Email'));
        $show->field('qq', __('Qq'));
        $show->field('wechat', __('Wechat'));
        $show->field('company', __('Company'));
        $show->field('cate_id', __('Cate id'));
        $show->field('descr', __('Descr'));
        $show->field('status', __('Status'));
        $show->field('is_deleted', __('Is deleted'));
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
        $form = new Form(new LaywerOffice);

        $form->text('name', __('Name'));
        $form->text('title', __('Title'));
        $form->mobile('mobile', __('Mobile'));
        $form->text('telephone', __('Telephone'));
        $form->email('email', __('Email'));
        $form->text('qq', __('Qq'));
        $form->text('wechat', __('Wechat'));
        $form->text('company', __('Company'));
        $form->number('cate_id', __('Cate id'));
        $form->text('descr', __('Descr'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));

        return $form;
    }
}
