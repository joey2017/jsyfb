<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\NotaryOfficeResource;
use App\Models\NotaryOffice;

class NotaryOfficeController extends Controller
{
    public function index()
    {
        $notarys = NotaryOffice::paginate(5);
        return NotaryOfficeResource::collection($notarys);
    }

}
