<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\BalanceLog;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BalanceLogController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '余额流水';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BalanceLog);

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('type', trans('admin.type'))->display(function ($type) {
            return BalanceLog::getTypeName($type);
        });
        $grid->column('cost', trans('admin.balance_cost'));
        $grid->column('descr', trans('admin.descr'));
        $grid->column('remark', trans('admin.remark'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return BalanceLog::getStatusName($status);
        })->label(['warning', 'primary']);
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
        $show = new Show(BalanceLog::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('type', trans('admin.type'));
        $show->field('cost', trans('admin.balance_cost'));
        $show->field('descr', trans('admin.descr'));
        $show->field('remark', trans('admin.remark'));
        $show->field('status', trans('admin.status'))->using(BalanceLog::STATUSES);
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
        $form = new Form(new BalanceLog);

        $form->select('user_id', trans('admin.user_id'))->options(getAllUsersIdAndNickname());
        $form->text('type', trans('admin.type'))->placeholder('输入类型1或2：1增加，2减少');
        $form->decimal('cost', trans('admin.balance_cost'));
        $form->text('descr', trans('admin.descr'));
        $form->text('remark', trans('admin.remark'));

        return $form;
    }
}
