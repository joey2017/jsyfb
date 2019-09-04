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
        $grid->column('user_id', __('User id'));
        $grid->column('book_cate_id', __('Book cate id'));
        $grid->column('status', __('Status'));
        $grid->column('is_deleted', __('Is deleted'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show->field('user_id', __('User id'));
        $show->field('book_cate_id', __('Book cate id'));
        $show->field('status', __('Status'));
        $show->field('is_deleted', __('Is deleted'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

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

        $form->number('user_id', __('User id'));
        $form->number('book_cate_id', __('Book cate id'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));

        return $form;
    }
}
