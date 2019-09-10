<?php

namespace App\Admin\Controllers;

use App\Specialist;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SpecialistController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '专家';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Specialist);

        $grid->column('id', __('Id'));
        $grid->column('name', '姓名');
        //$grid->column('class_id', trans('admin.class_id'));
        //$grid->column('level', trans('admin.level'));
        $grid->column('title', trans('admin.user_title'));
        $grid->column('expertise', trans('admin.expertise'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('telephone', trans('admin.telephone'));
        $grid->column('company', trans('admin.company'));
        $grid->column('comments_count', trans('admin.comments_count'));
        $grid->column('avg_point', trans('admin.avg_point'));
        $grid->column('summary', trans('admin.summary'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Specialist::$_statuses[$status];
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
        $show = new Show(Specialist::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        //$show->field('class_id', trans('admin.class_id'));
        //$show->field('level', trans('admin.level'));
        $show->field('title', trans('admin.user_title'));
        $show->field('expertise', trans('admin.expertise'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('telephone', trans('admin.telephone'));
        $show->field('company', trans('admin.company'));
        $show->field('summary', trans('admin.summary'));
        $show->field('status', trans('admin.status'));
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
        $form = new Form(new Specialist);

        $form->text('name', trans('admin.name'));
        //$form->number('class_id', trans('admin.class_id'));
        //$form->number('level', trans('admin.level'));
        $form->text('title', trans('admin.user_title'));
        $form->text('expertise', trans('admin.expertise'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->text('telephone', trans('admin.telephone'));
        $form->text('company', trans('admin.company'));
        $form->text('summary', trans('admin.summary'));
        $form->switch('status', trans('admin.status'))->default(1);

        return $form;
    }
}
