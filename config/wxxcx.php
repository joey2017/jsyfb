<?php

return [
	/**
	 * 小程序APPID
	 */
    'appid' => 'wx153e966429b4ca44',//测试
    /**
     * 小程序Secret
     */
    'secret' => 'dc11be74f7690bf6480de089ee91cdde',//测试
    /**
     * 小程序登录凭证 code 获取 session_key 和 openid 地址，不需要改动
     */
    'code2session_url' => "https://api.weixin.qq.com/sns/jscode2session?appid=%s&secret=%s&js_code=%s&grant_type=authorization_code",
];
