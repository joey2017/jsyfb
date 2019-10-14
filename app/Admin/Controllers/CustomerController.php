<?php

namespace App\Admin\Controllers;

use App\Models\Customer;
use App\Services\WechatService;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CustomerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '客服';

    protected $wechat;

    protected $url = [
        'add'    => 'https://api.weixin.qq.com/customservice/kfaccount/add?access_token=%s',
        'update' => 'https://api.weixin.qq.com/customservice/kfaccount/update?access_token=%s',
        'del'    => 'https://api.weixin.qq.com/customservice/kfaccount/del?access_token=%s',
        'list'   => 'https://api.weixin.qq.com/cgi-bin/customservice/getkflist?access_token=%s',
    ];

    public function __construct(WechatService $service)
    {
        $this->wechat = $service;
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Customer);

        $grid->column('id', __('Id'));
        $grid->column('nickname', trans('admin.nickname'));
        $grid->column('password', trans('admin.password'));
        $grid->column('status', trans('admin.status'));
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
        $show = new Show(Customer::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nickname', trans('admin.nickname'));
        $show->field('password', trans('admin.password'));
        $show->field('status', trans('admin.status'));
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
        $form = new Form(new Customer);

        $form->text('nickname', trans('admin.nickname'));
        $form->password('password', trans('admin.password'));
        $form->switch('status', trans('admin.status'));

        return $form;
    }
}
