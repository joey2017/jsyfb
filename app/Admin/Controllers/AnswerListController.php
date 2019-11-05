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

        $grid->column('id', __('Id'))->sortable();
        $grid->column('title', trans('admin.title_answer'))->width(500);
        $grid->column('A', trans('admin.A'))->width(150);
        $grid->column('B', trans('admin.B'))->width(150);
        $grid->column('C', trans('admin.C'))->width(150);
        $grid->column('D', trans('admin.D'))->width(150);
        $grid->column('correct', trans('admin.correct'))->width(100);
        $grid->column('status', trans('admin.status'))->using(AnswerList::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter){
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->equal('id', __('Id'));
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->like('title', trans('admin.title'));
            });
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
        $show = new Show(AnswerList::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', trans('admin.title_answer'));
        $show->field('A', trans('admin.A'));
        $show->field('B', trans('admin.B'));
        $show->field('C', trans('admin.C'));
        $show->field('D', trans('admin.D'));
        $show->field('correct', trans('admin.correct'));
        $show->field('status', trans('admin.status'))->using(AnswerList::STATUSES);
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

        $form->text('title', trans('admin.title_answer'))->required();
        $form->text('A', trans('admin.A'))->required();
        $form->text('B', trans('admin.B'))->required();
        $form->text('C', trans('admin.C'))->required();
        $form->text('D', trans('admin.D'))->required();
        $form->text('correct', trans('admin.correct'))->required();

        return $form;
    }
}
