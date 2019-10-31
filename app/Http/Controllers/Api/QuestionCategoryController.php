<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LegalBookCategoryResource;
use App\Models\QuestionCategory;

class QuestionCategoryController extends Controller
{

    public function index()
    {
        return $this->success($this->tree());
    }


    public function show(QuestionCategory $category)
    {
        return $this->success(new LegalBookCategoryResource($category));
    }

    /**
     * @param int $parent_id
     * @return array
     */
    protected function tree($parent_id = 0)
    {
        $rows = QuestionCategory::where('parent_id',$parent_id)->orderBy('order','ASC')->get();
        $array = [];
        if (sizeof($rows) != 0) {
            foreach ($rows as &$val){
                unset($val['is_deleted']);
                $val['status'] = QuestionCategory::getStatusName($val['status']);
                $val['list'] = $this->tree($val['id']);
                $array[] = $val;
            }
        }
        return $array;
    }
}
