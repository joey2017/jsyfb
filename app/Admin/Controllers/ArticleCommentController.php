<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllArticlesIdAndTitle;
use function App\Helpers\getAllLaywersIdAndName;
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
        $grid->column('article.title', trans('admin.title'))->width(200);
        $grid->column('article.images', trans('admin.image'))->lightbox(['width' => 50,'height' => 50]);
        $grid->column('content-hide', trans('admin.content'))->expand(function ($model) {
            return $model->article()->first()->content ?? '';
        });
        $grid->column('laywer.name', trans('admin.laywer'));
        $grid->column('interpretation', trans('admin.interpretation'))->width(200);
        $grid->column('measures', trans('admin.measures'))->width(200);
        $grid->column('content', trans('admin.comment_content'))->width(500);
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
        $show->field('article_id', trans('admin.article_id'));
        $show->field('laywer_id', trans('admin.laywer'))->as(function ($laywer_id) {
            return Laywer::findOrFail($laywer_id)->name;
        });
        $show->article('文章信息',function($article){
            $article->setResource('/admin/articles/cases');

            $article->id();
            $article->title(trans('admin.title'));
            $article->images(trans('admin.image'));
            $article->content(trans('admin.content'));
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
            $form->select('article_id', trans('admin.title'))->options(getAllArticlesIdAndTitle())->readOnly();
            $form->textarea('article.content', trans('admin.content'))->readonly();
            $form->select('laywer_id', trans('admin.laywer'))->options(getAllLaywersIdAndName())->readOnly();
        } else {
            $form->select('article_id', trans('admin.title'))->options(getAllArticlesIdAndTitle())->required();
            $form->textarea('article.content', trans('admin.content'));
            $form->select('laywer_id', trans('admin.laywer'))->options(getAllLaywersIdAndName())->required();
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
            return true;
        });

        return $form;
    }
}
