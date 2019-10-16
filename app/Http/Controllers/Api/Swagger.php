<?php

/**
 * @SWG\Swagger(
 *     basePath="/",
 *     host=L5_SWAGGER_CONST_HOST,
 *     schemes={"http","https"},
 *     @SWG\Info(
 *         version="1.0",
 *         title="家有法宝接口文档",
 *         description="家有法宝是一个使用度非常高的微信小程序，发布至今获得了无数的用户好评，为了满足使用者的需要，现将接口列表这里如下，如有问题欢迎及时反馈<br>
以后大家就在这里愉快的对接口把!<br>
以后大家就在这里愉快的对接口把!<br>
以后大家就在这里愉快的对接口把!<br>",
 *         @SWG\Contact(name="joey", email="zongjun.li@outlook.com"),
 *     ),
 *     @SWG\Tag(
 *         name="MainPage",
 *         description="首页模块",
 *     ),
 *
 *     @SWG\Tag(
 *         name="LegalBook",
 *         description="家有法宝宝典",
 *     ),
 *
 *     @SWG\Tag(
 *         name="Tool",
 *         description="工具模块",
 *     ),
 *
 *     @SWG\Tag(
 *         name="Specialist",
 *         description="专属顾问",
 *     ),
 *
 *     @SWG\Tag(
 *         name="User",
 *         description="个人中心",
 *     ),
 *
 *     @SWG\Tag(
 *         name="Misc",
 *         description="其他接口",
 *     ),
 * )
 */

/**
 * @SWG\SecurityScheme(
 *     securityDefinition="Bearer",
 *     type="apiKey",
 *     name="Authorization",
 *     in="header"
 * )
 */

/**
 * @SWG\Definition(
 *     definition="Error",
 *     @SWG\Property(
 *         property="code",
 *         type="string"
 *     ),
 *     @SWG\Property(
 *         property="message",
 *         type="string"
 *     )
 * )
 */