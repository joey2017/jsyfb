<?php

namespace App\Admin\Actions\Post;

use Encore\Admin\Actions\BatchAction;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;

class ReportPost extends BatchAction
{
    protected $selector = '.report-posts';

    public function handle(Collection $collection, Request $request)
    {
//        $collection->each->delete();

        return $this->response()->topCenter()->success($request->get('title'))->refresh();
    }

    public function form()
    {
        $options = [
            1 => 'PHP',
            2 => 'Python',
            3 => 'Ruby',
            4 => 'C++',
        ];

        $this->radio('')->options($options);
        $this->textarea('remark', '备注');

    }

    /**
     * @return string
     */
    public function html()
    {
        return "<a class='report-posts btn btn-sm btn-info'>审核</a>";
    }
}