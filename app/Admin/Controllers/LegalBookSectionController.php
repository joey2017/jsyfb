<?php

namespace App\Admin\Controllers;

use App\Models\LegalBookCategory;
use App\Models\LegalBookSection;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LegalBookSectionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '法律宝典章节';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new LegalBookSection);

        $grid->column('id', __('Id'));
        $grid->column('name', '主题');
        $grid->column('category.title', trans('admin.category'));
        $grid->column('title', trans('admin.section_title'));
        $grid->column('status', trans('admin.status'))->using(LegalBookSection::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function($filter){
           $filter->disableIdFilter();
           $filter->like('category.title',trans('admin.category'));
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
        $show = new Show(LegalBookSection::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', '主题');
        $show->field('cate_id', trans('admin.category'))->as(function ($cate_id) {
            return LegalBookCategory::findOrFail($cate_id)->title;
        });
        $show->field('title', trans('admin.section_title'));
        $show->field('status', trans('admin.status'))->using(LegalBookSection::STATUSES);
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
        $form = new Form(new LegalBookSection);

        $form->text('name', '主题')->required();
        $form->select('cate_id', trans('admin.category'))->options(LegalBookCategory::where([['status', 1], ['is_deleted', 0]])->pluck('title','id')->toArray())->required();
        $form->text('title', trans('admin.section_title'))->required();

        return $form;
    }
}
