<?php

namespace App\Admin\Controllers;

use App\Models\UserAddress;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class UserAddressController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '地址';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new UserAddress);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('receiver', __('Receiver'));
        $grid->column('receiver_mobile', __('Receiver mobile'));
        $grid->column('province', __('Province'));
        $grid->column('city', __('City'));
        $grid->column('district', __('District'));
        $grid->column('address', __('Address'));
        $grid->column('status', __('Status'));
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
        $show = new Show(UserAddress::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('receiver', __('Receiver'));
        $show->field('receiver_mobile', __('Receiver mobile'));
        $show->field('province', __('Province'));
        $show->field('city', __('City'));
        $show->field('district', __('District'));
        $show->field('address', __('Address'));
        $show->field('status', __('Status'));
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
        $form = new Form(new UserAddress);

        $form->number('user_id', __('User id'));
        $form->text('receiver', __('Receiver'));
        $form->text('receiver_mobile', __('Receiver mobile'));
        $form->text('province', __('Province'));
        $form->text('city', __('City'));
        $form->text('district', __('District'));
        $form->text('address', __('Address'));
        $form->switch('status', __('Status'))->default(1);

        return $form;
    }
}
