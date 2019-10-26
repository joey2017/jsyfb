<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Region\Area;
use App\Models\Region\City;
use App\Models\Region\Province;
use App\Models\User;
use App\Models\UserAddress;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class UserAddressController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '地址';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new UserAddress);

        $grid->column('id', __('Id'));
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('receiver', trans('admin.receiver'));
        $grid->column('receiver_mobile', trans('admin.receiver_mobile'));
        $grid->column('province', trans('admin.province'))->display(function ($province) {
            return Province::where('code', $province)->first()->province_name;
        });
        $grid->column('city', trans('admin.city'))->display(function ($city) {
            return City::where('code', $city)->first()->city_name;
        });
        $grid->column('district', trans('admin.district'))->display(function ($district) {
            return Area::where('code', $district)->first()->area_name;
        });
        $grid->column('address', trans('admin.address'));
        $grid->column('status', trans('admin.status'))->using(UserAddress::STATUSES);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 3, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });
            $filter->column(1 / 3, function ($filter) {
                $filter->like('receiver', trans('admin.receiver'));
            });
            $filter->column(1 / 3, function ($filter) {
                $filter->like('receiver_mobile', trans('admin.mobile'));
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
        $show = new Show(UserAddress::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.nickname'))->as(function ($user_id) {
            return User::findOrFail($user_id)->nickname;
        });
        $show->field('receiver', trans('admin.receiver'));
        $show->field('receiver_mobile', trans('admin.receiver_mobile'));
        $show->field('province', trans('admin.province'))->as(function ($province) {
            return Province::where('code', $province)->first()->province_name;
        });
        $show->field('city', trans('admin.city'))->as(function ($city) {
            return City::where('code', $city)->first()->city_name;
        });
        $show->field('district', trans('admin.district'))->as(function ($district) {
            return Area::where('code', $district)->first()->area_name;
        });
        $show->field('address', trans('admin.address'));
        $show->field('status', trans('admin.status'))->using(UserAddress::STATUSES);
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
        $form = new Form(new UserAddress);

        $form->select('user_id', trans('admin.user_id'))->options(getAllUsersIdAndNickname())->required();
        $form->text('receiver', trans('admin.receiver'))->required();
        $form->mobile('receiver_mobile', trans('admin.receiver_mobile'))->required();
        $form->distpicker([
            'province' => '省份',
            'city'     => '市',
            'district' => '区'
        ], '地域选择')->required();
        $form->text('address', trans('admin.address'))->required();

        return $form;
    }
}
