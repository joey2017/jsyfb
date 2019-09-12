<?php

namespace App\Admin\Controllers;

use App\Models\AnswerList;
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
        $grid->column('title', '题目');
        $grid->column('option1', trans('admin.option1'));
        $grid->column('option2', trans('admin.option2'));
        $grid->column('option3', trans('admin.option3'));
        $grid->column('option4', trans('admin.option4'));
        $grid->column('correct', trans('admin.correct'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return AnswerList::$_statuses[$status];
        })->label(['warning','primary']);
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
        $show = new Show(AnswerList::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', trans('admin.title'));
        $show->field('option1', trans('admin.option1'));
        $show->field('option2', trans('admin.option2'));
        $show->field('option3', trans('admin.option3'));
        $show->field('option4', trans('admin.option4'));
        $show->field('correct', trans('admin.correct'));
        $show->field('status', trans('admin.status'));
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
        $form = new Form(new AnswerList);

        $form->text('title', trans('admin.title'));
        $form->text('option1', trans('admin.option1'));
        $form->text('option2', trans('admin.option2'));
        $form->text('option3', trans('admin.option3'));
        $form->text('option4', trans('admin.option4'));
        $form->text('correct', trans('admin.correct'));
        $form->switch('status', trans('admin.status'))->default(1);

        return $form;
    }
}
