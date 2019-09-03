<?php

namespace App\Admin\Controllers;

use \App\LegalBookCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Tree;

class LegalBookCategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '宝典分类';


    public function index(Content $content)
    {
        return $content->title($this->title)->body($this->tree());
    }

    protected function tree()
    {
        return LegalBookCategory::tree(function (Tree $tree) {
            $tree->branch(function ($branch) {
                $src  = config('admin.upload.host') . '/' . $branch['logo'];
                $logo = "<img src='$src' style='max-width:30px;max-height:30px' class='img'/>";
                return "{$branch['id']} - {$branch['title']} $logo";
            });
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
//    protected function grid()
//    {
//        $grid = new Grid(new LegalBookCategory);
//
//        $grid->column('id', __('Id'));
//        $grid->column('title', trans('admin.title'));
//        $grid->column('pid', trans('admin.pid'));
//        $grid->column('path', trans('admin.path'));
//        $grid->column('status', trans('admin.status'));
//        $grid->column('is_deleted', trans('admin.is_deleted'));
//        $grid->column('created_at', trans('admin.created_at'));
//        $grid->column('updated_at', trans('admin.updated_at'));
//
//        return $grid;
//    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
//    protected function detail($id)
//    {
//        $show = new Show(LegalBookCategory::findOrFail($id));
//
//        $show->field('id', __('Id'));
//        $show->field('title', trans('admin.title'));
//        $show->field('pid', trans('admin.pid'));
//        $show->field('path', trans('admin.path'));
//        $show->field('status', trans('admin.status'));
//        $show->field('is_deleted', trans('admin.is_deleted'));
//        $show->field('created_at', trans('admin.created_at'));
//        $show->field('updated_at', trans('admin.updated_at'));
//
//        return $show;
//    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new LegalBookCategory);

        $form->display('id', 'ID');
        $form->select('parent_id', trans('admin.parent_id'))->options(LegalBookCategory::selectOptions());
        $form->text('title', trans('admin.title'))->rules('required');
        $form->text('path', trans('admin.path'));
        $form->image('logo');
        $form->switch('status', trans('admin.status'))->default(1);
        $form->switch('is_deleted', trans('admin.is_deleted'));
        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

        return $form;
    }
}
