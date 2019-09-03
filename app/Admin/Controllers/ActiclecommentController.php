<?php

namespace App\Admin\Controllers;

use App\Acticlecomment;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ActiclecommentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '评论';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Acticlecomment);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('acticle_id', __('Acticle id'));
        $grid->column('interpretation', __('Interpretation'));
        $grid->column('measures', __('Measures'));
        $grid->column('content', __('Content'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Acticlecomment::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('acticle_id', __('Acticle id'));
        $show->field('interpretation', __('Interpretation'));
        $show->field('measures', __('Measures'));
        $show->field('content', __('Content'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Acticlecomment);

        $form->number('user_id', __('User id'));
        $form->number('acticle_id', __('Acticle id'));
        $form->textarea('interpretation', __('Interpretation'));
        $form->textarea('measures', __('Measures'));
        $form->textarea('content', __('Content'));

        return $form;
    }
}
