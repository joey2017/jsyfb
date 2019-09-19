<?php

/**
 * @SWG\Swagger(
 *     basePath="/",
 *     host=L5_SWAGGER_CONST_HOST,
 *     schemes={"http"},
 *     @SWG\Info(
 *         version="1.0",
 *         title="家有法宝接口文档",
 *         description="家有法宝是一个使用度非常高的微信小程序，发布至今获得了无数的用户好评，为了满足使用者的需要，现将接口列表这里如下，如有问题欢迎及时反馈",
 *         @SWG\Contact(name="joey", email="zongjun.li@outlook.com"),
 *     )
 * )
 */

/**
 * 定义块，一维数组
 * @SWG\Definition(
 *     definition="goodsTmp",
 *     type="object",
 *     required={"goods_id"},
 *     @SWG\Property(
 *         property="goods_id",
 *         type="integer",
 *         description="商品id"
 *     ),
 *     @SWG\Property(
 *         property="cat_id",
 *         type="string",
 *         description="分类id，最多三级，按数组下标排级别"
 *     ),
 *     @SWG\Property(
 *         property="catName",
 *         type="string",
 *         description="商品分类层级名称，如：一级分类 > 二级分类 > 三级分类"
 *     )
 * )
 */