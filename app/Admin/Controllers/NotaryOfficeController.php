<?php

namespace App\Admin\Controllers;

use App\NotaryOffice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NotaryOfficeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '公证处';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new NotaryOffice);

        $grid->column('id', __('Id'));
        $grid->column('name', trans('admin.name'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('telephone', trans('admin.telephone'));
        $grid->column('email', trans('admin.email'));
        $grid->column('qq', 'qq');
        $grid->column('wechat', trans('admin.wechat'));
        $grid->column('lng', trans('admin.lng'));
        $grid->column('lat', trans('admin.lat'));
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
        $show = new Show(NotaryOffice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('telephone', trans('admin.telephone'));
        $show->field('email', trans('admin.email'));
        $show->field('qq', 'qq');
        $show->field('wechat', trans('admin.wechat'));
        $show->field('lng', trans('admin.lng'));
        $show->field('lat', trans('admin.lat'));
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
        $form = new Form(new NotaryOffice);

        $form->text('name', trans('admin.name'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->text('telephone', trans('admin.telephone'));
        $form->email('email', trans('admin.email'));
        $form->text('qq', 'qq');
        $form->text('wechat', trans('admin.wechat'));
        $form->text('lng', trans('admin.lng'));
        $form->text('lat', trans('admin.lat'));

        return $form;
    }
}
