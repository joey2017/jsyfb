<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\MessageForm;
use App\Models\Message;

/*
 * @swg\Info(title="Project API", version="2")
 */
class MessageController extends Controller
{
    /**
     * @OA\Get(path="/api/v1/messages",
     *   tags={"store"},
     *   summary="Returns pet inventories by status",
     *   description="Returns a map of status codes to quantities",
     *   operationId="getInventory",
     *   parameters={},
     *   @OA\Response(
     *     response=200,
     *     description="successful operation",
     *     @OA\Schema(
     *       additionalProperties={
     *         "type":"integer",
     *         "format":"int32"
     *       }
     *     )
     *   ),
     *   security={{
     *     "api_key":{}
     *   }}
     * )
     */
    public function store(MessageForm $form)
    {
        Message::create($form->all());
        return $this->setStatusCode('201')->success('留言成功');
    }

    /**
     * @OA\Get(path="/store/inventory",
     *   tags={"store"},
     *   summary="Returns pet inventories by status",
     *   description="Returns a map of status codes to quantities",
     *   operationId="getInventory",
     *   parameters={},
     *   @OA\Response(
     *     response=200,
     *     description="successful operation",
     *     @OA\Schema(
     *       additionalProperties={
     *         "type":"integer",
     *         "format":"int32"
     *       }
     *     )
     *   ),
     *   security={{
     *     "api_key":{}
     *   }}
     * )
     */
    public function update(MessageForm $form)
    {
        Message::create($form->all());
        return $this->setStatusCode('201')->success('留言成功');
    }
}
