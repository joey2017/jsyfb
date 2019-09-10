<?php

namespace App\Admin\Controllers;

use App\Specialist;
use \App\SpecialistAdvice;
use App\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SpecialistAdviceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '咨询专家';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new SpecialistAdvice);

        $grid->column('id', __('Id'));
        $grid->column('user.username', trans('admin.username'));
        $grid->column('specialist.name', '姓名');
        //$grid->column('cate_id', __('Cate id'));
        $grid->column('question', trans('admin.question'));
        $grid->column('interpretation', trans('admin.interpretation'));
        $grid->column('measures', trans('admin.measures'));
        $grid->column('like_count', trans('admin.like_count'));
        $grid->column('share_count', trans('admin.share_count'));
        $grid->column('status', trans('admin.status'));
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
        $show = new Show(SpecialistAdvice::findOrFail($id));

        $show->field('id', __('Id'));
        //$show->field('user_id', __('User id'));
        //$show->field('spec_id', __('Spec id'));
        //$show->field('cate_id', __('Cate id'));
        $show->field('question', trans('admin.question'));
        $show->field('interpretation', trans('admin.interpretation'));
        $show->field('measures', trans('admin.measures'));
        $show->field('like_count', trans('admin.like_count'));
        $show->field('share_count', trans('admin.share_count'));
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
        $form = new Form(new SpecialistAdvice);

        $form->select('user_id', trans('admin.username'))->options(User::where('status',1)->pluck('username','id')->toArray());
        $form->select('spec_id', '专家姓名')->options(Specialist::where('status',1)->pluck('name','id')->toArray());
        //$form->text('specialist.name', '姓名');
        //$form->textarea('question', trans('admin.question'));
        $form->editor('question', trans('admin.question'));
        //$form->number('cate_id', __('Cate id'));
        $form->text('interpretation', trans('admin.interpretation'));
        $form->text('measures', trans('admin.measures'));
        $form->text('like_count', trans('admin.like_count'));
        $form->text('share_count', trans('admin.share_count'));
        $form->switch('status', trans('admin.status'))->default(1);

        return $form;
    }
}
