<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Message;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MessageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '留言';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Message);

        //禁用创建按钮
        $grid->disableCreateButton();
        //禁用导出数据按钮
        $grid->disableExport();
        $grid->model()->where('status', 1)->where('is_deleted', 0);

        $grid->actions(function ($actions) {
            // 去掉查看
            //$actions->disableView();
        });

        $grid->column('id', __('Id'))->sortable();
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('content', trans('admin.content'));
        $grid->column('status', trans('admin.status'))->using(Message::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->like('mobile', trans('admin.mobile'));
            });
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
        $show = new Show(Message::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'))->as(function ($user_id) {
            return User::findOrFail($user_id)->nickname;
        });
        $show->field('username', trans('admin.username'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('content', trans('admin.content'));
        $show->field('status', trans('admin.status'))->using(Message::STATUSES);
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
        $form = new Form(new Message);

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
        $form->text('username', trans('admin.username'))->required();
        $form->mobile('mobile', trans('admin.mobile'))->required();
        $form->editor('content', trans('admin.content'));

        return $form;
    }
}
