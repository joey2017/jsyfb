<?php

namespace App\Admin\Controllers;

use App\Models\Message;
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
        $grid->model()->where('status',1)->where('is_deleted',0);

        $grid->actions(function ($actions) {
            // 去掉查看
            $actions->disableView();
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('content', trans('admin.content'));
        $grid->column('status', trans('admin.status'))->using(Message::STATUSES);
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
        $show = new Show(Message::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nickname', trans('admin.nickname'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('content', trans('admin.content'));
        $show->field('status', trans('admin.status'))->using(Message::STATUSES);
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
        $form = new Form(new Message);

        $form->text('user.nickname', trans('admin.nickname'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->editor('content', trans('admin.content'));

        return $form;
    }
}
