<?php

namespace App\Admin\Controllers;

use App\Acticle;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;

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
        $grid->column('title', trans('admin.title'))->expand(function($model){
            dd($model->acticlecomments()->take(10)->getResults());
            $comments = $model->acticlecomments()->take(10)->map(function($comment){
                return $comment->only(['id','content','created_at']);
            });
            return new Table(['ID','内容','发布时间'],$comments->toArray());
        });
        $grid->column('keyword', trans('admin.keyword'));
        $grid->column('content', trans('admin.content'));
        $grid->column('like_count', trans('admin.like_count'));
        $grid->column('comments_count', trans('admin.comments_count'));
        $grid->column('status', trans('admin.status'));
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
        $show = new Show(Acticle::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', trans('admin.title'));
        $show->field('keyword', trans('admin.keyword'));
        $show->field('content', trans('admin.content'));
        $show->field('like_count', trans('admin.like_count'));
        $show->field('comments_count', trans('admin.comments_count'));
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
        $form = new Form(new Acticle);

        $form->text('title', trans('admin.title'));
        $form->text('keyword', trans('admin.keyword'));
        $form->textarea('content', trans('admin.content'));
        $form->number('like_count', trans('admin.like_count'));
        $form->number('comments_count', trans('admin.comments_count'));
        $form->switch('status', trans('admin.status'))->default(1);

        return $form;
    }
}
