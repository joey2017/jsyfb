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

    //公证处省市区筛选
    $router->get('notarys/provinces', 'NotaryOfficeController@provinces');
    $router->get('notarys/citys/{code}', 'NotaryOfficeController@citys');
    $router->get('notarys/areas/{code}', 'NotaryOfficeController@areas');

    $router->resources([
        'personnel/laywers'         => LaywerController::class,
        'personnel/categorys'       => BusinessCategoryController::class,
        //'personnel/answers/records' => AnswerRecordController::class,
        'personnel/lists'           => UserController::class,
        //'personnel/signs'           => UserSignController::class,
        //'personnel/members'         => MemberController::class,
        'personnel/authentications' => AuthenticationController::class,
        'personnel/customers'       => CustomerController::class,
        //'personnel/attentions'      => AttentionController::class,
        'personnel/addresses'       => UserAddressController::class,
        'funds/ingots/logs'         => IngotsLogController::class,
        'funds/ingots'              => IngotsController::class,
        'articles/legals/categorys' => LegalBookCategoryController::class,
        'articles/legals/books'     => LegalBookController::class,
        'articles/legals/sections'  => LegalBookSectionController::class,
        'articles/browse-history'   => BrowseHistoryController::class,
        'articles/likes'            => ArticleLikeController::class,
        'articles/shares'           => ArticleShareController::class,
        'articles/answers/lists'    => AnswerListController::class,
        'articles/cases'            => ArticleController::class,
        'articles/comments'         => ArticleCommentController::class,
        'messages'                  => MessageController::class,
        'notices'                   => NoticeController::class,
        'banners'                   => BannerController::class,
        'questions/categorys'       => QuestionCategoryController::class,
        'questions'                 => QuestionController::class,
        'notarys/consultants'       => ConsultantController::class,
        'notarys/advices'           => NotaryAdviceController::class,
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

    //文章点评
    $router->get('articles/addcomments/{id}', 'ArticleController@addcomments');
    $router->match(['get', 'put'], 'articles/savecomments/{id}', 'ArticleController@savecomments');

    //签到列表
    $router->get('personnel/signs', 'UserSignController@index');
    $router->delete('personnel/signs/{id}', 'UserSignController@destory');

    //每日答题
    $router->get('personnel/answers/records', 'AnswerRecordController@index');
    $router->delete('personnel/answers/records/{id}', 'AnswerRecordController@destory');

    //VIP通道
    $router->get('personnel/members', 'MemberController@index');
    $router->delete('personnel/members/{id}', 'MemberController@destory');

    //关注律师
    $router->get('personnel/attentions', 'AttentionController@index');
    //$router->get('personnel/attentions/{id}','AttentionController@show');
    $router->delete('personnel/attentions/{id}', 'AttentionController@destory');

    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');

    $router->get('/admin/logs', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-index');
    $router->get('/admin/logs/{file}', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-file');
    $router->get('/admin/logs/{file}/tail', 'Encore\Admin\LogViewer\LogController@tail')->name('log-viewer-tail');

});

Route::get('messages/create', 'MessageController@create');
Route::post('messages', 'MessageController@store');
