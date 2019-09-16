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
//Route::get('/Api/v1/users','App\\Http\\Controller\\Api\Usercontroller@index')->name('user.index');
Route::namespace('Api')->prefix('v1')->group(function(){
    Route::get('/users','Usercontroller@index')->name('user.index');
});
