<?php

namespace App\Admin\Controllers;

use App\Models\Exchange;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ExchangeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '法宝兑换';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Exchange);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('goods_id', __('Goods id'));
        $grid->column('ingots', __('Ingots'));
        $grid->column('quantity', __('Quantity'));
        $grid->column('status', __('Status'));
        $grid->column('created_at', __('Created at'));

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
        $show = new Show(Exchange::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('goods_id', __('Goods id'));
        $show->field('ingots', __('Ingots'));
        $show->field('quantity', __('Quantity'));
        $show->field('status', __('Status'));
        $show->field('created_at', __('Created at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Exchange);

        $form->number('user_id', __('User id'));
        $form->number('goods_id', __('Goods id'));
        $form->switch('ingots', __('Ingots'));
        $form->number('quantity', __('Quantity'));
        $form->switch('status', __('Status'))->default(1);

        return $form;
    }
}
