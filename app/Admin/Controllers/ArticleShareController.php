<?php

namespace App\Admin\Controllers;

use App\Models\ArticleShare;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

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

        $grid->actions(function($actions){
            // 去掉编辑
            $actions->disableEdit();
            // 去掉查看
            $actions->disableView();
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('hotArticle.content', trans('admin.content'));
        $grid->column('created_at', trans('admin.created_at'));

        return $grid;
    }

}
