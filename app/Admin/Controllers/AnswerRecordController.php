<?php

namespace App\Admin\Controllers;

use App\AnswerRecord;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AnswerRecordController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '每日答题';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AnswerRecord);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('answer_list_id', __('Answer list id'));
        $grid->column('date', __('Date'));
        $grid->column('question', __('Question'));
        $grid->column('answer', __('Answer'));
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
        $show = new Show(AnswerRecord::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('answer_list_id', __('Answer list id'));
        $show->field('date', __('Date'));
        $show->field('question', __('Question'));
        $show->field('answer', __('Answer'));
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
        $form = new Form(new AnswerRecord);

        $form->number('user_id', __('User id'));
        $form->number('answer_list_id', __('Answer list id'));
        $form->datetime('date', __('Date'))->default(date('Y-m-d H:i:s'));
        $form->text('question', __('Question'));
        $form->text('answer', __('Answer'));

        return $form;
    }
}
