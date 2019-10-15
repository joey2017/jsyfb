<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'     => config('admin.route.prefix'),
    'namespace'  => config('admin.route.namespace'),
    'middleware' => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resource('auth/users', AdminerController::class)->names('admin.auth.users');
    Route::get('articles/comments/getcontent', 'ArticleCommentController@getContent');
    $router->resources([
        'personnel/laywers'         => LaywerController::class,
        'personnel/specialists'     => SpecialistController::class,
        'personnel/categorys'       => BusinessCategoryController::class,
        'personnel/answers/records' => AnswerRecordController::class,
        'personnel/lists'           => UserController::class,
        'personnel/signs'           => UserSignController::class,
        'personnel/members'         => MemberController::class,
        'personnel/reservations'    => ReservationController::class,
        'personnel/authentications' => AuthenticationController::class,
        'personnel/customers'       => CustomerController::class,
        'funds/balances/logs'       => BalanceLogController::class,
        'funds/balances'            => BalanceController::class,
        'funds/ingots/logs'         => IngotsLogController::class,
        'funds/ingots'              => IngotsController::class,
        'articles/legals/categorys' => LegalBookCategoryController::class,
        'articles/legals/books'     => LegalBookController::class,
        'articles/browse-history'   => BrowseHistoryController::class,
        'articles/likes'            => ArticleLikeController::class,
        'articles/shares'           => ArticleShareController::class,
        'articles/answers/lists'    => AnswerListController::class,
        'articles/cases'            => ArticleController::class,
        'articles/comments'         => ArticleCommentController::class,
        'messages'                  => MessageController::class,
        'notices'                   => NoticeController::class,
        'banners'                   => BannerController::class,
        'coupons/grants'            => CouponGrantController::class,
        'coupons'                   => CouponController::class,
        'questions/categorys'       => QuestionCategoryController::class,
        'questions'                 => QuestionController::class,
        'notarys/consultants'       => ConsultantController::class,
        'notarys'                   => NotaryOfficeController::class,
        'wechat-attentions'         => WechatAttentionController::class,
        'expert-advices'            => ExpertAdviceController::class,
        'goods'                     => GoodsController::class,
        'goods-attrs'               => GoodsAttrController::class,
        'feedback'                  => FeedbackController::class,
        'exchanges'                 => ExchangeController::class,
        'specialists/advices'       => SpecialistAdviceController::class,
        'customers/reservations'    => ReservationController::class,

    ]);

    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');

    $router->get('/admin/logs', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-index');
    $router->get('/admin/logs/{file}', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-file');
    $router->get('/admin/logs/{file}/tail', 'Encore\Admin\LogViewer\LogController@tail')->name('log-viewer-tail');

});

Route::get('messages/create', 'MessageController@create');
Route::post('messages', 'MessageController@store');
