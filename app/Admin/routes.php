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
    $router->resource('auth/roles', RoleController::class)->names('admin.auth.roles');

    //公证处省市区筛选
    $router->get('notarys/provinces', 'NotaryOfficeController@provinces');
    $router->get('notarys/citys', 'NotaryOfficeController@citys');
    $router->get('notarys/areas', 'NotaryOfficeController@areas');
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
        'notices'             => NoticeController::class,
        'banners'             => BannerController::class,
        'questions/categorys' => QuestionCategoryController::class,
        'questions'           => QuestionController::class,
        'notarys/consultants' => ConsultantController::class,
        'notarys/advices'     => NotaryAdviceController::class,
        'notarys/comments'    => NotaryOfficeCommentController::class,
        'notarys'             => NotaryOfficeController::class,
        'wechat/attentions'   => WechatAttentionController::class,
        'goods'               => GoodsController::class,
        'feedback'            => FeedbackController::class,
        'exchanges'           => ExchangeController::class,
        'specialists/advices' => SpecialistAdviceController::class,

    ]);

    //文章点评
    $router->get('articles/addcomments/{id}', 'ArticleController@addcomments')->middleware('admin.role:laywer,administrator');
    $router->match(['post', 'put'], 'articles/savecomments/{id}', 'ArticleController@savecomments')->middleware('admin.role:laywer,administrator');

    //签到列表
    $router->get('personnel/signs', 'UserSignController@index');
    $router->delete('personnel/signs/{id}', 'UserSignController@destroy');

    //每日答题
    $router->get('personnel/answers/records', 'AnswerRecordController@index');
    $router->delete('personnel/answers/records/{id}', 'AnswerRecordController@destroy');

    //预约支付
    $router->get('personnel/payments', 'ReservationPaymentController@index');
    $router->delete('personnel/payments/{id}', 'ReservationPaymentController@destroy');

    //关注律师
    $router->get('personnel/attentions', 'AttentionController@index');
    //$router->get('personnel/attentions/{id}','AttentionController@show');
    $router->delete('personnel/attentions/{id}', 'AttentionController@destroy');

    //图片上传
    $router->post('uploads/images', 'UploadsController@images');

    $router->get('forms/settings', 'FormController@settings');
    $router->get('forms/register', 'FormController@register');

    $router->get('/admin/logs', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-index');
    $router->get('/admin/logs/{file}', 'Encore\Admin\LogViewer\LogController@index')->name('log-viewer-file');
    $router->get('/admin/logs/{file}/tail', 'Encore\Admin\LogViewer\LogController@tail')->name('log-viewer-tail');

});
