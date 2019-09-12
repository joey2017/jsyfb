<?php

namespace App\Admin\Controllers;

use App\Models\Infoassets;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Grid;
use Encore\Admin\Form;
use Encore\Admin\Show;

class InfoassetsController extends AdminController {
    public function __construct()
    {
        $this->title = '资产';
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Infoassets());

        $grid->model()->where('id','>',1);
        $grid->quickSearch();

        $grid->column('id','ID')->sortable();
        $grid->column('name','用户名');
        $grid->column('email','电子邮箱');
        $grid->column('created_at','创建时间');
        $grid->column('updated_at','更新时间');

        //dd($results);
        /*
        $grid->id('ID')->sortable();
        $grid->name('用户名');
        $grid->email('电子邮箱');
        $grid->created_at('创建时间');
        $grid->updated_at('更新时间');
        $grid->action('操作');

        $grid->column('id','ID')->sortable();
        $grid->column('name','用户名');
        $grid->column('email','电子邮箱');
        $grid->column('create_at','创建时间');
        $grid->column('update_at','更新时间');
        $grid->column('操作');

        $grid->filter(function ($filter) {
            $filter->like('name');
        });
        // 默认为每页20条
        $grid->paginate(15);

        //添加数据查询条件
        $grid->model()->where('id', '>', 100);

        $grid->model()->whereIn('id', [1, 2, 3]);

        $grid->model()->whereBetween('votes', [1, 100]);

        $grid->model()->whereColumn('updated_at', '>', 'created_at');

        $grid->model()->orderBy('id', 'desc');

        $grid->model()->take(100);

        //修改输出显示
        $grid->column('text')->display(function($text) {
            return str_limit($text, 30, '...');
        });
        $grid->column('name')->display(function ($name) {
            return "<span class='label'>$name</span>";
        });

        // 添加不存在的字段
        $grid->column('column_not_in_table')->display(function () {
            return 'blablabla....';
        });

        //禁用创建按钮
        $grid->disableCreateButton();

        //禁用分页条
        $grid->disablePagination();
        //禁用查询过滤器
        $grid->disableFilter();
        //禁用导出数据按钮
        $grid->disableExport();
        //禁用行选择checkbox
        $grid->disableRowSelector();
        //禁用行操作列
        $grid->disableActions();
        //禁用行选择器
        $grid->disableColumnSelector();
        //设置分页选择器选项
        $grid->perPages([10, 20, 30, 40, 50]);

        //固定列
        $grid->fixColumns(3, -2);
        //列属性
        $grid->column('title')->setAttributes(['style' => 'color:red;']);


        //设置列宽
        $grid->column('title')->width(200);

        //text输入
        $grid->column('title')->editable();
        */

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed   $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Infoassets::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('name', trans('admin.name'));
        $show->field('email', trans('admin.email'));
        $show->field('created_at', trans('admin.Created at'));
        $show->field('updated_at', trans('admin.Updated at'));

        return $show;


        $show->panel()
            ->style('danger')
            ->title('post基本信息')
            ->tools(function ($tools) {
                // $tools->disableEdit();
            });;

        $show->title()->foo();
        $show->content()->json();
        $show->rate();
        $show->created_at();
        $show->updated_at();
        $show->release_at();

        $show->divider();

        $show->tags('标签')->as(function ($tags) {
            return $tags->pluck('name');
        })->badge();

        $show->author('作者信息', function ($author) {

            $author->setResource('/demo/users');

            $author->id();
            $author->name();
            $author->email();
            $author->avatar();
            $author->profile()->age();
            $author->profile()->gender('性别')->using(['m' => '女', 'f' => '男'], '未知');

            $author->panel()->tools(function ($tools) {
                $tools->disableDelete();
            });
        });

        $show->comments('评论', function ($line) {

            $line->resource('/demo/post-comments');

            $line->id();
            $line->content()->limit(10);
            $line->created_at();
            $line->updated_at();

            $line->filter(function ($filter) {
                $filter->like('content');
            });
        });

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Infoassets());

        $form->display('id', __('ID'));
        $form->text('name', trans('admin.name'))->rules('required');
        $form->email('email',trans('admin.email'))->rules('required');
        $form->password('password', trans('admin.password'))->rules('required');

        $form->display('created_at', trans('admin.Created at'));
        $form->display('updated_at', trans('admin.Updated at'));


        return $form;
    }
}