<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user

Route::namespace('Api')->prefix('v1')->middleware('cors')->group(function () {
    Route::post('/users', 'UserController@store')->name('users.store');
    Route::post('/login', 'UserController@login')->name('users.login');

    //小程序授权登录
    Route::post('/getwxuserinfo', 'WechatController@getWxUserInfo')->name('wechat.getWxUserInfo');

    //小程序支付回调
    Route::get('/payment/notify','PaymentController@notify')->name('payments.notify');

    Route::middleware('api.refresh')->group(function () {
        //用户留言
        Route::post('/messages', 'MessageController@store')->name('messages.store');
        //当前用户信息
        Route::get('/users/info', 'UserController@info')->name('users.info');
        //用户列表
        //Route::get('/users','UserController@index')->name('users.index');

        //用户退出
        Route::get('/logout', 'UserController@logout')->name('users.logout');
        //用户签到
        Route::get('/signs/{user}', 'UserSignController@show')->name('users-signs.show');
        Route::post('/signs/{user}', 'UserSignController@update')->name('users-signs.update');

        //用户认证
        Route::post('/users/auths', 'AuthenticationController@store')->name('users-auths.store');
        //用户认证详情
        Route::get('/users/auths', 'AuthenticationController@show')->name('users-auths.show');


        //法宝获得渠道列表
        Route::get('/ingots/config', 'IngotsConfigController@index')->name('ingots-configs.index');


        //消息列表
        Route::get('/notices', 'NoticeController@index')->name('notices.index');
        //消息详情
        Route::get('/notices/{notice}', 'NoticeController@show')->name('notices.show');

        //文章列表
        Route::get('/articles', 'ArticleController@index')->name('articles.index');
        //文章发布
        Route::post('/articles', 'ArticleController@store')->name('articles.store');

        //点赞
        Route::post('/articles/likes', 'ArticleLikeController@store')->name('articles-likes.store');

        //分享
        Route::post('/articles/shares', 'ArticleShareController@store')->name('articles-shares.store');

        //律师
        Route::get('/laywers', 'LaywerController@index')->name('laywers.index');

        //律师详情
        Route::get('/laywers/{laywer}', 'LaywerController@show')->name('laywers.show');

        //业务分类
        Route::get('/business/categories', 'BusinessCategoryController@index')->name('business-categories.index');

        //常见问题
        Route::get('/questions', 'QuestionController@index')->name('questions.index');
        Route::get('/questions/categories', 'QuestionCategoryController@index')->name('questions-categories.index');

        //公证处列表
        Route::get('/notarys/offices', 'NotaryOfficeController@index')->name('notarys-offices.index');
        //公证处详情
        Route::get('/notarys/offices/{office}', 'NotaryOfficeController@show')->name('notarys-offices.show');

        //公证处评论删除
        Route::delete('/notarys-offices/comments/{comment}', 'NotaryOfficeCommentController@destroy')->name('notarys-offices-comments.destroy');

        //答题表
        Route::get('/answer/lists', 'AnswerListController@index')->name('answer-lists.index');
        Route::get('/answer/lists/{list}', 'AnswerListController@show')->name('answer-lists.show');

        //每日答题
        Route::get('/answer/records', 'AnswerRecordController@index')->name('answer-records.index');
        Route::post('/answer/records', 'AnswerRecordController@store')->name('answer-records.store');
        Route::get('/answer/records/{record}', 'AnswerRecordController@show')->name('answer-records.show');
        Route::get('/answer/totalranking', 'AnswerRecordController@totalranking')->name('answer-records.totalranking');
        Route::get('/answer/ranking', 'AnswerRecordController@ranking')->name('answer-records.ranking');

        //宝典分类
        Route::get('/legal/categories', 'LegalBookCategoryController@index')->name('legal-categories.index');
        Route::get('/legal/categories/{category}', 'LegalBookCategoryController@show')->name('legal-categories.show');

        //宝典章节
        Route::get('/legal/sections/{cate_id}', 'LegalBookSectionController@show')->name('legal-sections.show');

        //宝典章节详情
        Route::get('/legal/books/{section_id}', 'LegalBookController@show')->name('legal-books.show');

        //我的评论
        Route::get('/users/comments/{user}', 'UserController@comments')->name('users.comments');

        //浏览记录
        Route::get('/users/browse-historys/{user}', 'UserController@browseHistorys')->name('users.browseHistorys');

        //地址
        Route::get('/addresses', 'UserAddressController@index')->name('users-addresses.index');
        Route::get('/users/address/{address}', 'UserAddressController@show')->name('users-addresses.show');
        Route::post('/users/address', 'UserAddressController@store')->name('users-addresses.store');
        Route::put('/users/address/{address}', 'UserAddressController@update')->name('users-addresses.update');
        Route::delete('/users/address/{address}','UserAddressController@destroy')->name('users-addresses.destroy');

        //商品列表
        Route::get('/goods', 'GoodsController@index')->name('goods.index');
        Route::get('/goods/{goods}', 'GoodsController@show')->name('goods.show');

        //关于我们展示
        Route::get('/feedbacks/create', 'FeedbackController@create')->name('feedback.create');

        //意见反馈保存
        Route::post('/feedbacks', 'FeedbackController@store')->name('feedback.store');

        //VIP通过咨询专家
        Route::post('/members', 'MemberController@store')->name('members.store');

        //法宝兑换
        Route::post('/exchanges', 'ExchangeController@store')->name('exchanges.store');
        Route::get('/exchanges', 'ExchangeController@index')->name('exchanges.index');
        Route::get('/exchanges/{exchange}', 'ExchangeController@show')->name('exchanges.show');

        //公证处咨询
        Route::get('/notarys/advices', 'NotaryAdviceController@index')->name('notarys-advices.index');
        Route::post('/notarys/advices', 'NotaryAdviceController@store')->name('notarys-advices.store');

        //关注律师列表
        Route::get('/attentions', 'UserController@attention')->name('users.attentions');

        //关注律师
        Route::post('/attentions', 'AttentionController@store')->name('attentions.store');
        //取消关注律师
        Route::delete('/attentions/{attention}', 'AttentionController@destroy')->name('attentions.destroy');

        //专属顾问列表
        Route::get('/customers', 'CustomerController@index')->name('customers.index');

        //轮播图列表
        Route::get('/banners', 'BannerController@index')->name('banners.index');

        //省份列表
        Route::get('/provinces', 'LaywerController@provinces')->name('laywers.provinces');

        //指定省份城市列表
        Route::get('/citys', 'LaywerController@citys')->name('laywers.citys');

        //指定城市区域列表
        Route::get('/areas', 'LaywerController@areas')->name('laywers.areas');

        //咨询专家保存
        Route::post('/specialist/advices', 'SpecialistAdviceController@store')->name('specialist-advices.store');

        //vip通道法宝消费大小
        Route::get('/ingots/vip', 'IngotsConfigController@show')->name('ingots-config.show');

        //个人法宝数量
        Route::get('/users/ingots', 'UserController@ingots')->name('user.ingots');

        //法宝流水记录
        Route::get('/users/ingots/log', 'UserController@ingotsLog')->name('users.ingotsLog');

        //用户信息
        Route::get('/users/{user}', 'UserController@show')->name('users.show');

        //文章详情
        Route::get('/articles/{article}', 'ArticleController@show')->name('articles.show');

        //图片上传
        Route::post('/upload/image', 'ImageController@upload')->name('images.upload');

        //支付法宝接口
        Route::post('/payment/ingotspay','PaymentController@ingotspay')->name('payments.ingotspay');


    });
});


