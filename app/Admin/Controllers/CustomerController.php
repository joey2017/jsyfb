<?php

namespace App\Admin\Controllers;

use App\Models\Customer;
use App\Services\WechatService;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
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

    protected $wechat;

    protected $url = [
        'add'    => 'https://api.weixin.qq.com/customservice/kfaccount/add?access_token=%s',
        'update' => 'https://api.weixin.qq.com/customservice/kfaccount/update?access_token=%s',
        'del'    => 'https://api.weixin.qq.com/customservice/kfaccount/del?access_token=%s',
        'list'   => 'https://api.weixin.qq.com/cgi-bin/customservice/getkflist?access_token=%s',
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
        $response = $client->request('POST', sprintf($this->url['list'], $this->wechat->getAccessToken()));
        $result   = \GuzzleHttp\json_decode($response->getBody(), true);

        if (isset($result['errcode']) && $result['errcode'] !== 0) {
            Log::error('小程序添加客服账号请求出错：', ['error' => $result]);
        }

        dump($result);die;

        $grid = new Grid(new Customer);

        $grid->column('id', __('Id'));
        $grid->column('username', trans('admin.username'));
        $grid->column('nickname', trans('admin.nickname'));
        $grid->column('status', trans('admin.status'))->using(Customer::STATUSES);
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
        $show = new Show(Customer::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('username', trans('admin.username'));
        $show->field('nickname', trans('admin.nickname'));
        $show->field('status', trans('admin.status'))->using(Customer::STATUSES);
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
        $form = new Form(new Customer);

        $form->text('username', trans('admin.username'));
        $form->text('nickname', trans('admin.nickname'));
        $form->password('password', trans('admin.password'));

        $form->saving(function (Form $form) {
            $data = ['kf_account' => $form->username, 'nickname' => $form->nickname, 'password' => $form->password];
            try {
                $client   = new Client();
                $response = $client->request('POST', sprintf($this->url['add'], $this->wechat->getAccessToken()), $data);
                $result   = \GuzzleHttp\json_decode($response->getBody(), true);
                if ($result['errcode'] !== 0) {
                    Log::error('小程序添加客服账号请求出错：', ['error' => $result]);
                }
            } catch (\Exception $exception) {
                Log::error('添加客服账号请求异常：' . $exception->getMessage(), ['exception' => $exception->getTraceAsString()]);
            }

        });

        return $form;
    }


    /**
     * @param $url 请求网址
     * @param bool $params 请求参数
     * @param int $ispost 请求方式
     * @param int $https https协议
     * @return bool|mixed
     */
    public static function curl($url, $params = false, $ispost = 0, $https = 0)
    {
        $httpInfo = array();
        $ch       = curl_init();
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
}
