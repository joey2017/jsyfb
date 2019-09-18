<?php

use Illuminate\Http\Request;

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

        //消息列表
        Route::get('/notices','NoticeController@index')->name('notices.index');
        //消息详情
        Route::get('/notices/{notice}','NoticeController@show')->name('notices.show');

        //文章列表
        Route::get('/articles','ArticleController@index')->name('articles.index');
        //文章详情
        Route::get('/articles/{article}','ArticleController@show')->name('articles.show');

        //点赞
        Route::post('/articles/likes','ArticleLikeController@create')->name('articles-likes.create');

    });
});


