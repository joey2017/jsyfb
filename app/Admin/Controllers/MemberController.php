<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndUsername;
use App\Models\Member;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MemberController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '会员';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Member);

        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->column('id', __('Id'));
        $grid->column('user.username', trans('admin.username'));
        $grid->column('cost', trans('admin.cost'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Member::getStatusName($status);
        })->label(['warning','primary']);
        $grid->column('expire_time', trans('admin.expire_time'));
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
        $show = new Show(Member::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('cost', trans('admin.cost'));
        $show->field('expire_time', trans('admin.expire_time'));
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
        $form = new Form(new Member);

        $form->select('user_id', trans('admin.username'))->options(getAllUsersIdAndUsername());
        $form->decimal('cost', trans('admin.cost'))->default(0.00);
        $form->datetime('expire_time', trans('admin.expire_time'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
