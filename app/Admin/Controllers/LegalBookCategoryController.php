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
