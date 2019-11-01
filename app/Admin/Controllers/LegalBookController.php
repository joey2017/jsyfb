<?php

namespace App\Admin\Controllers;

use App\Models\LegalBook;
use App\Models\LegalBookCategory;
use App\Models\LegalBookSection;
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

        $grid->column('id', __('Id'))->sortable();
        $grid->column('legalBookSection.title', trans('admin.section_title'));
        $grid->column('legalBookSection.cate_id', trans('admin.category'))->display(function ($cate_id) {
            return LegalBookCategory::findOrFail($cate_id)->title;
        });
        $grid->column('detail-hide', trans('admin.detail'))->expand(function ($model) {
            return $model->detail;
        });
        $grid->column('status', trans('admin.status'))->using(LegalBook::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter) {

            $filter->disableIdFilter();
            $filter->like('legalBookSection.title', trans('admin.section_title'));

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
        $show = new Show(LegalBook::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('section_id', trans('admin.section_title'))->as(function ($section_id) {
            return LegalBookSection::findOrFail($section_id)->title;
        });
        $show->field('detail', trans('admin.detail'));
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

        $options = LegalBookSection::where('status', LegalBookSection::NORMAL)->pluck('title', 'id')->toArray();
        $form->select('section_id', trans('admin.section_title'))->options($options)->required();
        $form->editor('detail', trans('admin.detail'));

        return $form;
    }
}
