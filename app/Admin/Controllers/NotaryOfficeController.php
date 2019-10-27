<?php

namespace App\Admin\Controllers;

use App\Models\NotaryOffice;
use App\Models\Region\Area;
use App\Models\Region\City;
use App\Models\Region\Province;
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
        $grid->column('picture', trans('admin.image'))->lightbox(['width' => 50, 'height' => 50]);
        $grid->column('summary', trans('admin.summary'));
        $grid->column('comments_count', trans('admin.comments_count'));
        $grid->column('score', trans('admin.score'));
        $grid->column('province_code', trans('admin.province'))->display(function ($province_code) {
            return Province::where('code', $province_code)->first()->province_name ?? '';
        });
        $grid->column('city_code', trans('admin.city_code'))->display(function ($city_code) {
            return City::where('code', $city_code)->first()->city_name ?? '';
        });
        $grid->column('district_code', trans('admin.district_code'))->display(function ($district_code) {
            return Area::where('code', $district_code)->first()->area_name ?? '';
        });
        $grid->column('address', trans('admin.address'));
        $grid->column('lng', trans('admin.lng'));
        $grid->column('lat', trans('admin.lat'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return NotaryOffice::getStatusName($status);
        })->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function (Grid\Filter $filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('name', trans('admin.name'));
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->like('mobile', trans('admin.mobile'));
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
        $show = new Show(NotaryOffice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('telephone', trans('admin.telephone'));
        $show->field('summary', trans('admin.summary'));
        $show->field('comments_count', trans('admin.comments_count'));
        $show->field('score', trans('admin.score'));
        $show->field('province_code', trans('admin.province_code'))->as(function ($province_code) {
            return Province::where('code', $province_code)->first()->province_name ?? '';
        });
        $show->field('city_code', trans('admin.city_code'))->as(function ($city_code) {
            return City::where('code', $city_code)->first()->city_name ?? '';
        });
        $show->field('district_code', trans('admin.district_code'))->as(function ($district_code) {
            return Area::where('code', $district_code)->first()->area_name ?? '';
        });
        $show->field('address', trans('admin.address'));
        $show->field('location', trans('经纬度'))->latlong('lat', 'long', $height = 400);
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

        $form->text('name', trans('admin.name'))->required();
        $form->mobile('mobile', trans('admin.mobile'))->required();
        $form->text('telephone', trans('admin.telephone'));
        $form->image('picture', trans('admin.image'))->required();
        $form->text('summary', trans('admin.summary'))->required();
        $form->text('comments_count', trans('admin.comments_count'));
        $form->text('score', trans('admin.score'));
        $form->distpicker([
            'province_code' => '省份',
            'city_code'     => '市',
            'district_code' => '区'
        ], '地域选择')->required();
        $form->text('address', trans('admin.address'))->required();
        $form->latlong('lat', 'lng', '经纬度')->height(500)->required();

        return $form;
    }


    public function provinces()
    {
        $provinces = Province::all()->pluck('province_name', 'code')->toArray();
        $other     = [
            '0' => '全国',
        ];
        return $other + $provinces;
    }

    public function citys($code)
    {
        if (empty($code)) {
            $citys = [
                '0' => '全国',
            ];
        } else {
            $citys = City::where('province_code', $code)->pluck('city_name', 'code')->toArray();
        }
        return $citys;
    }

    public function areas($code)
    {
        if (empty($code)) {
            $areas = [
                '0' => '全国'
            ];
        } else {
            $areas = Area::where('city_code', $code)->pluck('area_name', 'code')->toArray();
        }
        return $areas;
    }
}
