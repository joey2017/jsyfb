<?php

namespace App\Admin\Controllers;

use App\IngotsUseLog;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class IngotsUseLogController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '元宝流水记录';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new IngotsUseLog);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('cost', __('Cost'));
        $grid->column('descr', __('Descr'));
        $grid->column('type', __('Type'));
        $grid->column('status', __('Status'));
        $grid->column('is_deleted', __('Is deleted'));
        $grid->column('remark', __('Remark'));
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
        $show = new Show(IngotsUseLog::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('cost', __('Cost'));
        $show->field('descr', __('Descr'));
        $show->field('type', __('Type'));
        $show->field('status', __('Status'));
        $show->field('is_deleted', __('Is deleted'));
        $show->field('remark', __('Remark'));
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
        $form = new Form(new IngotsUseLog);

        $form->number('user_id', __('User id'));
        $form->decimal('cost', __('Cost'));
        $form->text('descr', __('Descr'));
        $form->switch('type', __('Type'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));
        $form->text('remark', __('Remark'));

        return $form;
    }
}
