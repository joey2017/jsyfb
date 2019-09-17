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
//    return $request->user();
//});

Route::namespace('Api')->prefix('v1')->middleware('cors')->group(function(){
    Route::get('/users','Usercontroller@index')->name('user.index');
    Route::get('/users/{user}','Usercontroller@show')->name('user.show');
    Route::post('/users','UserController@store')->name('users.store');
    Route::post('/login','UserController@login')->name('users.login');
    Route::get('/users/info','UserController@info')->name('users.info');
});


