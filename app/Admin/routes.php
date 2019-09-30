<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'     => config('admin.route.prefix'),
    'namespace'  => config('admin.route.namespace'),
    'middleware' => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');

    $router->get('coupons/getInfo', 'CouponController@getInfo');

    $router->resources([
        'personnel/laywers'           => LaywerController::class,
        'personnel/specialists'       => SpecialistController::class,
        'personnel/categorys'         => BusinessCategoryController::class,
        'funds/balances'              => BalanceController::class,
        'funds/ingots'                => IngotsController::class,
        'usercenter/comments'         => ArticleCommentController::class,
        'usercenter/lists'            => UserController::class,
        'usercenter/signs'            => UserSignController::class,
        'legals/categorys'            => LegalBookCategoryController::class,
        'legals/books'                => LegalBookController::class,
        'articles/browse-history'     => BrowseHistoryController::class,
        //'articles/comments'           => ArticleCommentController::class,
        'articles/likes'              => ArticleLikeController::class,
        'articles/shares'             => ArticleShareController::class,
        'answers/lists'               => AnswerListController::class,
        'answers/records'             => AnswerRecordController::class,
        'articles'                    => ArticleController::class,
        'messages'                    => MessageController::class,
        'notices'                     => NoticeController::class,
        'members'                     => MemberController::class,
        'banners'                     => BannerController::class,
        'coupons/grants'              => CouponGrantController::class,
        'coupons'                     => CouponController::class,
        'questions/categorys'         => QuestionCategoryController::class,
        'questions'                   => QuestionController::class,
        'tools/notarys/specialists'   => SpecialistController::class,
        'tools/notarys/comments'      => NotaryOfficeCommentController::class,
        'tools/notarys'               => NotaryOfficeController::class,
        'wechat-attentions'           => WechatAttentionController::class,
        'ingots-logs'                 => IngotsLogController::class,
        'expert-advices'              => ExpertAdviceController::class,
        'balance-logs'                => BalanceLogController::class,
        'user-signs'                  => UserSiginController::class,
        'services/reservations'       => ReservationController::class,
    ]);

    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');

    $router->get('/admin/logs', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-index');
    $router->get('/admin/logs/{file}', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-file');
    $router->get('/admin/logs/{file}/tail', 'Encore\Admin\LogViewer\LogController@tail')->name('log-viewer-tail');

});

Route::get('messages/create', 'MessageController@create');
Route::post('messages', 'MessageController@store');
