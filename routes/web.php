<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('errors.404');
    //abort(404, '抱歉，未找到数据！');
});

//Route::any('user/test', ['as' => 'user','uses' => 'UserController@test']);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
