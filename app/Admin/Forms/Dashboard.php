<?php

namespace App\Admin\Forms;

use Illuminate\Support\Facades\DB;

class Dashboard
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public static function menus()
    {
        $menus = DB::table(config('admin.database.menu_table'))->select(['id', 'title', 'icon', 'uri'])->where('parent_id', 0)->get()->toArray();
        return view('admin.dashboard.menus', compact('menus'));
    }
}