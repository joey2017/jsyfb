<?php

namespace App\Admin\Controllers;

use App\Notice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NoticeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '消息';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Notice);

        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('cate_id', __('Cate id'));
        $grid->column('title', __('Title'));
        $grid->column('content', __('Content'));
        $grid->column('status', __('Status'));
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
        $show = new Show(Notice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('cate_id', __('Cate id'));
        $show->field('title', __('Title'));
        $show->field('content', __('Content'));
        $show->field('status', __('Status'));
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
        $form = new Form(new Notice);

        $form->number('user_id', __('User id'));
        $form->number('cate_id', __('Cate id'));
        $form->text('title', __('Title'));
        $form->textarea('content', __('Content'));
        $form->switch('status', __('Status'));

        return $form;
    }
}
