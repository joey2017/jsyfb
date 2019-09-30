<?php

namespace App\Admin\Controllers;

use App\Models\IngotsLog;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class IngotsLogController extends AdminController
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
        $grid = new Grid(new IngotsLog);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('cost', __('Cost'));
        $grid->column('descr', __('Descr'));
        $grid->column('type', __('Type'));
        $grid->column('status', __('Status'));
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
        $show = new Show(IngotsLog::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('cost', __('Cost'));
        $show->field('descr', __('Descr'));
        $show->field('type', __('Type'));
        $show->field('status', __('Status'));
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
        $form = new Form(new IngotsLog);

        $form->number('user_id', __('User id'));
        $form->decimal('cost', __('Cost'));
        $form->text('descr', __('Descr'));
        $form->switch('type', __('Type'));
        $form->text('remark', __('Remark'));

        return $form;
    }
}
