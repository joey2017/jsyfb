<?php

namespace App\Admin\Controllers;

use App\LegalBook;
use App\LegalBookCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LegalBookController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '宝典';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new LegalBook);

        $grid->column('id', __('Id'));
        $grid->column('title', trans('admin.book_title'));
        $grid->column('cate_id','分类')->display(function($cate_id){
            return LegalBookCategory::find($cate_id)->title;
        });
        $grid->column('detail', trans('admin.detail'));
        $grid->column('status', trans('admin.status'));
        $grid->column('is_deleted', trans('admin.is_deleted'));
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
        $show = new Show(LegalBook::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', trans('admin.book_title'));
        $show->field('cate_id', trans('admin.cate_id'))->using(LegalBookCategory::all()->pluck('title','id')->toArray());
        $show->field('cate_id','分类');
        $show->field('detail', trans('admin.detail'));
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
        $form = new Form(new LegalBook);

        $form->text('title', trans('admin.book_title'));
        //dd(LegalBookCategory::all()->pluck('title', 'id'));
        $form->select('cate_id','分类')->options(LegalBookCategory::all()->pluck('title', 'id'))->value(request('cate_id'));
        //$form->textarea('detail', trans('admin.detail'));
        $form->editor('detail',trans('admin.detail'));
        $form->switch('status', trans('admin.status'))->default(1);
        $form->switch('is_deleted', trans('admin.is_deleted'));

        return $form;
    }
}
