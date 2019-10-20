<?php

namespace App\Admin\Controllers;

use App\Constant;
use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\NotaryAdvice;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NotaryAdviceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '公证处咨询';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new NotaryAdvice);

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('username', trans('admin.username'));
        $grid->column('sex', trans('admin.sex'))->using(['1' => '男', '2' => '女']);
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('type', trans('admin.type'))->using(Constant::CASE_TYPES);
        $grid->column('question', trans('admin.question'));
        $grid->column('status', trans('admin.status'))->using(NotaryAdvice::STATUSES);
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
        $show = new Show(NotaryAdvice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.nickname'))->as(function ($user_id) {
            return User::findOrFail($user_id)->nickname;
        });
        $show->field('username', trans('admin.username'));
        $show->field('sex', trans('admin.sex'))->using(['1' => '男', '2' => '女']);
        $show->field('mobile', trans('admin.mobile'));
        $show->field('type', trans('admin.type'))->using(Constant::CASE_TYPES);
        $show->field('question', trans('admin.question'));
        $show->field('status', trans('admin.status'))->using(NotaryAdvice::STATUSES);
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
        $form = new Form(new NotaryAdvice);

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
        $form->text('username', trans('admin.username'))->required();
        $form->radio('sex', trans('admin.sex'))->options(['1' => '男', '2' => '女'])->required();
        $form->mobile('mobile', trans('admin.mobile'))->required();
        $form->select('type', trans('admin.type'))->options(Constant::CASE_TYPES)->required();
        $form->textarea('question', trans('admin.question'))->required();

        return $form;
    }
}
