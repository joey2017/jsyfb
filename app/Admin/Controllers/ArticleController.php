<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

use Encore\Admin\Widgets\Table;

class ArticleController extends AdminController
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
        $grid = new Grid(new Article);

        $grid->column('id', __('Id'))->sortable();
        $grid->column('title', trans('admin.title'))->expand(function ($model) {
            $comments = $model->articleComments()->take(10)->get()->map(function ($comment) {
                return $comment->only(['id', 'laywer_id', 'interpretation', 'measures', 'content', 'created_at']);
            });
            return new Table(['ID', '专家', '点评', '措施', '内容', '评论时间'], $comments->toArray());
        });
        $grid->column('content', trans('admin.content'));
        $grid->column('like_count', trans('admin.like_count'));
        $grid->column('browse_count', trans('admin.browse_count'));
        $grid->column('share_count', trans('admin.share_count'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return Article::getStatusName($status);
        })->label(['warning', 'primary']);

        $grid->filter(function ($filter) {
            // 去掉默认的 id 过滤器
            $filter->disableIdFilter();
            // 添加新的字段过滤器（通过内容过滤）
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
        $show->field('title', trans('admin.title'));
        $show->field('content', trans('admin.content'));
        $show->field('images', trans('admin.image'));
        $show->field('like_count', trans('admin.like_count'));
        $show->field('browse_count', trans('admin.browse_count'));
        $show->field('share_count', trans('admin.share_count'));
        $show->field('status', trans('admin.status'))->using(Article::STATUSES);
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

        $admins = DB::table(config('admin.database.users_table'))->pluck('username', 'id')->toArray();
        $form->select('admin_id', '发布人')->options($admins)->required();
        $form->text('title', trans('admin.title'))->required();
        $form->textarea('content', trans('admin.content'))->required();
        $form->image('images', trans('admin.image'))->required();
//        $form->textarea('interpretation', trans('admin.interpretation'));
//        $form->textarea('measures', trans('admin.measures'));
//
//        $form->saving(function (Form $form) {
//            $form->model()->spec_id = config('admin.database.users_model')::findOrFail(Admin::user()->id)->related_spec_id;
//        });

        return $form;
    }
}
