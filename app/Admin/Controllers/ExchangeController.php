<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
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
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('goods_id', trans('admin.goods_id'));
        $grid->column('ingots', trans('admin.ingots'));
        $grid->column('quantity', trans('admin.quantity'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return Exchange::getStatusName($status);
        })->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));

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
        $show->field('user_id', trans('admin.user_id'));
        $show->field('goods_id', trans('admin.goods_id'));
        $show->field('ingots', trans('admin.ingots'));
        $show->field('quantity', trans('admin.quantity'));
        $show->field('status', trans('admin.status'))->using(Exchange::STATUSES);
        $show->field('created_at', trans('admin.created_at'));

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

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
        $form->number('goods_id', trans('admin.goods_id'));
        $form->switch('ingots', trans('admin.ingots'))->required();
        $form->number('quantity', trans('admin.quantity'))->required();

        return $form;
    }
}
