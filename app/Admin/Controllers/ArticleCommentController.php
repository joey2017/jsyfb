<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use App\Models\ArticleComment;
use App\Models\Laywer;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\MessageBag;

class ArticleCommentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '专家点评';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ArticleComment);

        $grid->disableCreateButton();

        if (Admin::user()->isRole('laywer')) {
            $grid->model()->where('laywer_id', Admin::user()->related_spec_id);
        }

        $grid->column('id', __('Id'))->sortable();
        $grid->column('article.title', trans('admin.title'));
        $grid->column('article.content', trans('admin.content'));
        $grid->column('laywer.name', trans('admin.laywer'));
        $grid->column('interpretation', trans('admin.interpretation'));
        $grid->column('measures', trans('admin.measures'));
        $grid->column('content', trans('admin.comment_content'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('article.title', trans('admin.title'));

            });

            $filter->column(1 / 2, function ($filter) {
                $filter->like('laywer.name', trans('admin.laywer'));

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
        $show = new Show(ArticleComment::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('article_id', trans('admin.title'))->as(function ($article_id) {
            return Article::findOrFail($article_id)->title;
        });
        $show->field('article_id', trans('admin.content'))->as(function ($article_id) {
            return Article::findOrFail($article_id)->content;
        });
        $show->field('laywer_id', trans('admin.laywer'))->as(function ($laywer_id) {
            return Laywer::findOrFail($laywer_id)->name;
        });
        $show->field('interpretation', trans('admin.interpretation'));
        $show->field('measures', trans('admin.measures'));
        $show->field('content', trans('admin.comment_content'));
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

        if ($form->isEditing()) {
            $form->select('article_id', trans('admin.title'))->options(Article::where([['status', 1], ['is_deleted', 0]])->pluck('title', 'id')->toArray())->readOnly();
            $form->textarea('article.content', trans('admin.content'))->readonly();
            $form->select('laywer_id', trans('admin.laywer'))->options(Laywer::where([['status', 1], ['is_deleted', 0]])->pluck('name', 'id')->toArray())->readOnly();
        } else {
            $form->select('article_id', trans('admin.title'))->options(Article::where([['status', 1], ['is_deleted', 0]])->pluck('title', 'id')->toArray())->required();
            $form->textarea('article.content', trans('admin.content'));
            $form->select('laywer_id', trans('admin.laywer'))->options(Laywer::where([['status', 1], ['is_deleted', 0]])->pluck('name', 'id')->toArray())->required();
        }
        $form->textarea('interpretation', trans('admin.interpretation'))->required();
        $form->textarea('measures', trans('admin.measures'))->required();
        $form->editor('content', trans('admin.comment_content'));

        $form->saving(function (Form $form) {
            if ($form->content == '') {
                $error = new MessageBag([
                    'title'   => trans('admin.save_failed'),
                    'message' => trans('admin.empty_content'),
                ]);
                return back()->with(compact('error'));
            }
        });

        return $form;
    }
}
