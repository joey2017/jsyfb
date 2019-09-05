<?php

namespace App\Admin\Controllers;

use App\BalanceLog;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BalanceLogController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '余额流水';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BalanceLog);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('type', __('Type'));
        $grid->column('cost', __('Cost'));
        $grid->column('descr', __('Descr'));
        $grid->column('remark', __('Remark'));
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
        $show = new Show(BalanceLog::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('type', __('Type'));
        $show->field('cost', __('Cost'));
        $show->field('descr', __('Descr'));
        $show->field('remark', __('Remark'));
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
        $form = new Form(new BalanceLog);

        $form->number('user_id', __('User id'));
        $form->switch('type', __('Type'));
        $form->decimal('cost', __('Cost'));
        $form->text('descr', __('Descr'));
        $form->text('remark', __('Remark'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));

        return $form;
    }
}
