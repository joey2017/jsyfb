<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllNotarysIdAndName;
use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\NotaryOfficeComment;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NotaryOfficeCommentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '公证处评论';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new NotaryOfficeComment);

        $grid->column('id', __('Id'))->sortable();
        $grid->column('office.name', '公证处名称');
        $grid->column('user.username', '评论者');
        $grid->column('score', trans('admin.score'));
        $grid->column('content', trans('admin.content'));
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
        $show = new Show(NotaryOfficeComment::findOrFail($id));

        $show->field('id', __('Id'));
        //$show->field('office.name', '公证处名称');
        //$show->field('user.username', '评论者');
        $show->office('公证处名称', function ($office) {
            $office->setResource('/admin/notarys');
            $office->name(trans('admin.name'));
            $office->mobile(trans('admin.mobile'));
            $office->picture(trans('admin.image'));
            $office->summary(trans('admin.summary'));
            $office->score(trans('admin.score'));
            $office->province_code(trans('admin.province_code'));
            $office->city_code(trans('admin.city_code'));
            $office->district_code(trans('admin.district_code'));
            $office->address(trans('admin.address'));
        });
        $show->field('score', trans('admin.score'));
        $show->field('content', trans('admin.content'));
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
        $form = new Form(new NotaryOfficeComment);

        $form->select('office_id', '公证处名称')->options(getAllNotarysIdAndName())->required();
        $form->select('user_id', '评论者')->options(getAllUsersIdAndNickname())->required();
        $form->number('score', trans('admin.score'))->required();
        $form->textarea('content', trans('admin.content'));

        return $form;
    }
}
