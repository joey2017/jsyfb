<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'     => config('admin.route.prefix'),
    'namespace'  => config('admin.route.namespace'),
    'middleware' => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resources([
        'infoassets'  => InfoassetsController::class,
        'laywers'     => LaywerController::class,
        'hotacticles' => HotacticleController::class,
        'balances'    => BalanceController::class,
    ]);
    $router->get('/funds/balances','BalanceController@index');
    $router->get('/funds/ingots','IngotsController@index');
    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');
});
