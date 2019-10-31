<?php

namespace App\Admin\Controllers;

use App\Models\ArticleShare;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Grid;

class ArticleShareController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '转发';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ArticleShare);

        $grid->disableCreateButton();

        $grid->actions(function ($actions) {
            // 去掉编辑
            $actions->disableEdit();
            // 去掉查看
            $actions->disableView();
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('article.title', trans('admin.title'));
        $grid->column('article.images', trans('admin.image'))->lightbox(['width' => 50,'height' => 50]);
        $grid->column('article.content', trans('admin.content'));
        $grid->column('created_at', trans('admin.created_at'));

        $grid->filter(function ($filter) {
            $filter->disabledIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->like('article.title', trans('admin.title'));
            });
        });

        return $grid;
    }

}
