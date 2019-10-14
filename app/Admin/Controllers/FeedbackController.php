<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Feedback;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class FeedbackController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '意见反馈';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Feedback);

        //禁用创建按钮
        $grid->disableCreateButton();
        //禁用导出数据按钮
        $grid->disableExport();

        $grid->actions(function ($actions) {
            // 去掉查看
            $actions->disableView();
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('name', '姓名');
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('content', trans('admin.content'));
        $grid->column('created_at', trans('admin.created_at'));

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
        $show = new Show(Feedback::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('name', '姓名');
        $show->field('mobile', trans('admin.mobile'));
        $show->field('content', trans('admin.content'));
        $show->field('created_at', trans('admin.content'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Feedback);

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
        $form->text('name', '姓名')->required();
        $form->mobile('mobile', trans('admin.mobile'))->required();
        $form->text('content', trans('admin.content'))->required();

        return $form;
    }
}
