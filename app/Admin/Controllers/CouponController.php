<?php

namespace App\Admin\Controllers;

use App\Models\Coupon;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CouponController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '优惠券';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Coupon);

        $grid->column('id', __('Id'));
        $grid->column('name', trans('admin.name'));
        $grid->column('total_num', trans('admin.total_num'));
        $grid->column('num', trans('admin.num'));
        $grid->column('type', trans('admin.type'))->using(['1' => '满减','2' => '满折']);
        $grid->column('condition', trans('admin.condition'));
        $grid->column('amount', trans('admin.amount'));
        $grid->column('start_time', trans('admin.start_time'));
        $grid->column('end_time', trans('admin.end_time'));
        $grid->column('remark', trans('admin.remark'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Coupon::$_statuses[$status];
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
        $show = new Show(Coupon::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('total_num', trans('admin.total_num'));
        $show->field('num', trans('admin.num'));
        $show->field('type', trans('admin.type'));
        $show->field('condition', trans('admin.condition'));
        $show->field('amount', trans('admin.amount'));
        $show->field('start_time', trans('admin.start_time'));
        $show->field('end_time', trans('admin.end_time'));
        $show->field('remark', trans('admin.remark'));
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
        $form = new Form(new Coupon);

        $form->text('name', trans('admin.name'));
        $form->number('total_num', trans('admin.total_num'));
        $form->number('num', trans('admin.num'));
        $form->switch('type', trans('admin.type'))->default(1);
        $form->decimal('condition', trans('admin.condition'));
        $form->decimal('amount', trans('admin.amount'));
        $form->datetime('start_time', trans('admin.start_time'))->default(date('Y-m-d H:i:s'));
        $form->datetime('end_time', trans('admin.end_time'))->default(date('Y-m-d H:i:s'));
        $form->text('remark', trans('admin.remark'));

        return $form;
    }
}
