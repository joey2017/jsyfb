<?php

namespace App\Admin\Controllers;

use App\Coupon;
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
        $grid->column('name', __('Name'));
        $grid->column('total_num', __('Total num'));
        $grid->column('num', __('Num'));
        $grid->column('type', __('Type'));
        $grid->column('condition', __('Condition'));
        $grid->column('amount', __('Amount'));
        $grid->column('start_time', __('Start time'));
        $grid->column('end_time', __('End time'));
        $grid->column('remark', __('Remark'));
        $grid->column('status', __('Status'));
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
        $show = new Show(Coupon::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('total_num', __('Total num'));
        $show->field('num', __('Num'));
        $show->field('type', __('Type'));
        $show->field('condition', __('Condition'));
        $show->field('amount', __('Amount'));
        $show->field('start_time', __('Start time'));
        $show->field('end_time', __('End time'));
        $show->field('remark', __('Remark'));
        $show->field('status', __('Status'));
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
        $form = new Form(new Coupon);

        $form->text('name', __('Name'));
        $form->number('total_num', __('Total num'));
        $form->number('num', __('Num'));
        $form->switch('type', __('Type'))->default(1);
        $form->decimal('condition', __('Condition'));
        $form->decimal('amount', __('Amount'));
        $form->datetime('start_time', __('Start time'))->default(date('Y-m-d H:i:s'));
        $form->datetime('end_time', __('End time'))->default(date('Y-m-d H:i:s'));
        $form->text('remark', __('Remark'));
        $form->switch('status', __('Status'));

        return $form;
    }
}
