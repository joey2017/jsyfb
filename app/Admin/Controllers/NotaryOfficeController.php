<?php

namespace App\Admin\Controllers;

use App\Models\NotaryOffice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;

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
        //$grid->column('name', trans('admin.name'));

        $grid->column('name', trans('admin.name'))->expand(function ($model) {
            $comments = $model->notaryOfficeComments()->take(10)->get()->map(function ($comment) {
                return $comment->only(['id', 'user_id', 'score', 'content', 'created_at']);
            });

            return new Table(['ID', '用户', '评分', '内容', '评论时间'], $comments->toArray());
        });

        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('telephone', trans('admin.telephone'));
        $grid->column('email', trans('admin.email'));
        //$grid->column('qq', 'qq');
        //$grid->column('wechat', trans('admin.wechat'));
        $grid->column('summary', trans('admin.summary'));
        $grid->column('comments_count', trans('admin.comments_count'));
        $grid->column('avg_point', trans('admin.avg_point'));
        $grid->column('address', trans('admin.address'));
        $grid->column('lng', trans('admin.lng'));
        $grid->column('lat', trans('admin.lat'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return NotaryOffice::$_statuses[$status];
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
        $show->field('email', trans('admin.email'));
        //$show->field('qq', 'qq');
        //$show->field('wechat', trans('admin.wechat'));
        $show->field('summary', trans('admin.summary'));
        $show->field('comments_count', trans('admin.comments_count'));
        $show->field('avg_point', trans('admin.avg_point'));
        $show->field('address', trans('admin.address'));
        $show->field('lng', trans('admin.lng'));
        $show->field('lat', trans('admin.lat'));
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
        $form = new Form(new NotaryOffice);

        $form->text('name', trans('admin.name'));
        $form->mobile('mobile', trans('admin.mobile'));
        $form->text('telephone', trans('admin.telephone'));
        $form->email('email', trans('admin.email'));
        //$form->text('qq', 'qq');
        //$form->text('wechat', trans('admin.wechat'));
        $form->text('summary', trans('admin.summary'));
        $form->text('comments_count', trans('admin.comments_count'));
        $form->text('avg_point', trans('admin.avg_point'));
        $form->text('address', trans('admin.address'));
        $form->text('lng', trans('admin.lng'));
        $form->text('lat', trans('admin.lat'));

        return $form;
    }
}
