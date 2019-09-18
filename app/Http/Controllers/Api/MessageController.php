<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\MessageForm;
use App\Models\Message;

/**
 * @OA\Info(
 *     version="3.0",
 *     title="Task Resource OpenApi",
 *     @OA\Contact(
 *         name="学院君",
 *         url="http://xueyuanjun.com",
 *         email="support@todo.test"
 *     )
 * ),
 * @OA\Server(
 *     url="http://todo.test/dingoapi/tasks"
 * ),
 * @OA\SecurityScheme(
 *     type="oauth2",
 *     description="Use a global client_id / client_secret and your email / password combo to obtain a token",
 *     name="passport",
 *     in="header",
 *     scheme="http",
 *     securityScheme="passport",
 *     @OA\Flow(
 *         flow="password",
 *         authorizationUrl="/oauth/authorize",
 *         tokenUrl="/oauth/token",
 *         refreshUrl="/oauth/token/refresh",
 *         scopes={}
 *     )
 * )
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
