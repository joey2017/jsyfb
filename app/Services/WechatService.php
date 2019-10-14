<?php

namespace App\Services;

class WechatService
{
    /**
     * @var string
     */
    private $fpath;


    /**
     * WechatService constructor.
     */
    public function __construct()
    {
        $this->fpath = __DIR__ . '/../../storage/token/';

        !file_exists($this->fpath) && mkdir($this->fpath, 0755);
    }

    /**
     * @param $curl
     * @param bool $https
     * @param string $method
     * @param null $data
     * @return mixed
     */
    public function request($curl, $https = true, $method = 'GET', $data = null)
    {

        $ch	= curl_init();

        // CURL配置参数
        $opt = array(
            CURLOPT_URL				=> $curl,
            CURLOPT_HEADER			=> false,
            CURLOPT_TIMEOUT			=> 30,
            CURLOPT_MAXREDIRS		=> 5,
            CURLOPT_FOLLOWLOCATION	=> false,
            CURLOPT_RETURNTRANSFER	=> false,
            CURLOPT_CONNECTTIMEOUT	=> 15,
        );

        curl_setopt_array($ch, $opt);
        $result = curl_exec($ch);
        curl_close($ch);

        return $result;
        return file_get_contents($curl);
        // 创建一个新cURL资源
        $ch = curl_init();

        // 设置URL和相应的选项
        curl_setopt($ch, CURLOPT_URL, $curl);  //要访问的网站
        //启用时会将头文件的信息作为数据流输出。
        curl_setopt($ch, CURLOPT_HEADER, false);
        //将curl_exec()获取的信息以字符串返回，而不是直接输出。
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        if ($https) {
            //FALSE 禁止 cURL 验证对等证书（peer's certificate）。
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, true); //验证主机
        }
        if ($method == 'POST') {
            curl_setopt($ch, CURLOPT_POST, true); //发送 POST 请求
            //全部数据使用HTTP协议中的 "POST" 操作来发送。
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        }

        // 抓取URL并把它传递给浏览器
        $content = curl_exec($ch);

        //关闭cURL资源，并且释放系统资源
        curl_close($ch);

        return $content;
    }


    /**
     * @return mixed
     */
    public function getAccessToken()
    {
        $file = $this->fpath . 'access_token.json';

        if (!file_exists($file)) {
            file_put_contents($file, '');
        }
        $data = json_decode(file_get_contents($file));

        if (empty($data) || $data->expire_time < time()) {
            $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" . config('wxxcx.appid') . "&secret=" . config('wxxcx.secret');
            //$res          = json_decode($this->request($url));
            $res          = json_decode($this->request($url, false));
            $access_token = $res->access_token;
            if ($access_token) {
                $data['expire_time']  = time() + 7000;
                $data['access_token'] = $access_token;
                file_put_contents($file, json_encode($data));
            } else {
                file_put_contents($file, json_encode($res));
            }
        } else {
            $access_token = $data->access_token;
        }
        return $access_token;
    }
}