<?php

namespace App\Admin\Controllers;

use App\ArticleComment;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ArticleCommentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '评论';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ArticleComment);

        $grid->column('id', __('Id'));
        $grid->column('user_id', trans('admin.user_id'));
        $grid->column('article_id', trans('admin.article_id'));
        $grid->column('interpretation', trans('admin.interpretation'));
        $grid->column('measures', trans('admin.measures'));
        $grid->column('content', trans('admin.content'));
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
        $show = new Show(ArticleComment::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('article_id', trans('admin.article_id'));
        $show->field('interpretation', trans('admin.interpretation'));
        $show->field('measures', trans('admin.measures'));
        $show->field('content', trans('admin.content'));
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
        $form = new Form(new ArticleComment);

        $form->number('user_id', trans('admin.user_id'));
        $form->number('article_id', trans('admin.article_id'));
        $form->textarea('interpretation', trans('admin.interpretation'));
        $form->textarea('measures', trans('admin.measures'));
        $form->textarea('content', trans('admin.content'));

        return $form;
    }
}
