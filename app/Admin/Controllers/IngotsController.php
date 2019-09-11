<?php

namespace App\Admin\Controllers;

use App\Ingots;
use App\User;
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
        $grid->column('user.username', trans('admin.username'));
        $grid->column('quantity', trans('admin.quantity'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Ingots::$_statuses[$status];
        })->label(['warning','primary']);
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
        $show->field('user_id', trans('admin.user_id'));
        $show->field('quantity', trans('admin.quantity'));
        $show->field('expire_time', trans('admin.expire_time'));
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

        $form->select('user_id', trans('admin.username'))->options(User::where('status',1)->pluck('username','id')->toArray());
        $form->number('quantity', trans('admin.quantity'));
        $form->datetime('expire_time', trans('admin.expire_time'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
