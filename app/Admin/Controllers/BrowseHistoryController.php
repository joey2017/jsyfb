<?php

namespace App\Admin\Controllers;

use App\BrowseHistory;
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

        $grid->column('id', __('Id'));
        $grid->column('user_id', trans('admin.user_id'));
        $grid->column('article_id', trans('admin.article_id'));
        $grid->column('status', trans('admin.status'));
        $grid->column('is_deleted', trans('admin.is_deleted'));
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
        $show = new Show(BrowseHistory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('article_id', trans('admin.article_id'));
        $show->field('status', trans('admin.status'));
        $show->field('is_deleted', trans('admin.is_deleted'));
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
        $form = new Form(new BrowseHistory);

        $form->number('user_id', trans('admin.user_id'));
        $form->number('article_id', trans('admin.article_id'));
        $form->switch('status', trans('admin.status'))->default(1);
        $form->switch('is_deleted', trans('admin.is_deleted'));

        return $form;
    }
}
