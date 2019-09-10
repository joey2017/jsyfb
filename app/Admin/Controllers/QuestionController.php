<?php

namespace App\Admin\Controllers;

use App\Question;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class QuestionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '热门问题';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Question);

        $grid->column('id', __('Id'));
        $grid->column('title', trans('admin.title'));
        $grid->column('question', trans('admin.question'));
        $grid->column('answer', trans('admin.answer'));
        //$grid->column('status', trans('admin.status'));
        $grid->column('status',trans('admin.status'))->display(function($status){
            return Question::$_statuses[$status];
        })->label(['warning', 'primary']);
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
        $show = new Show(Question::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', trans('admin.title'));
        $show->field('question', trans('admin.question'));
        $show->field('answer', trans('admin.answer'));
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
        $form = new Form(new Question);

        $form->text('title', trans('admin.title'));
        $form->textarea('question', trans('admin.question'));
        $form->textarea('answer', trans('admin.answer'));

        return $form;
    }
}
