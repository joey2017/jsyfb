<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\AnswerList;
use App\Models\User;
use App\Models\AnswerRecord;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AnswerRecordController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '每日答题';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AnswerRecord);

        $grid->disableCreateButton();

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('question', trans('admin.question'));
        $grid->column('answer', trans('admin.answer'));
        $grid->column('date', trans('admin.date_of_answer'));
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->actions(function ($actions) {
            $actions->disableEdit();
            $actions->disableView();
        });

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->like('question', trans('admin.question'));
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
        $show = new Show(AnswerRecord::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->answerList('题目', function ($answerList) {
            $answerList->title();
            $answerList->correct();
        });
        $show->field('date', trans('admin.date'));
        $show->field('question', trans('admin.question'));
        $show->field('answer', trans('admin.answer'));
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
        $form = new Form(new AnswerRecord);
        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname());
        $form->select('answer_list_id', '题目')->options(AnswerList::where('status', '1')->pluck('title', 'id')->toArray());
        $form->datetime('date', trans('admin.date'))->default(date('Y-m-d H:i:s'));
        $form->text('question', trans('admin.question'));
        $form->text('answer', trans('admin.answer'));

        return $form;
    }
}
