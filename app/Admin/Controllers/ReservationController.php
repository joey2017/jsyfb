<?php

namespace App\Admin\Controllers;

use \App\Reservation;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ReservationController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '预约';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Reservation);

        $grid->column('id', __('Id'));
        $grid->column('u_name', '客户姓名');
        $grid->column('u_mobile', '客户手机');
        $grid->column('spec_name', '预约专家');
        $grid->column('spec_mobile', '预约专家手机');
        $grid->column('content', '预约内容');
        $grid->column('appointment', trans('admin.appointment'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Reservation::$_statuses[$status];
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
        $show = new Show(Reservation::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('u_name', '客户姓名');
        $show->field('u_mobile', '客户手机');
        $show->field('spec_name', '预约专家');
        $show->field('spec_mobile', '预约专家手机');
        $show->field('content', '预约内容');
        $show->field('appointment', trans('admin.appointment'));
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
        $form = new Form(new Reservation);

        $form->text('u_name', '客户姓名');
        $form->mobile('u_mobile', '客户手机');
        $form->text('spec_name', '预约专家');
        $form->mobile('spec_mobile', '预约专家手机');
        $form->text('content', '预约内容');
        $form->datetime('appointment', trans('admin.appointment'));

        return $form;
    }
}
