/*
Navicat MySQL Data Transfer

Source Server         : 家有法宝
Source Server Version : 50727
Source Host           : 39.100.4.102:3306
Source Database       : jsfb_com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-29 16:09:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'iconfont iconshouyedaohangtubiao', '/', 'personnel', null, '2019-10-12 11:59:25');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '系统', 'iconfont iconxitongguanli3', '/auth/users', null, null, '2019-10-08 09:40:05');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '22', '人员', 'iconfont iconrenyuanguanli', '/personnel/lists', 'personnel', '2019-09-01 18:25:46', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('9', '0', '13', '文章', 'iconfont iconsvgwrite', '/articles/legals/books', '', '2019-09-01 18:46:17', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('10', '0', '36', '财富', 'iconfont iconcaifu', '/funds/ingots', 'funds', '2019-09-01 23:23:14', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('12', '10', '37', '法宝', 'iconfont iconhuobi', '/funds/ingots', 'funds', '2019-09-02 00:24:35', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('15', '8', '23', '用户', 'iconfont iconyonghuguanli4', '/usercenter', 'personnel', '2019-09-02 21:24:08', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('19', '0', '8', '法律宝典', 'iconfont iconfalv', '/articles/legals', 'article', '2019-09-02 23:20:58', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('20', '19', '9', '分类', 'iconfont iconleimupinleifenleileibie', '/articles/legals/categorys', 'article', '2019-09-02 23:27:32', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('21', '19', '11', '宝典', 'iconfont iconbaodian1', '/articles/legals/books', 'article', '2019-09-02 23:29:38', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('22', '9', '15', '浏览记录', 'iconfont iconliulanjilu', '/articles/browse-history', 'article', '2019-09-04 06:19:51', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('73', '0', '0', '兑换', 'fa-bars', '/exchanges', 'exchanges', '2019-10-28 17:26:37', '2019-10-28 17:29:27');
INSERT INTO `admin_menu` VALUES ('24', '9', '16', '点赞', 'iconfont icondianzan', '/articles/likes', 'article', '2019-09-04 06:38:09', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('26', '0', '12', '题库', 'iconfont icontiku1', '/articles/answers/lists', 'article', '2019-09-04 07:26:14', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('27', '15', '26', '每日答题', 'iconfont icondati', '/personnel/answers/records', 'personnel', '2019-09-04 07:27:36', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('28', '0', '48', '意见和留言', 'iconfont iconyonghuliuyan', '/messages', 'message', '2019-09-04 07:39:24', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('29', '8', '32', '律师', 'iconfont iconlvshi', '/personnel/laywers', 'personnel', '2019-09-04 08:01:43', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('30', '0', '40', '消息', 'iconfont iconxiaoxi', '/notices', 'notice', '2019-09-04 08:16:17', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('32', '15', '27', 'VIP通道', 'iconfont iconhuaban', '/personnel/members', 'personnel', '2019-09-04 08:38:43', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('33', '0', '45', '轮播图', 'iconfont iconlunbotuguanli', '/banners', 'banner', '2019-09-04 08:46:48', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('34', '29', '33', '业务分类', 'iconfont iconicon-ywfl', '/personnel/categorys', 'personnel', '2019-09-04 09:14:05', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('35', '15', '24', '所有用户', 'iconfont iconyonghu', '/personnel/lists', 'personnel', '2019-09-04 09:34:12', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('41', '9', '14', '案例', 'iconfont iconanli2', '/articles/cases', '', '2019-09-05 08:08:34', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('42', '15', '25', '签到', 'iconfont iconqiandao', '/personnel/signs', 'personnel', '2019-09-09 02:14:21', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('45', '0', '41', '公证处', 'iconfont icongongzhengchu', '/notarys', 'notary', '2019-09-09 07:19:06', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('68', '9', '21', '点评', 'iconfont icondianping', '/articles/comments', 'articles', '2019-10-15 15:15:19', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('47', '45', '42', '顾问', 'iconfont iconguwen3', '/notarys/consultants', 'notary', '2019-09-10 02:53:13', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('49', '0', '47', '咨询专家', 'iconfont iconmanage-expert', '/specialists/advices', 'specialistAdvice', '2019-09-10 07:51:06', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('71', '19', '10', '章节', 'iconfont iconzhangjie', '/articles/legals/sections', 'articles', '2019-10-21 10:14:52', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('53', '9', '20', '转发', 'fa-share', '/articles/shares', 'article', '2019-09-30 14:00:59', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('54', '28', '49', '用户留言', 'iconfont iconyonghuliuyan1', '/messages', 'message', '2019-10-08 09:17:47', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('55', '28', '50', '意见反馈', 'iconfont iconyijianfankui3', '/feedback', 'message', '2019-10-08 09:19:29', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('70', '15', '29', '关注律师', 'iconfont iconfoucus', '/personnel/attentions', 'personnel', '2019-10-17 10:17:19', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('69', '45', '43', '咨询', 'fa-chain', '/notarys/advices', 'notary', '2019-10-16 09:34:56', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('56', '29', '34', '所有律师', 'iconfont iconlvshiliebiao', '/personnel/laywers', 'personnel', '2019-10-08 09:59:46', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('58', '12', '38', '用户法宝', 'fa-bars', '/funds/ingots', 'funds', '2019-10-08 10:29:39', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('60', '12', '39', '法宝流水', 'iconfont iconliushui2', '/funds/ingots/logs', 'funds', '2019-10-08 10:37:10', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('61', '0', '46', '商品', 'iconfont iconshangpin', '/goods', 'goods', '2019-10-08 11:44:21', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('64', '45', '44', '列表', 'iconfont iconliebiao', '/notarys', 'notary', '2019-10-11 14:08:07', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('63', '15', '30', '实名认证', 'iconfont iconshenfenzhenghaomaguizheng', '/personnel/authentications', 'personnel', '2019-10-10 16:15:16', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('65', '8', '35', '客服', 'fa-tty', '/personnel/customers', 'personnel', '2019-10-14 12:10:16', '2019-10-25 17:30:54');
INSERT INTO `admin_menu` VALUES ('72', '15', '31', '地址', 'fa-bars', '/personnel/addresses', 'personnel', '2019-10-24 12:04:53', '2019-10-25 17:30:54');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', '所有权限', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', '首页', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', '登录', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', '用户设置', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', '认证管理', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '人员管理', 'personnel', '', '/personnel/laywers*\r\n/personnel/specialists*\r\n/personnel/categorys*\r\n/personnel/answers/records*\r\n/personnel/lists*\r\n/personnel/signs*\r\n/personnel/members*\r\n/personnel/reservations*', '2019-09-01 18:26:39', '2019-10-08 10:41:45');
INSERT INTO `admin_permissions` VALUES ('7', '文章管理', 'article', '', '/questions*\r\n/articles*', '2019-09-01 18:46:59', '2019-10-08 10:44:02');
INSERT INTO `admin_permissions` VALUES ('8', '资金管理', 'funds', '', '/funds*', '2019-09-01 23:24:07', '2019-10-08 09:24:40');
INSERT INTO `admin_permissions` VALUES ('18', '优惠券管理', 'coupon', '', '/coupons*', '2019-09-05 01:13:41', '2019-10-08 09:24:58');
INSERT INTO `admin_permissions` VALUES ('10', '日志管理', 'logs', '', '/logs*', '2019-09-02 19:39:49', '2019-10-08 09:25:17');
INSERT INTO `admin_permissions` VALUES ('22', '专家咨询管理', 'specialistAdvice', '', '/specialists*', '2019-10-10 10:13:04', '2019-10-10 10:36:40');
INSERT INTO `admin_permissions` VALUES ('23', '案例点评', 'articles', 'GET,PUT', '/articles/comments*', '2019-10-12 14:55:09', '2019-10-28 17:42:26');
INSERT INTO `admin_permissions` VALUES ('12', '法律宝典管理', 'legal', '', '/legals/category/*\r\n/legals/books/*\r\n/legals/columns/*', '2019-09-02 23:21:46', '2019-10-08 09:25:59');
INSERT INTO `admin_permissions` VALUES ('13', '答题管理', 'answer', '', '/answers*', '2019-09-04 07:24:56', '2019-10-08 09:26:21');
INSERT INTO `admin_permissions` VALUES ('14', '留言管理', 'message', '', '/messages*', '2019-09-04 07:40:39', '2019-10-08 09:26:42');
INSERT INTO `admin_permissions` VALUES ('15', '消息管理', 'notice', '', '/notices*', '2019-09-04 08:16:57', '2019-10-08 09:27:01');
INSERT INTO `admin_permissions` VALUES ('17', '录播图管理', 'banner', '', '/banners*', '2019-09-04 08:45:14', '2019-10-08 09:27:40');
INSERT INTO `admin_permissions` VALUES ('19', '公证处管理', 'notary', '', '/notarys*', '2019-09-09 07:16:36', '2019-10-08 10:46:26');
INSERT INTO `admin_permissions` VALUES ('21', '商品管理', 'goods', '', '/goods*', '2019-10-08 11:45:08', '2019-10-08 11:45:08');
INSERT INTO `admin_permissions` VALUES ('24', '专属顾问', 'customer', '', '/customers*', '2019-10-14 17:19:45', '2019-10-14 17:19:45');
INSERT INTO `admin_permissions` VALUES ('25', '案例查看', 'cases', 'GET', '/articles/cases*', '2019-10-28 17:07:26', '2019-10-28 17:33:26');
INSERT INTO `admin_permissions` VALUES ('27', '点评新增，修改，查看，删除', 'comments', '', '/articles/addcomments*\r\n/articles/savecomments*', '2019-10-28 17:35:15', '2019-10-28 17:43:11');
INSERT INTO `admin_permissions` VALUES ('26', '兑换', 'exchanges', '', '/exchanges*', '2019-10-28 17:28:39', '2019-10-28 17:28:51');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '7', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '22', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '23', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '25', null, null);
INSERT INTO `admin_role_permissions` VALUES ('3', '27', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_users` VALUES ('3', '3', null, null);
INSERT INTO `admin_role_users` VALUES ('1', '4', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '5', null, null);
INSERT INTO `admin_role_users` VALUES ('3', '6', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', '总管理', 'administrator', '2019-08-27 17:09:44', '2019-10-25 14:16:22');
INSERT INTO `admin_roles` VALUES ('2', 'article', 'article', '2019-09-11 02:50:32', '2019-10-12 14:31:02');
INSERT INTO `admin_roles` VALUES ('3', 'laywer', 'laywer', '2019-10-10 11:03:54', '2019-10-10 11:03:54');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------
INSERT INTO `admin_user_permissions` VALUES ('4', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_spec_id` int(11) DEFAULT NULL COMMENT '关联专家id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$iCv87/dvCFckrlfqA52Bp.2FmatcESqGCrKAQR8Yfd.CgtOboL1Ya', '总管理', 'images/4.jpg', 'QaKk0pIOnz2qtgVPsykBFgUlUFUcQx2ujbXzzCc9rqYzcE1ul5xZpbezcuqg', null, '2019-08-27 17:09:44', '2019-10-25 14:17:25');
INSERT INTO `admin_users` VALUES ('2', 'article', '$2y$10$qR40iL3uORy03HpT2m/yOedbDTq9hvWLEp27ctw60djhVfo6M252i', '文章管理', 'images/64f828dc4a0b95f1c364a0299afac7dc.jpg', 'N1DM18N247XRefewqd1R4s7l0aHlKz0boPeRIr6ZHBKZ3vGK6QvNgu7ZYvEm', null, '2019-09-11 02:51:39', '2019-10-28 16:47:04');
INSERT INTO `admin_users` VALUES ('3', 'laywer', '$2y$10$xqCZbVExs64pIA9Y6/3f7u4IE0uHY2uEhBNUXFPS3s/UiH.Z5982C', '律师', 'images/20.jpg', 'O0Ubz2DqBQUFugPNZV2SLpbim2d9u4SZEENESvNNWiuV9G19z460fxJBj5Kw', '3', '2019-10-10 11:05:27', '2019-10-28 17:41:06');
INSERT INTO `admin_users` VALUES ('4', 'root', '$2y$10$CCKk59oyBB3.Qv3cYZ9pA.WKKGt/3YKHzzXCo1Xt/qYjyVcqb1dfy', 'root', 'images/bd5bb3ef13379f87fed22dc3d767b5df.jpg', null, null, '2019-10-12 16:09:11', '2019-10-12 16:09:42');
INSERT INTO `admin_users` VALUES ('5', 'test', '$2y$10$kzbVh/S.v/XR61Rnp3IbPOCi.tJBWR6Wk1mzLkACB8.44jE61N2IC', 'test', 'images/8e3a877476a1cab66251384d9a24e01e.jpg', '5NnL4jzrpjOOaalDO12w9hwbND1BtXT4spiQDHRUYUptvvTwlmW39ummQ4pX', null, '2019-10-25 06:07:48', '2019-10-25 06:07:48');
INSERT INTO `admin_users` VALUES ('6', 'zhao', '$2y$10$45zFkmAbYHxWSs5/hKD3nehby80DPKwtCOuZ8PTpYvChb67Zdw/Yu', '小赵', 'images/微信截图_20191028115430.png', '8fmyuRCQBMtESkfpchy97OAiyLMcJm9a1FN8J2uesGhTRvbVm8pCMsE1xWz6', '1', '2019-10-28 11:55:11', '2019-10-28 16:42:30');
