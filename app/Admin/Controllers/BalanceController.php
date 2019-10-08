<?php

namespace App\Admin\Controllers;

use App\Models\Balance;
use function App\Helpers\getAllUsersIdAndNickname;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BalanceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '余额';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Balance);

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('amount', trans('admin.amount'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Balance::getStatusName($status);
        })->label(['warning','primary']);
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
        $show = new Show(Balance::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('amount', trans('admin.amount'));
        $show->field('status', trans('admin.status'))->using(Balance::STATUSES);
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
        $form = new Form(new Balance);
        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname())->rules('required');
        $form->number('amount', trans('admin.amount'));

        return $form;
    }
}
