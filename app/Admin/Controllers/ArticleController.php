<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Post\Comments;
use App\Models\Article;
use App\Models\ArticleComment;
use App\Models\Laywer;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use Encore\Admin\Widgets\Table;
use Illuminate\Support\MessageBag;

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
        $grid->column('title', trans('admin.title'));
        /*$grid->column('title', trans('admin.title'))->expand(function ($model) {
            $comments = $model->articleComments()->take(10)->get()->map(function ($comment) {
                return $comment->only(['id', 'laywer_id', 'interpretation', 'measures', 'content', 'created_at']);
            });
            $data = [];
            if (!empty($comments)) {
                $data = $comments->all();
                foreach ($data as &$item) {
                    $item['laywer_id'] = Laywer::findOrFail($item['laywer_id'])->name ?? '';
                }
            }
            return new Table(['ID', '专家', '点评', '措施', '内容', '评论时间'], $data);
        });*/
        $grid->column('images', trans('admin.image'))->lightbox(['width' => 50, 'height' => 50]);
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
            $filter->like('title', trans('admin.title'));
        });
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->actions(function ($actions) {

            // 当前行的数据数组
            //$actions->row;
            // 获取当前行主键值
            //$actions->getKey();

            if (!ArticleComment::where('article_id',$actions->getKey())->exists()) {
                $actions->add(new Comments);
            }

        });


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
        $form->select('admin_id', trans('admin.admin_publisher'))->options($admins)->required();
        $form->text('title', trans('admin.title'))->required();
        $form->editor('content', trans('admin.content'));
        $form->image('images', trans('admin.image'))->required();

        $form->saving(function (Form $form) {
            if ($form->content == '') {
                $error = new MessageBag([
                    'title'   => trans('admin.save_failed'),
                    'message' => trans('admin.empty_content'),
                ]);

                return back()->with(compact('error'));
            }
        });

        return $form;
    }


    /**
     * @param $id
     * @return Form
     */
    protected function commentform($id)
    {
        $form = new Form(Article::findOrFail($id));

        $form->text('title', trans('admin.title'))->readonly();
        $form->textarea('content', trans('admin.content'))->readonly();
        $form->textarea('interpretation', trans('admin.interpretation'))->required();
        $form->textarea('measures', trans('admin.measures'))->required();
        $form->editor('comment_content', trans('admin.comment_content'));

        $form->setAction('/admin/articles/savecomments/' . $id);

        $form->saving(function (Form $form) {
            if ($form->content == '') {
                $error = new MessageBag([
                    'title'   => trans('admin.save_failed'),
                    'message' => trans('admin.empty_content'),
                ]);
                return back()->with(compact('error'));
            }
        });

        return $form;
    }

    /**
     * @param $id
     * @param Content $content
     * @return Content
     */
    public function addcomments($id, Content $content)
    {
        return $content
            ->title(trans('admin.specialist_comment'))
            ->description(trans('admin.create'))
            ->body($this->commentform($id)->edit($id));
    }

    /**
     * @param $id
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function savecomments($id, Request $request)
    {
        if (!Admin::user()->isRole('laywer')) {
            admin_error(trans('admin.save_failed'), trans('admin.no_permissions'));
            return back();
        } else {
            $data = [
                'article_id'     => $id,
                'interpretation' => $request->input('interpretation'),
                'measures'       => $request->input('measures'),
                'content'        => $request->input('comment_content'),
                'laywer_id'      => Admin::user()->related_spec_id,
            ];

            ArticleComment::create($data);

            return redirect('/admin/articles/comments');
        }
    }
}
