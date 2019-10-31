<?php

namespace App\Admin\Controllers;

use App\Models\Attention;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

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
            $actions->disableView();
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('laywer.name', trans('admin.laywer'));
        $grid->column('created_at', trans('admin.created_at'));

        $grid->filter(function($filter){
            $filter->disableIdFilter();

            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });

            $filter->column(1 / 2, function ($filter) {
                $filter->like('laywer.name', trans('admin.name'));
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
        $show = new Show(Attention::findOrFail($id));
        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('laywer_id', trans('admin.laywer_id'));
        /*$show->laywer('律师信息',function ($laywer){
            $laywer->setResoure('/admin/personnel/laywers');
            $laywer->id();
        });*/
        $show->field('created_at', trans('admin.created_at'));

        return $show;
    }


    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return new Form(new Attention);
    }
}
