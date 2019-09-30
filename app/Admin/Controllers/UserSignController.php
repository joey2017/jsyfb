<?php

namespace App\Admin\Controllers;

use App\Models\UserSign;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Grid;

class UserSignController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '签到';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new UserSign);

        $grid->actions(function($actions){
            // 去掉编辑
            $actions->disableEdit();
            // 去掉查看
            $actions->disableView();
        });

        $grid->column('id', __('Id'));
        //$grid->user()->username(trans('admin.username'));
        $grid->column('user.nickname',trans('admin.nickname'));
        $grid->column('sign_count', trans('admin.sign_count'));
        $grid->column('count', trans('admin.count'));
        $grid->column('last_sign_time', trans('admin.last_sign_time'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        return $grid;
    }
}
