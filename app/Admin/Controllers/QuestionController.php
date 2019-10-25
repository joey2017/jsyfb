<?php

namespace App\Admin\Controllers;

use App\Models\Question;
use App\Models\QuestionCategory;
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
        $grid->column('questionCategory.title', '分类');
        $grid->column('answer', trans('admin.answer'))->width(600);
        $grid->column('status',trans('admin.status'))->display(function($status){
            return Question::getStatusName($status);
        })->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter){
            $filter->disableIdFilter();
            $filter->like('title',trans('admin.title'));
        });
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
        $show->field('answer', trans('admin.answer'));
        $show->field('status', trans('admin.status'))->using(Question::STATUSES);
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

        $form->text('title', trans('admin.title'))->required();
        $form->select('cate_id', trans('admin.cate_id'))->options(QuestionCategory::where('status',1)->pluck('title','id')->toArray())->required();
        $form->textarea('answer', trans('admin.answer'))->required();

        return $form;
    }
}
