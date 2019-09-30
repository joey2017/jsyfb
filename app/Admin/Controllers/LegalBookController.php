<?php

namespace App\Admin\Controllers;

use App\Models\LegalBook;
use App\Models\LegalBookCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class LegalBookController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '宝典';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new LegalBook);

        $grid->column('id', __('Id'));
        $grid->column('title', trans('admin.book_title'));
        /*$grid->column('cate_id','分类')->display(function($cate_id){
            return LegalBookCategory::find($cate_id)->title;
        });*/
        $grid->column('legalBookCategory.title','分类');
        //$grid->legalBookCategory()->title();
        $grid->column('detail', trans('admin.detail'));
        $grid->column('status', trans('admin.status'))->using(['0' => '禁用','1' => '正常'])->label(['0' => 'danger','1'=>'primary']);
        /*$grid->column('status', trans('admin.status'))->using(['0' => '禁用','1' => '正常'])->icon([
            0 => 'toggle-off',
            1 => 'toggle-on',
        ], $default = '');*/
        //$grid->column('status')->loading([0, 1, 2, 3]);

        $grid->filter(function ($filter){
            /*$filter->scope('title', '最近修改')
                ->whereDate('created_at', date('Y-m-d'))
                ->orWhere('updated_at', date('Y-m-d'));
            */
            
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
        $show = new Show(LegalBook::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', trans('admin.book_title'));
        $show->field('cate_id', trans('admin.cate_id'))->using(LegalBookCategory::all()->pluck('title','id')->toArray());
        $show->field('detail', trans('admin.detail'));
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
        $form = new Form(new LegalBook);

        $form->text('title', trans('admin.book_title'));
        //dd(LegalBookCategory::all()->pluck('title', 'id'));
        $form->select('cate_id','分类')->options(LegalBookCategory::all()->pluck('title', 'id'))->value(request('cate_id'));
        //$form->textarea('detail', trans('admin.detail'));
        $form->editor('detail',trans('admin.detail'));

        return $form;
    }
}
