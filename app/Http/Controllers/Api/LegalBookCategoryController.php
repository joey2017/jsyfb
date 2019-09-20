<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LegalBookCategoryResource;
use App\Models\LegalBookCategory;

class LegalBookCategoryController extends Controller
{
    public function index()
    {
        return $this->success($this->tree());
    }

    public function show(LegalBookCategory $category)
    {
        return $this->success(new LegalBookCategoryResource($category));
    }

    protected function tree($parent_id = 0)
    {
        $rows = LegalBookCategory::where('parent_id',$parent_id)->orderBy('order','ASC')->get();
        $array = [];
        if (sizeof($rows) != 0) {
            foreach ($rows as &$val){
                unset($val['is_deleted']);
                $val['status'] = LegalBookCategory::getStatusName($val['status']);
                $val['list'] = $this->tree($val['id']);
                $array[] = $val;
            }
        }
        return $array;
    }
}
