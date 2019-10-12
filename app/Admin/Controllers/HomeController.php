<?php

namespace App\Admin\Controllers;

use App\Admin\Forms\Dashboard;
use App\Http\Controllers\Controller;
use Encore\Admin\Layout\Content;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->title('快速导航')
            ->description('列表')
            ->row(Dashboard::menus());
    }
}
