<?php

namespace App\Admin\Controllers;

use App\Models\WechatAttention;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class WechatAttentionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '微信公众号关注';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WechatAttention);

        $grid->column('id', __('Id'));
        $grid->column('user_id', trans('admin.user_id'));
        $grid->column('username', trans('admin.username'));
        $grid->column('nickname', trans('admin.nickname'));
        $grid->column('wxid', trans('Wxid'));
        $grid->column('avatar', trans('admin.avatar'));
        $grid->column('province', trans('admin.province'));
        $grid->column('city', trans('admin.city'));
        $grid->column('created_at', trans('created_at'));
        $grid->column('updated_at', trans('updated_at'));

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
        $show = new Show(WechatAttention::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('username', trans('admin.username'));
        $show->field('nickname', trans('admin.nickname'));
        $show->field('wxid', trans('Wxid'));
        $show->field('avatar', trans('admin.avatar'));
        $show->field('province', trans('admin.province'));
        $show->field('city', trans('admin.city'));
        $show->field('created_at', trans('created_at'));
        $show->field('updated_at', trans('updated_at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new WechatAttention);

        $form->number('user_id', trans('admin.user_id'));
        $form->text('username', trans('admin.username'));
        $form->text('nickname', trans('admin.nickname'));
        $form->text('wxid', trans('Wxid'));
        $form->image('avatar', trans('admin.avatar'));
        $form->text('province', trans('admin.province'));
        $form->text('city', trans('admin.city'));

        return $form;
    }
}
