<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use App\Models\ArticleComment;
use App\Models\Laywer;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Http\Request;

class ArticleCommentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '专家点评';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ArticleComment);

        $grid->column('id', __('Id'));
        $grid->column('article.title', trans('admin.title'));
        $grid->column('article.content', trans('admin.content'));
        $grid->column('laywer.name', trans('admin.laywer'));
        $grid->column('interpretation', trans('admin.interpretation'));
        $grid->column('measures', trans('admin.measures'));
        $grid->column('content', trans('admin.comment_content'));
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
        $show = new Show(ArticleComment::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('article_id', trans('admin.title'))->as(function ($article_id) {
            return Article::findOrFail($article_id)->title;
        });
        $show->field('article_id', trans('admin.content'))->as(function ($article_id) {
            return Article::findOrFail($article_id)->content;
        });
        $show->field('laywer_id', trans('admin.laywer'))->as(function ($laywer_id) {
            return Laywer::findOrFail($laywer_id)->name;
        });
        $show->field('interpretation', trans('admin.interpretation'));
        $show->field('measures', trans('admin.measures'));
        $show->field('content', trans('admin.comment_content'));
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
        $form = new Form(new ArticleComment);

        if ($form->isEditing()) {
            $form->select('article_id', trans('admin.title'))->options(Article::where([['status', 1], ['is_deleted', 0]])->pluck('title', 'id')->toArray())->readOnly();
            $form->textarea('article.content', trans('admin.content'))->readonly();
            $form->select('laywer_id', trans('admin.laywer'))->options(Laywer::where([['status', 1], ['is_deleted', 0]])->pluck('name', 'id')->toArray())->readOnly();
        } else {
            $form->select('article_id', trans('admin.title'))->options(Article::where([['status', 1], ['is_deleted', 0]])->pluck('title', 'id')->toArray());
            $form->textarea('article.content', trans('admin.content'));
            $form->select('laywer_id', trans('admin.laywer'))->options(Laywer::where([['status', 1], ['is_deleted', 0]])->pluck('name', 'id')->toArray());
        }
        $form->textarea('interpretation', trans('admin.interpretation'));
        $form->textarea('measures', trans('admin.measures'));
        $form->editor('content', trans('admin.comment_content'));
        $script = <<<EOF
$('.article_id').change(function(){
    var val = $(this).val();
    $.ajax({
        url: '/admin/articles/comments/getcontent',
        type: 'GET',
        data: {'article_id':val},
        dataType: 'JSON',
        success: function(result){
            $('.article_content_').val(result);
        }
    });
});       

EOF;
        Admin::script($script);
        return $form;
    }

    public function getContent(Request $request)
    {
        $id = $request->input('article_id', '');
        return Article::findOrFail($id)->content;
    }
}
