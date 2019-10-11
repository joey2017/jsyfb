<?php

namespace App\Admin\Controllers;

use App\Admin\Forms\Settings;
use App\Admin\Forms\Steps;
use App\Http\Controllers\Controller;
use Encore\Admin\Layout\Content;
use Encore\Admin\Widgets\MultipleSteps;
use Encore\Admin\Widgets;

class FormController extends Controller
{
    public function settings(Content $content)
    {
        return $content
            ->title('系统设置')
            ->body(Widgets\Tab::forms([
                'basic'    => Settings\Basic::class,
                'site'     => Settings\Site::class,
                //'develop'  => Settings\Develop::class,
                //'database' => Settings\Database::class,
                //'upload'   => Settings\Upload::class,
            ]));
    }

    public function register(Content $content)
    {
        return $content
            ->title('注册-表单')
            ->body(MultipleSteps::make([
                'info'     => Steps\Info::class,
                'profile'  => Steps\Profile::class,
                'password' => Steps\Password::class,
            ]));
    }

    protected function dumpRequest(Content $content)
    {
        $parameters = request()->except(['_pjax', '_token']);

        if (!empty($parameters)) {

            ob_start();

            dump($parameters);

            $contents = ob_get_contents();

            ob_end_clean();

            $content->row(new Widgets\Box('Form parameters', $contents));
        }
    }
}