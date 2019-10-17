<?php

namespace App\Admin\Controllers;

use App\Models\Attention;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Grid;

class AttentionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '关注律师';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Attention);

        $grid->disableCreateButton();
        $grid->disableExport();

        $grid->actions(function($actions){
            // 去掉编辑
            $actions->disableEdit();
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('laywer.name', trans('admin.laywer'));
        $grid->column('created_at', trans('admin.created_at'));

        $grid->filter(function($filter){
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('laywer.name', trans('admin.name'));
            });

            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });
        });

        return $grid;
    }
}
