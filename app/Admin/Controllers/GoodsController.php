<?php

namespace App\Admin\Controllers;

use App\Models\Goods;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class GoodsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '商品';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Goods);

        $grid->column('id', __('Id'));
        $grid->column('goods_name', trans('admin.goods_name'));
        $grid->column('image', trans('admin.image'));
        $grid->column('exchange_price', trans('admin.exchange_price'));
        $grid->column('stock', trans('admin.stock'));
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
        $show = new Show(Goods::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('goods_name', trans('admin.goods_name'));
        $show->field('image', trans('admin.image'));
        $show->field('exchange_price', trans('admin.exchange_price'));
        $show->field('stock', trans('admin.stock'));
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
        $form = new Form(new Goods);

        $form->text('goods_name', trans('admin.goods_name'));
        $form->image('image', trans('admin.image'));
        $form->number('exchange_price', trans('admin.exchange_price'));
        $form->number('stock', trans('admin.stock'));

        return $form;
    }
}