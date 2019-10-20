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
状态码描述：<br>
200：OK，标准的响应成功状态码<br>
201：Object created，创建、修改成功<br>
202：Accepted，表示一个请求已经进入后台排队（异步任务）<br>
204：No content，用户删除数据成功<br>
206：Partial content，返回部分资源时使用<br>
400：Bad request，请求验证失败<br>
401：Unauthorized，表示用户没有权限（令牌、用户名、密码错误）<br>
403：Forbidden，用户认证通过但是没有权限执行该操作<br>
404：Not found，请求资源不存在<br>
406：Not Acceptable，用户请求的格式不可得（比如用户请求JSON格式，但是只有XML格式）<br>
422：Unprocesable entity，用户未登录 <br>
410：Gone，用户请求的资源被永久删除，且不会再得到的。<br>
500：Internal server error，服务器发生错误，用户将无法判断发出的请求是否成功<br>",
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