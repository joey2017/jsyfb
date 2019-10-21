<?php

namespace App\Admin\Controllers;

use App\Models\LegalBook;
use App\Models\LegalBookCategory;
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
        $grid->column('legalBookSection.title', trans('admin.section_title'))->link('/id/'.$grid->model()->id);
        $grid->column('legalBookSection.cate_id', trans('admin.category'))->display(function ($cate_id) {
            return LegalBookCategory::findOrFail($cate_id)->title;
        });
        $grid->column('detail', trans('admin.detail'));
        $grid->column('status', trans('admin.status'))->using(LegalBook::STATUSES)->label(['warning', 'primary']);

        $grid->filter(function ($filter) {

            $filter->disableIdFilter();
            $filter->like('legalBookSection.title', trans('admin.section_title'));

        });


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
        $show->field('name', '分类主题');
        $show->field('cate_id', trans('admin.category'))->using(LegalBookCategory::all()->pluck('title', 'id')->toArray());
        $show->field('title', trans('admin.section_title'));
        $show->field('status', trans('admin.status'))->using(LegalBook::STATUSES);
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

        $form->text('name', '分类主题');
        $form->select('cate_id', trans('admin.category'))->options(LegalBookCategory::all()->pluck('title', 'id'))->value(request('cate_id'));
        $form->editor('title', trans('admin.section_title'));

        return $form;
    }
}
