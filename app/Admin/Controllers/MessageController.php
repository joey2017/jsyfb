<?php

namespace App\Admin\Controllers;

use App\Message;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MessageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '留言';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Message);

        //禁用创建按钮
        $grid->disableCreateButton();
        //禁用导出数据按钮
        $grid->disableExport();
        //禁用工具条
        //$grid->disableTools();
        $grid->column('id', __('Id'));
        $grid->column('username', __('Username'));
        $grid->column('mobile', __('Mobile'));
        $grid->column('content', __('Content'));
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
        $show = new Show(Message::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('username', __('Username'));
        $show->field('mobile', __('Mobile'));
        $show->field('content', __('Content'));
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
        $form = new Form(new Message);

        $form->text('username', __('Username'));
        $form->mobile('mobile', __('Mobile'));
        $form->textarea('content', __('Content'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));

        return $form;
    }
}
