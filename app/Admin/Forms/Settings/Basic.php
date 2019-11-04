<?php

namespace App\Admin\Forms\Settings;

use App\Models\IngotsConfig;
use App\Models\SystemConfig;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;

class Basic extends Form
{
    /**
     * The form title.
     *
     * @var string
     */
    public $title = '基本配置';

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

            if ($key == 'vip_ingots' || $key == 'vip_money') {
                $config        = SystemConfig::firstOrCreate(['key' => $key], ['value' => $value]);
                $config->value = $value;
                $config->save();
            } else if (false !== strpos($key, '_')) {
                $result = explode('_', $key);
                IngotsConfig::where('key', '=', $result[0])->update([$result[1] => $value]);
            } else {
                IngotsConfig::where('key', '=', $key)->update(['value' => $value]);
            }
        }

        admin_success('Processed successfully.');

        return back();
    }

    /**
     * Build a form here.
     */
    public function form()
    {
        $this->number('buy', '1元可购买法宝数量')->help('1元可购买法宝数量，须为整数');
        $this->number('game', '游戏闯关获得法宝数量')->help('游戏闯关获得法宝数量，须为整数');
        $this->number('game_limitation', '每天游戏闯关获得法宝次数')->help('游戏闯关获得法宝数量，0表示不限制');
        $this->number('share', '好文分享获得法宝数量')->help('好文分享获得法宝数量，须为整数');
        $this->number('share_limitation', '每天好文分享获得法宝次数')->help('好文分享获得法宝数量，0表示不限制');
        $this->number('wechat', '关注微信公众号获得法宝数量')->help('关注微信公众号获得法宝数量，须为整数');
        $this->number('invite', '邀请好友获得法宝数量')->help('邀请好友获得法宝数量，须为整数');
        $this->number('invite_limitation', '每天邀请好友获得法宝次数')->help('邀请好友获得法宝数量，0表示不限制');
        $this->number('verify', '实名认证获得法宝数量')->help('实名认证获得法宝数量，须为整数');
        $this->number('sign', '每日签到获得法宝数量')->help('每日签到获得法宝数量，须为整数');
        $this->number('vip_ingots', 'VIP通道咨询专属法顾消耗法宝')->help('VIP通道咨询专属法顾消耗法宝，须为整数，单位个');
        $this->number('vip_money', 'VIP通道咨询专属法顾消耗金额')->help('VIP通道咨询专属法顾消耗金额，单位元');
    }

    /**
     * The data of the form.
     *
     * @return array $data
     */
    public function data()
    {
        $results = IngotsConfig::all();
        $data    = SystemConfig::where('key', 'vip_ingots')->orWhere('key', 'vip_money')->pluck('value', 'key')->toArray();
        foreach ($results as $v) {
            $data[$v['key']]                      = $v['value'];
            $data[$v['key'] . '_' . 'limitation'] = $v['limitation'];
        }
        return $data;
    }
}
