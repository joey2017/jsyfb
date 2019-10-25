<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\ArticleLike;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ArticleLikeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '点赞';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ArticleLike);

        $grid->disableCreateButton();

        $grid->actions(function ($actions) {
            // 去掉编辑
            $actions->disableEdit();
            // 去掉查看
            $actions->disableView();
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('article.title', trans('admin.title'));
        $grid->column('article.images', trans('admin.image'));
        $grid->column('article.content', trans('admin.content'));
        $grid->column('created_at', trans('admin.created_at'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('article.title', trans('admin.title'));
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });
        });

        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new ArticleLike);

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname());
        $form->number('article_id', trans('admin.article_id'));

        return $form;
    }
}
