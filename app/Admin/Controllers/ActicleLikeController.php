<?php

namespace App\Admin\Controllers;

use App\ActicleLike;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ActicleLikeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '点赞';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ActicleLike);

        $grid->column('id', __('Id'));
        $grid->column('user_id', __('User id'));
        $grid->column('acticle_id', __('Acticle id'));
        $grid->column('created_at', __('Created at'));

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
        $show = new Show(ActicleLike::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('acticle_id', __('Acticle id'));
        $show->field('created_at', __('Created at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new ActicleLike);

        $form->number('user_id', __('User id'));
        $form->number('acticle_id', __('Acticle id'));

        return $form;
    }
}
