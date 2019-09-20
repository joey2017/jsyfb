<?php

namespace App\Admin\Controllers;

use App\Models\Attention;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AttentionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '关注';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Attention);

        $grid->column('id', __('Id'));
        $grid->column('user.username', trans('admin.username'));
        $grid->column('specialist.name', '关注专家');
        //$grid->column('role', trans('admin.role'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Attention::getStatusName($status);
        })->label(['warning','primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));
        $grid->disableCreateButton();
        $grid->actions(function($actions){
            $actions->disableView();
            // 去掉编辑
            $actions->disableEdit();
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
        $show = new Show(Attention::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('spec_id', trans('admin.spec_id'));
        $show->field('status', trans('admin.status'));
        $show->field('is_deleted', trans('admin.is_deleted'));
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
        $form = new Form(new Attention);

        $form->number('user_id', trans('admin.user_id'));
        $form->number('spec_id', trans('admin.spec_id'));

        return $form;
    }


    public function test()
    {
        $this->form()->store();
    }
}
