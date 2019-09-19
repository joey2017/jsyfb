<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\BusinessCategoryResource;
use App\Models\BusinessCategory;

class BusinessCategoryController extends Controller
{
    public function index()
    {
        $categories = BusinessCategory::paginate(5);
        return BusinessCategoryResource::collection($categories);
    }
}
