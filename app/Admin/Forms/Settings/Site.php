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
    public $title = '公司信息';

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
        $this->mobile('telephone', '公司电话');
        $this->text('address', '公司地址');
        $this->text('summary', '公司简介');
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
