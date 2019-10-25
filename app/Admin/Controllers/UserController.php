<?php

namespace App\Admin\Controllers;

use function App\Helpers\getAllUsersIdAndNickname;
use App\Models\Ingots;
use App\Models\IngotsLog;
use App\Models\User;
use App\Services\NoticeService;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Log;

class UserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '用户';

    protected $notice;

    public function __construct(NoticeService $noticeService)
    {
        $this->notice = $noticeService;
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User);

        $grid->column('id', __('Id'));
        $grid->column('username', trans('admin.username'));
        $grid->column('nickname', trans('admin.nickname'));
        $grid->column('email', trans('admin.email'));
        $grid->column('mobile', trans('admin.mobile'));
        $grid->column('user.username', trans('admin.inviter'));
        $grid->column('last_login_time', trans('admin.last_login_time'));
        $grid->column('is_verified', trans('admin.is_verified'))->using(User::VERIFIEDS)->label([
            0 => 'info',
            1 => 'success',
        ]);
        $grid->column('ingots', trans('admin.ingots'));
        $grid->column('invitation_code', trans('admin.invitation_code'));
        $grid->column('status', trans('admin.status'))->display(function ($status) {
            return User::getStatusName($status);
        })->label(['warning', 'primary']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        $grid->disableCreateButton();

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
        $show = new Show(User::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('username', trans('admin.username'));
        $show->field('nickname', trans('admin.nickname'));
        $show->field('email', trans('admin.email'));
        $show->field('mobile', trans('admin.mobile'));
        $show->field('user.username', trans('admin.username'));
        $show->field('descr', trans('admin.descr'));
        $show->field('last_login_ip', trans('admin.last_login_ip'));
        $show->field('last_login_time', trans('admin.last_login_time'));
        $show->field('is_verified', trans('admin.is_verified'))->using(User::VERIFIEDS);
        $show->field('ingots', trans('admin.ingots'));
        $show->field('invitation_code', trans('admin.invitation_code'));
        $show->field('status', trans('admin.status'))->using(User::STATUSES);
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
        $form = new Form(new User);

        $form->text('username', trans('admin.username'))->required();
        $form->password('password', trans('admin.password'))->required();
        $form->text('nickname', trans('admin.nickname'))->required();
        $form->image('avatar', trans('admin.avatar'))->required();
        $form->email('email', trans('admin.email'));
        $form->mobile('mobile', trans('admin.mobile'))->required();
        $form->select('inviter_id', trans('admin.inviter'))->options(getAllUsersIdAndNickname())->required()->rules('integer');
        $form->text('descr', trans('admin.descr'));
        $form->ip('last_login_ip', trans('admin.last_login_ip'));
        $form->datetime('last_login_time', trans('admin.last_login_time'))->default(date('Y-m-d H:i:s'));
        $form->number('ingots', trans('admin.ingots'));
        $form->text('invitation_code', trans('admin.invitation_code'))->placeholder('6位随机字符串，不建议随便修改')->required();

        $form->saved(function (Form $form) {
            $user_id  = $form->model()->id;
            $username = $form->model()->username;
            $ingots   = $form->model()->ingots;
            try {
                $result     = Ingots::firstOrCreate(['user_id' => $user_id], ['quantity' => 0]);
                $difference = $result->quantity - $ingots;

                if ($difference !== 0) {
                    $result->quantity = $ingots;
                    $result->save();

                    IngotsLog::create([
                        'user_id' => $user_id,
                        'cost'    => abs($difference),
                        'descr'   => '管理员【' . $username . '】修改您的法宝数量为' . $ingots,
                        'type'    => $difference > 0 ? 2 : 1,
                    ]);

                    $this->notice->add('法宝数量变动通知', '管理员【' . $username . '】修改您的法宝数量为' . $ingots, $user_id, 2);
                }

            } catch (\Exception $exception) {
                Log::error('管理员修改用户【' . $username . '】法宝数量失败' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
            }
        });

        return $form;
    }
}
