<?php

namespace App\Admin\Controllers;

use App\Models\Consultant;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ConsultantController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '顾问';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Consultant);

        $grid->column('id', __('Id'));
        $grid->column('name', '姓名');
        $grid->column('title', trans('admin.user_title'));
        $grid->column('expertise', trans('admin.expertise'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('telephone', trans('admin.telephone'));
        $grid->column('company', trans('admin.company'));
        $grid->column('comments_count', trans('admin.comments_count'));
        $grid->column('score', trans('admin.score'));
        $grid->column('summary', trans('admin.summary'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return Consultant::getStatusName($status);
        })->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->filter(function (Grid\Filter $filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('name', '姓名');
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
        $show = new Show(Consultant::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', trans('admin.name'));
        $show->field('title', trans('admin.user_title'));
        $show->field('expertise', trans('admin.expertise'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('telephone', trans('admin.telephone'));
        $show->field('score', trans('admin.score'));
        $show->field('company', trans('admin.company'));
        $show->field('summary', trans('admin.summary'));
        $show->field('status', trans('admin.status'))->using(Consultant::STATUSES);
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
        $form = new Form(new Consultant);

        $form->text('name', trans('admin.name'))->required();
        $form->text('title', trans('admin.user_title'));
        $form->text('expertise', trans('admin.expertise'))->required();
        $form->mobile('mobile', trans('admin.mobile'))->required();
        $form->text('telephone', trans('admin.telephone'));
        $form->text('score', trans('admin.score'));
        $form->text('company', trans('admin.company'))->required();
        $form->text('summary', trans('admin.summary'))->required();

        return $form;
    }
}
