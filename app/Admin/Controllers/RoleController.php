<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\RoleController as EncoreRole;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\MessageBag;

class RoleController extends EncoreRole
{

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $roleModel = config('admin.database.roles_model');

        $grid = new Grid(new $roleModel());

        $grid->column('id', 'ID')->sortable();
        $grid->column('slug', trans('admin.slug'));
        $grid->column('name', trans('admin.name'));

        $grid->column('permissions', trans('admin.permission'))->pluck('name')->label();

        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if ($actions->row->slug == 'administrator' || $actions->row->slug == 'laywer') {
                $actions->disableDelete();
            }
        });

        $grid->tools(function (Grid\Tools $tools) {
            $tools->batch(function (Grid\Tools\BatchActions $actions) {
                $actions->disableDelete();
            });
        });

        return $grid;
    }


    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {
        $permissionModel = config('admin.database.permissions_model');
        $roleModel       = config('admin.database.roles_model');

        $form = new Form(new $roleModel());

        $form->display('id', 'ID');

        $form->text('slug', trans('admin.slug'))->rules('required');
        $form->text('name', trans('admin.name'))->rules('required');
        $form->listbox('permissions', trans('admin.permissions'))->options($permissionModel::all()->pluck('name', 'id'));

        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

        $form->saving(function ($form) {
            if ($form->model()->where('id', $form->model()->id)->first()->slug == 'administrator' && $form->slug !== 'administrator') {
                $error = new MessageBag([
                    'title'   => trans('admin.save_failed'),
                    'message' => '“administrator”' . trans('admin.role_slug_must_not_edited'),
                ]);
                return Redirect::back()->with(compact('error'));
            }
            if ($form->model()->where('id', $form->model()->id)->first()->slug == 'laywer' && $form->slug !== 'laywer') {
                $error = new MessageBag([
                    'title'   => trans('admin.save_failed'),
                    'message' => '“laywer”' . trans('admin.role_slug_must_not_edited'),
                ]);
                return Redirect::back()->with(compact('error'));
            }
            return true;
        });

        return $form;
    }
}
