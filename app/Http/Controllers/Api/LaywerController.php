<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\LaywerResource;
use App\Models\Laywer;

class LaywerController extends Controller
{
    public function index()
    {
        $laywers = Laywer::paginate(5);
        return LaywerResource::collection($laywers);
    }

    public function show(Laywer $laywer)
    {
        return $this->success(new LaywerResource($laywer));
    }

}
