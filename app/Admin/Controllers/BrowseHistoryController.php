<?php

namespace App\Admin\Controllers;

use App\Models\BrowseHistory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BrowseHistoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '浏览记录';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BrowseHistory);

        $grid->disableCreateButton();

        $grid->column('id', __('Id'))->sortable();
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('article.title', trans('admin.title'));
        $grid->column('article.images', trans('admin.image'))->lightbox(['width' => 50, 'height' => 50]);
        $grid->column('content-hide', trans('admin.content'))->expand(function ($model) {
            return $model->article()->first()->content ?? '';
        });
        $grid->column('status', trans('admin.status'))->using(BrowseHistory::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->actions(function ($actions) {
            $actions->disableView();
            $actions->disableEdit();
        });

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('article.title',trans('admin.title'));
            });

            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
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
        $show = new Show(BrowseHistory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->user('用户信息', function ($user) {
            $user->setResource('/admin/users');
            $user->field('id', __('Id'));
            $user->field('username', trans('admin.username'));
            $user->field('nickname', trans('admin.nickname'));
            $user->field('mobile', trans('admin.mobile'));
            $user->field('gender', trans('admin.gender'));
        });
        $show->article('文章信息', function ($article) {
            $article->setResource('/admin/articles');
            $article->field('id', __('Id'));
            $article->field('title', trans('admin.title'));
            $article->field('content', trans('admin.content'));
            $article->field('images', trans('admin.image'));
            $article->field('browse_count', trans('admin.browse_count'));
            $article->field('like_count', trans('admin.like_count'));
            $article->field('share_count', trans('admin.share_count'));
        });
        $show->field('article_id', trans('admin.article_id'));
        $show->field('status', trans('admin.status'))->using(BrowseHistory::STATUSES);
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
        return new Form(new BrowseHistory);
    }
}
