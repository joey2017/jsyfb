<?php

namespace App\Admin\Controllers;

use App\Models\CouponGrant;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CouponGrantController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '优惠券发放';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CouponGrant);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('coupon_id', __('Coupon id'));
        $grid->column('name', __('Name'));
        $grid->column('num', __('Num'));
        $grid->column('amount', __('Amount'));
        $grid->column('condition', __('Condition'));
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
        $show = new Show(CouponGrant::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('coupon_id', __('Coupon id'));
        $show->field('name', __('Name'));
        $show->field('num', __('Num'));
        $show->field('amount', __('Amount'));
        $show->field('condition', __('Condition'));
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
        $form = new Form(new CouponGrant);

        $form->number('user_id', __('User id'));
        $form->number('coupon_id', __('Coupon id'));
        $form->text('name', __('Name'));
        $form->number('num', __('Num'));
        $form->decimal('amount', __('Amount'));
        $form->decimal('condition', __('Condition'));
        $form->datetime('start_time', __('Start time'))->default(date('Y-m-d H:i:s'));
        $form->datetime('end_time', __('End time'))->default(date('Y-m-d H:i:s'));
        $form->text('remark', __('Remark'));
        $form->switch('status', __('Status'));

        return $form;
    }
}
