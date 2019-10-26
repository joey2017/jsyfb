<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Notice;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NoticeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '消息';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        $grid = new Grid(new Notice);

        $grid->disableCreateButton();
        $grid->disableExport();

        $grid->column('id', __('Id'));
        $grid->column('user.nickname',trans('admin.nickname'));
        $grid->column('type', trans('admin.type'))->using(Notice::TYPES);
        $grid->column('title', trans('admin.title'));
        $grid->column('content', trans('admin.content'));
        $grid->column('status', trans('admin.status'))->display(function($status){
            return Notice::getStatusName($status);
        })->label(['warning','primary']);

        $grid->filter(function(Grid\Filter $filter){
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->equal('type', trans('admin.type'))->select(Notice::TYPES);
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->equal('status', trans('admin.status'))->select(Notice::STATUSES);
            });
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
        $show = new Show(Notice::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('type', trans('admin.type'))->using(Notice::TYPES);
        $show->field('title', trans('admin.title'));
        $show->field('content', trans('admin.content'));
        $show->field('status', trans('admin.status'))->using(Notice::STATUSES);
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
        $form = new Form(new Notice);

        $form->select('user_id', trans('admin.user_id'))->options(getAllUsersIdAndNickname())->required();
        $form->text('type', trans('admin.type'))->required();
        $form->text('title', trans('admin.title'))->required();
        $form->textarea('content', trans('admin.content'))->required();

        return $form;
    }
}
