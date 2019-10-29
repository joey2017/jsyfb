<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Api\CustomerResource;
use App\Models\Customer;

class CustomerController extends Controller
{
    /**
     * @SWG\Get(
     *   path="/customers",
     *   tags={"Specialist"},
     *   summary="专属顾问列表",
     *   security={
     *      {
     *          "Bearer":{}
     *      }
     *   },
     *   description="专属顾问列表",
     *   @SWG\Response(response=200,description="成功")
     * )
     */
    public function index()
    {
        $lists = Customer::where('status', '=', 1)->orderBy('id', 'desc')->paginate(10);
        return $this->success(CustomerResource::collection($lists));
    }
}
