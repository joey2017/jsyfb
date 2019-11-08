<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\ReservationPayment;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ReservationPaymentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '预约支付';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ReservationPayment);

        $grid->disableCreateButton();

        $grid->column('id', __('Id'))->sortable();
        $grid->column('user.nickname', trans('admin.nickname'));
        $grid->column('cost', trans('admin.cost'));
        $grid->column('type', trans('admin.type'))->using(ReservationPayment::TYPES);
        $grid->column('status', trans('admin.status'))->using(ReservationPayment::STATUSES)->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->actions(function ($actions) {
            $actions->disableView();
            $actions->disableEdit();
        });

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 2, function ($filter) {
                $filter->like('user.nickname', trans('admin.nickname'));
            });
            $filter->column(1 / 2, function ($filter) {
                $filter->equal('type', trans('admin.type'))->select(ReservationPayment::TYPES);
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
        $show = new Show(ReservationPayment::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', trans('admin.user_id'));
        $show->field('cost', trans('admin.cost'));
        $show->field('status', trans('admin.status'))->using(ReservationPayment::STATUSES);
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
        $form = new Form(new ReservationPayment);

        $form->select('user_id', trans('admin.nickname'))->options(getAllUsersIdAndNickname());
        $form->decimal('cost', trans('admin.cost'))->default(0.00);

        return $form;
    }
}
