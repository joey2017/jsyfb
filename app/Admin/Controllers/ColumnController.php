<?php

namespace App\Admin\Controllers;

use App\Column;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ColumnController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '已定专栏';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Column);

        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->column('id', __('Id'));
        $grid->column('user.username', trans('admin.username'));
        $grid->column('legalBookCategory.title', '专栏分类');
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Column::$_statuses[$status];
        })->label(['warning','primary']);
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
        $show = new Show(Column::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('book_cate_id', trans('admin.cate_id'));
        $show->field('status', trans('admin.status'));
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
        $form = new Form(new Column);

        $form->number('user_id', trans('admin.user_id'));
        $form->number('book_cate_id', trans('admin.cate_id'));
        $form->switch('status', trans('admin.status'))->default(1);

        return $form;
    }
}
