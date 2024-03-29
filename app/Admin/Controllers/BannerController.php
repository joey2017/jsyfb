<?php

namespace App\Admin\Controllers;

use App\Models\Banner;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BannerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '轮播图';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Banner);

        $grid->column('id', __('Id'))->sortable();
        $grid->column('picname', trans('admin.picname'));
        $grid->column('image_path', trans('admin.image_path'))->lightbox(['width' => 50, 'height' => 50]);
        $grid->column('url', trans('admin.url'))->link();
        $grid->column('sort', trans('admin.sort'));
        $grid->column('status', trans('admin.status'))->using(Banner::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->like('picname', trans('admin.picname'));
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
        $show = new Show(Banner::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('picname', trans('admin.picname'));
        $show->field('image_path', trans('admin.image_path'));
        $show->field('url', trans('admin.url'))->link();
        $show->field('sort', trans('admin.sort'));
        $show->field('status', trans('admin.status'))->using(Banner::STATUSES);
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
        $form = new Form(new Banner);

        $form->text('picname', trans('admin.picname'))->required();
        $form->image('image_path', trans('admin.image_path'))->required();
        $form->text('url', trans('admin.url'))->required();
        $form->text('sort', trans('admin.sort'));

        return $form;
    }
}
