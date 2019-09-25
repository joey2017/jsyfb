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

Route::namespace('Api')->prefix('v1')->middleware('cors')->group(function(){
    Route::post('/users','UserController@store')->name('users.store');
    Route::post('/login','UserController@login')->name('users.login');
    Route::get('/banners','BannerController@index')->name('banners.index');


    Route::middleware('api.refresh')->group(function () {
        //用户留言
        Route::post('/messages','MessageController@store')->name('messages.store');
        //当前用户信息
        Route::get('/users/info','UserController@info')->name('users.info');
        //用户列表
        //Route::get('/users','UserController@index')->name('users.index');
        //用户信息
        Route::get('/users/{user}','UserController@show')->name('users.show');
        //用户退出
        Route::get('/logout','UserController@logout')->name('users.logout');
        //用户签到
        Route::get('/signs/{user}','UserSignController@show')->name('user-signs.show');
        Route::post('/signs/{user}','UserSignController@update')->name('user-signs.update');

        //法宝获得渠道列表
        Route::get('/ingots/config','IngotsConfigController@index')->name('ingots-configs.index');


        //消息列表
        Route::get('/notices','NoticeController@index')->name('notices.index');
        //消息详情
        Route::get('/notices/{notice}','NoticeController@show')->name('notices.show');

        //文章列表
        Route::get('/articles','ArticleController@index')->name('articles.index');
        //文章发布
        Route::post('/articles','ArticleController@store')->name('articles.store');
        //文章详情
        Route::get('/articles/{article}','ArticleController@show')->name('articles.show');

        //点赞
        Route::post('/articles/likes','ArticleLikeController@store')->name('articles-likes.store');

        //分享
        Route::post('/articles/shares','ArticleShareController@store')->name('articles-shares.store');

        //律师
        Route::get('/laywers','LaywerController@index')->name('laywers.index');

        //律师详情
        Route::get('/laywers/{laywer}','LaywerController@show')->name('laywers.show');

        //业务分类
        Route::get('/business/categories','BusinessCategoryController@index')->name('business-categories.index');

        //常见问题
        Route::get('/questions','QuestionController@index')->name('questions.index');
        Route::get('/questions/categories','QuestionCategoryController@index')->name('questions-categories.index');

        //公证处列表
        Route::get('/notarys/offices','NotaryOfficeController@index')->name('notarys-offices.index');
        //公证处评论删除
        Route::delete('/notarys-offices/comments/{comment}','NotaryOfficeCommentController@destory')->name('notarys-offices-comments.destory');

        //答题表
        Route::get('/answer/lists','AnswerListController@index')->name('answer-lists.index');
        Route::get('/answer/lists/{list}','AnswerListController@show')->name('answer-lists.show');

        //每日答题
        Route::get('/answer/records','AnswerRecordController@index')->name('answer-records.index');
        Route::post('/answer/records','AnswerRecordController@store')->name('answer-records.store');
        Route::get('/answer/records/{record}','AnswerRecordController@show')->name('answer-records.show');

        //宝典分类
        Route::get('/legal/categories','LegalBookCategoryController@index')->name('legal-categories.index');
        Route::get('/legal/categories/{category}','LegalBookCategoryController@show')->name('legal-categories.show');

        //关注
        Route::get('/attentions','AttentionController@index')->name('attentions.index');
        Route::get('/attentions/{attention}','AttentionController@show')->name('attentions.show');

        //用户评论
        Route::get('/users/comments/{user}','UserController@comments')->name('users.comments');

        //用户收藏
        Route::get('/users/collections/{user}','UserController@collections')->name('users.collections');

        //浏览记录
        Route::get('/users/browse-historys/{user}','UserController@browseHistorys')->name('users.browseHistorys');

        //用户钱包明细
        Route::get('/users/balance-logs/{user}','UserController@balanceLogs')->name('users.balanceLogs');

        //用户地址
        Route::get('/users/addresses','UserAddressController@index')->name('users-addresses.index');
        Route::get('/users/address/{address}','UserAddressController@show')->name('users-addresses.show');
        Route::post('/users/address','UserAddressController@store')->name('users-addresses.store');
        Route::put('/users/address/{address}','UserAddressController@update')->name('users-addresses.update');

        //商品列表
        Route::get('/goods','GoodsController@index')->name('goods.index');
        Route::get('/goods/{goods}','GoodsController@show')->name('goods.show');

        //用户兑换
        Route::get('/exchanges','ExchangeController@index')->name('exchanges.index');
        Route::get('/exchanges/{exchange}','ExchangeController@show')->name('exchanges.show');
        Route::post('/exchanges','ExchangeController@store')->name('exchanges.store');

    });
});


