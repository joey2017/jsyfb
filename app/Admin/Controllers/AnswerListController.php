<?php

namespace App\Admin\Controllers;

use App\AnswerList;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AnswerListController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '题库';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AnswerList);

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('option1', __('Option1'));
        $grid->column('option2', __('Option2'));
        $grid->column('option3', __('Option3'));
        $grid->column('option4', __('Option4'));
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
        $show = new Show(AnswerList::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('option1', __('Option1'));
        $show->field('option2', __('Option2'));
        $show->field('option3', __('Option3'));
        $show->field('option4', __('Option4'));
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
        $form = new Form(new AnswerList);

        $form->text('title', __('Title'));
        $form->text('option1', __('Option1'));
        $form->text('option2', __('Option2'));
        $form->text('option3', __('Option3'));
        $form->text('option4', __('Option4'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));

        return $form;
    }
}
