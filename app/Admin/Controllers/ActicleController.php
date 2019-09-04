<?php

namespace App\Admin\Controllers;

use App\Acticle;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ActicleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '热门文章';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Acticle);

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('keyword', __('Keyword'));
        $grid->column('content', __('Content'));
        $grid->column('like_count', __('Like count'));
        $grid->column('comments_count', __('Comments count'));
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
        $show = new Show(Acticle::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('keyword', __('Keyword'));
        $show->field('content', __('Content'));
        $show->field('like_count', __('Like count'));
        $show->field('comments_count', __('Comments count'));
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
        $form = new Form(new Acticle);

        $form->text('title', __('Title'));
        $form->text('keyword', __('Keyword'));
        $form->textarea('content', __('Content'));
        $form->number('like_count', __('Like count'));
        $form->number('comments_count', __('Comments count'));
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));

        return $form;
    }
}
