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
        $grid->column('user_id', __('User id'));
        $grid->column('username', __('Username'));
        $grid->column('nickname', __('Nickname'));
        $grid->column('wxid', __('Wxid'));
        $grid->column('avatar', __('Avatar'));
        $grid->column('province', __('Province'));
        $grid->column('city', __('City'));
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
        $show = new Show(WechatAttention::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('username', __('Username'));
        $show->field('nickname', __('Nickname'));
        $show->field('wxid', __('Wxid'));
        $show->field('avatar', __('Avatar'));
        $show->field('province', __('Province'));
        $show->field('city', __('City'));
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
        $form = new Form(new WechatAttention);

        $form->number('user_id', __('User id'));
        $form->text('username', __('Username'));
        $form->text('nickname', __('Nickname'));
        $form->text('wxid', __('Wxid'));
        $form->image('avatar', __('Avatar'));
        $form->text('province', __('Province'));
        $form->text('city', __('City'));

        return $form;
    }
}
