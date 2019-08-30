<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resources([
        'infoassets' => InfoassetsController::class,
    ]);
    $router->resource('laywers', LaywerController::class);
    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');
});
