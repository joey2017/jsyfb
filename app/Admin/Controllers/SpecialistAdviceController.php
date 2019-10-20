<?php

namespace App\Admin\Controllers;

use App\Constant;
use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Laywer;
use App\Models\SpecialistAdvice;
use App\Models\User;
use App\Services\NoticeService;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SpecialistAdviceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '咨询专家';

    protected $notice;

    public function __construct(NoticeService $noticeService)
    {
        $this->notice = $noticeService;
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new SpecialistAdvice);

        $grid->disableCreateButton();
        $grid->disableExport();

        if (Admin::user()->isRole('laywer')) {
            $grid->model()->where('spec_id', Admin::user()->related_spec_id);
        }

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('laywer.name', trans('admin.specialist'));
        $grid->column('username', trans('admin.username'));
        $grid->column('sex', trans('admin.sex'))->using([1 => '男', '2' => '女']);
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('type', trans('admin.case_type'))->using(Constant::CASE_TYPES);
        $grid->column('question', trans('admin.question'));
        $grid->column('measures', trans('admin.measures'));
        $grid->column('status', trans('admin.status'))->using(SpecialistAdvice::STATUSES)->label(['warning', 'primary']);
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
        $show = new Show(SpecialistAdvice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.nickname'))->as(function ($user_id) {
            return User::findOrFail($user_id)->nickname;
        });
        $show->field('spec_id', trans('admin.specialist'))->as(function ($spec_id) {
            return Laywer::findOrFail($spec_id)->name;
        });
        $show->field('username', trans('admin.username'));
        $show->field('sex', trans('admin.sex'))->using(['1' => '男', '2' => '女']);
        $show->field('mobile', trans('admin.mobile'));
        $show->field('type', trans('admin.case_type'))->using(Constant::CASE_TYPES);
        $show->field('question', trans('admin.question'));
        $show->field('measures', trans('admin.measures'));
        $show->field('status', trans('admin.status'))->using(SpecialistAdvice::STATUSES);
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
        $form = new Form(new SpecialistAdvice);

        if (Admin::user()->isRole('laywer')) {
            $form->display('user.nickname', trans('admin.nickname'));
            $form->display('question', trans('admin.question'));
            $form->editor('measures', trans('admin.measures'));
            // 发站内信
            $form->saved(function (Form $form) {
                $data = $form->model()->toArray();
                $this->notice->add('问题回复通知', '<br>您的提问：<br>' . $data['question'] . '<br>回复如下：<br>' . $data['measures'], $data['user_id'], 1);
            });
        } else {
            $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
            $form->select('spec_id', trans('admin.specialist'))->options(Laywer::where([['status', 1], ['is_deleted', 0], ['tag', 'specialist']])->pluck('name', 'id')->toArray())->required();
            $form->text('username', trans('admin.username'))->required();
            $form->radio('sex', trans('admin.sex'))->options(['1' => '男', '2' => '女'])->default(1)->required();
            $form->mobile('mobile', trans('admin.mobile'))->required();
            $form->select('type', trans('admin.case_type'))->options(Constant::CASE_TYPES)->required();
            $form->text('question', trans('admin.question'))->required();
            $form->editor('measures', trans('admin.measures'));
        }

        return $form;
    }
}
