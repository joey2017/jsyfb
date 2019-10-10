<?php

namespace App\Admin\Forms\Settings;

use App\Models\SystemConfig;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;

class Site extends Form
{
    /**
     * The form title.
     *
     * @var string
     */
    public $title = '网站';

    /**
     * Handle the form request.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request)
    {
        foreach ($request->all() as $key => $value) {
            /*if (is_object($value) && $value->isValid()) {
                $value = 'images/' . $value->originalName;
            }*/
            SystemConfig::updateOrCreate(['key' => $key], ['value' => $value]);
        }

        admin_success('Processed successfully.');

        return back();
    }

    /**
     * Build a form here.
     */
    public function form()
    {
        $this->text('website_title', '站点标题')->help("调用方式：config('website_title')");
        $this->image('website_logo', '站点LOGO');
        $this->textarea('website_desc', '站点描述')->help('网站描述，有利于搜索引擎抓取相关信息');
        $this->text('website_copyright', '版权信息')->help("调用方式：config('website_copyright')");
        $this->text('website_icp', '备案信息')->help("调用方式：config('website_icp')");
        $this->textarea('website_statistics', '网站统计代码')->help("网站统计代码，支持百度、Google、cnzz等，调用方式：config('website_statistics')");
    }

    /**
     * The data of the form.
     *
     * @return array $data
     */
    public function data()
    {
        return SystemConfig::all()->pluck('value', 'key')->toArray();
    }
}
