<?php

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */

use App\Admin\Actions;
use App\Admin\Extensions\Column\OpenMap;
use App\Admin\Extensions\Column\FloatBar;
use App\Admin\Extensions\Column\UrlWrapper;
use App\Admin\Extensions\Nav;
use Encore\Admin\Form;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid\Column;
use App\Admin\Extensions\WangEditor;


Form::forget(['map', 'editor']);

Form::extend('json', \Encore\JsEditor\Json::class);
Form::extend('jsonEditor', \Jxlwqq\JsonEditor\Editor::class);
Form::extend('editor', WangEditor::class);

Admin::css('/css/iconfont/iconfont.css');
//自定义视图模板
app('view')->prependNamespace('admin', resource_path('views/admin'));

Column::extend('openMap', OpenMap::class);
Column::extend('floatBar', FloatBar::class);
Column::extend('urlWrapper', UrlWrapper::class);

Column::extend('prependIcon', function ($value, $icon) {
    return "<span style='color: #999;'><i class='fa fa-$icon'></i>  $value</span>";
});

Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {
    $navbar->right(Nav\Link::make('设置', 'forms/settings'));
    $navbar->right(new Nav\AutoRefresh())
        ->right(new Actions\ClearCache());
});
