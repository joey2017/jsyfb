<?php

namespace App\Admin\Controllers;

use App\Models\NotaryOffice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NotaryOfficeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '公证处';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new NotaryOffice);

        $grid->column('id', __('Id'));

        $grid->column('name', trans('admin.name'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('telephone', trans('admin.telephone'));
        $grid->column('picture', trans('admin.image'));
        $grid->column('summary', trans('admin.summary'));
        $grid->column('comments_count', trans('admin.comments_count'));
        $grid->column('score', trans('admin.score'));
        $grid->column('province_code', trans('admin.province'));
        $grid->column('city_code', trans('admin.city_code'));
        $grid->column('district_code', trans('admin.district_code'));
        $grid->column('address', trans('admin.address'));
        $grid->column('lng', trans('admin.lng'));
        $grid->column('lat', trans('admin.lat'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return NotaryOffice::getStatusName($status);
        })->label(['warning', 'primary']);
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
        $show = new Show(NotaryOffice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('telephone', trans('admin.telephone'));
        //$show->field('email', trans('admin.email'));
        $show->field('summary', trans('admin.summary'));
        $show->field('comments_count', trans('admin.comments_count'));
        $show->field('score', trans('admin.score'));
        $show->field('province_code', trans('admin.province_code'));
        $show->field('city_code', trans('admin.city_code'));
        $show->field('district_code', trans('admin.district_code'));
        $show->field('address', trans('admin.address'));
        $show->field('lng', trans('admin.lng'));
        $show->field('lat', trans('admin.lat'));
        $show->field('status', trans('admin.status'))->using(NotaryOffice::STATUSES);
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
        $form = new Form(new NotaryOffice);

        $form->text('name', trans('admin.name'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->text('telephone', trans('admin.telephone'));
        $form->image('picture', trans('admin.image'));
        $form->text('summary', trans('admin.summary'));
        $form->text('comments_count', trans('admin.comments_count'));
        $form->text('score', trans('admin.score'));
        $form->distpicker([
            'province_code' => '省份',
            'city_code'     => '市',
            'district_code' => '区'
        ], '地域选择');
        $form->text('address', trans('admin.address'));
        $form->text('lng', trans('admin.lng'));
        $form->text('lat', trans('admin.lat'));

        return $form;
    }
}
