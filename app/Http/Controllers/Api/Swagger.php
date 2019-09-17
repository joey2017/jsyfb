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
 * Returns list of projects
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

