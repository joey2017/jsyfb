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
        'infoassets'            => InfoassetsController::class,
        'laywers'               => LaywerController::class,
        'hotacticles'           => HotacticleController::class,
        'balances'              => BalanceController::class,
        'specialists'           => SpecialistController::class,
        'funds/balances'        => BalanceController::class,
        'funds/ingots'          => IngotsController::class,
        'usercenter/collects'   => CollectController::class,
        'usercenter/attentions' => AttentionController::class,
        'usercenter/comments'   => ActiclecommentController::class,
        'legals/category'       => LegalBookCategoryController::class,
    ]);
    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');

    $router->get('/admin/logs', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-index');
    $router->get('/admin/logs/{file}', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-file');
    $router->get('/admin/logs/{file}/tail', 'Encore\Admin\LogViewer\LogController@tail')->name('log-viewer-tail');


});
