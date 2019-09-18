<?php
/**
 * @SWG\Swagger(
 *   consumes={"multipart/form-data","application/x-www-form-urlencoded"},
 *   produces={"application/json"},
 *   swagger="2.0",
 *   schemes={"http"},
 *   host=L5_SWAGGER_CONST_HOST,
 *   basePath="/v1",
 *   @SWG\Info(
 *     title="家有法宝",
 *     version="1.0",
 *     description="家有法宝接口文档",
 *     @SWG\Contact(email="zongjun.li@outlook.com"),
 *   )
 * )
 */


/**
 * @SWG\Get(
 *      path="/articles",
 *      operationId="getArticlesList",
 *      tags={"Articles"},
 *      summary="Get list of articles",
 *      description="Returns list of articles",
 *      @SWG\Response(
 *          response=200,
 *          description="successful operation"
 *       ),
 *       @SWG\Response(response=400, description="Bad request"),
 *       security={
 *           {"api_key_security_example": {}}
 *       }
 *     )
 *
 */

/**
 * @SWG\Get(
 *      path="/users/{id}",
 *      operationId="getUserById",
 *      tags={"Users"},
 *      summary="Get user information",
 *      description="Returns user data",
 *      @SWG\Parameter(
 *          name="id",
 *          description="User id",
 *          required=true,
 *          type="integer",
 *          in="path"
 *      ),
 *      @SWG\Response(
 *          response=200,
 *          description="successful operation"
 *       ),
 *      @SWG\Response(response=400, description="Bad request"),
 *      @SWG\Response(response=404, description="Resource Not Found"),
 *      security={
 *         {
 *             "oauth2_security_example": {"write:users", "read:users"}
 *         }
 *     },
 * )
 *
 */

/**
 * @SWG\Get(
 *     path="/users",
 *     summary="用户列表",
 *     tags={"Users"},
 *     description="返回包含所有人的列表。",
 *     @SWG\Parameter(
 *         name="pageSize",
 *         in="query",
 *         description="Number of users returned",
 *         type="integer"
 *     ),
 *     @SWG\Parameter(
 *         name="pageNumber",
 *         in="query",
 *         description="Page number",
 *         type="integer"
 *     ),
 *     @SWG\Response(
 *         response=200,
 *         description="一个用户列表",
 *         @SWG\Schema(
 *             type="array",
 *             @SWG\Items(
 *                  required={"username"},
 *                  required={"id"},
 *                  @SWG\Property(
 *                      property="id",
 *                      type="string",
 *                      description="id"
 *                  ),
 *                  @SWG\Property(
 *                      property="nickname",
 *                      type="string",
 *                      description="nickname"
 *                  ),
 *                  @SWG\Property(
 *                      property="mobile",
 *                      type="string",
 *                      description="mobile"
 *                  ),
 *                  @SWG\Property(
 *                      property="username",
 *                      type="string",
 *                      description="username"
 *                  )
 *             )
 *         ),
 *     ),
 * )
 */

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


/**
 * @OA\Post(path="/store/order",
 *   tags={"store"},
 *   summary="Place an order for a pet",
 *   description="",
 *   operationId="placeOrder",
 *   @OA\RequestBody(
 *       required=true,
 *       description="order placed for purchasing the pet",
 *       @OA\JsonContent(ref="#/components/schemas/Order")
 *   ),
 *   @OA\Response(
 *     response=200,
 *     description="successful operation",
 *     @OA\Schema(ref="#/components/schemas/Order")
 *   ),
 *   @OA\Response(response=400, description="Invalid Order")
 * )
 */


/**
 * @OA\Get(path="/store/order/{orderId}",
 *   tags={"store"},
 *   summary="Find purchase order by ID",
 *   description="For valid response try integer IDs with value >= 1 and <= 10. Other values will generated exceptions",
 *   operationId="getOrderById",
 *   @OA\Parameter(
 *     name="orderId",
 *     in="path",
 *     description="ID of pet that needs to be fetched",
 *     required=true,
 *     @OA\Schema(
 *         type="integer",
 *         format="int64",
 *         minimum=1.0,
 *         maximum=10.0
 *     )
 *   ),
 *   @OA\Response(
 *     response=200,
 *     description="successful operation",
 *     @OA\Schema(ref="#/components/schemas/Order")
 *   ),
 *   @OA\Response(response=400, description="Invalid ID supplied"),
 *   @OA\Response(response=404, description="Order not found")
 * )
 */

/**
 * @OA\Delete(path="/store/order/{orderId}",
 *   tags={"store"},
 *   summary="Delete purchase order by ID",
 *   description="For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors",
 *   operationId="deleteOrder",
 *   @OA\Parameter(
 *     name="orderId",
 *     in="path",
 *     required=true,
 *     description="ID of the order that needs to be deleted",
 *     @OA\Schema(
 *         type="integer",
 *         format="int64",
 *         minimum=1.0
 *     )
 *   ),
 *   @OA\Response(response=400, description="Invalid ID supplied"),
 *   @OA\Response(response=404, description="Order not found")
 * )
 */