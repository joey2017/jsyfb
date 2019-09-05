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
        //'infoassets'              => InfoassetsController::class,
        'personnel/laywers'       => LaywerController::class,
        'personnel/specialists'   => SpecialistController::class,
        'personnel/categorys'     => BusinessCategoryController::class,
        'balances'                => BalanceController::class,
        'funds/balances'          => BalanceController::class,
        'funds/ingots'            => IngotsController::class,
        'usercenter/collects'     => CollectController::class,
        'usercenter/attentions'   => AttentionController::class,
        'usercenter/comments'     => ActicleCommentController::class,
        'usercenter/lists'        => UserController::class,
        'legals/books'            => LegalBookController::class,
        'legals/columns'          => ColumnController::class,
        'acticles/browse-history' => BrowseHistoryController::class,
        'acticles/comments'       => ActicleCommentController::class,
        'acticles/likes'          => ActicleLikeController::class,
        'answers/lists'           => AnswerListController::class,
        'answers/records'         => AnswerRecordController::class,
        'acticles'                => ActicleController::class,
        'messages'                => MessageController::class,
        'notices'                 => NoticeController::class,
        'members'                 => MemberController::class,
        'banners'                 => BannerController::class,
        'coupons/grants'          => CouponGrantController::class,
        'coupons'                 => CouponController::class,
        'questions'               => QuestionController::class,
        'laywer-offices'          => LaywerOfficeController::class,
        'notary-offices'          => NotaryOfficeController::class,
        'wechat-attentions'       => WechatAttentionController::class,
        'ingots-use-logs'         => IngotsUseLogController::class,
        'expert-advices'          => ExpertAdviceController::class,
        'exclusive-legal-advices' => ExclusiveLegalAdviceController::class,
        'balance-logs'            => BalanceLogController::class,
    ]);

    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');

    $router->get('/admin/logs', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-index');
    $router->get('/admin/logs/{file}', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-file');
    $router->get('/admin/logs/{file}/tail', 'Encore\Admin\LogViewer\LogController@tail')->name('log-viewer-tail');


});
