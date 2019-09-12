<?php

namespace App\Admin\Controllers;

use App\Models\ExpertAdvice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ExpertAdviceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '专家咨询';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ExpertAdvice);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('spec_id', __('Spec id'));
        $grid->column('cate_id', __('Cate id'));
        $grid->column('title', __('Title'));
        $grid->column('question', __('Question'));
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
        $show = new Show(ExpertAdvice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('spec_id', __('Spec id'));
        $show->field('cate_id', __('Cate id'));
        $show->field('title', __('Title'));
        $show->field('question', __('Question'));
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
        $form = new Form(new ExpertAdvice);

        $form->number('user_id', __('User id'));
        $form->number('spec_id', __('Spec id'));
        $form->number('cate_id', __('Cate id'));
        $form->text('title', __('Title'));
        $form->textarea('question', __('Question'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));

        return $form;
    }
}
