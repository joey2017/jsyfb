<?php

namespace App\Admin\Controllers;

use App\Article;
use App\Specialist;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;

class ArticleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '热门资讯';
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article);

        $grid->column('id', __('Id'))->sortable();
        /*
        $grid->column('content', trans('admin.content'))->expand(function ($model) {
            //dd($model->articlecomments()->take(10)->get());
            $comments = $model->articleComments()->take(10)->get()->map(function ($comment) {
                //dd($comment->user());
                return $comment->only(['id', 'user_id', 'interpretation', 'measures', 'content', 'created_at']);
            });
            return new Table(['ID', '用户', '专家点评', '措施', '内容', '评论时间'], $comments->toArray());
        });
        */
        $grid->column('content', trans('admin.content'));
        $grid->column('specialist.name', trans('admin.specialist'));
        $grid->column('interpretation',trans('admin.interpretation'));
        $grid->column('measures',trans('admin.measures'));
        $grid->column('like_count', trans('admin.like_count'));
        //$grid->column('comments_count', trans('admin.comments_count'));
        /*
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            $statuses = ['禁用', '正常'];
            $labels   = ['warning', 'info'];
            return "<span class='label label-{$labels[$status]}'>" . $statuses[$status] . "</span>";
        });
        */
        $grid->column('status',trans('admin.status'))->display(function($status){
            return Article::$_statuses[$status];
        })->label(['warning', 'primary']);

        $grid->filter(function($filter){

            // 去掉默认的 id 过滤器
            $filter->disableIdFilter();

            // 添加新的字段过滤器（通过工号过滤）
            $filter->like('content', '内容');
        });

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
        $show = new Show(Article::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('content', trans('admin.content'));
        $show->field('interpretation', trans('admin.interpretation'));
        $show->field('measures', trans('admin.measures'));
        $show->field('like_count', trans('admin.like_count'));
        //$show->field('status', trans('admin.status'));
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
        $form = new Form(new Article);

        //$specs = Specialist::all()->pluck('name','id')->toArray();
        $specs = Specialist::where('status',1)->pluck('name','id')->toArray();
        $form->select('spec_id', '咨询专家')->options($specs);
        $form->textarea('content', '咨询内容');

        return $form;
    }
}
