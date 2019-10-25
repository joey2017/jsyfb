<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Post\ReportPost;
use App\Models\Authentication;
use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AuthenticationController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '实名认证申请记录';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Authentication);

        $grid->tools(function (Grid\Tools $tools) {
            $tools->append(new ReportPost());
        });

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('realname', trans('admin.realname'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('identity_card', trans('admin.identity_card'));
        $grid->column('hand_photo', trans('admin.hand_photo'))->lightbox(['width' => 50, 'height' => 50]);
        $grid->column('remark', trans('admin.remark'));
        $grid->column('status', trans('admin.status'))->using(Authentication::STATUSES)->label();
        $grid->column('review_at', trans('admin.review_at'));
        $grid->column('veritied_at', trans('admin.veritied_at'));
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
        $show = new Show(Authentication::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('realname', trans('admin.realname'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('identity_card', trans('admin.identity_card'));
        $show->field('hand_photo', trans('admin.hand_photo'))->image();
        $show->hand_photo(trans('admin.hand_photo'))->image();
        $show->field('remark', trans('admin.remark'));
        $show->field('status', trans('admin.status'))->using(Authentication::STATUSES);
        $show->field('review_at', trans('admin.review_at'));
        $show->field('veritied_at', trans('admin.veritied_at'));
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
        $form = new Form(new Authentication);

        $form->text('user_id', trans('admin.user_id'));
        $form->text('realname', trans('admin.realname'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->text('identity_card', trans('admin.identity_card'));
        $form->image('hand_photo', trans('admin.hand_photo'));
        $form->text('remark', trans('admin.remark'));
        $form->select('status', trans('admin.status'))->options(Authentication::STATUSES);
        $form->datetime('review_at', trans('admin.review_at'))->default(date('Y-m-d H:i:s'));
        $form->datetime('veritied_at', trans('admin.veritied_at'))->default(date('Y-m-d H:i:s'));

        $form->saved(function (Form $form) {
            if ($form->model()->status == Authentication::PASSED) {
                $user = User::findOrFail($form->model()->user_id);
                $user->is_verified = User::CERTIFIED;
                $user->save();
            }
        });
        
        $form->deleted(function ($form) {

        });

        return $form;
    }
}
