<?php

namespace App\Admin\Controllers;

use App\Models\QuestionCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Layout\Content;
use Encore\Admin\Tree;

class QuestionCategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '热门问题分类';

    public function index(Content $content)
    {
        return $content->title($this->title)->body($this->tree());
    }

    protected function tree()
    {
        return QuestionCategory::tree(function (Tree $tree) {
            $tree->branch(function ($branch) {
                $logo = '';
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
        $form = new Form(new QuestionCategory);

        $form->select('parent_id', trans('admin.parent_id'))->options(QuestionCategory::selectOptions());
        $form->text('title', trans('admin.title'))->rules('required');
        $form->text('path', trans('admin.path'));
        $form->image('logo');
        //$form->switch('status', trans('admin.status'))->default(1);

        return $form;
    }
}
