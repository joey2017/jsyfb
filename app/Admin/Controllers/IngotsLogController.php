<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\IngotsLog;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class IngotsLogController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '法宝流水';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new IngotsLog);

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('cost', trans('admin.ingot_cost'));
        $grid->column('descr', trans('admin.descr'));
        $grid->column('type', trans('admin.type'))->display(function ($type) {
            return IngotsLog::getTypeName($type);
        });
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return IngotsLog::getStatusName($status);
        })->label(['warning', 'primary']);
        $grid->column('remark', trans('admin.remark'));
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
        $show = new Show(IngotsLog::findOrFail($id));

        $show->field('id', trans('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('cost', trans('admin.ingot_cost'));
        $show->field('descr', trans('admin.descr'));
        $show->field('type', trans('admin.type'));
        $show->field('status', trans('admin.status'))->using(IngotsLog::STATUSES);
        $show->field('remark', trans('admin.remark'));
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
        $form = new Form(new IngotsLog);

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->required();
        $form->number('cost', trans('admin.ingot_cost'));
        $form->text('descr', trans('admin.descr'));
        $form->radio('type', trans('admin.type'))->options([1 => '增加', 2 => '减少'])->default('1');
        $form->text('remark', trans('admin.remark'));

        return $form;
    }
}
