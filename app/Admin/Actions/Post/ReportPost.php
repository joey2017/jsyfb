<?php

namespace App\Admin\Actions\Post;

use App\Models\Authentication;
use App\Models\IngotsConfig;
use App\Models\IngotsLog;
use App\Models\User;
use App\Services\IngotsService;
use App\Services\NoticeService;
use Doctrine\DBAL\Driver\PDOException;
use Encore\Admin\Actions\BatchAction;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ReportPost extends BatchAction
{
    protected $selector = '.report-posts';

    public function handle(Collection $collection, Request $request)
    {
//        $collection->each->delete();
        $data = $request->all();
        try {
            foreach (is_array($data['_key']) ? $data['_key'] : [$data['_key']] as $val) {
                $result              = Authentication::findOrFail($val);
                $result->status      = $data['status'];
                $result->remark      = $data['remark'];
                $result->review_at   = date('Y-m-d H:i:s');
                $result->veritied_at = date('Y-m-d H:i:s');
                $result->save();

                $user = $result->user;

                //审核通过
                if ($data['status'] == Authentication::PASSED) {
                    $user->is_verified = User::CERTIFIED;
                    $notice            = trans('admin.auth_passed_notice');

                    //获得法宝
                    $quantity      = IngotsConfig::getConfigByKey('verify')->value;
                    $ingotsService = new IngotsService();
                    $ingotsService->update($quantity, '实名认证审核通过获得' . $quantity . '法宝', IngotsLog::TYPE_INCRE, $user);
                } else {
                    $user->is_verified = User::UNCERTIFIED;
                    $notice            = trans('admin.auth_failed_notice');
                }

                $user->save();
                //发消息
                $noticeService = new NoticeService();
                $noticeService->add('实名认证申请审核通知', $notice, $user->id);
            }
        } catch (PDOException $exception) {
            Log::channel('mysqllog')->error('mysql错误：' . $exception->getMessage(), ['info' => $exception->getTraceAsString()]);
        }

        return $this->response()->topCenter()->success($request->get('title'))->refresh();
    }

    public function form()
    {
        //$this->radio('status','审核状态')->options($options);
        $this->hidden('title', '实名认证审核')->value('审核成功');
        $this->select('status', '审核状态')->options(Authentication::STATUSES);
        $this->textarea('remark', '备注');

    }

    /**
     * @return string
     */
    public function html()
    {
        return "<a class='report-posts btn btn-sm btn-info'>审核</a>";
    }
}