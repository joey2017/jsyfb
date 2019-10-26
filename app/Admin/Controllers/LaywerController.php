<?php

namespace App\Admin\Controllers;

use App\Constant;
use App\Models\Region\Province;
use App\Models\BusinessCategory;
use App\Models\Laywer;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LaywerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '律师';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Laywer);

        $grid->column('id', __('Id'));
        $grid->column('name', trans('admin.name'));
        $grid->column('title', trans('admin.user_title'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('telephone', trans('admin.telephone'));
        $grid->column('tag', trans('admin.tag'));
        $grid->column('avatar', trans('admin.avatar'))->lightbox(['width' => 50, 'height' => 50]);
        $grid->column('company', trans('admin.company'));
        $grid->column('province_code', trans('admin.province_code'));
        $grid->column('city_code', trans('admin.city_code'));
        $grid->column('expertise', trans('admin.expertise'));
        $grid->column('summary', trans('admin.summary'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return Laywer::getStatusName($status);
        })->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();

            $filter->column(1 / 3, function ($filter) {
                $filter->equal('province_code', trans('admin.province'))->select(Province::all()->pluck('province_name','code')->toArray());
            });

            $filter->column(1 / 3, function ($filter) {
                $filter->in('cate_id', trans('admin.category'))->select(Constant::CASE_TYPES);
            });

            $filter->column(1 / 3, function ($filter) {
                $filter->between('created_at', trans('admin.created_at'))->datetime();
            });
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
        $show = new Show(Laywer::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('title', trans('admin.user_title'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('telephone', trans('admin.telephone'));
        $show->field('tag', trans('admin.tag'));
        $show->avatar(trans('admin.avatar'))->image();
        $show->field('company', trans('admin.company'));
        $show->field('province_code', trans('admin.province_code'));
        $show->field('city_code', trans('admin.city_code'));
        $show->field('expertise', trans('admin.expertise'));
        //$show->field('cate_id', trans('admin.cate_id'));
        $show->field('summary', trans('admin.summary'));
        $show->field('status', trans('admin.status'))->using(Laywer::STATUSES);
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
        $form = new Form(new Laywer);

        $form->text('name', trans('admin.name'))->required();
        $form->text('title', trans('admin.user_title'));
        $form->mobile('mobile', trans('admin.mobile'))->required();
        $form->text('telephone', trans('admin.telephone'));
        $form->text('tag', trans('admin.tag'))->placeholder('如果是专家填写specialist,律师填写laywer')->required();
        $form->image('avatar', trans('admin.avatar'))->required();
        $form->text('company', trans('admin.company'))->required();
        $form->distpicker([
            'province_code' => '省份',
            'city_code'     => '市',
            'district_code' => '区'
        ], '地域选择')->required();
        $form->multipleSelect('cate_id', trans('admin.category'))->options(BusinessCategory::all()->pluck('title', 'id')->toArray())->required();
        //$form->text('expertise', trans('admin.expertise'))->placeholder('请输入已选择分类里面的中文，如房地产，公司诉讼，多个请用逗号间隔');
        $form->text('summary', trans('admin.summary'))->required();

        $form->saving(function (Form $form) {
            $form->model()->expertise = BusinessCategory::findMany($form->cate_id)->pluck('title')->toJson(JSON_UNESCAPED_UNICODE);
        });

        return $form;
    }
}
