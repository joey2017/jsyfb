<?php

return [
    'wechat' => [
        // 公众号 APPID
        'app_id'      => env('WECHAT_APP_ID', ''),

        // 小程序 APPID
        'miniapp_id'  => env('WECHAT_MINIAPP_ID', ''),

        // APP 引用的 appid
        'appid'       => env('WECHAT_APPID', ''),

        // 微信支付分配的微信商户号
        'mch_id'      => env('WECHAT_MCH_ID', ''),

        // 微信支付异步通知地址
        'notify_url'  => env('APP_URL_HTTP') . '/' . env('API_PREFIX') . '/' . env('API_VERSION') . '/payment/notify',

        // 微信支付签名秘钥
        'key'         => env('WECHAT_KEY', ''),//微信商户平台(pay.weixin.qq.com)-->账户设置-->API安全-->密钥设置

        // 客户端证书路径，退款、红包等需要用到。请填写绝对路径，linux 请确保权限问题。pem 格式。
        'cert_client' => storage_path('cert/apiclient_cert.pem'),

        // 客户端秘钥路径，退款、红包等需要用到。请填写绝对路径，linux 请确保权限问题。pem 格式。
        'cert_key' => storage_path('cert/apiclient_key.pem'),

        // optional，默认 warning；日志路径为：sys_get_temp_dir().'/logs/yansongda.pay.log'
        'log'      => [
            'file'     => storage_path('logs/wechat.log'),
            'level'    => 'debug',// 建议生产环境等级调整为 info，开发环境为 debug
            'type'     => 'single', // optional, 可选 daily.
            'max_file' => 30,
        ],

        // optional
        // 'dev' 时为沙箱模式
        // 'hk' 时为东南亚节点
        // 'mode'     => 'dev',
    ],
];
