<?php

namespace App\Admin\Controllers;

use App\Models\Customer;
use App\Services\WechatService;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Log;

class CustomerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '客服';

    /**
     * @var WechatService
     */
    protected $wechat;

    /**
     * @var array
     */
    protected $url = [
        'add'    => 'https://api.weixin.qq.com/customservice/kfaccount/add?access_token=%s',
        'update' => 'https://api.weixin.qq.com/customservice/kfaccount/update?access_token=%s',
        'del'    => 'https://api.weixin.qq.com/customservice/kfaccount/del?access_token=%s',
        'list'   => 'https://api.weixin.qq.com/cgi-bin/customservice/getkflist?access_token=%s',
        'ID'     => 'gh_f2d4ca265559',
    ];

    public function __construct(WechatService $service)
    {
        $this->wechat = $service;
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $client   = new Client();
        $response = $client->request('GET', sprintf($this->url['list'], $this->wechat->getAccessToken()));
        $result   = \GuzzleHttp\json_decode($response->getBody(), true);

        $insert = $this->insert($result['kf_list']);

        if (!$insert) {
            Log::error('后台更新客服数据失败：', $result);
        }

        $grid = new Grid(new Customer);

        $grid->disableCreateButton();
        $grid->column('id', __('Id'));
        $grid->column('kf_account', trans('admin.kf_account'));
        $grid->column('kf_nick', trans('admin.nickname'));
        $grid->column('kf_wx', trans('admin.wechat'));
        $grid->column('kf_headimgurl', trans('admin.avatar'))->lightbox(['width' => 50, 'height' => 50]);
        $grid->column('status', trans('admin.status'))->using(Customer::STATUSES);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));

        /*
        $grid->actions(function ($actions) {
            // 去掉编辑
            $actions->disableEdit();

            // 去掉查看
            $actions->disableView();

            // 去掉删除
            $actions->disableDelete();
        });
        */

        $grid->disableActions();

        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Customer);

        $form->text('kf_account', trans('admin.kf_account'));
        $form->text('kf_nick', trans('admin.nickname'));
        $form->password('password', trans('admin.password'));

        $form->savd(function (Form $form) {
            try {
                $data     = [
                    'kf_account' => $form->model()->kf_account,
                    'nickname'   => $form->model()->nickname,
                    'kf_nick'    => $form->model()->kf_nick,
                    'kf_id'      => $form->model()->kf_id,
                ];
                $client   = new Client();
                $response = $client->request('GET', sprintf($this->url['del'], $this->wechat->getAccessToken()), ['form_data' => $data]);
                $result   = \GuzzleHttp\json_decode($response->getBody(), true);
                if ($result['errcode'] !== 0) {
                    Log::error('调用微信删除客服接口失败：', $result);
                    return admin_error('删除失败', '小程序端客服接口调用失败,无法删除');
                }
            } catch (\Exception $exception) {
                Log::error('调用微信删除客服异常：', ['info' => $exception->getTraceAsString()]);
            }

        });

        return $form;
    }


    /**
     * @param $url
     * @param bool $params
     * @param int $ispost
     * @param int $https
     * @return bool|mixed
     */
    public static function curl($url, $params = false, $ispost = 0, $https = 0)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36');
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        if ($https) {
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE); // 对认证证书来源的检查
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE); // 从证书中检查SSL加密算法是否存在
        }
        if ($ispost) {
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
            curl_setopt($ch, CURLOPT_URL, $url);
        } else {
            if ($params) {
                if (is_array($params)) {
                    $params = http_build_query($params);
                }
                curl_setopt($ch, CURLOPT_URL, $url . '?' . $params);
            } else {
                curl_setopt($ch, CURLOPT_URL, $url);
            }
        }

        $response = curl_exec($ch);

        if ($response === FALSE) {
            return false;
        }
        curl_close($ch);
        return $response;
    }


    /**
     * @param $data
     * @return bool
     */
    protected function insert($data)
    {
        if (empty($data)) {
            return false;
        }

        foreach ($data as $datum) {
            Customer::firstOrCreate(['kf_id' => $datum['kf_id'], 'kf_wx' => $datum['kf_wx']], $datum);
        }
        return true;
    }
}
