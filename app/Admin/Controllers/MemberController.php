<?php

namespace App\Admin\Controllers;

use App\Member;
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
        $grid->column('user_id', __('User id'));
        $grid->column('cost', __('Cost'));
        $grid->column('status', __('Status'));
        $grid->column('is_deleted', __('Is deleted'));
        $grid->column('expire_time', __('Expire time'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show->field('user_id', __('User id'));
        $show->field('cost', __('Cost'));
        $show->field('status', __('Status'));
        $show->field('is_deleted', __('Is deleted'));
        $show->field('expire_time', __('Expire time'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

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

        $form->number('user_id', __('User id'));
        $form->decimal('cost', __('Cost'))->default(0.00);
        $form->switch('status', __('Status'))->default(1);
        $form->switch('is_deleted', __('Is deleted'));
        $form->datetime('expire_time', __('Expire time'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
