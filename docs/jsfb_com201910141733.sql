/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50727
Source Host           : 127.0.0.1:3306
Source Database       : jsfb_com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-14 17:33:36
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
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_menu` VALUES ('8', '0', '9', '人员', 'iconfont iconrenyuanguanli', '/personnel/lists', 'personnel', '2019-09-01 18:25:46', '2019-10-08 09:39:45');
INSERT INTO `admin_menu` VALUES ('9', '0', '8', '文章', 'iconfont iconsvgwrite', '/articles/legals/books', '', '2019-09-01 18:46:17', '2019-10-08 09:38:47');
INSERT INTO `admin_menu` VALUES ('10', '0', '10', '财富', 'iconfont iconzhanghuyueguanli', '/funds/ingots', 'funds', '2019-09-01 23:23:14', '2019-10-08 09:37:48');
INSERT INTO `admin_menu` VALUES ('11', '10', '11', '余额', 'iconfont iconyue', '/funds/balances', 'funds', '2019-09-01 23:30:55', '2019-10-08 09:38:04');
INSERT INTO `admin_menu` VALUES ('12', '10', '12', '法宝', 'iconfont iconhuobi', '/funds/ingots', 'funds', '2019-09-02 00:24:35', '2019-10-08 09:38:22');
INSERT INTO `admin_menu` VALUES ('13', '8', '13', '专家', 'iconfont iconzhuanjiaguanli', '/personnel/specialists', 'personnel', '2019-09-02 19:12:07', '2019-10-08 09:39:26');
INSERT INTO `admin_menu` VALUES ('15', '8', '9', '用户', 'iconfont iconyonghuguanli4', '/usercenter', 'personnel', '2019-09-02 21:24:08', '2019-10-08 09:41:27');
INSERT INTO `admin_menu` VALUES ('19', '9', '19', '法律宝典', 'iconfont iconfalv', '/articles/legals', 'article', '2019-09-02 23:20:58', '2019-10-08 10:02:16');
INSERT INTO `admin_menu` VALUES ('20', '19', '20', '分类', 'iconfont iconleimupinleifenleileibie', '/articles/legals/categorys', 'article', '2019-09-02 23:27:32', '2019-10-08 10:03:17');
INSERT INTO `admin_menu` VALUES ('21', '19', '21', '宝典', 'iconfont iconbaodian1', '/articles/legals/books', 'article', '2019-09-02 23:29:38', '2019-10-08 10:03:39');
INSERT INTO `admin_menu` VALUES ('22', '9', '22', '浏览记录', 'iconfont iconliulanjilu', '/articles/browse-history', 'article', '2019-09-04 06:19:51', '2019-09-11 03:52:48');
INSERT INTO `admin_menu` VALUES ('50', '15', '50', '服务预约', 'iconfont iconfuwuyuyue1', '/personnel/reservations', 'personnel', '2019-09-10 08:53:13', '2019-10-08 09:46:31');
INSERT INTO `admin_menu` VALUES ('24', '9', '24', '点赞', 'iconfont icondianzan', '/articles/likes', 'article', '2019-09-04 06:38:09', '2019-09-11 03:53:34');
INSERT INTO `admin_menu` VALUES ('51', '39', '51', '问题', 'fa-bars', '/questions', 'article', '2019-09-11 06:24:29', '2019-09-11 06:24:29');
INSERT INTO `admin_menu` VALUES ('26', '9', '26', '题库', 'iconfont icontiku1', '/articles/answers/lists', 'article', '2019-09-04 07:26:14', '2019-10-08 10:05:33');
INSERT INTO `admin_menu` VALUES ('27', '15', '27', '每日答题', 'iconfont icondati', '/personnel/answers/records', 'personnel', '2019-09-04 07:27:36', '2019-10-08 10:06:37');
INSERT INTO `admin_menu` VALUES ('28', '0', '56', '意见和留言', 'iconfont iconyonghuliuyan', '/messages', 'message', '2019-09-04 07:39:24', '2019-10-08 09:16:57');
INSERT INTO `admin_menu` VALUES ('29', '8', '29', '律师', 'iconfont iconlvshi', '/personnel/laywers', 'personnel', '2019-09-04 08:01:43', '2019-10-08 09:39:06');
INSERT INTO `admin_menu` VALUES ('30', '0', '30', '消息', 'iconfont iconxiaoxi', '/notices', 'notice', '2019-09-04 08:16:17', '2019-10-08 09:36:14');
INSERT INTO `admin_menu` VALUES ('32', '15', '32', 'VIP通道', 'iconfont iconhuaban', '/personnel/members', 'personnel', '2019-09-04 08:38:43', '2019-10-08 09:47:38');
INSERT INTO `admin_menu` VALUES ('33', '0', '44', '轮播图', 'iconfont iconlunbotuguanli', '/banners', 'banner', '2019-09-04 08:46:48', '2019-10-08 09:35:57');
INSERT INTO `admin_menu` VALUES ('34', '29', '34', '业务分类', 'iconfont iconicon-ywfl', '/personnel/categorys', 'personnel', '2019-09-04 09:14:05', '2019-10-08 09:58:32');
INSERT INTO `admin_menu` VALUES ('35', '15', '10', '所有用户', 'iconfont iconyonghu', '/personnel/lists', 'personnel', '2019-09-04 09:34:12', '2019-10-08 09:43:26');
INSERT INTO `admin_menu` VALUES ('36', '0', '36', '优惠券', 'iconfont iconyouhuiquan2', '/coupons', 'coupon', '2019-09-05 01:13:01', '2019-09-05 01:14:32');
INSERT INTO `admin_menu` VALUES ('37', '36', '37', '发放记录', 'iconfont iconfafang', '/coupons/grants', 'coupon', '2019-09-05 01:16:47', '2019-09-05 01:29:14');
INSERT INTO `admin_menu` VALUES ('38', '36', '38', '优惠券列表', 'iconfont iconyouhuiquanliebiao1', '/coupons', 'coupon', '2019-09-05 01:35:55', '2019-10-08 09:34:17');
INSERT INTO `admin_menu` VALUES ('39', '9', '39', '热门问题', 'iconfont iconremenwenti', '/questions', 'article', '2019-09-05 02:47:25', '2019-09-05 02:47:25');
INSERT INTO `admin_menu` VALUES ('41', '9', '41', '案例', 'iconfont iconanli2', '/articles/cases', 'articles', '2019-09-05 08:08:34', '2019-10-12 15:40:00');
INSERT INTO `admin_menu` VALUES ('42', '15', '11', '签到', 'iconfont iconqiandao', '/personnel/signs', 'personnel', '2019-09-09 02:14:21', '2019-10-08 09:43:51');
INSERT INTO `admin_menu` VALUES ('45', '0', '43', '公证处', 'iconfont icongongzhengchu', '/notarys', 'notary', '2019-09-09 07:19:06', '2019-10-08 09:21:44');
INSERT INTO `admin_menu` VALUES ('47', '45', '47', '顾问', 'iconfont iconguwen3', '/notarys/consultants', 'notary', '2019-09-10 02:53:13', '2019-10-12 09:43:16');
INSERT INTO `admin_menu` VALUES ('48', '39', '48', '分类', 'iconfont iconleimupinleifenleileibie', '/questions/categorys', 'acticle', '2019-09-10 06:54:45', '2019-09-10 06:56:50');
INSERT INTO `admin_menu` VALUES ('49', '0', '49', '咨询专家', 'iconfont iconmanage-expert', '/specialists/advices', 'specialistAdvice', '2019-09-10 07:51:06', '2019-10-10 10:37:05');
INSERT INTO `admin_menu` VALUES ('53', '9', '53', '转发', 'fa-share', '/articles/shares', 'article', '2019-09-30 14:00:59', '2019-09-30 14:00:59');
INSERT INTO `admin_menu` VALUES ('54', '28', '54', '用户留言', 'iconfont iconyonghuliuyan1', '/messages', 'message', '2019-10-08 09:17:47', '2019-10-08 10:24:47');
INSERT INTO `admin_menu` VALUES ('55', '28', '55', '意见反馈', 'iconfont iconyijianfankui3', '/feedback', 'message', '2019-10-08 09:19:29', '2019-10-08 10:25:40');
INSERT INTO `admin_menu` VALUES ('66', '0', '0', '专属顾问', 'fa-bars', '/customers', 'customer', '2019-10-14 17:19:00', '2019-10-14 17:20:06');
INSERT INTO `admin_menu` VALUES ('56', '29', '0', '所有律师', 'fa-bars', '/personnel/laywers', 'personnel', '2019-10-08 09:59:46', '2019-10-08 09:59:46');
INSERT INTO `admin_menu` VALUES ('57', '11', '0', '用户余额', 'fa-bars', '/funds/balances', 'funds', '2019-10-08 10:28:42', '2019-10-08 10:28:42');
INSERT INTO `admin_menu` VALUES ('58', '12', '0', '用户法宝', 'fa-bars', '/funds/ingots', 'funds', '2019-10-08 10:29:39', '2019-10-08 10:29:39');
INSERT INTO `admin_menu` VALUES ('59', '11', '0', '余额流水', 'iconfont iconliushui2', '/funds/balances/logs', 'funds', '2019-10-08 10:36:39', '2019-10-08 11:52:04');
INSERT INTO `admin_menu` VALUES ('60', '12', '0', '法宝流水', 'iconfont iconliushui2', '/funds/ingots/logs', 'funds', '2019-10-08 10:37:10', '2019-10-08 11:52:23');
INSERT INTO `admin_menu` VALUES ('61', '0', '45', '商品', 'iconfont iconshangpin', '/goods', 'goods', '2019-10-08 11:44:21', '2019-10-08 11:44:21');
INSERT INTO `admin_menu` VALUES ('64', '45', '0', '列表', 'fa-bars', '/notarys', 'notary', '2019-10-11 14:08:07', '2019-10-11 14:08:07');
INSERT INTO `admin_menu` VALUES ('63', '15', '0', '实名认证', 'iconfont iconshenfenzhenghaomaguizheng', '/personnel/authentications', 'personnel', '2019-10-10 16:15:16', '2019-10-12 12:00:28');
INSERT INTO `admin_menu` VALUES ('65', '8', '0', '客服', 'fa-tty', '/personnel/customers', 'personnel', '2019-10-14 12:10:16', '2019-10-14 12:11:06');
INSERT INTO `admin_menu` VALUES ('67', '66', '0', '找律师', 'fa-bars', '/customers/laywer', null, '2019-10-14 17:30:51', '2019-10-14 17:30:51');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-08-27 17:11:00', '2019-08-27 17:11:00');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-08-28 17:33:09', '2019-08-28 17:33:09');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-08-28 17:33:18', '2019-08-28 17:33:18');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 17:33:35', '2019-08-28 17:33:35');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-08-28 17:37:26', '2019-08-28 17:37:26');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 16:49:19', '2019-09-01 16:49:19');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 16:49:28', '2019-09-01 16:49:28');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 16:49:34', '2019-09-01 16:49:34');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-01 16:52:57', '2019-09-01 16:52:57');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 16:53:06', '2019-09-01 16:53:06');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 16:53:12', '2019-09-01 16:53:12');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eea\\u8868\\u677f\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 16:53:34', '2019-09-01 16:53:34');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 16:53:36', '2019-09-01 16:53:36');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 16:53:43', '2019-09-01 16:53:43');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 16:53:58', '2019-09-01 16:53:58');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 16:54:01', '2019-09-01 16:54:01');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 16:54:07', '2019-09-01 16:54:07');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 17:09:06', '2019-09-01 17:09:06');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 18:24:21', '2019-09-01 18:24:21');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 18:24:26', '2019-09-01 18:24:26');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/laywer\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}', '2019-09-01 18:25:46', '2019-09-01 18:25:46');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 18:25:48', '2019-09-01 18:25:48');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:25:53', '2019-09-01 18:25:53');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:25:59', '2019-09-01 18:25:59');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:26:04', '2019-09-01 18:26:04');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:26:16', '2019-09-01 18:26:16');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"laywer\",\"name\":\"laywerManagement\",\"http_method\":[null],\"http_path\":\"\\/laywer*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-01 18:26:39', '2019-09-01 18:26:39');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-01 18:26:42', '2019-09-01 18:26:42');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:26:49', '2019-09-01 18:26:49');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:26:54', '2019-09-01 18:26:54');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/laywer\",\"roles\":[null],\"permission\":\"laywer\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 18:27:02', '2019-09-01 18:27:02');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 18:27:04', '2019-09-01 18:27:04');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 18:27:08', '2019-09-01 18:27:08');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/laywer', 'GET', '127.0.0.1', '[]', '2019-09-01 18:28:17', '2019-09-01 18:28:17');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/laywer', 'GET', '127.0.0.1', '[]', '2019-09-01 18:28:33', '2019-09-01 18:28:33');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/laywer', 'GET', '127.0.0.1', '[]', '2019-09-01 18:29:06', '2019-09-01 18:29:06');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/laywer', 'GET', '127.0.0.1', '[]', '2019-09-01 18:33:15', '2019-09-01 18:33:15');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/laywer', 'GET', '127.0.0.1', '[]', '2019-09-01 18:34:29', '2019-09-01 18:34:29');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/laywer', 'GET', '127.0.0.1', '[]', '2019-09-01 18:39:06', '2019-09-01 18:39:06');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/laywer/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:39:17', '2019-09-01 18:39:17');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/laywer/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 18:40:32', '2019-09-01 18:40:32');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/laywer/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 18:42:15', '2019-09-01 18:42:15');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/laywer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:42:52', '2019-09-01 18:42:52');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/laywer/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:42:59', '2019-09-01 18:42:59');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/laywer/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:43:03', '2019-09-01 18:43:03');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:43:47', '2019-09-01 18:43:47');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/acticle\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}', '2019-09-01 18:46:17', '2019-09-01 18:46:17');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 18:46:19', '2019-09-01 18:46:19');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:46:29', '2019-09-01 18:46:29');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:46:33', '2019-09-01 18:46:33');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/acticle*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-01 18:46:59', '2019-09-01 18:46:59');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-01 18:47:01', '2019-09-01 18:47:01');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 18:47:08', '2019-09-01 18:47:08');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/acticle*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-01 18:47:24', '2019-09-01 18:47:24');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-01 18:47:27', '2019-09-01 18:47:27');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-01 19:06:20', '2019-09-01 19:06:20');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-01 19:06:48', '2019-09-01 19:06:48');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:06:56', '2019-09-01 19:06:56');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:07:01', '2019-09-01 19:07:01');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/acticles\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 19:07:13', '2019-09-01 19:07:13');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 19:07:15', '2019-09-01 19:07:15');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:07:21', '2019-09-01 19:07:21');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/hotacticles\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 19:07:39', '2019-09-01 19:07:39');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 19:07:41', '2019-09-01 19:07:41');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:07:53', '2019-09-01 19:07:53');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:07:59', '2019-09-01 19:07:59');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-01 19:08:07', '2019-09-01 19:08:07');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-01 19:08:09', '2019-09-01 19:08:09');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-01 19:08:36', '2019-09-01 19:08:36');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:08:44', '2019-09-01 19:08:44');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:09:09', '2019-09-01 19:09:09');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:14:37', '2019-09-01 19:14:37');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:15:09', '2019-09-01 19:15:09');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:15:15', '2019-09-01 19:15:15');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:15:35', '2019-09-01 19:15:35');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:16:06', '2019-09-01 19:16:06');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:16:39', '2019-09-01 19:16:39');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:16:59', '2019-09-01 19:16:59');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:18:23', '2019-09-01 19:18:23');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 19:18:36', '2019-09-01 19:18:36');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:18:47', '2019-09-01 19:18:47');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:28:42', '2019-09-01 19:28:42');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:30:26', '2019-09-01 19:30:26');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:30:33', '2019-09-01 19:30:33');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:39:07', '2019-09-01 19:39:07');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/hotacticles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:39:13', '2019-09-01 19:39:13');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:48:53', '2019-09-01 19:48:53');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:49:46', '2019-09-01 19:49:46');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:50:53', '2019-09-01 19:50:53');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:51:06', '2019-09-01 19:51:06');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:52:44', '2019-09-01 19:52:44');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/hotacticles/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-01 19:54:21', '2019-09-01 19:54:21');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/hotacticles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:54:40', '2019-09-01 19:54:40');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:55:04', '2019-09-01 19:55:04');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/hotacticles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 19:55:09', '2019-09-01 19:55:09');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-01 20:57:42', '2019-09-01 20:57:42');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 20:57:50', '2019-09-01 20:57:50');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/hotacticles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 20:57:54', '2019-09-01 20:57:54');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 21:15:22', '2019-09-01 21:15:22');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/laywers', 'GET', '127.0.0.1', '[]', '2019-09-01 21:15:41', '2019-09-01 21:15:41');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 21:15:52', '2019-09-01 21:15:52');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 21:16:03', '2019-09-01 21:16:03');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"laywer\",\"name\":\"laywerManagement\",\"http_method\":[null],\"http_path\":\"\\/laywers*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-01 21:16:10', '2019-09-01 21:16:10');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-01 21:16:13', '2019-09-01 21:16:13');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 21:16:18', '2019-09-01 21:16:18');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 21:16:24', '2019-09-01 21:16:24');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/laywers\",\"roles\":[null],\"permission\":\"laywer\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 21:16:32', '2019-09-01 21:16:32');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 21:16:34', '2019-09-01 21:16:34');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 21:16:54', '2019-09-01 21:16:54');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 21:17:00', '2019-09-01 21:17:00');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/laywers', 'GET', '127.0.0.1', '[]', '2019-09-01 21:56:53', '2019-09-01 21:56:53');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/laywers', 'GET', '127.0.0.1', '{\"id\":\"10\",\"_pjax\":\"#pjax-container\"}', '2019-09-01 21:58:08', '2019-09-01 21:58:08');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/laywers', 'GET', '127.0.0.1', '{\"id\":\"10\"}', '2019-09-01 21:59:51', '2019-09-01 21:59:51');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/laywers', 'GET', '127.0.0.1', '{\"id\":\"10\"}', '2019-09-01 21:59:57', '2019-09-01 21:59:57');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/laywers', 'GET', '127.0.0.1', '{\"id\":\"10\"}', '2019-09-01 22:00:14', '2019-09-01 22:00:14');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 22:09:20', '2019-09-01 22:09:20');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/hotacticles/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 22:35:21', '2019-09-01 22:35:21');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/hotacticles/16', 'PUT', '127.0.0.1', '{\"title\":\"Hic perferendis explicabo velit numquam repellat et.\",\"keyword\":\"Assumenda voluptas nemo dignissimos quae aliquam.\",\"content\":\"<blockquote><b>Accusantium sed similique qui ut dolore nihil.<\\/b><\\/blockquote><p>\\u200b<br><\\/p>\",\"like_count\":\"831\",\"comments_count\":\"515\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/hotacticles\"}', '2019-09-01 22:35:47', '2019-09-01 22:35:47');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '[]', '2019-09-01 22:35:49', '2019-09-01 22:35:49');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:21:50', '2019-09-01 23:21:50');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/balances\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}', '2019-09-01 23:23:14', '2019-09-01 23:23:14');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:23:16', '2019-09-01 23:23:16');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:23:20', '2019-09-01 23:23:20');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:23:25', '2019-09-01 23:23:25');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"balance\",\"name\":\"balanceManagement\",\"http_method\":[null],\"http_path\":\"\\/balances*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-01 23:24:06', '2019-09-01 23:24:06');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-01 23:24:09', '2019-09-01 23:24:09');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:24:22', '2019-09-01 23:24:22');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:24:28', '2019-09-01 23:24:28');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/balances\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 23:24:38', '2019-09-01 23:24:38');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:24:41', '2019-09-01 23:24:41');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:28:37', '2019-09-01 23:28:37');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:28:44', '2019-09-01 23:28:44');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:28:53', '2019-09-01 23:28:53');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:28:59', '2019-09-01 23:28:59');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u4f59\\u989d\\u7ba1\\u7406\",\"icon\":\"fa-cny\",\"uri\":\"\\/balances\\/index\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}', '2019-09-01 23:30:54', '2019-09-01 23:30:54');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:30:57', '2019-09-01 23:30:57');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:41:24', '2019-09-01 23:41:24');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/balances/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:41:46', '2019-09-01 23:41:46');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:41:48', '2019-09-01 23:41:48');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/balances/index', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:42:05', '2019-09-01 23:42:05');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:42:07', '2019-09-01 23:42:07');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-01 23:44:15', '2019-09-01 23:44:15');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-01 23:47:19', '2019-09-01 23:47:19');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:47:43', '2019-09-01 23:47:43');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:47:53', '2019-09-01 23:47:53');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u4f59\\u989d\\u7ba1\\u7406\",\"icon\":\"fa-cny\",\"uri\":\"\\/funds\\/balances\\/index\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 23:48:53', '2019-09-01 23:48:53');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:48:55', '2019-09-01 23:48:55');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:49:00', '2019-09-01 23:49:00');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/funds\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 23:49:16', '2019-09-01 23:49:16');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:49:19', '2019-09-01 23:49:19');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:49:30', '2019-09-01 23:49:30');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:50:19', '2019-09-01 23:50:19');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u4f59\\u989d\\u7ba1\\u7406\",\"icon\":\"fa-cny\",\"uri\":\"\\/funds\\/balances\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-01 23:50:26', '2019-09-01 23:50:26');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:50:28', '2019-09-01 23:50:28');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-01 23:50:32', '2019-09-01 23:50:32');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-01 23:50:37', '2019-09-01 23:50:37');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-02 00:19:22', '2019-09-02 00:19:22');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 00:20:06', '2019-09-02 00:20:06');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u5143\\u5b9d\\u7ba1\\u7406\",\"icon\":\"fa-skype\",\"uri\":\"\\/founds\\/ingots\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}', '2019-09-02 00:24:35', '2019-09-02 00:24:35');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 00:24:37', '2019-09-02 00:24:37');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 00:24:52', '2019-09-02 00:24:52');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 00:24:59', '2019-09-02 00:24:59');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"founds\",\"name\":\"foundsManagement\",\"http_method\":[null],\"http_path\":\"\\/founds*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 00:25:30', '2019-09-02 00:25:30');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 00:25:32', '2019-09-02 00:25:32');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 00:25:47', '2019-09-02 00:25:47');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 00:26:00', '2019-09-02 00:26:00');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-02 00:40:54', '2019-09-02 00:40:54');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 00:41:02', '2019-09-02 00:41:02');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 00:41:07', '2019-09-02 00:41:07');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u5143\\u5b9d\\u7ba1\\u7406\",\"icon\":\"fa-skype\",\"uri\":\"\\/funds\\/ingots\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 00:41:14', '2019-09-02 00:41:14');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 00:41:17', '2019-09-02 00:41:17');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 00:41:21', '2019-09-02 00:41:21');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 00:41:26', '2019-09-02 00:41:26');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-02 00:42:01', '2019-09-02 00:42:01');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-02 00:44:03', '2019-09-02 00:44:03');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-02 00:52:48', '2019-09-02 00:52:48');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-02 00:56:21', '2019-09-02 00:56:21');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-02 18:47:44', '2019-09-02 18:47:44');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 18:48:00', '2019-09-02 18:48:00');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-02 19:11:01', '2019-09-02 19:11:01');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:11:13', '2019-09-02 19:11:13');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/specialists\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 19:12:07', '2019-09-02 19:12:07');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 19:12:09', '2019-09-02 19:12:09');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:12:22', '2019-09-02 19:12:22');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:12:30', '2019-09-02 19:12:30');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"specialists\",\"name\":\"specialistsManagement\",\"http_method\":[null],\"http_path\":\"\\/specialists*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 19:13:00', '2019-09-02 19:13:00');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 19:13:02', '2019-09-02 19:13:02');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:13:41', '2019-09-02 19:13:41');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 19:13:51', '2019-09-02 19:13:51');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:13:58', '2019-09-02 19:13:58');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:14:05', '2019-09-02 19:14:05');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:14:09', '2019-09-02 19:14:09');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/specialists\",\"roles\":[null],\"permission\":\"specialists\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 19:14:21', '2019-09-02 19:14:21');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 19:14:23', '2019-09-02 19:14:23');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:17:00', '2019-09-02 19:17:00');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:17:07', '2019-09-02 19:17:07');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/laywers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:17:12', '2019-09-02 19:17:12');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:17:16', '2019-09-02 19:17:16');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/specialists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:17:20', '2019-09-02 19:17:20');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/specialists/create', 'GET', '127.0.0.1', '[]', '2019-09-02 19:18:10', '2019-09-02 19:18:10');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/specialists', 'POST', '127.0.0.1', '{\"name\":\"test\",\"class_id\":\"2\",\"level\":\"2\",\"title\":\"spe\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 19:19:18', '2019-09-02 19:19:18');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/specialists', 'GET', '127.0.0.1', '[]', '2019-09-02 19:19:20', '2019-09-02 19:19:20');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/specialists', 'GET', '127.0.0.1', '[]', '2019-09-02 19:19:47', '2019-09-02 19:19:47');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/specialists', 'GET', '127.0.0.1', '[]', '2019-09-02 19:20:03', '2019-09-02 19:20:03');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/specialists', 'GET', '127.0.0.1', '[]', '2019-09-02 19:23:22', '2019-09-02 19:23:22');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/specialists', 'GET', '127.0.0.1', '[]', '2019-09-02 19:23:52', '2019-09-02 19:23:52');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/specialists', 'GET', '127.0.0.1', '[]', '2019-09-02 19:30:03', '2019-09-02 19:30:03');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/specialists/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:30:13', '2019-09-02 19:30:13');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:36:21', '2019-09-02 19:36:21');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u65e5\\u5fd7\\u67e5\\u770b\\u5668\",\"icon\":\"fa-database\",\"uri\":\"logs\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 19:38:08', '2019-09-02 19:38:08');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 19:38:11', '2019-09-02 19:38:11');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:39:06', '2019-09-02 19:39:06');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 19:39:11', '2019-09-02 19:39:11');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"logs\",\"name\":\"LogsManagement\",\"http_method\":[null],\"http_path\":\"\\/logs*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 19:39:49', '2019-09-02 19:39:49');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 19:39:51', '2019-09-02 19:39:51');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-09-02 20:00:06', '2019-09-02 20:00:06');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-09-02 20:19:46', '2019-09-02 20:19:46');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-09-02 20:22:10', '2019-09-02 20:22:10');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 20:58:44', '2019-09-02 20:58:44');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/hotacticles/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 20:58:52', '2019-09-02 20:58:52');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:12:04', '2019-09-02 21:12:04');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:16:36', '2019-09-02 21:16:36');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:16:40', '2019-09-02 21:16:40');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:16:48', '2019-09-02 21:16:48');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:17:02', '2019-09-02 21:17:02');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 21:24:08', '2019-09-02 21:24:08');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:24:11', '2019-09-02 21:24:11');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:24:27', '2019-09-02 21:24:27');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:24:39', '2019-09-02 21:24:39');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:24:43', '2019-09-02 21:24:43');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"usercenter\",\"name\":\"usercenterManagement\",\"http_method\":[null],\"http_path\":\"\\/usercenter\\/collect*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 21:26:17', '2019-09-02 21:26:17');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 21:26:19', '2019-09-02 21:26:19');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:26:28', '2019-09-02 21:26:28');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:26:53', '2019-09-02 21:26:53');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 21:27:04', '2019-09-02 21:27:04');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:27:07', '2019-09-02 21:27:07');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:27:36', '2019-09-02 21:27:36');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:28:08', '2019-09-02 21:28:08');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6536\\u85cf\",\"icon\":\"fa-btc\",\"uri\":\"\\/collects\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 21:29:57', '2019-09-02 21:29:57');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:29:59', '2019-09-02 21:29:59');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:30:05', '2019-09-02 21:30:05');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenters\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 21:30:14', '2019-09-02 21:30:14');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:30:17', '2019-09-02 21:30:17');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:30:29', '2019-09-02 21:30:29');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:31:16', '2019-09-02 21:31:16');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6536\\u85cf\",\"icon\":\"fa-btc\",\"uri\":\"\\/usercenter\\/collects\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 21:31:38', '2019-09-02 21:31:38');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:31:40', '2019-09-02 21:31:40');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 21:31:51', '2019-09-02 21:31:51');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 21:31:58', '2019-09-02 21:31:58');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:32:02', '2019-09-02 21:32:02');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 21:32:29', '2019-09-02 21:32:29');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '[]', '2019-09-02 21:33:13', '2019-09-02 21:33:13');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '[]', '2019-09-02 21:36:42', '2019-09-02 21:36:42');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '[]', '2019-09-02 22:08:01', '2019-09-02 22:08:01');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '[]', '2019-09-02 22:10:59', '2019-09-02 22:10:59');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/usercenter/collects/create', 'GET', '127.0.0.1', '[]', '2019-09-02 22:12:54', '2019-09-02 22:12:54');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/usercenter/collects/create', 'GET', '127.0.0.1', '[]', '2019-09-02 22:13:52', '2019-09-02 22:13:52');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/usercenter/collects/create', 'GET', '127.0.0.1', '[]', '2019-09-02 22:14:40', '2019-09-02 22:14:40');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:15:02', '2019-09-02 22:15:02');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/usercenter/collects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:15:19', '2019-09-02 22:15:19');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/usercenter/collects', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"1\",\"status\":\"on\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/usercenter\\/collects\"}', '2019-09-02 22:15:29', '2019-09-02 22:15:29');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '[]', '2019-09-02 22:15:33', '2019-09-02 22:15:33');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/usercenter/collects/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:15:41', '2019-09-02 22:15:41');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/usercenter/collects/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"2\",\"status\":\"on\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/usercenter\\/collects\"}', '2019-09-02 22:15:55', '2019-09-02 22:15:55');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '[]', '2019-09-02 22:15:58', '2019-09-02 22:15:58');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/hotacticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:16:05', '2019-09-02 22:16:05');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:16:38', '2019-09-02 22:16:38');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/usercenter/collects/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:16:50', '2019-09-02 22:16:50');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/usercenter/collects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:16:57', '2019-09-02 22:16:57');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:21:19', '2019-09-02 22:21:19');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u5173\\u6ce8\",\"icon\":\"fa-amazon\",\"uri\":\"\\/usercenter\\/attentions\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 22:22:20', '2019-09-02 22:22:20');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 22:22:22', '2019-09-02 22:22:22');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:22:33', '2019-09-02 22:22:33');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/auth/permissions/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:22:41', '2019-09-02 22:22:41');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/auth/permissions/11', 'PUT', '127.0.0.1', '{\"slug\":\"usercenter\",\"name\":\"usercenterManagement\",\"http_method\":[null],\"http_path\":\"\\/usercenter\\/collects*\\r\\n\\/usercenter\\/attentions*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 22:23:18', '2019-09-02 22:23:18');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 22:23:21', '2019-09-02 22:23:21');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 22:25:15', '2019-09-02 22:25:15');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 22:26:39', '2019-09-02 22:26:39');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:27:07', '2019-09-02 22:27:07');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/usercenter/attentions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:27:29', '2019-09-02 22:27:29');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/usercenter/attentions/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-02 22:28:04', '2019-09-02 22:28:04');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/usercenter/attentions/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-02 22:28:25', '2019-09-02 22:28:25');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/usercenter/attentions/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-02 22:29:21', '2019-09-02 22:29:21');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:31:46', '2019-09-02 22:31:46');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:38:58', '2019-09-02 22:38:58');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u8bc4\\u8bba\",\"icon\":\"fa-font\",\"uri\":\"\\/usercenter\\/comment\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 22:41:29', '2019-09-02 22:41:29');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 22:41:31', '2019-09-02 22:41:31');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:41:37', '2019-09-02 22:41:37');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u8bc4\\u8bba\",\"icon\":\"fa-font\",\"uri\":\"\\/usercenter\\/comments\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 22:41:43', '2019-09-02 22:41:43');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 22:41:46', '2019-09-02 22:41:46');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:42:04', '2019-09-02 22:42:04');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/auth/permissions/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:42:13', '2019-09-02 22:42:13');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/auth/permissions/11', 'PUT', '127.0.0.1', '{\"slug\":\"usercenter\",\"name\":\"usercenterManagement\",\"http_method\":[null],\"http_path\":\"\\/usercenter\\/collects*\\r\\n\\/usercenter\\/attentions*\\r\\n\\/usercenter\\/comments*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 22:42:51', '2019-09-02 22:42:51');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 22:42:54', '2019-09-02 22:42:54');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 22:43:55', '2019-09-02 22:43:55');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/usercenter/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 22:44:07', '2019-09-02 22:44:07');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:12:18', '2019-09-02 23:12:18');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6cd5\\u5f8b\\u5b9d\\u5178\",\"icon\":\"fa-gavel\",\"uri\":\"\\/legals\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 23:20:57', '2019-09-02 23:20:57');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 23:21:01', '2019-09-02 23:21:01');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:21:09', '2019-09-02 23:21:09');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:21:16', '2019-09-02 23:21:16');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 23:21:46', '2019-09-02 23:21:46');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 23:21:48', '2019-09-02 23:21:48');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:21:56', '2019-09-02 23:21:56');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:22:03', '2019-09-02 23:22:03');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6cd5\\u5f8b\\u5b9d\\u5178\",\"icon\":\"fa-gavel\",\"uri\":\"\\/legals\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 23:22:14', '2019-09-02 23:22:14');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 23:22:16', '2019-09-02 23:22:16');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 23:22:24', '2019-09-02 23:22:24');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:23:13', '2019-09-02 23:23:13');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:23:30', '2019-09-02 23:23:30');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals\\/category\\/*\\r\\n\\/legals\\/books\\/*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-02 23:25:22', '2019-09-02 23:25:22');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-02 23:25:24', '2019-09-02 23:25:24');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:25:31', '2019-09-02 23:25:31');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-sitemap\",\"uri\":null,\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 23:27:32', '2019-09-02 23:27:32');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 23:27:34', '2019-09-02 23:27:34');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:27:43', '2019-09-02 23:27:43');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-sitemap\",\"uri\":\"\\/legals\\/category\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-02 23:28:03', '2019-09-02 23:28:03');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 23:28:06', '2019-09-02 23:28:06');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5b9d\\u5178\",\"icon\":\"fa-gg\",\"uri\":\"\\/legals\\/books\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 23:29:38', '2019-09-02 23:29:38');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 23:29:40', '2019-09-02 23:29:40');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-02 23:29:58', '2019-09-02 23:29:58');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:30:33', '2019-09-02 23:30:33');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:31:12', '2019-09-02 23:31:12');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:32:19', '2019-09-02 23:32:19');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:36:01', '2019-09-02 23:36:01');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:36:35', '2019-09-02 23:36:35');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:36:51', '2019-09-02 23:36:51');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:37:10', '2019-09-02 23:37:10');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5a5a\\u59fb\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 23:48:55', '2019-09-02 23:48:55');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:48:57', '2019-09-02 23:48:57');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:49:11', '2019-09-02 23:49:11');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u517b\\u8001\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-02 23:49:23', '2019-09-02 23:49:23');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:49:26', '2019-09-02 23:49:26');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:49:31', '2019-09-02 23:49:31');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5c31\\u4e1a\\u548c\\u521b\\u4e1a\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-02 23:49:48', '2019-09-02 23:49:48');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:49:50', '2019-09-02 23:49:50');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u6559\\u80b2\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:50:08', '2019-09-02 23:50:08');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:50:10', '2019-09-02 23:50:10');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u6295\\u8d44\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:50:21', '2019-09-02 23:50:21');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:50:23', '2019-09-02 23:50:23');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5a5a\\u524d\\u8d22\\u4ea7\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 23:50:46', '2019-09-02 23:50:46');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:50:48', '2019-09-02 23:50:48');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:50:53', '2019-09-02 23:50:53');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5a5a\\u5185\\u8d22\\u4ea7\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-02 23:51:14', '2019-09-02 23:51:14');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:51:16', '2019-09-02 23:51:16');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u79bb\\u5a5a\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:51:31', '2019-09-02 23:51:31');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:51:34', '2019-09-02 23:51:34');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u7ee7\\u627f\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 23:51:45', '2019-09-02 23:51:45');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:51:48', '2019-09-02 23:51:48');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:51:55', '2019-09-02 23:51:55');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u9057\\u8d60\\u629a\\u517b\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-02 23:52:19', '2019-09-02 23:52:19');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:52:22', '2019-09-02 23:52:22');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u610f\\u5b9a\\u76d1\\u62a4\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:52:54', '2019-09-02 23:52:54');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:52:56', '2019-09-02 23:52:56');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u9057\\u5631\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:53:09', '2019-09-02 23:53:09');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:53:11', '2019-09-02 23:53:11');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u8650\\u5f85\\u8001\\u4eba\\u95ee\\u9898\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:53:24', '2019-09-02 23:53:24');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:53:27', '2019-09-02 23:53:27');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u533b\\u7597\\u4fdd\\u9669\",\"pid\":\"3\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:53:42', '2019-09-02 23:53:42');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:53:45', '2019-09-02 23:53:45');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u533b\\u7597\\u4e8b\\u6545\",\"pid\":\"3\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:54:00', '2019-09-02 23:54:00');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:54:02', '2019-09-02 23:54:02');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u4ea4\\u901a\\u4e8b\\u6545\",\"pid\":\"3\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:54:12', '2019-09-02 23:54:12');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:54:15', '2019-09-02 23:54:15');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u62db\\u4eba\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:54:29', '2019-09-02 23:54:29');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:54:32', '2019-09-02 23:54:32');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u627e\\u5de5\\u4f5c\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:54:46', '2019-09-02 23:54:46');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:54:49', '2019-09-02 23:54:49');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u52b3\\u52a8\\u5408\\u540c\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:54:59', '2019-09-02 23:54:59');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:55:02', '2019-09-02 23:55:02');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u52b3\\u52a8\\u7ea0\\u7eb7\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:55:14', '2019-09-02 23:55:14');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:55:16', '2019-09-02 23:55:16');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5b66\\u6821\\u76d1\\u62a4\\u8d23\\u4efb\",\"pid\":\"5\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:55:36', '2019-09-02 23:55:36');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:55:39', '2019-09-02 23:55:39');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u4eba\\u8eab\\u4f24\\u5bb3\",\"pid\":\"5\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:55:52', '2019-09-02 23:55:52');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:55:55', '2019-09-02 23:55:55');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u6cd5\\u5236\\u6559\\u80b2\",\"pid\":\"5\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:56:07', '2019-09-02 23:56:07');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:56:09', '2019-09-02 23:56:09');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u623f\\u5b50\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:56:21', '2019-09-02 23:56:21');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:56:23', '2019-09-02 23:56:23');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u8f66\\u5b50\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:56:36', '2019-09-02 23:56:36');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:56:38', '2019-09-02 23:56:38');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u80a1\\u7968\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-02 23:56:50', '2019-09-02 23:56:50');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-02 23:56:53', '2019-09-02 23:56:53');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u6c11\\u95f4\\u501f\\u8d37\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-02 23:57:19', '2019-09-02 23:57:19');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-02 23:57:21', '2019-09-02 23:57:21');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:57:30', '2019-09-02 23:57:30');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:58:28', '2019-09-02 23:58:28');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-02 23:58:50', '2019-09-02 23:58:50');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:01:13', '2019-09-03 00:01:13');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u533b\\u7597\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-03 00:01:32', '2019-09-03 00:01:32');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:01:35', '2019-09-03 00:01:35');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:01:39', '2019-09-03 00:01:39');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2019-09-03 00:01:47', '2019-09-03 00:01:47');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2019-09-03 00:04:02', '2019-09-03 00:04:02');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:05:20', '2019-09-03 00:05:20');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u503a\\u6743\",\"pid\":\"9\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=30\"}', '2019-09-03 00:05:39', '2019-09-03 00:05:39');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:05:41', '2019-09-03 00:05:41');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u503a\\u52a1\",\"pid\":\"9\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:05:52', '2019-09-03 00:05:52');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:05:54', '2019-09-03 00:05:54');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5b50\\u5973\\u629a\\u517b\",\"pid\":\"9\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:06:05', '2019-09-03 00:06:05');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:06:07', '2019-09-03 00:06:07');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:06:19', '2019-09-03 00:06:19');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2019-09-03 00:06:29', '2019-09-03 00:06:29');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:06:36', '2019-09-03 00:06:36');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u4e70\\u623f\",\"pid\":\"25\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=30\"}', '2019-09-03 00:06:48', '2019-09-03 00:06:48');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:06:50', '2019-09-03 00:06:50');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5356\\u65b9\",\"pid\":\"25\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:07:00', '2019-09-03 00:07:00');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:07:03', '2019-09-03 00:07:03');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u79df\\u623f\",\"pid\":\"25\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:07:13', '2019-09-03 00:07:13');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:07:15', '2019-09-03 00:07:15');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:07:21', '2019-09-03 00:07:21');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2019-09-03 00:07:32', '2019-09-03 00:07:32');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:07:42', '2019-09-03 00:07:42');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u4e70\\u8f66\",\"pid\":\"26\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=30\"}', '2019-09-03 00:07:54', '2019-09-03 00:07:54');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:07:56', '2019-09-03 00:07:56');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u5356\\u8f66\",\"pid\":\"26\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:08:08', '2019-09-03 00:08:08');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:08:11', '2019-09-03 00:08:11');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u79df\\u8f66\",\"pid\":\"26\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:08:23', '2019-09-03 00:08:23');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:08:25', '2019-09-03 00:08:25');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u80a1\\u7968\\u8f6c\\u8ba9\",\"pid\":\"27\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:08:56', '2019-09-03 00:08:56');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:08:58', '2019-09-03 00:08:58');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u80a1\\u7968\\u7ee7\\u627f\",\"pid\":\"27\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:09:11', '2019-09-03 00:09:11');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:09:13', '2019-09-03 00:09:13');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:09:18', '2019-09-03 00:09:18');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}', '2019-09-03 00:09:25', '2019-09-03 00:09:25');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:09:46', '2019-09-03 00:09:46');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u51fa\\u501f\\u4eba\",\"pid\":\"28\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=50\"}', '2019-09-03 00:10:00', '2019-09-03 00:10:00');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:10:02', '2019-09-03 00:10:02');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u501f\\u6b3e\\u4eba\",\"pid\":\"28\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}', '2019-09-03 00:10:12', '2019-09-03 00:10:12');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:10:15', '2019-09-03 00:10:15');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:10:25', '2019-09-03 00:10:25');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}', '2019-09-03 00:10:32', '2019-09-03 00:10:32');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:10:49', '2019-09-03 00:10:49');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u51fa\\u79df\\u65b9\",\"pid\":\"35\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=50\"}', '2019-09-03 00:11:03', '2019-09-03 00:11:03');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:11:05', '2019-09-03 00:11:05');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u627f\\u79df\\u65b9\",\"pid\":\"35\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-03 00:11:16', '2019-09-03 00:11:16');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 00:11:18', '2019-09-03 00:11:18');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:11:26', '2019-09-03 00:11:26');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:11:35', '2019-09-03 00:11:35');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u51fa\\u79df\\u4eba\",\"pid\":\"38\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?per_page=50\"}', '2019-09-03 00:11:50', '2019-09-03 00:11:50');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:11:52', '2019-09-03 00:11:52');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"title\":\"\\u79df\\u8f66\\u4eba\",\"pid\":\"38\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-03 00:12:26', '2019-09-03 00:12:26');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 00:12:28', '2019-09-03 00:12:28');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:12:38', '2019-09-03 00:12:38');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2019-09-03 00:31:36', '2019-09-03 00:31:36');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2019-09-03 00:32:36', '2019-09-03 00:32:36');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2019-09-03 00:34:36', '2019-09-03 00:34:36');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2019-09-03 00:35:51', '2019-09-03 00:35:51');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2019-09-03 00:37:33', '2019-09-03 00:37:33');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:45:16', '2019-09-03 00:45:16');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:47:07', '2019-09-03 00:47:07');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '[]', '2019-09-03 00:48:07', '2019-09-03 00:48:07');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 00:52:30', '2019-09-03 00:52:30');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 00:52:47', '2019-09-03 00:52:47');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 00:56:24', '2019-09-03 00:56:24');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 00:57:50', '2019-09-03 00:57:50');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 00:59:15', '2019-09-03 00:59:15');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:03:25', '2019-09-03 01:03:25');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:11:03', '2019-09-03 01:11:03');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:12:19', '2019-09-03 01:12:19');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-03 01:12:41', '2019-09-03 01:12:41');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:12:43', '2019-09-03 01:12:43');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/legals/category/47', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}', '2019-09-03 01:12:54', '2019-09-03 01:12:54');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:13:00', '2019-09-03 01:13:00');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:13:12', '2019-09-03 01:13:12');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-03 01:13:22', '2019-09-03 01:13:22');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:13:24', '2019-09-03 01:13:24');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/legals/category/48/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:13:33', '2019-09-03 01:13:33');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/legals/category/48', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"test222\",\"path\":\"\\/\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-03 01:13:49', '2019-09-03 01:13:49');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:13:51', '2019-09-03 01:13:51');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:14:07', '2019-09-03 01:14:07');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/legals/category', 'POST', '127.0.0.1', '{\"parent_id\":\"48\",\"title\":\"test333\",\"path\":\"\\/\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}', '2019-09-03 01:14:28', '2019-09-03 01:14:28');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:14:31', '2019-09-03 01:14:31');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:16:32', '2019-09-03 01:16:32');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_action\":\"App_Admin_Actions_ClearCache\",\"_input\":\"true\"}', '2019-09-03 01:18:27', '2019-09-03 01:18:27');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:18:34', '2019-09-03 01:18:34');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 01:29:19', '2019-09-03 01:29:19');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/legals/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:29:57', '2019-09-03 01:29:57');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 01:35:25', '2019-09-03 01:35:25');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 17:20:29', '2019-09-03 17:20:29');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 17:20:59', '2019-09-03 17:20:59');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 17:21:21', '2019-09-03 17:21:21');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 17:23:55', '2019-09-03 17:23:55');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/legals/category', 'GET', '127.0.0.1', '[]', '2019-09-03 17:30:02', '2019-09-03 17:30:02');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 17:31:50', '2019-09-03 17:31:50');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 17:37:12', '2019-09-03 17:37:12');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 17:40:03', '2019-09-03 17:40:03');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 17:40:46', '2019-09-03 17:40:46');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 17:41:33', '2019-09-03 17:41:33');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 17:45:26', '2019-09-03 17:45:26');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 17:45:51', '2019-09-03 17:45:51');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 17:47:00', '2019-09-03 17:47:00');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 17:47:25', '2019-09-03 17:47:25');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 18:05:48', '2019-09-03 18:05:48');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 18:06:12', '2019-09-03 18:06:12');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 18:38:38', '2019-09-03 18:38:38');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 18:38:59', '2019-09-03 18:38:59');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/legals/books', 'POST', '127.0.0.1', '{\"title\":\"\\u8d44\\u4ea7\",\"cate_id\":\"2\",\"detail\":\"<p><\\/p><p>1515151<\\/p>\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/books\"}', '2019-09-03 18:39:52', '2019-09-03 18:39:52');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 18:39:56', '2019-09-03 18:39:56');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 18:42:24', '2019-09-03 18:42:24');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 18:43:11', '2019-09-03 18:43:11');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 18:44:33', '2019-09-03 18:44:33');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 18:45:29', '2019-09-03 18:45:29');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 18:47:16', '2019-09-03 18:47:16');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:01:33', '2019-09-03 19:01:33');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:01:56', '2019-09-03 19:01:56');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:02:35', '2019-09-03 19:02:35');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:03:16', '2019-09-03 19:03:16');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:03:25', '2019-09-03 19:03:25');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:06:53', '2019-09-03 19:06:53');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:08:21', '2019-09-03 19:08:21');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:09:54', '2019-09-03 19:09:54');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:10:09', '2019-09-03 19:10:09');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/legals/books', 'GET', '127.0.0.1', '[]', '2019-09-03 19:11:01', '2019-09-03 19:11:01');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 19:20:51', '2019-09-03 19:20:51');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 19:22:18', '2019-09-03 19:22:18');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 19:23:12', '2019-09-03 19:23:12');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 19:24:09', '2019-09-03 19:24:09');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/legals/books/create', 'GET', '127.0.0.1', '[]', '2019-09-03 19:24:56', '2019-09-03 19:24:56');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 19:29:10', '2019-09-03 19:29:10');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 19:30:01', '2019-09-03 19:30:01');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:38:07', '2019-09-03 19:38:07');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:39:19', '2019-09-03 19:39:19');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:48:54', '2019-09-03 19:48:54');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:51:04', '2019-09-03 19:51:04');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:56:18', '2019-09-03 19:56:18');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:57:29', '2019-09-03 19:57:29');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:58:05', '2019-09-03 19:58:05');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:58:37', '2019-09-03 19:58:37');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:59:02', '2019-09-03 19:59:02');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 19:59:50', '2019-09-03 19:59:50');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 20:00:44', '2019-09-03 20:00:44');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 20:01:27', '2019-09-03 20:01:27');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 20:01:59', '2019-09-03 20:01:59');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 20:02:22', '2019-09-03 20:02:22');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 20:03:03', '2019-09-03 20:03:03');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-03 22:01:29', '2019-09-03 22:01:29');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-03 22:01:41', '2019-09-03 22:01:41');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 22:02:25', '2019-09-03 22:02:25');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-03 22:02:55', '2019-09-03 22:02:55');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-09-04 06:03:32', '2019-09-04 06:03:32');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:10:46', '2019-09-04 06:10:46');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 06:11:16', '2019-09-04 06:11:16');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6d4f\\u89c8\\u8bb0\\u5f55\",\"icon\":\"fa-arrow-left\",\"uri\":\"\\/acticles\\/browse-history\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 06:19:50', '2019-09-04 06:19:50');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 06:19:53', '2019-09-04 06:19:53');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:20:34', '2019-09-04 06:20:34');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:20:47', '2019-09-04 06:20:47');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/acticles*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 06:21:49', '2019-09-04 06:21:49');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 06:21:54', '2019-09-04 06:21:54');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:22:29', '2019-09-04 06:22:29');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\\r\\n\\/acticles*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 06:22:48', '2019-09-04 06:22:48');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 06:22:52', '2019-09-04 06:22:52');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 06:23:33', '2019-09-04 06:23:33');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-04 06:26:45', '2019-09-04 06:26:45');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-04 06:28:44', '2019-09-04 06:28:44');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/acticles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:29:00', '2019-09-04 06:29:00');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/acticles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/acticles\\/browse-history\"}', '2019-09-04 06:29:21', '2019-09-04 06:29:21');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-04 06:29:24', '2019-09-04 06:29:24');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/acticles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:29:31', '2019-09-04 06:29:31');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/acticles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":\"2\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/acticles\\/browse-history\"}', '2019-09-04 06:29:39', '2019-09-04 06:29:39');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-04 06:29:42', '2019-09-04 06:29:42');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/acticles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:29:49', '2019-09-04 06:29:49');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/acticles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/acticles\\/browse-history\"}', '2019-09-04 06:29:58', '2019-09-04 06:29:58');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/acticles/browse-history/create', 'GET', '127.0.0.1', '[]', '2019-09-04 06:30:01', '2019-09-04 06:30:01');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/acticles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"after-save\":\"2\"}', '2019-09-04 06:30:12', '2019-09-04 06:30:12');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/acticles/browse-history/create', 'GET', '127.0.0.1', '[]', '2019-09-04 06:30:15', '2019-09-04 06:30:15');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/acticles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":\"5\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 06:30:28', '2019-09-04 06:30:28');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-04 06:30:31', '2019-09-04 06:30:31');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:32:16', '2019-09-04 06:32:16');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6587\\u7ae0\\u8bc4\\u8bba\",\"icon\":\"fa-pencil\",\"uri\":\"\\/acticles\\/comments\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 06:34:43', '2019-09-04 06:34:43');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 06:34:45', '2019-09-04 06:34:45');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u70b9\\u8d5e\",\"icon\":\"fa-thumbs-up\",\"uri\":\"\\/acticles\\/like\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 06:38:09', '2019-09-04 06:38:09');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 06:38:12', '2019-09-04 06:38:12');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/auth/menu/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 06:38:55', '2019-09-04 06:38:55');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/auth/menu/22', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6d4f\\u89c8\\u8bb0\\u5f55\",\"icon\":\"fa-arrow-left\",\"uri\":\"\\/acticles\\/browse-history\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 06:39:09', '2019-09-04 06:39:09');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 06:39:13', '2019-09-04 06:39:13');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 06:56:23', '2019-09-04 06:56:23');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/acticles/comments', 'GET', '127.0.0.1', '[]', '2019-09-04 07:01:37', '2019-09-04 07:01:37');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:13:58', '2019-09-04 07:13:58');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:14:24', '2019-09-04 07:14:24');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u70b9\\u8d5e\",\"icon\":\"fa-thumbs-up\",\"uri\":\"\\/acticles\\/likes\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 07:14:35', '2019-09-04 07:14:35');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:14:38', '2019-09-04 07:14:38');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:15:48', '2019-09-04 07:15:48');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/acticles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:16:41', '2019-09-04 07:16:41');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:21:40', '2019-09-04 07:21:40');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7b54\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-gear\",\"uri\":\"\\/answers\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 07:24:02', '2019-09-04 07:24:02');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:24:04', '2019-09-04 07:24:04');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:24:19', '2019-09-04 07:24:19');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:24:25', '2019-09-04 07:24:25');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"answer\",\"name\":\"answerManagement\",\"http_method\":[null],\"http_path\":\"\\/answers*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 07:24:56', '2019-09-04 07:24:56');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 07:24:58', '2019-09-04 07:24:58');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:25:09', '2019-09-04 07:25:09');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/auth/menu/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:25:25', '2019-09-04 07:25:25');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/auth/menu/25', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7b54\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-gear\",\"uri\":\"\\/answers\",\"roles\":[null],\"permission\":\"answer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 07:25:32', '2019-09-04 07:25:32');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:25:35', '2019-09-04 07:25:35');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"25\",\"title\":\"\\u9898\\u5e93\",\"icon\":\"fa-barcode\",\"uri\":\"\\/answers\\/lists\",\"roles\":[null],\"permission\":\"answer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 07:26:14', '2019-09-04 07:26:14');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:26:16', '2019-09-04 07:26:16');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"25\",\"title\":\"\\u6bcf\\u65e5\\u7b54\\u9898\",\"icon\":\"fa-bullseye\",\"uri\":\"\\/answers\\/records\",\"roles\":[null],\"permission\":\"answer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 07:27:36', '2019-09-04 07:27:36');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:27:39', '2019-09-04 07:27:39');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:29:55', '2019-09-04 07:29:55');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:30:47', '2019-09-04 07:30:47');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:31:31', '2019-09-04 07:31:31');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:37:21', '2019-09-04 07:37:21');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7559\\u8a00\",\"icon\":\"fa-envelope-o\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 07:39:24', '2019-09-04 07:39:24');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:39:26', '2019-09-04 07:39:26');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:39:58', '2019-09-04 07:39:58');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:40:03', '2019-09-04 07:40:03');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"message\",\"name\":\"messageManagement\",\"http_method\":[null],\"http_path\":\"\\/messages*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 07:40:39', '2019-09-04 07:40:39');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 07:40:41', '2019-09-04 07:40:41');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:40:49', '2019-09-04 07:40:49');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/auth/menu/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:40:55', '2019-09-04 07:40:55');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/auth/menu/28', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7559\\u8a00\",\"icon\":\"fa-envelope-o\",\"uri\":\"\\/messages\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 07:41:15', '2019-09-04 07:41:15');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:41:18', '2019-09-04 07:41:18');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:41:53', '2019-09-04 07:41:53');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:42:40', '2019-09-04 07:42:40');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:43:15', '2019-09-04 07:43:15');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-04 07:50:31', '2019-09-04 07:50:31');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-04 07:51:45', '2019-09-04 07:51:45');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-04 07:52:57', '2019-09-04 07:52:57');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-04 07:54:00', '2019-09-04 07:54:00');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_columns_\":\"content,created_at,id,mobile,updated_at,username\",\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:54:34', '2019-09-04 07:54:34');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:55:29', '2019-09-04 07:55:29');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:55:39', '2019-09-04 07:55:39');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/personnel\\/laywers\",\"roles\":[null],\"permission\":\"laywer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 07:57:44', '2019-09-04 07:57:44');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:57:46', '2019-09-04 07:57:46');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:57:53', '2019-09-04 07:57:53');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:58:04', '2019-09-04 07:58:04');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"personnel\",\"name\":\"personnelManagement\",\"http_method\":[null],\"http_path\":\"\\/personnel\\/laywers*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 07:58:28', '2019-09-04 07:58:28');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 07:58:30', '2019-09-04 07:58:30');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:58:35', '2019-09-04 07:58:35');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:58:43', '2019-09-04 07:58:43');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/personnel\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 07:59:04', '2019-09-04 07:59:04');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:59:06', '2019-09-04 07:59:06');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:59:17', '2019-09-04 07:59:17');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:59:28', '2019-09-04 07:59:28');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/personnel\\/specialists\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 07:59:49', '2019-09-04 07:59:49');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 07:59:51', '2019-09-04 07:59:51');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 07:59:58', '2019-09-04 07:59:58');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/personnel\\/specialists\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 08:00:17', '2019-09-04 08:00:17');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:00:19', '2019-09-04 08:00:19');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-envira\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 08:01:43', '2019-09-04 08:01:43');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:01:45', '2019-09-04 08:01:45');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/auth/menu/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:01:52', '2019-09-04 08:01:52');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/auth/menu/29', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-envira\",\"uri\":\"\\/personnel\\/laywers\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 08:02:09', '2019-09-04 08:02:09');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:02:12', '2019-09-04 08:02:12');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:02:54', '2019-09-04 08:02:54');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:07:03', '2019-09-04 08:07:03');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:07:09', '2019-09-04 08:07:09');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:15:13', '2019-09-04 08:15:13');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d88\\u606f\\u7ba1\\u7406\",\"icon\":\"fa-bell\",\"uri\":\"\\/notices\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 08:16:16', '2019-09-04 08:16:16');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:16:19', '2019-09-04 08:16:19');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:16:25', '2019-09-04 08:16:25');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:16:34', '2019-09-04 08:16:34');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"notice\",\"name\":\"noticeManagement\",\"http_method\":[null],\"http_path\":\"\\/notices*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 08:16:57', '2019-09-04 08:16:57');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 08:16:59', '2019-09-04 08:16:59');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:17:04', '2019-09-04 08:17:04');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/auth/menu/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:17:15', '2019-09-04 08:17:15');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/auth/menu/30', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d88\\u606f\\u7ba1\\u7406\",\"icon\":\"fa-bell\",\"uri\":\"\\/notices\",\"roles\":[null],\"permission\":\"notice\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 08:17:26', '2019-09-04 08:17:26');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:17:29', '2019-09-04 08:17:29');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:18:32', '2019-09-04 08:18:32');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:18:45', '2019-09-04 08:18:45');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-04 08:19:46', '2019-09-04 08:19:46');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:22:49', '2019-09-04 08:22:49');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:23:04', '2019-09-04 08:23:04');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals\\/category\\/*\\r\\n\\/legals\\/books\\/*\\r\\n\\/legals\\/column\\/*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 08:23:35', '2019-09-04 08:23:35');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 08:23:37', '2019-09-04 08:23:37');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:23:42', '2019-09-04 08:23:42');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5df2\\u5b9a\\u4e13\\u680f\",\"icon\":\"fa-link\",\"uri\":\"\\/legals\\/column\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 08:26:45', '2019-09-04 08:26:45');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:26:47', '2019-09-04 08:26:47');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:26:58', '2019-09-04 08:26:58');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:30:42', '2019-09-04 08:30:42');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:37:22', '2019-09-04 08:37:22');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:37:27', '2019-09-04 08:37:27');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"member\",\"name\":\"memberManagement\",\"http_method\":[null],\"http_path\":\"\\/members*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 08:37:59', '2019-09-04 08:37:59');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 08:38:01', '2019-09-04 08:38:01');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:38:05', '2019-09-04 08:38:05');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f1a\\u5458\\u8d2d\\u4e70\\u8bb0\\u5f55\",\"icon\":\"fa-align-center\",\"uri\":\"\\/members\",\"roles\":[null],\"permission\":\"member\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 08:38:43', '2019-09-04 08:38:43');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:38:45', '2019-09-04 08:38:45');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:39:32', '2019-09-04 08:39:32');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:44:40', '2019-09-04 08:44:40');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:44:48', '2019-09-04 08:44:48');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"banner\",\"name\":\"bannerManagement\",\"http_method\":[null],\"http_path\":\"\\/banners*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 08:45:14', '2019-09-04 08:45:14');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 08:45:17', '2019-09-04 08:45:17');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:45:25', '2019-09-04 08:45:25');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u64ad\\u56fe\\u7ba1\\u7406\",\"icon\":\"fa-buysellads\",\"uri\":null,\"roles\":[null],\"permission\":\"banner\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 08:46:47', '2019-09-04 08:46:47');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:46:50', '2019-09-04 08:46:50');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:55:15', '2019-09-04 08:55:15');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-04 08:56:06', '2019-09-04 08:56:06');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:56:31', '2019-09-04 08:56:31');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:56:40', '2019-09-04 08:56:40');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/auth/menu/33/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:56:51', '2019-09-04 08:56:51');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/auth/menu/33', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u64ad\\u56fe\\u7ba1\\u7406\",\"icon\":\"fa-buysellads\",\"uri\":\"\\/banners\",\"roles\":[null],\"permission\":\"banner\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 08:57:10', '2019-09-04 08:57:10');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:57:13', '2019-09-04 08:57:13');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 08:57:23', '2019-09-04 08:57:23');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 08:57:37', '2019-09-04 08:57:37');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-09-04 09:02:17', '2019-09-04 09:02:17');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-09-04 09:02:43', '2019-09-04 09:02:43');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:07:30', '2019-09-04 09:07:30');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:07:37', '2019-09-04 09:07:37');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals\\/category\\/*\\r\\n\\/legals\\/books\\/*\\r\\n\\/legals\\/columns\\/*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 09:09:13', '2019-09-04 09:09:13');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 09:09:15', '2019-09-04 09:09:15');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:09:30', '2019-09-04 09:09:30');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u4e1a\\u52a1\\u5206\\u7c7b\",\"icon\":\"fa-list-alt\",\"uri\":\"\\/personnel\\/categorys\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 09:14:04', '2019-09-04 09:14:04');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:14:07', '2019-09-04 09:14:07');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:14:14', '2019-09-04 09:14:14');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:17:24', '2019-09-04 09:17:24');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-09-04 09:18:59', '2019-09-04 09:18:59');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:19:42', '2019-09-04 09:19:42');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/auth/menu/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:22:31', '2019-09-04 09:22:31');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/auth/menu/31', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5df2\\u5b9a\\u4e13\\u680f\",\"icon\":\"fa-link\",\"uri\":\"\\/legals\\/columns\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 09:22:57', '2019-09-04 09:22:57');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:23:00', '2019-09-04 09:23:00');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:23:10', '2019-09-04 09:23:10');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:23:48', '2019-09-04 09:23:48');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"personnel\",\"name\":\"personnelManagement\",\"http_method\":[null],\"http_path\":\"\\/personnel\\/laywers*\\r\\n\\/personnel\\/specialists*\\r\\n\\/personnel\\/categorys*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-04 09:24:13', '2019-09-04 09:24:13');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-04 09:24:17', '2019-09-04 09:24:17');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-09-04 09:25:57', '2019-09-04 09:25:57');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:26:01', '2019-09-04 09:26:01');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:26:22', '2019-09-04 09:26:22');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-09-04 09:28:29', '2019-09-04 09:28:29');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-09-04 09:28:59', '2019-09-04 09:28:59');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:31:23', '2019-09-04 09:31:23');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:31:44', '2019-09-04 09:31:44');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 09:32:08', '2019-09-04 09:32:08');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:32:10', '2019-09-04 09:32:10');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-user\",\"uri\":\"\\/userc\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}', '2019-09-04 09:34:12', '2019-09-04 09:34:12');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:34:14', '2019-09-04 09:34:14');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/auth/menu/35/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-04 09:34:23', '2019-09-04 09:34:23');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/auth/menu/35', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-user\",\"uri\":\"\\/usercenter\\/lists\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-04 09:35:09', '2019-09-04 09:35:09');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:35:11', '2019-09-04 09:35:11');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-04 09:35:16', '2019-09-04 09:35:16');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:08:45', '2019-09-05 01:08:45');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\",\"icon\":\"fa-shopping-bag\",\"uri\":\"\\/coupons\",\"roles\":[null],\"permission\":null,\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}', '2019-09-05 01:13:00', '2019-09-05 01:13:00');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:13:03', '2019-09-05 01:13:03');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:13:07', '2019-09-05 01:13:07');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:13:12', '2019-09-05 01:13:12');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"coupon\",\"name\":\"couponManagement\",\"http_method\":[null],\"http_path\":\"\\/coupons*\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-05 01:13:40', '2019-09-05 01:13:40');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-05 01:13:43', '2019-09-05 01:13:43');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:13:49', '2019-09-05 01:13:49');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:13:58', '2019-09-05 01:13:58');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/auth/menu/36/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:14:19', '2019-09-05 01:14:19');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/auth/menu/36', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\",\"icon\":\"fa-shopping-bag\",\"uri\":\"\\/coupons\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-05 01:14:32', '2019-09-05 01:14:32');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:14:35', '2019-09-05 01:14:35');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/cou\",\"roles\":[null],\"permission\":null,\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}', '2019-09-05 01:16:46', '2019-09-05 01:16:46');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:16:49', '2019-09-05 01:16:49');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/auth/menu/37/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:16:55', '2019-09-05 01:16:55');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/auth/menu/37', 'PUT', '127.0.0.1', '{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/coupons\\/record\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-05 01:21:56', '2019-09-05 01:21:56');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:21:58', '2019-09-05 01:21:58');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/auth/menu/37/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:22:54', '2019-09-05 01:22:54');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/auth/menu/37', 'PUT', '127.0.0.1', '{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/coupons\\/grant\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-05 01:23:22', '2019-09-05 01:23:22');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:23:24', '2019-09-05 01:23:24');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/auth/menu/37/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:28:57', '2019-09-05 01:28:57');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/auth/menu/37', 'PUT', '127.0.0.1', '{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/coupons\\/grants\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-05 01:29:13', '2019-09-05 01:29:13');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:29:17', '2019-09-05 01:29:17');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:29:35', '2019-09-05 01:29:35');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-05 01:31:05', '2019-09-05 01:31:05');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 01:33:46', '2019-09-05 01:33:46');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"36\",\"title\":\"\\u4f18\\u60e0\\u5238\",\"icon\":\"fa-btc\",\"uri\":\"\\/coupons\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}', '2019-09-05 01:35:55', '2019-09-05 01:35:55');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:35:57', '2019-09-05 01:35:57');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 01:36:33', '2019-09-05 01:36:33');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 02:15:28', '2019-09-05 02:15:28');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:17:06', '2019-09-05 02:17:06');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 02:17:08', '2019-09-05 02:17:08');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:19:31', '2019-09-05 02:19:31');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 02:19:34', '2019-09-05 02:19:34');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 02:22:00', '2019-09-05 02:22:00');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:22:20', '2019-09-05 02:22:20');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 02:22:25', '2019-09-05 02:22:25');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 02:28:01', '2019-09-05 02:28:01');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:28:19', '2019-09-05 02:28:19');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/coupons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:28:47', '2019-09-05 02:28:47');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:40:40', '2019-09-05 02:40:40');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u70ed\\u95e8\\u95ee\\u9898\",\"icon\":\"fa-header\",\"uri\":\"\\/questions\",\"roles\":[null],\"permission\":null,\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}', '2019-09-05 02:47:25', '2019-09-05 02:47:25');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 02:47:27', '2019-09-05 02:47:27');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:47:34', '2019-09-05 02:47:34');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 02:47:48', '2019-09-05 02:47:48');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\\r\\n\\/acticles*\\r\\n\\/questions*\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-05 02:48:05', '2019-09-05 02:48:05');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-05 02:48:07', '2019-09-05 02:48:07');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-05 02:56:46', '2019-09-05 02:56:46');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 03:23:03', '2019-09-05 03:23:03');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-05 06:20:42', '2019-09-05 06:20:42');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-05 06:21:02', '2019-09-05 06:21:02');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-05 06:21:08', '2019-09-05 06:21:08');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-05 06:21:21', '2019-09-05 06:21:21');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-05 06:21:52', '2019-09-05 06:21:52');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-05 06:40:27', '2019-09-05 06:40:27');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 06:45:29', '2019-09-05 06:45:29');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:01:32', '2019-09-05 07:01:32');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:03:37', '2019-09-05 07:03:37');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:04:09', '2019-09-05 07:04:09');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:04:39', '2019-09-05 07:04:39');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:07:21', '2019-09-05 07:07:21');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:08:43', '2019-09-05 07:08:43');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:09:03', '2019-09-05 07:09:03');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:10:13', '2019-09-05 07:10:13');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:13:05', '2019-09-05 07:13:05');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:16:08', '2019-09-05 07:16:08');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:16:28', '2019-09-05 07:16:28');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-09-05 07:21:19', '2019-09-05 07:21:19');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/messages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:21:52', '2019-09-05 07:21:52');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/messages/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-05 07:22:20', '2019-09-05 07:22:20');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/messages/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-05 07:24:00', '2019-09-05 07:24:00');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/messages/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-05 07:25:55', '2019-09-05 07:25:55');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/messages/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:28:47', '2019-09-05 07:28:47');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/messages/1', 'GET', '127.0.0.1', '[]', '2019-09-05 07:29:49', '2019-09-05 07:29:49');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:42:20', '2019-09-05 07:42:20');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-05 07:47:00', '2019-09-05 07:47:00');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-05 07:48:51', '2019-09-05 07:48:51');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/notices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:50:04', '2019-09-05 07:50:04');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/notices/create', 'GET', '127.0.0.1', '[]', '2019-09-05 07:50:42', '2019-09-05 07:50:42');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/notices/create', 'GET', '127.0.0.1', '[]', '2019-09-05 07:51:07', '2019-09-05 07:51:07');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/notices/create', 'GET', '127.0.0.1', '[]', '2019-09-05 07:51:24', '2019-09-05 07:51:24');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:51:49', '2019-09-05 07:51:49');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:54:46', '2019-09-05 07:54:46');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6536\\u85cf\",\"icon\":\"fa-heart\",\"uri\":\"\\/acticles\\/collects\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"hcgud1NfLPNaX8qggTAsgx88G8PAdAAzKMj5wfWC\"}', '2019-09-05 07:55:51', '2019-09-05 07:55:51');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 07:55:54', '2019-09-05 07:55:54');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:56:01', '2019-09-05 07:56:01');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 07:56:08', '2019-09-05 07:56:08');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\\r\\n\\/acticles*\\r\\n\\/questions*\\r\\n\\/collects*\",\"_token\":\"hcgud1NfLPNaX8qggTAsgx88G8PAdAAzKMj5wfWC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-05 07:56:23', '2019-09-05 07:56:23');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-05 07:56:25', '2019-09-05 07:56:25');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-05 08:02:34', '2019-09-05 08:02:34');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-05 08:05:59', '2019-09-05 08:05:59');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6848\\u4f8b\",\"icon\":\"fa-newspaper-o\",\"uri\":\"\\/acticles\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"hcgud1NfLPNaX8qggTAsgx88G8PAdAAzKMj5wfWC\"}', '2019-09-05 08:08:34', '2019-09-05 08:08:34');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 08:08:36', '2019-09-05 08:08:36');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-05 08:36:32', '2019-09-05 08:36:32');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 08:42:33', '2019-09-05 08:42:33');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 08:47:15', '2019-09-05 08:47:15');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 08:57:37', '2019-09-05 08:57:37');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 08:58:08', '2019-09-05 08:58:08');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:01:01', '2019-09-05 09:01:01');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:02:17', '2019-09-05 09:02:17');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:04:02', '2019-09-05 09:04:02');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:04:08', '2019-09-05 09:04:08');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:09:03', '2019-09-05 09:09:03');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:10:46', '2019-09-05 09:10:46');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:12:10', '2019-09-05 09:12:10');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:12:33', '2019-09-05 09:12:33');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:13:07', '2019-09-05 09:13:07');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:13:23', '2019-09-05 09:13:23');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:14:23', '2019-09-05 09:14:23');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:14:51', '2019-09-05 09:14:51');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:16:05', '2019-09-05 09:16:05');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:16:35', '2019-09-05 09:16:35');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:19:57', '2019-09-05 09:19:57');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:21:40', '2019-09-05 09:21:40');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:25:09', '2019-09-05 09:25:09');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:26:47', '2019-09-05 09:26:47');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:31:51', '2019-09-05 09:31:51');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:32:26', '2019-09-05 09:32:26');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:36:34', '2019-09-05 09:36:34');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:39:09', '2019-09-05 09:39:09');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-05 09:42:08', '2019-09-05 09:42:08');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 00:51:19', '2019-09-06 00:51:19');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 00:51:42', '2019-09-06 00:51:42');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-06 00:52:31', '2019-09-06 00:52:31');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-06 00:53:06', '2019-09-06 00:53:06');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:35:53', '2019-09-06 02:35:53');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:37:09', '2019-09-06 02:37:09');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:39:41', '2019-09-06 02:39:41');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:39:59', '2019-09-06 02:39:59');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:45:52', '2019-09-06 02:45:52');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:46:41', '2019-09-06 02:46:41');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:52:02', '2019-09-06 02:52:02');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 02:53:24', '2019-09-06 02:53:24');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:04:36', '2019-09-06 03:04:36');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:05:53', '2019-09-06 03:05:53');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:08:10', '2019-09-06 03:08:10');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:12:34', '2019-09-06 03:12:34');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:13:06', '2019-09-06 03:13:06');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:14:47', '2019-09-06 03:14:47');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:16:03', '2019-09-06 03:16:03');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:16:54', '2019-09-06 03:16:54');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:17:24', '2019-09-06 03:17:24');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:18:15', '2019-09-06 03:18:15');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:18:58', '2019-09-06 03:18:58');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:19:46', '2019-09-06 03:19:46');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:22:05', '2019-09-06 03:22:05');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:22:41', '2019-09-06 03:22:41');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:23:18', '2019-09-06 03:23:18');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:25:52', '2019-09-06 03:25:52');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-06 03:26:42', '2019-09-06 03:26:42');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-06 03:28:00', '2019-09-06 03:28:00');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-09 01:08:49', '2019-09-09 01:08:49');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-09 01:08:54', '2019-09-09 01:08:54');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 01:13:03', '2019-09-09 01:13:03');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 01:13:06', '2019-09-09 01:13:06');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 01:31:34', '2019-09-09 01:31:34');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 02:12:43', '2019-09-09 02:12:43');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u7b7e\\u5230\",\"icon\":\"fa-paint-brush\",\"uri\":\"\\/usercenter\\/signs\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}', '2019-09-09 02:14:21', '2019-09-09 02:14:21');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-09 02:14:22', '2019-09-09 02:14:22');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-09 02:14:29', '2019-09-09 02:14:29');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:17:53', '2019-09-09 02:17:53');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:23:16', '2019-09-09 02:23:16');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:26:02', '2019-09-09 02:26:02');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:29:07', '2019-09-09 02:29:07');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:29:32', '2019-09-09 02:29:32');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:29:58', '2019-09-09 02:29:58');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:30:22', '2019-09-09 02:30:22');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:31:06', '2019-09-09 02:31:06');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:32:02', '2019-09-09 02:32:02');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:35:06', '2019-09-09 02:35:06');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:36:48', '2019-09-09 02:36:48');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:39:05', '2019-09-09 02:39:05');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:39:27', '2019-09-09 02:39:27');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:39:57', '2019-09-09 02:39:57');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:43:01', '2019-09-09 02:43:01');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:43:17', '2019-09-09 02:43:17');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:44:47', '2019-09-09 02:44:47');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:48:49', '2019-09-09 02:48:49');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:49:45', '2019-09-09 02:49:45');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:50:54', '2019-09-09 02:50:54');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:51:32', '2019-09-09 02:51:32');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:51:40', '2019-09-09 02:51:40');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:52:02', '2019-09-09 02:52:02');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:53:15', '2019-09-09 02:53:15');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 02:59:52', '2019-09-09 02:59:52');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 03:01:22', '2019-09-09 03:01:22');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 03:01:52', '2019-09-09 03:01:52');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 03:02:31', '2019-09-09 03:02:31');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 03:03:15', '2019-09-09 03:03:15');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:07:01', '2019-09-09 03:07:01');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:07:27', '2019-09-09 03:07:27');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:13:48', '2019-09-09 03:13:48');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:14:57', '2019-09-09 03:14:57');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:25:57', '2019-09-09 03:25:57');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:26:31', '2019-09-09 03:26:31');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:28:32', '2019-09-09 03:28:32');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:28:59', '2019-09-09 03:28:59');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:37:03', '2019-09-09 03:37:03');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:43:12', '2019-09-09 03:43:12');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:47:27', '2019-09-09 03:47:27');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:47:58', '2019-09-09 03:47:58');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:48:33', '2019-09-09 03:48:33');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-09 03:48:53', '2019-09-09 03:48:53');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 03:56:37', '2019-09-09 03:56:37');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 03:56:45', '2019-09-09 03:56:45');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 03:56:56', '2019-09-09 03:56:56');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 03:57:51', '2019-09-09 03:57:51');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '[]', '2019-09-09 03:59:06', '2019-09-09 03:59:06');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 04:00:04', '2019-09-09 04:00:04');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 04:00:33', '2019-09-09 04:00:33');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 04:00:38', '2019-09-09 04:00:38');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:02:08', '2019-09-09 04:02:08');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:06:20', '2019-09-09 04:06:20');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:07:18', '2019-09-09 04:07:18');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:07:42', '2019-09-09 04:07:42');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:08:11', '2019-09-09 04:08:11');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:08:45', '2019-09-09 04:08:45');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:09:25', '2019-09-09 04:09:25');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:10:44', '2019-09-09 04:10:44');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:11:28', '2019-09-09 04:11:28');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:12:42', '2019-09-09 04:12:42');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:13:27', '2019-09-09 04:13:27');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 04:14:45', '2019-09-09 04:14:45');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 04:22:51', '2019-09-09 04:22:51');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:24:24', '2019-09-09 04:24:24');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:25:16', '2019-09-09 04:25:16');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:27:05', '2019-09-09 04:27:05');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:27:56', '2019-09-09 04:27:56');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 04:28:37', '2019-09-09 04:28:37');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 06:07:24', '2019-09-09 06:07:24');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 06:08:33', '2019-09-09 06:08:33');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:12:18', '2019-09-09 06:12:18');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:14:14', '2019-09-09 06:14:14');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:16:51', '2019-09-09 06:16:51');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/acticles/16', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:17:00', '2019-09-09 06:17:00');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:17:41', '2019-09-09 06:17:41');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:19:13', '2019-09-09 06:19:13');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:24:28', '2019-09-09 06:24:28');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:24:54', '2019-09-09 06:24:54');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:26:12', '2019-09-09 06:26:12');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:26:55', '2019-09-09 06:26:55');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:27:21', '2019-09-09 06:27:21');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:28:36', '2019-09-09 06:28:36');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:28:49', '2019-09-09 06:28:49');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:29:02', '2019-09-09 06:29:02');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:29:28', '2019-09-09 06:29:28');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:29:57', '2019-09-09 06:29:57');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:30:33', '2019-09-09 06:30:33');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/acticles/create', 'GET', '127.0.0.1', '[]', '2019-09-09 06:33:50', '2019-09-09 06:33:50');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/acticles', 'POST', '127.0.0.1', '{\"spec_id\":\"1\",\"content\":\"\\u62a2\\u52ab\\u7f6a\\u4e00\\u822c\\u5224\\u591a\\u5c11\\u5e74\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}', '2019-09-09 06:34:49', '2019-09-09 06:34:49');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/acticles', 'GET', '127.0.0.1', '[]', '2019-09-09 06:34:50', '2019-09-09 06:34:50');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"page\":\"6\",\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:35:00', '2019-09-09 06:35:00');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"page\":\"6\"}', '2019-09-09 06:36:26', '2019-09-09 06:36:26');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"page\":\"6\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:36:40', '2019-09-09 06:36:40');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-09-09 06:36:49', '2019-09-09 06:36:49');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 06:42:31', '2019-09-09 06:42:31');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-09 06:51:41', '2019-09-09 06:51:41');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-09 06:56:11', '2019-09-09 06:56:11');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:04:54', '2019-09-09 07:04:54');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/questions/create', 'GET', '127.0.0.1', '[]', '2019-09-09 07:05:46', '2019-09-09 07:05:46');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/questions', 'POST', '127.0.0.1', '{\"title\":\"\\u5e38\\u89c11\",\"question\":\"\\u4e3a\\u4ec0\\u4e48\\u603b\\u662f\\u8fd9\\u6837\",\"answer\":\"\\u6211\\u4e5f\\u4e0d\\u77e5\\u9053\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\"}', '2019-09-09 07:06:59', '2019-09-09 07:06:59');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-09 07:07:01', '2019-09-09 07:07:01');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-09 07:09:27', '2019-09-09 07:09:27');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-09 07:09:54', '2019-09-09 07:09:54');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:10:26', '2019-09-09 07:10:26');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:12:53', '2019-09-09 07:12:53');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u5177\",\"icon\":\"fa-key\",\"uri\":\"\\/tools\",\"roles\":[null],\"permission\":null,\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}', '2019-09-09 07:14:47', '2019-09-09 07:14:47');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-09 07:14:48', '2019-09-09 07:14:48');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:15:02', '2019-09-09 07:15:02');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:15:08', '2019-09-09 07:15:08');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-09 07:16:36', '2019-09-09 07:16:36');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-09 07:16:37', '2019-09-09 07:16:37');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:16:44', '2019-09-09 07:16:44');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers*\\r\\n\\/tools\\/notarys*\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-09 07:17:33', '2019-09-09 07:17:33');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-09 07:17:35', '2019-09-09 07:17:35');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:17:40', '2019-09-09 07:17:40');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"43\",\"title\":\"\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/laywers\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}', '2019-09-09 07:18:35', '2019-09-09 07:18:35');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-09 07:18:36', '2019-09-09 07:18:36');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"43\",\"title\":\"\\u516c\\u8bc1\\u5904\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/notarys\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}', '2019-09-09 07:19:06', '2019-09-09 07:19:06');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-09 07:19:07', '2019-09-09 07:19:07');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/auth/menu/43/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 07:19:51', '2019-09-09 07:19:51');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/auth/menu/43', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u5177\",\"icon\":\"fa-key\",\"uri\":\"\\/tools\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-09 07:19:57', '2019-09-09 07:19:57');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-09 07:19:59', '2019-09-09 07:19:59');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-09 07:20:07', '2019-09-09 07:20:07');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 07:24:50', '2019-09-09 07:24:50');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 07:28:57', '2019-09-09 07:28:57');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 07:30:24', '2019-09-09 07:30:24');
INSERT INTO `admin_operation_log` VALUES ('1019', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 07:32:17', '2019-09-09 07:32:17');
INSERT INTO `admin_operation_log` VALUES ('1020', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 07:32:45', '2019-09-09 07:32:45');
INSERT INTO `admin_operation_log` VALUES ('1021', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 07:56:33', '2019-09-09 07:56:33');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin/tools/laywers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 08:02:44', '2019-09-09 08:02:44');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/tools/laywers/create', 'GET', '127.0.0.1', '[]', '2019-09-09 08:04:45', '2019-09-09 08:04:45');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/tools/laywers/create', 'GET', '127.0.0.1', '[]', '2019-09-09 08:09:30', '2019-09-09 08:09:30');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/tools/laywers', 'POST', '127.0.0.1', '{\"name\":\"\\u5f8b\\u5e08\\u7532\",\"title\":\"\\u6267\\u4e1a\\u5f8b\\u5e08\",\"mobile\":\"13655454556\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"cate_id\":\"1\",\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\\uff0c\\u533b\\u836f\\u884c\\u4e1a\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}', '2019-09-09 08:11:37', '2019-09-09 08:11:37');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/tools/laywers/create', 'GET', '127.0.0.1', '[]', '2019-09-09 08:11:41', '2019-09-09 08:11:41');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/tools/laywers', 'POST', '127.0.0.1', '{\"name\":\"\\u5f8b\\u5e08\\u7532\",\"title\":\"\\u6267\\u4e1a\\u5f8b\\u5e08\",\"mobile\":\"13655454556\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"cate_id\":\"1\",\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\\uff0c\\u533b\\u836f\\u884c\\u4e1a\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}', '2019-09-09 08:14:00', '2019-09-09 08:14:00');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 08:14:01', '2019-09-09 08:14:01');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/tools/laywers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 08:20:37', '2019-09-09 08:20:37');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/tools/laywers', 'POST', '127.0.0.1', '{\"name\":\"\\u5f8b\\u5e08\\u4e59\",\"title\":\"\\u6267\\u4e1a\\u5f8b\\u5e08\",\"mobile\":\"17788486595\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"cate_id\":null,\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/tools\\/laywers\"}', '2019-09-09 08:21:41', '2019-09-09 08:21:41');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 08:21:42', '2019-09-09 08:21:42');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 08:51:55', '2019-09-09 08:51:55');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 08:55:45', '2019-09-09 08:55:45');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 08:58:35', '2019-09-09 08:58:35');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 08:58:59', '2019-09-09 08:58:59');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/tools/laywers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 08:59:47', '2019-09-09 08:59:47');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/tools/laywers/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-09 09:00:23', '2019-09-09 09:00:23');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/tools/laywers/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-09 09:01:26', '2019-09-09 09:01:26');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/tools/laywers/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-09 09:03:33', '2019-09-09 09:03:33');
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/tools/laywers/1', 'PUT', '127.0.0.1', '{\"name\":\"test5515\",\"level\":\"2\",\"title\":\"speew\",\"expertise\":\"\\u5a5a\\u59fb\\u5bb6\\u5ead\",\"mobile\":\"15678837703\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\\uff0c\\u533b\\u836f\\u884c\\u4e1a\",\"status\":\"on\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\"}', '2019-09-09 09:05:03', '2019-09-09 09:05:03');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-09 09:05:06', '2019-09-09 09:05:06');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 09:12:27', '2019-09-09 09:12:27');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-09 09:15:52', '2019-09-09 09:15:52');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-09 09:17:42', '2019-09-09 09:17:42');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin/tools/notarys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 09:19:04', '2019-09-09 09:19:04');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/tools/notarys', 'POST', '127.0.0.1', '{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"qq\":\"151518723\",\"wechat\":\"weakfnei\",\"lng\":\"102125\",\"lat\":\"202\",\"status\":\"on\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/tools\\/notarys\"}', '2019-09-09 09:21:10', '2019-09-09 09:21:10');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-09 09:21:14', '2019-09-09 09:21:14');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/tools/notarys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-09 09:21:47', '2019-09-09 09:21:47');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/tools/notarys/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"qq\":\"151518723\",\"wechat\":\"weakfnei\",\"lng\":\"105.1532\",\"lat\":\"202.5624\",\"status\":\"on\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/tools\\/notarys\"}', '2019-09-09 09:22:12', '2019-09-09 09:22:12');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-09 09:22:17', '2019-09-09 09:22:17');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-09 09:25:07', '2019-09-09 09:25:07');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-10 00:46:19', '2019-09-10 00:46:19');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 00:47:16', '2019-09-10 00:47:16');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 00:52:50', '2019-09-10 00:52:50');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:26:28', '2019-09-10 01:26:28');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:28:11', '2019-09-10 01:28:11');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:29:44', '2019-09-10 01:29:44');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:30:34', '2019-09-10 01:30:34');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:32:24', '2019-09-10 01:32:24');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:36:30', '2019-09-10 01:36:30');
INSERT INTO `admin_operation_log` VALUES ('1061', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:37:18', '2019-09-10 01:37:18');
INSERT INTO `admin_operation_log` VALUES ('1062', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:37:59', '2019-09-10 01:37:59');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:39:48', '2019-09-10 01:39:48');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:56:16', '2019-09-10 01:56:16');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin/tools/notarys', 'GET', '127.0.0.1', '[]', '2019-09-10 01:59:47', '2019-09-10 01:59:47');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:01:21', '2019-09-10 02:01:21');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u516c\\u8bc1\\u5904\\u8bc4\\u8bba\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/notarys\\/comments\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 02:02:21', '2019-09-10 02:02:21');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 02:02:25', '2019-09-10 02:02:25');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 02:04:56', '2019-09-10 02:04:56');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:05:06', '2019-09-10 02:05:06');
INSERT INTO `admin_operation_log` VALUES ('1071', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:05:26', '2019-09-10 02:05:26');
INSERT INTO `admin_operation_log` VALUES ('1072', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 02:05:27', '2019-09-10 02:05:27');
INSERT INTO `admin_operation_log` VALUES ('1073', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:07:01', '2019-09-10 02:07:01');
INSERT INTO `admin_operation_log` VALUES ('1074', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 02:07:04', '2019-09-10 02:07:04');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 02:07:15', '2019-09-10 02:07:15');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:09:51', '2019-09-10 02:09:51');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:11:42', '2019-09-10 02:11:42');
INSERT INTO `admin_operation_log` VALUES ('1078', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:12:37', '2019-09-10 02:12:37');
INSERT INTO `admin_operation_log` VALUES ('1079', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:14:09', '2019-09-10 02:14:09');
INSERT INTO `admin_operation_log` VALUES ('1080', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:14:54', '2019-09-10 02:14:54');
INSERT INTO `admin_operation_log` VALUES ('1081', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:15:20', '2019-09-10 02:15:20');
INSERT INTO `admin_operation_log` VALUES ('1082', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:16:16', '2019-09-10 02:16:16');
INSERT INTO `admin_operation_log` VALUES ('1083', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:17:03', '2019-09-10 02:17:03');
INSERT INTO `admin_operation_log` VALUES ('1084', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '[]', '2019-09-10 02:24:57', '2019-09-10 02:24:57');
INSERT INTO `admin_operation_log` VALUES ('1085', '1', 'admin/tools/notarys/comments/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:25:07', '2019-09-10 02:25:07');
INSERT INTO `admin_operation_log` VALUES ('1086', '1', 'admin/tools/notarys/comments/1', 'GET', '127.0.0.1', '[]', '2019-09-10 02:29:21', '2019-09-10 02:29:21');
INSERT INTO `admin_operation_log` VALUES ('1087', '1', 'admin/tools/notarys/comments/1', 'GET', '127.0.0.1', '[]', '2019-09-10 02:30:21', '2019-09-10 02:30:21');
INSERT INTO `admin_operation_log` VALUES ('1088', '1', 'admin/tools/notarys/comments/1', 'GET', '127.0.0.1', '[]', '2019-09-10 02:35:50', '2019-09-10 02:35:50');
INSERT INTO `admin_operation_log` VALUES ('1089', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:36:40', '2019-09-10 02:36:40');
INSERT INTO `admin_operation_log` VALUES ('1090', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:36:49', '2019-09-10 02:36:49');
INSERT INTO `admin_operation_log` VALUES ('1091', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-10 02:38:40', '2019-09-10 02:38:40');
INSERT INTO `admin_operation_log` VALUES ('1092', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-10 02:38:56', '2019-09-10 02:38:56');
INSERT INTO `admin_operation_log` VALUES ('1093', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-10 02:39:12', '2019-09-10 02:39:12');
INSERT INTO `admin_operation_log` VALUES ('1094', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-10 02:40:55', '2019-09-10 02:40:55');
INSERT INTO `admin_operation_log` VALUES ('1095', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-10 02:41:41', '2019-09-10 02:41:41');
INSERT INTO `admin_operation_log` VALUES ('1096', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-10 02:42:49', '2019-09-10 02:42:49');
INSERT INTO `admin_operation_log` VALUES ('1097', '1', 'admin/tools/notarys/comments/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-10 02:49:57', '2019-09-10 02:49:57');
INSERT INTO `admin_operation_log` VALUES ('1098', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:51:00', '2019-09-10 02:51:00');
INSERT INTO `admin_operation_log` VALUES ('1099', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 02:52:34', '2019-09-10 02:52:34');
INSERT INTO `admin_operation_log` VALUES ('1100', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u987e\\u95ee\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/notarys\\/specialists\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 02:53:13', '2019-09-10 02:53:13');
INSERT INTO `admin_operation_log` VALUES ('1101', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 02:53:15', '2019-09-10 02:53:15');
INSERT INTO `admin_operation_log` VALUES ('1102', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 02:53:58', '2019-09-10 02:53:58');
INSERT INTO `admin_operation_log` VALUES ('1103', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:04:54', '2019-09-10 03:04:54');
INSERT INTO `admin_operation_log` VALUES ('1104', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 03:04:56', '2019-09-10 03:04:56');
INSERT INTO `admin_operation_log` VALUES ('1105', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 03:06:00', '2019-09-10 03:06:00');
INSERT INTO `admin_operation_log` VALUES ('1106', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:06:21', '2019-09-10 03:06:21');
INSERT INTO `admin_operation_log` VALUES ('1107', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 03:06:23', '2019-09-10 03:06:23');
INSERT INTO `admin_operation_log` VALUES ('1108', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:07:39', '2019-09-10 03:07:39');
INSERT INTO `admin_operation_log` VALUES ('1109', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 03:07:42', '2019-09-10 03:07:42');
INSERT INTO `admin_operation_log` VALUES ('1110', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:08:10', '2019-09-10 03:08:10');
INSERT INTO `admin_operation_log` VALUES ('1111', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 03:08:13', '2019-09-10 03:08:13');
INSERT INTO `admin_operation_log` VALUES ('1112', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:09:29', '2019-09-10 03:09:29');
INSERT INTO `admin_operation_log` VALUES ('1113', '1', 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:09:50', '2019-09-10 03:09:50');
INSERT INTO `admin_operation_log` VALUES ('1114', '1', 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers*\\r\\n\\/tools\\/notarys\\/specialist*\\r\\n\\/tools\\/notarys\\/comments*\\r\\n\\/tools\\/notarys*\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-10 03:10:27', '2019-09-10 03:10:27');
INSERT INTO `admin_operation_log` VALUES ('1115', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 03:10:31', '2019-09-10 03:10:31');
INSERT INTO `admin_operation_log` VALUES ('1116', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:10:54', '2019-09-10 03:10:54');
INSERT INTO `admin_operation_log` VALUES ('1117', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 03:10:58', '2019-09-10 03:10:58');
INSERT INTO `admin_operation_log` VALUES ('1118', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:11:14', '2019-09-10 03:11:14');
INSERT INTO `admin_operation_log` VALUES ('1119', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:11:28', '2019-09-10 03:11:28');
INSERT INTO `admin_operation_log` VALUES ('1120', '1', 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:11:49', '2019-09-10 03:11:49');
INSERT INTO `admin_operation_log` VALUES ('1121', '1', 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers*\\r\\n\\/tools\\/notarys*\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-10 03:12:00', '2019-09-10 03:12:00');
INSERT INTO `admin_operation_log` VALUES ('1122', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 03:12:03', '2019-09-10 03:12:03');
INSERT INTO `admin_operation_log` VALUES ('1123', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:17:05', '2019-09-10 03:17:05');
INSERT INTO `admin_operation_log` VALUES ('1124', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '[]', '2019-09-10 03:18:53', '2019-09-10 03:18:53');
INSERT INTO `admin_operation_log` VALUES ('1125', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '[]', '2019-09-10 03:19:23', '2019-09-10 03:19:23');
INSERT INTO `admin_operation_log` VALUES ('1126', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '[]', '2019-09-10 03:21:54', '2019-09-10 03:21:54');
INSERT INTO `admin_operation_log` VALUES ('1127', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '[]', '2019-09-10 03:22:53', '2019-09-10 03:22:53');
INSERT INTO `admin_operation_log` VALUES ('1128', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '[]', '2019-09-10 03:23:17', '2019-09-10 03:23:17');
INSERT INTO `admin_operation_log` VALUES ('1129', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '[]', '2019-09-10 03:25:13', '2019-09-10 03:25:13');
INSERT INTO `admin_operation_log` VALUES ('1130', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:27:22', '2019-09-10 03:27:22');
INSERT INTO `admin_operation_log` VALUES ('1131', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:27:45', '2019-09-10 03:27:45');
INSERT INTO `admin_operation_log` VALUES ('1132', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-10 03:30:35', '2019-09-10 03:30:35');
INSERT INTO `admin_operation_log` VALUES ('1133', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-10 03:33:12', '2019-09-10 03:33:12');
INSERT INTO `admin_operation_log` VALUES ('1134', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '[]', '2019-09-10 03:34:52', '2019-09-10 03:34:52');
INSERT INTO `admin_operation_log` VALUES ('1135', '1', 'admin/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:46:48', '2019-09-10 03:46:48');
INSERT INTO `admin_operation_log` VALUES ('1136', '1', 'admin/legals/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:48:55', '2019-09-10 03:48:55');
INSERT INTO `admin_operation_log` VALUES ('1137', '1', 'admin/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:49:27', '2019-09-10 03:49:27');
INSERT INTO `admin_operation_log` VALUES ('1138', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 03:49:42', '2019-09-10 03:49:42');
INSERT INTO `admin_operation_log` VALUES ('1139', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '[]', '2019-09-10 03:52:59', '2019-09-10 03:52:59');
INSERT INTO `admin_operation_log` VALUES ('1140', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '[]', '2019-09-10 03:56:16', '2019-09-10 03:56:16');
INSERT INTO `admin_operation_log` VALUES ('1141', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '[]', '2019-09-10 03:57:50', '2019-09-10 03:57:50');
INSERT INTO `admin_operation_log` VALUES ('1142', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '[]', '2019-09-10 03:58:12', '2019-09-10 03:58:12');
INSERT INTO `admin_operation_log` VALUES ('1143', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '[]', '2019-09-10 03:59:42', '2019-09-10 03:59:42');
INSERT INTO `admin_operation_log` VALUES ('1144', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '[]', '2019-09-10 04:01:08', '2019-09-10 04:01:08');
INSERT INTO `admin_operation_log` VALUES ('1145', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 04:01:53', '2019-09-10 04:01:53');
INSERT INTO `admin_operation_log` VALUES ('1146', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '[]', '2019-09-10 04:11:39', '2019-09-10 04:11:39');
INSERT INTO `admin_operation_log` VALUES ('1147', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '[]', '2019-09-10 04:12:43', '2019-09-10 04:12:43');
INSERT INTO `admin_operation_log` VALUES ('1148', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '[]', '2019-09-10 04:13:11', '2019-09-10 04:13:11');
INSERT INTO `admin_operation_log` VALUES ('1149', '1', 'admin/answers/lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 04:14:25', '2019-09-10 04:14:25');
INSERT INTO `admin_operation_log` VALUES ('1150', '1', 'admin/answers/lists/create', 'GET', '127.0.0.1', '[]', '2019-09-10 04:14:44', '2019-09-10 04:14:44');
INSERT INTO `admin_operation_log` VALUES ('1151', '1', 'admin/answers/lists', 'POST', '127.0.0.1', '{\"title\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\",\"option1\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"option2\":\"\\u4f4f\\u623f\\u8865\\u8d34\",\"option3\":null,\"option4\":null,\"correct\":\"A\",\"status\":\"on\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 04:15:59', '2019-09-10 04:15:59');
INSERT INTO `admin_operation_log` VALUES ('1152', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '[]', '2019-09-10 04:16:03', '2019-09-10 04:16:03');
INSERT INTO `admin_operation_log` VALUES ('1153', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '[]', '2019-09-10 04:17:06', '2019-09-10 04:17:06');
INSERT INTO `admin_operation_log` VALUES ('1154', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '[]', '2019-09-10 04:17:26', '2019-09-10 04:17:26');
INSERT INTO `admin_operation_log` VALUES ('1155', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '[]', '2019-09-10 04:19:03', '2019-09-10 04:19:03');
INSERT INTO `admin_operation_log` VALUES ('1156', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 05:59:33', '2019-09-10 05:59:33');
INSERT INTO `admin_operation_log` VALUES ('1157', '1', 'admin/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 05:59:39', '2019-09-10 05:59:39');
INSERT INTO `admin_operation_log` VALUES ('1158', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:13:29', '2019-09-10 06:13:29');
INSERT INTO `admin_operation_log` VALUES ('1159', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:13:50', '2019-09-10 06:13:50');
INSERT INTO `admin_operation_log` VALUES ('1160', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '[]', '2019-09-10 06:14:11', '2019-09-10 06:14:11');
INSERT INTO `admin_operation_log` VALUES ('1161', '1', 'admin/answers/records', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"answerList\":{\"title\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\"},\"date\":\"2019-09-10 14:14:12\",\"question\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\",\"answer\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 06:16:08', '2019-09-10 06:16:08');
INSERT INTO `admin_operation_log` VALUES ('1162', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:16:13', '2019-09-10 06:16:13');
INSERT INTO `admin_operation_log` VALUES ('1163', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:21:08', '2019-09-10 06:21:08');
INSERT INTO `admin_operation_log` VALUES ('1164', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:21:12', '2019-09-10 06:21:12');
INSERT INTO `admin_operation_log` VALUES ('1165', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:22:12', '2019-09-10 06:22:12');
INSERT INTO `admin_operation_log` VALUES ('1166', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:22:28', '2019-09-10 06:22:28');
INSERT INTO `admin_operation_log` VALUES ('1167', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:22:33', '2019-09-10 06:22:33');
INSERT INTO `admin_operation_log` VALUES ('1168', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:24:59', '2019-09-10 06:24:59');
INSERT INTO `admin_operation_log` VALUES ('1169', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:25:13', '2019-09-10 06:25:13');
INSERT INTO `admin_operation_log` VALUES ('1170', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:25:17', '2019-09-10 06:25:17');
INSERT INTO `admin_operation_log` VALUES ('1171', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:26:21', '2019-09-10 06:26:21');
INSERT INTO `admin_operation_log` VALUES ('1172', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:26:39', '2019-09-10 06:26:39');
INSERT INTO `admin_operation_log` VALUES ('1173', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '[]', '2019-09-10 06:31:19', '2019-09-10 06:31:19');
INSERT INTO `admin_operation_log` VALUES ('1174', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '[]', '2019-09-10 06:31:47', '2019-09-10 06:31:47');
INSERT INTO `admin_operation_log` VALUES ('1175', '1', 'admin/answers/records', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"answer_list_id\":\"1\",\"date\":\"2019-09-10 14:31:48\",\"question\":null,\"answer\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 06:32:12', '2019-09-10 06:32:12');
INSERT INTO `admin_operation_log` VALUES ('1176', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:32:16', '2019-09-10 06:32:16');
INSERT INTO `admin_operation_log` VALUES ('1177', '1', 'admin/answers/records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:34:09', '2019-09-10 06:34:09');
INSERT INTO `admin_operation_log` VALUES ('1178', '1', 'admin/answers/records', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"answer_list_id\":\"1\",\"date\":\"2019-09-10 14:34:09\",\"question\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\",\"answer\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/answers\\/records\"}', '2019-09-10 06:34:48', '2019-09-10 06:34:48');
INSERT INTO `admin_operation_log` VALUES ('1179', '1', 'admin/answers/records', 'GET', '127.0.0.1', '[]', '2019-09-10 06:34:50', '2019-09-10 06:34:50');
INSERT INTO `admin_operation_log` VALUES ('1180', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_AnswerRecord\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-09-10 06:35:11', '2019-09-10 06:35:11');
INSERT INTO `admin_operation_log` VALUES ('1181', '1', 'admin/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:35:15', '2019-09-10 06:35:15');
INSERT INTO `admin_operation_log` VALUES ('1182', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_AnswerRecord\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-09-10 06:35:21', '2019-09-10 06:35:21');
INSERT INTO `admin_operation_log` VALUES ('1183', '1', 'admin/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:35:26', '2019-09-10 06:35:26');
INSERT INTO `admin_operation_log` VALUES ('1184', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:37:52', '2019-09-10 06:37:52');
INSERT INTO `admin_operation_log` VALUES ('1185', '1', 'admin/questions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:38:07', '2019-09-10 06:38:07');
INSERT INTO `admin_operation_log` VALUES ('1186', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:38:17', '2019-09-10 06:38:17');
INSERT INTO `admin_operation_log` VALUES ('1187', '1', 'admin/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:39:54', '2019-09-10 06:39:54');
INSERT INTO `admin_operation_log` VALUES ('1188', '1', 'admin/questions', 'POST', '127.0.0.1', '{\"title\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"question\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"answer\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\"}', '2019-09-10 06:40:28', '2019-09-10 06:40:28');
INSERT INTO `admin_operation_log` VALUES ('1189', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-10 06:40:30', '2019-09-10 06:40:30');
INSERT INTO `admin_operation_log` VALUES ('1190', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:54:14', '2019-09-10 06:54:14');
INSERT INTO `admin_operation_log` VALUES ('1191', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"39\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"\\/q\",\"roles\":[null],\"permission\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 06:54:45', '2019-09-10 06:54:45');
INSERT INTO `admin_operation_log` VALUES ('1192', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 06:54:48', '2019-09-10 06:54:48');
INSERT INTO `admin_operation_log` VALUES ('1193', '1', 'admin/auth/menu/48/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 06:54:57', '2019-09-10 06:54:57');
INSERT INTO `admin_operation_log` VALUES ('1194', '1', 'admin/auth/menu/48', 'PUT', '127.0.0.1', '{\"parent_id\":\"39\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"\\/questions\\/categorys\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-10 06:56:50', '2019-09-10 06:56:50');
INSERT INTO `admin_operation_log` VALUES ('1195', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 06:56:53', '2019-09-10 06:56:53');
INSERT INTO `admin_operation_log` VALUES ('1196', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 06:57:25', '2019-09-10 06:57:25');
INSERT INTO `admin_operation_log` VALUES ('1197', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:03:17', '2019-09-10 07:03:17');
INSERT INTO `admin_operation_log` VALUES ('1198', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:05:03', '2019-09-10 07:05:03');
INSERT INTO `admin_operation_log` VALUES ('1199', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:05:41', '2019-09-10 07:05:41');
INSERT INTO `admin_operation_log` VALUES ('1200', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:06:12', '2019-09-10 07:06:12');
INSERT INTO `admin_operation_log` VALUES ('1201', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:07:47', '2019-09-10 07:07:47');
INSERT INTO `admin_operation_log` VALUES ('1202', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:11:45', '2019-09-10 07:11:45');
INSERT INTO `admin_operation_log` VALUES ('1203', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:13:23', '2019-09-10 07:13:23');
INSERT INTO `admin_operation_log` VALUES ('1204', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:13:54', '2019-09-10 07:13:54');
INSERT INTO `admin_operation_log` VALUES ('1205', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:16:21', '2019-09-10 07:16:21');
INSERT INTO `admin_operation_log` VALUES ('1206', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:16:40', '2019-09-10 07:16:40');
INSERT INTO `admin_operation_log` VALUES ('1207', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:17:44', '2019-09-10 07:17:44');
INSERT INTO `admin_operation_log` VALUES ('1208', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:18:07', '2019-09-10 07:18:07');
INSERT INTO `admin_operation_log` VALUES ('1209', '1', 'admin/questions/categorys', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 07:19:11', '2019-09-10 07:19:11');
INSERT INTO `admin_operation_log` VALUES ('1210', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:19:14', '2019-09-10 07:19:14');
INSERT INTO `admin_operation_log` VALUES ('1211', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:19:23', '2019-09-10 07:19:23');
INSERT INTO `admin_operation_log` VALUES ('1212', '1', 'admin/questions/categorys', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u623f\\u5c4b\\u8fc7\\u6237\\u4ecb\\u7ecd\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}', '2019-09-10 07:19:35', '2019-09-10 07:19:35');
INSERT INTO `admin_operation_log` VALUES ('1213', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:19:39', '2019-09-10 07:19:39');
INSERT INTO `admin_operation_log` VALUES ('1214', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:19:48', '2019-09-10 07:19:48');
INSERT INTO `admin_operation_log` VALUES ('1215', '1', 'admin/questions/categorys', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u529f\\u80fd\\u4f7f\\u7528\\u6307\\u5357\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}', '2019-09-10 07:20:01', '2019-09-10 07:20:01');
INSERT INTO `admin_operation_log` VALUES ('1216', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:20:05', '2019-09-10 07:20:05');
INSERT INTO `admin_operation_log` VALUES ('1217', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:20:21', '2019-09-10 07:20:21');
INSERT INTO `admin_operation_log` VALUES ('1218', '1', 'admin/questions/categorys', 'POST', '127.0.0.1', '{\"parent_id\":\"50\",\"title\":\"\\u6309\\u63ed\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}', '2019-09-10 07:20:37', '2019-09-10 07:20:37');
INSERT INTO `admin_operation_log` VALUES ('1219', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:20:40', '2019-09-10 07:20:40');
INSERT INTO `admin_operation_log` VALUES ('1220', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:20:49', '2019-09-10 07:20:49');
INSERT INTO `admin_operation_log` VALUES ('1221', '1', 'admin/questions/categorys', 'POST', '127.0.0.1', '{\"parent_id\":\"50\",\"title\":\"\\u8f66\\u8f86\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}', '2019-09-10 07:21:12', '2019-09-10 07:21:12');
INSERT INTO `admin_operation_log` VALUES ('1222', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:21:15', '2019-09-10 07:21:15');
INSERT INTO `admin_operation_log` VALUES ('1223', '1', 'admin/questions/categorys', 'POST', '127.0.0.1', '{\"parent_id\":\"50\",\"title\":\"\\u6d88\\u8d39\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\"}', '2019-09-10 07:21:34', '2019-09-10 07:21:34');
INSERT INTO `admin_operation_log` VALUES ('1224', '1', 'admin/questions/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:21:37', '2019-09-10 07:21:37');
INSERT INTO `admin_operation_log` VALUES ('1225', '1', 'admin/questions/categorys', 'POST', '127.0.0.1', '{\"parent_id\":\"50\",\"title\":\"\\u4fe1\\u7528\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 07:21:50', '2019-09-10 07:21:50');
INSERT INTO `admin_operation_log` VALUES ('1226', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:21:53', '2019-09-10 07:21:53');
INSERT INTO `admin_operation_log` VALUES ('1227', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:24:20', '2019-09-10 07:24:20');
INSERT INTO `admin_operation_log` VALUES ('1228', '1', 'admin/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:24:27', '2019-09-10 07:24:27');
INSERT INTO `admin_operation_log` VALUES ('1229', '1', 'admin/banners/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:25:36', '2019-09-10 07:25:36');
INSERT INTO `admin_operation_log` VALUES ('1230', '1', 'admin/banners/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:25:57', '2019-09-10 07:25:57');
INSERT INTO `admin_operation_log` VALUES ('1231', '1', 'admin/banners', 'POST', '127.0.0.1', '{\"picname\":\"\\u8f6e\\u64ad1\",\"sort\":\"1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 07:26:37', '2019-09-10 07:26:37');
INSERT INTO `admin_operation_log` VALUES ('1232', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-09-10 07:26:40', '2019-09-10 07:26:40');
INSERT INTO `admin_operation_log` VALUES ('1233', '1', 'admin/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:26:54', '2019-09-10 07:26:54');
INSERT INTO `admin_operation_log` VALUES ('1234', '1', 'admin/banners', 'POST', '127.0.0.1', '{\"picname\":\"\\u8f6e\\u64ad2\",\"sort\":\"2\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/banners\"}', '2019-09-10 07:27:20', '2019-09-10 07:27:20');
INSERT INTO `admin_operation_log` VALUES ('1235', '1', 'admin/banners/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:27:23', '2019-09-10 07:27:23');
INSERT INTO `admin_operation_log` VALUES ('1236', '1', 'admin/banners', 'POST', '127.0.0.1', '{\"picname\":\"\\u8f6e\\u64ad3\",\"sort\":\"3\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\"}', '2019-09-10 07:27:47', '2019-09-10 07:27:47');
INSERT INTO `admin_operation_log` VALUES ('1237', '1', 'admin/banners/create', 'GET', '127.0.0.1', '[]', '2019-09-10 07:27:51', '2019-09-10 07:27:51');
INSERT INTO `admin_operation_log` VALUES ('1238', '1', 'admin/banners', 'POST', '127.0.0.1', '{\"picname\":\"\\u8f6e\\u64ad4\",\"sort\":\"4\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 07:28:18', '2019-09-10 07:28:18');
INSERT INTO `admin_operation_log` VALUES ('1239', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-09-10 07:28:22', '2019-09-10 07:28:22');
INSERT INTO `admin_operation_log` VALUES ('1240', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-09-10 07:30:27', '2019-09-10 07:30:27');
INSERT INTO `admin_operation_log` VALUES ('1241', '1', 'admin/acticles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:41:19', '2019-09-10 07:41:19');
INSERT INTO `admin_operation_log` VALUES ('1242', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:47:53', '2019-09-10 07:47:53');
INSERT INTO `admin_operation_log` VALUES ('1243', '1', 'admin/auth/menu/44/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:48:05', '2019-09-10 07:48:05');
INSERT INTO `admin_operation_log` VALUES ('1244', '1', 'admin/auth/menu/44', 'PUT', '127.0.0.1', '{\"parent_id\":\"43\",\"title\":\"\\u5f8b\\u5e08\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/laywers\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-10 07:48:12', '2019-09-10 07:48:12');
INSERT INTO `admin_operation_log` VALUES ('1245', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 07:48:14', '2019-09-10 07:48:14');
INSERT INTO `admin_operation_log` VALUES ('1246', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:48:24', '2019-09-10 07:48:24');
INSERT INTO `admin_operation_log` VALUES ('1247', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-09-10 07:48:45', '2019-09-10 07:48:45');
INSERT INTO `admin_operation_log` VALUES ('1248', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:49:52', '2019-09-10 07:49:52');
INSERT INTO `admin_operation_log` VALUES ('1249', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"41\",\"title\":\"\\u54a8\\u8be2\\u4e13\\u5bb6\",\"icon\":\"fa-bars\",\"uri\":\"\\/acticles\\/specialist\\/advices\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 07:51:06', '2019-09-10 07:51:06');
INSERT INTO `admin_operation_log` VALUES ('1250', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 07:51:09', '2019-09-10 07:51:09');
INSERT INTO `admin_operation_log` VALUES ('1251', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 07:52:02', '2019-09-10 07:52:02');
INSERT INTO `admin_operation_log` VALUES ('1252', '1', 'admin/acticles/specialist/advices', 'GET', '127.0.0.1', '[]', '2019-09-10 07:53:14', '2019-09-10 07:53:14');
INSERT INTO `admin_operation_log` VALUES ('1253', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:54:04', '2019-09-10 07:54:04');
INSERT INTO `admin_operation_log` VALUES ('1254', '1', 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:54:28', '2019-09-10 07:54:28');
INSERT INTO `admin_operation_log` VALUES ('1255', '1', 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-sitemap\",\"uri\":\"\\/legals\\/categorys\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-10 07:55:00', '2019-09-10 07:55:00');
INSERT INTO `admin_operation_log` VALUES ('1256', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 07:55:03', '2019-09-10 07:55:03');
INSERT INTO `admin_operation_log` VALUES ('1257', '1', 'admin/acticles/specialist/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 07:55:35', '2019-09-10 07:55:35');
INSERT INTO `admin_operation_log` VALUES ('1258', '1', 'admin/acticles/specialist/advices', 'GET', '127.0.0.1', '[]', '2019-09-10 08:03:43', '2019-09-10 08:03:43');
INSERT INTO `admin_operation_log` VALUES ('1259', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:04:03', '2019-09-10 08:04:03');
INSERT INTO `admin_operation_log` VALUES ('1260', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:07:34', '2019-09-10 08:07:34');
INSERT INTO `admin_operation_log` VALUES ('1261', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:11:34', '2019-09-10 08:11:34');
INSERT INTO `admin_operation_log` VALUES ('1262', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:12:21', '2019-09-10 08:12:21');
INSERT INTO `admin_operation_log` VALUES ('1263', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:13:12', '2019-09-10 08:13:12');
INSERT INTO `admin_operation_log` VALUES ('1264', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:13:45', '2019-09-10 08:13:45');
INSERT INTO `admin_operation_log` VALUES ('1265', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:14:50', '2019-09-10 08:14:50');
INSERT INTO `admin_operation_log` VALUES ('1266', '1', 'admin/acticles/specialist/advices', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"spec_id\":\"1\",\"question\":\"<p><\\/p><p>\\u89e3\\u51b3\\u4e00\\u4e0b\\u751f\\u6d3b\\u95ee\\u9898<\\/p>\",\"interpretation\":\"\\u6ca1\\u529e\\u6cd5\",\"measures\":\"\\u81ea\\u884c\\u5904\\u7406\",\"like_count\":\"1\",\"comments_count\":\"1\",\"status\":\"on\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 08:16:53', '2019-09-10 08:16:53');
INSERT INTO `admin_operation_log` VALUES ('1267', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:16:59', '2019-09-10 08:16:59');
INSERT INTO `admin_operation_log` VALUES ('1268', '1', 'admin/acticles/specialist/advices/create', 'GET', '127.0.0.1', '[]', '2019-09-10 08:17:28', '2019-09-10 08:17:28');
INSERT INTO `admin_operation_log` VALUES ('1269', '1', 'admin/acticles/specialist/advices', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"spec_id\":\"1\",\"question\":\"<p><\\/p><p>\\u89e3\\u51b3\\u4e00\\u4e0b\\u751f\\u6d3b\\u95ee\\u9898<\\/p>\",\"interpretation\":\"\\u6ca1\\u529e\\u6cd5\",\"measures\":\"\\u81ea\\u884c\\u5904\\u7406\",\"like_count\":\"1\",\"comments_count\":\"1\",\"status\":\"on\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 08:18:07', '2019-09-10 08:18:07');
INSERT INTO `admin_operation_log` VALUES ('1270', '1', 'admin/acticles/specialist/advices', 'GET', '127.0.0.1', '[]', '2019-09-10 08:18:10', '2019-09-10 08:18:10');
INSERT INTO `admin_operation_log` VALUES ('1271', '1', 'admin/acticles/specialist/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:18:33', '2019-09-10 08:18:33');
INSERT INTO `admin_operation_log` VALUES ('1272', '1', 'admin/acticles/specialist/advices/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:18:49', '2019-09-10 08:18:49');
INSERT INTO `admin_operation_log` VALUES ('1273', '1', 'admin/acticles/specialist/advices/1', 'GET', '127.0.0.1', '[]', '2019-09-10 08:19:31', '2019-09-10 08:19:31');
INSERT INTO `admin_operation_log` VALUES ('1274', '1', 'admin/acticles/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:26:09', '2019-09-10 08:26:09');
INSERT INTO `admin_operation_log` VALUES ('1275', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:41:21', '2019-09-10 08:41:21');
INSERT INTO `admin_operation_log` VALUES ('1276', '1', 'admin/auth/menu/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 08:41:29', '2019-09-10 08:41:29');
INSERT INTO `admin_operation_log` VALUES ('1277', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:41:35', '2019-09-10 08:41:35');
INSERT INTO `admin_operation_log` VALUES ('1278', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:41:38', '2019-09-10 08:41:38');
INSERT INTO `admin_operation_log` VALUES ('1279', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:42:05', '2019-09-10 08:42:05');
INSERT INTO `admin_operation_log` VALUES ('1280', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/acticles*\\r\\n\\/questions*\\r\\n\\/collects*\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-10 08:42:16', '2019-09-10 08:42:16');
INSERT INTO `admin_operation_log` VALUES ('1281', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 08:42:18', '2019-09-10 08:42:18');
INSERT INTO `admin_operation_log` VALUES ('1282', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 08:44:37', '2019-09-10 08:44:37');
INSERT INTO `admin_operation_log` VALUES ('1283', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:49:44', '2019-09-10 08:49:44');
INSERT INTO `admin_operation_log` VALUES ('1284', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:49:48', '2019-09-10 08:49:48');
INSERT INTO `admin_operation_log` VALUES ('1285', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:49:52', '2019-09-10 08:49:52');
INSERT INTO `admin_operation_log` VALUES ('1286', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:50:02', '2019-09-10 08:50:02');
INSERT INTO `admin_operation_log` VALUES ('1287', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:50:19', '2019-09-10 08:50:19');
INSERT INTO `admin_operation_log` VALUES ('1288', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:50:36', '2019-09-10 08:50:36');
INSERT INTO `admin_operation_log` VALUES ('1289', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:50:42', '2019-09-10 08:50:42');
INSERT INTO `admin_operation_log` VALUES ('1290', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:50:52', '2019-09-10 08:50:52');
INSERT INTO `admin_operation_log` VALUES ('1291', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:52:39', '2019-09-10 08:52:39');
INSERT INTO `admin_operation_log` VALUES ('1292', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u670d\\u52a1\\u9884\\u7ea6\",\"icon\":\"fa-bars\",\"uri\":\"\\/services\\/reservations\",\"roles\":[null],\"permission\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 08:53:13', '2019-09-10 08:53:13');
INSERT INTO `admin_operation_log` VALUES ('1293', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 08:53:15', '2019-09-10 08:53:15');
INSERT INTO `admin_operation_log` VALUES ('1294', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:54:03', '2019-09-10 08:54:03');
INSERT INTO `admin_operation_log` VALUES ('1295', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 08:54:09', '2019-09-10 08:54:09');
INSERT INTO `admin_operation_log` VALUES ('1296', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"service\",\"name\":\"serviceManagement\",\"http_method\":[null],\"http_path\":\"\\/service\\/reservation*\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-10 08:55:04', '2019-09-10 08:55:04');
INSERT INTO `admin_operation_log` VALUES ('1297', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-10 08:55:07', '2019-09-10 08:55:07');
INSERT INTO `admin_operation_log` VALUES ('1298', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:00:09', '2019-09-10 09:00:09');
INSERT INTO `admin_operation_log` VALUES ('1299', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-09-10 09:00:53', '2019-09-10 09:00:53');
INSERT INTO `admin_operation_log` VALUES ('1300', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"upload\"}', '2019-09-10 09:01:01', '2019-09-10 09:01:01');
INSERT INTO `admin_operation_log` VALUES ('1301', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"database\"}', '2019-09-10 09:01:17', '2019-09-10 09:01:17');
INSERT INTO `admin_operation_log` VALUES ('1302', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"develop\"}', '2019-09-10 09:01:29', '2019-09-10 09:01:29');
INSERT INTO `admin_operation_log` VALUES ('1303', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-09-10 09:01:54', '2019-09-10 09:01:54');
INSERT INTO `admin_operation_log` VALUES ('1304', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '[]', '2019-09-10 09:05:51', '2019-09-10 09:05:51');
INSERT INTO `admin_operation_log` VALUES ('1305', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '[]', '2019-09-10 09:21:45', '2019-09-10 09:21:45');
INSERT INTO `admin_operation_log` VALUES ('1306', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '[]', '2019-09-10 09:26:17', '2019-09-10 09:26:17');
INSERT INTO `admin_operation_log` VALUES ('1307', '1', 'admin/services/reservations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:29:13', '2019-09-10 09:29:13');
INSERT INTO `admin_operation_log` VALUES ('1308', '1', 'admin/services/reservations/create', 'GET', '127.0.0.1', '[]', '2019-09-10 09:29:29', '2019-09-10 09:29:29');
INSERT INTO `admin_operation_log` VALUES ('1309', '1', 'admin/services/reservations/create', 'GET', '127.0.0.1', '[]', '2019-09-10 09:30:44', '2019-09-10 09:30:44');
INSERT INTO `admin_operation_log` VALUES ('1310', '1', 'admin/services/reservations/create', 'GET', '127.0.0.1', '[]', '2019-09-10 09:31:06', '2019-09-10 09:31:06');
INSERT INTO `admin_operation_log` VALUES ('1311', '1', 'admin/services/reservations', 'POST', '127.0.0.1', '{\"u_name\":\"\\u674e\\u79d1\",\"u_mobile\":\"13854468498\",\"spec_name\":\"\\u6a0a\\u57ce\",\"spec_mobile\":\"15685184815\",\"content\":\"\\u623f\\u4ea7\\u8fc7\\u6237\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 09:32:25', '2019-09-10 09:32:25');
INSERT INTO `admin_operation_log` VALUES ('1312', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '[]', '2019-09-10 09:32:30', '2019-09-10 09:32:30');
INSERT INTO `admin_operation_log` VALUES ('1313', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '[]', '2019-09-10 09:33:39', '2019-09-10 09:33:39');
INSERT INTO `admin_operation_log` VALUES ('1314', '1', 'admin/services/reservations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:34:08', '2019-09-10 09:34:08');
INSERT INTO `admin_operation_log` VALUES ('1315', '1', 'admin/services/reservations/1', 'PUT', '127.0.0.1', '{\"u_name\":\"\\u674e\\u79d1\",\"u_mobile\":\"13854468498\",\"spec_name\":\"\\u6a0a\\u57ce\",\"spec_mobile\":\"15685184815\",\"content\":\"\\u623f\\u4ea7\\u8fc7\\u6237\",\"appointment\":\"2019-09-09 15:00:00\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/services\\/reservations\"}', '2019-09-10 09:34:35', '2019-09-10 09:34:35');
INSERT INTO `admin_operation_log` VALUES ('1316', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '[]', '2019-09-10 09:34:39', '2019-09-10 09:34:39');
INSERT INTO `admin_operation_log` VALUES ('1317', '1', 'admin/services/reservations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:35:00', '2019-09-10 09:35:00');
INSERT INTO `admin_operation_log` VALUES ('1318', '1', 'admin/services/reservations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:35:22', '2019-09-10 09:35:22');
INSERT INTO `admin_operation_log` VALUES ('1319', '1', 'admin/services/reservations/1', 'PUT', '127.0.0.1', '{\"u_name\":\"\\u674e\\u79d1\",\"u_mobile\":\"13854468498\",\"spec_name\":\"\\u6a0a\\u57ce\",\"spec_mobile\":\"15685184815\",\"content\":\"\\u623f\\u4ea7\\u8fc7\\u6237\",\"appointment\":\"2019-09-15 15:00:00\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/services\\/reservations\\/1\"}', '2019-09-10 09:35:37', '2019-09-10 09:35:37');
INSERT INTO `admin_operation_log` VALUES ('1320', '1', 'admin/services/reservations/1', 'GET', '127.0.0.1', '[]', '2019-09-10 09:35:42', '2019-09-10 09:35:42');
INSERT INTO `admin_operation_log` VALUES ('1321', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:41:58', '2019-09-10 09:41:58');
INSERT INTO `admin_operation_log` VALUES ('1322', '1', 'admin/auth/menu/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 09:42:23', '2019-09-10 09:42:23');
INSERT INTO `admin_operation_log` VALUES ('1323', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:42:28', '2019-09-10 09:42:28');
INSERT INTO `admin_operation_log` VALUES ('1324', '1', 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}', '2019-09-10 09:43:15', '2019-09-10 09:43:15');
INSERT INTO `admin_operation_log` VALUES ('1325', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:43:21', '2019-09-10 09:43:21');
INSERT INTO `admin_operation_log` VALUES ('1326', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:44:51', '2019-09-10 09:44:51');
INSERT INTO `admin_operation_log` VALUES ('1327', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-10 09:44:59', '2019-09-10 09:44:59');
INSERT INTO `admin_operation_log` VALUES ('1328', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d22\\u5bcc\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/funds\",\"roles\":[null],\"permission\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-10 09:45:08', '2019-09-10 09:45:08');
INSERT INTO `admin_operation_log` VALUES ('1329', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-10 09:45:10', '2019-09-10 09:45:10');
INSERT INTO `admin_operation_log` VALUES ('1330', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 00:40:33', '2019-09-11 00:40:33');
INSERT INTO `admin_operation_log` VALUES ('1331', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 00:41:18', '2019-09-11 00:41:18');
INSERT INTO `admin_operation_log` VALUES ('1332', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-09-11 00:42:10', '2019-09-11 00:42:10');
INSERT INTO `admin_operation_log` VALUES ('1333', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 00:46:55', '2019-09-11 00:46:55');
INSERT INTO `admin_operation_log` VALUES ('1334', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 00:47:39', '2019-09-11 00:47:39');
INSERT INTO `admin_operation_log` VALUES ('1335', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u623f\\u5730\\u4ea7\",\"descr\":\"\\u623f\\u5730\\u4ea7\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/personnel\\/categorys\"}', '2019-09-11 00:48:10', '2019-09-11 00:48:10');
INSERT INTO `admin_operation_log` VALUES ('1336', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-09-11 00:48:14', '2019-09-11 00:48:14');
INSERT INTO `admin_operation_log` VALUES ('1337', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 00:48:21', '2019-09-11 00:48:21');
INSERT INTO `admin_operation_log` VALUES ('1338', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u516c\\u53f8\\u8bc9\\u8bbc\",\"descr\":\"\\u516c\\u53f8\\u8bc9\\u8bbc\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/personnel\\/categorys\"}', '2019-09-11 00:48:39', '2019-09-11 00:48:39');
INSERT INTO `admin_operation_log` VALUES ('1339', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-11 00:48:41', '2019-09-11 00:48:41');
INSERT INTO `admin_operation_log` VALUES ('1340', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u5a5a\\u59fb\\u5bb6\\u5ead\",\"descr\":\"\\u5a5a\\u59fb\\u5bb6\\u5ead\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"after-save\":\"2\"}', '2019-09-11 00:48:57', '2019-09-11 00:48:57');
INSERT INTO `admin_operation_log` VALUES ('1341', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-11 00:49:00', '2019-09-11 00:49:00');
INSERT INTO `admin_operation_log` VALUES ('1342', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u533b\\u836f\\u884c\\u4e1a\",\"descr\":\"\\u533b\\u836f\\u884c\\u4e1a\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"after-save\":\"2\"}', '2019-09-11 00:49:15', '2019-09-11 00:49:15');
INSERT INTO `admin_operation_log` VALUES ('1343', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-11 00:49:17', '2019-09-11 00:49:17');
INSERT INTO `admin_operation_log` VALUES ('1344', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u52b3\\u52a8\\u5173\\u7cfb\",\"descr\":\"\\u52b3\\u52a8\\u5173\\u7cfb\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"after-save\":\"2\"}', '2019-09-11 00:49:31', '2019-09-11 00:49:31');
INSERT INTO `admin_operation_log` VALUES ('1345', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-11 00:49:34', '2019-09-11 00:49:34');
INSERT INTO `admin_operation_log` VALUES ('1346', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u6c11\\u4e8b\\u7ea0\\u7eb7\",\"descr\":\"\\u6c11\\u4e8b\\u7ea0\\u7eb7\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"after-save\":\"2\"}', '2019-09-11 00:49:51', '2019-09-11 00:49:51');
INSERT INTO `admin_operation_log` VALUES ('1347', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-11 00:49:53', '2019-09-11 00:49:53');
INSERT INTO `admin_operation_log` VALUES ('1348', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u5211\\u4e8b\\u6848\\u4ef6\",\"descr\":\"\\u5211\\u4e8b\\u6848\\u4ef6\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"after-save\":\"2\"}', '2019-09-11 00:50:08', '2019-09-11 00:50:08');
INSERT INTO `admin_operation_log` VALUES ('1349', '1', 'admin/personnel/categorys/create', 'GET', '127.0.0.1', '[]', '2019-09-11 00:50:10', '2019-09-11 00:50:10');
INSERT INTO `admin_operation_log` VALUES ('1350', '1', 'admin/personnel/categorys', 'POST', '127.0.0.1', '{\"title\":\"\\u5176\\u4ed6\",\"descr\":\"\\u5176\\u4ed6\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 00:50:26', '2019-09-11 00:50:26');
INSERT INTO `admin_operation_log` VALUES ('1351', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-09-11 00:50:28', '2019-09-11 00:50:28');
INSERT INTO `admin_operation_log` VALUES ('1352', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-09-11 00:52:09', '2019-09-11 00:52:09');
INSERT INTO `admin_operation_log` VALUES ('1353', '1', 'admin/personnel/categorys/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 00:52:31', '2019-09-11 00:52:31');
INSERT INTO `admin_operation_log` VALUES ('1354', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 00:52:44', '2019-09-11 00:52:44');
INSERT INTO `admin_operation_log` VALUES ('1355', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:19:50', '2019-09-11 01:19:50');
INSERT INTO `admin_operation_log` VALUES ('1356', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:19:57', '2019-09-11 01:19:57');
INSERT INTO `admin_operation_log` VALUES ('1357', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-11 01:21:40', '2019-09-11 01:21:40');
INSERT INTO `admin_operation_log` VALUES ('1358', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-11 01:22:34', '2019-09-11 01:22:34');
INSERT INTO `admin_operation_log` VALUES ('1359', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-11 01:23:12', '2019-09-11 01:23:12');
INSERT INTO `admin_operation_log` VALUES ('1360', '1', 'admin/funds/ingots/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:26:36', '2019-09-11 01:26:36');
INSERT INTO `admin_operation_log` VALUES ('1361', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-11 01:26:40', '2019-09-11 01:26:40');
INSERT INTO `admin_operation_log` VALUES ('1362', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-11 01:27:31', '2019-09-11 01:27:31');
INSERT INTO `admin_operation_log` VALUES ('1363', '1', 'admin/funds/ingots/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:28:03', '2019-09-11 01:28:03');
INSERT INTO `admin_operation_log` VALUES ('1364', '1', 'admin/funds/ingots/create', 'GET', '127.0.0.1', '[]', '2019-09-11 01:29:01', '2019-09-11 01:29:01');
INSERT INTO `admin_operation_log` VALUES ('1365', '1', 'admin/funds/ingots', 'POST', '127.0.0.1', '{\"user_id\":\"6\",\"quantity\":\"20\",\"expire_time\":\"2019-09-11 09:29:01\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:36:59', '2019-09-11 01:36:59');
INSERT INTO `admin_operation_log` VALUES ('1366', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-09-11 01:37:01', '2019-09-11 01:37:01');
INSERT INTO `admin_operation_log` VALUES ('1367', '1', 'admin/funds/ingots/3,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:39:21', '2019-09-11 01:39:21');
INSERT INTO `admin_operation_log` VALUES ('1368', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:39:26', '2019-09-11 01:39:26');
INSERT INTO `admin_operation_log` VALUES ('1369', '1', 'admin/funds/ingots/21,22,23,24,25,26,27,28,29,30,31,32,33,34,36', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:39:45', '2019-09-11 01:39:45');
INSERT INTO `admin_operation_log` VALUES ('1370', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:39:49', '2019-09-11 01:39:49');
INSERT INTO `admin_operation_log` VALUES ('1371', '1', 'admin/funds/ingots/37,38,39,40,41,42,43,44,45,47,48,49,50,51', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:40:10', '2019-09-11 01:40:10');
INSERT INTO `admin_operation_log` VALUES ('1372', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:40:15', '2019-09-11 01:40:15');
INSERT INTO `admin_operation_log` VALUES ('1373', '1', 'admin/funds/ingots/52,53,54,55,56,57,58,59,60,61,62,63,64,65', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:40:29', '2019-09-11 01:40:29');
INSERT INTO `admin_operation_log` VALUES ('1374', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:40:35', '2019-09-11 01:40:35');
INSERT INTO `admin_operation_log` VALUES ('1375', '1', 'admin/funds/ingots/46,66,67,68,69,70,71,72,73,74,75,76,77,78,79', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:41:02', '2019-09-11 01:41:02');
INSERT INTO `admin_operation_log` VALUES ('1376', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:41:07', '2019-09-11 01:41:07');
INSERT INTO `admin_operation_log` VALUES ('1377', '1', 'admin/funds/ingots/80,81,82,83,84,85,86,87,88,89,90,91,92,93,94', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:41:29', '2019-09-11 01:41:29');
INSERT INTO `admin_operation_log` VALUES ('1378', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:41:34', '2019-09-11 01:41:34');
INSERT INTO `admin_operation_log` VALUES ('1379', '1', 'admin/funds/ingots/35,95,96,97,98,99,100', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 01:41:52', '2019-09-11 01:41:52');
INSERT INTO `admin_operation_log` VALUES ('1380', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:41:58', '2019-09-11 01:41:58');
INSERT INTO `admin_operation_log` VALUES ('1381', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 01:42:08', '2019-09-11 01:42:08');
INSERT INTO `admin_operation_log` VALUES ('1382', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 02:12:11', '2019-09-11 02:12:11');
INSERT INTO `admin_operation_log` VALUES ('1383', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:14:02', '2019-09-11 02:14:02');
INSERT INTO `admin_operation_log` VALUES ('1384', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:14:12', '2019-09-11 02:14:12');
INSERT INTO `admin_operation_log` VALUES ('1385', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '[]', '2019-09-11 02:14:24', '2019-09-11 02:14:24');
INSERT INTO `admin_operation_log` VALUES ('1386', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '[]', '2019-09-11 02:14:54', '2019-09-11 02:14:54');
INSERT INTO `admin_operation_log` VALUES ('1387', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '[]', '2019-09-11 02:19:45', '2019-09-11 02:19:45');
INSERT INTO `admin_operation_log` VALUES ('1388', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '[]', '2019-09-11 02:21:36', '2019-09-11 02:21:36');
INSERT INTO `admin_operation_log` VALUES ('1389', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '[]', '2019-09-11 02:21:59', '2019-09-11 02:21:59');
INSERT INTO `admin_operation_log` VALUES ('1390', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '[]', '2019-09-11 02:24:18', '2019-09-11 02:24:18');
INSERT INTO `admin_operation_log` VALUES ('1391', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '[]', '2019-09-11 02:32:23', '2019-09-11 02:32:23');
INSERT INTO `admin_operation_log` VALUES ('1392', '1', 'admin/funds/balances', 'POST', '127.0.0.1', '{\"user_id\":\"6\",\"amount\":\"100.55\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 02:33:02', '2019-09-11 02:33:02');
INSERT INTO `admin_operation_log` VALUES ('1393', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-11 02:33:05', '2019-09-11 02:33:05');
INSERT INTO `admin_operation_log` VALUES ('1394', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-11 02:33:57', '2019-09-11 02:33:57');
INSERT INTO `admin_operation_log` VALUES ('1395', '1', 'admin/funds/balances/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:34:16', '2019-09-11 02:34:16');
INSERT INTO `admin_operation_log` VALUES ('1396', '1', 'admin/funds/balances', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"amount\":\"100.55\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/funds\\/balances\"}', '2019-09-11 02:34:31', '2019-09-11 02:34:31');
INSERT INTO `admin_operation_log` VALUES ('1397', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-11 02:34:35', '2019-09-11 02:34:35');
INSERT INTO `admin_operation_log` VALUES ('1398', '1', 'admin/funds/balances/102/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:36:51', '2019-09-11 02:36:51');
INSERT INTO `admin_operation_log` VALUES ('1399', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:45:10', '2019-09-11 02:45:10');
INSERT INTO `admin_operation_log` VALUES ('1400', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:48:08', '2019-09-11 02:48:08');
INSERT INTO `admin_operation_log` VALUES ('1401', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:48:32', '2019-09-11 02:48:32');
INSERT INTO `admin_operation_log` VALUES ('1402', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:48:41', '2019-09-11 02:48:41');
INSERT INTO `admin_operation_log` VALUES ('1403', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticle\",\"permissions\":[\"2\",\"3\",\"4\",\"7\",null],\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/roles\"}', '2019-09-11 02:50:32', '2019-09-11 02:50:32');
INSERT INTO `admin_operation_log` VALUES ('1404', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-09-11 02:50:34', '2019-09-11 02:50:34');
INSERT INTO `admin_operation_log` VALUES ('1405', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:50:48', '2019-09-11 02:50:48');
INSERT INTO `admin_operation_log` VALUES ('1406', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:50:53', '2019-09-11 02:50:53');
INSERT INTO `admin_operation_log` VALUES ('1407', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"acticle\",\"name\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"password\":\"12345678\",\"password_confirmation\":\"12345678\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/users\"}', '2019-09-11 02:51:39', '2019-09-11 02:51:39');
INSERT INTO `admin_operation_log` VALUES ('1408', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-11 02:51:42', '2019-09-11 02:51:42');
INSERT INTO `admin_operation_log` VALUES ('1409', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:51:51', '2019-09-11 02:51:51');
INSERT INTO `admin_operation_log` VALUES ('1410', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 02:52:07', '2019-09-11 02:52:07');
INSERT INTO `admin_operation_log` VALUES ('1411', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:52:18', '2019-09-11 02:52:18');
INSERT INTO `admin_operation_log` VALUES ('1412', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 02:52:42', '2019-09-11 02:52:42');
INSERT INTO `admin_operation_log` VALUES ('1413', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:53:55', '2019-09-11 02:53:55');
INSERT INTO `admin_operation_log` VALUES ('1414', '2', 'admin/services/reservations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:54:30', '2019-09-11 02:54:30');
INSERT INTO `admin_operation_log` VALUES ('1415', '2', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:54:33', '2019-09-11 02:54:33');
INSERT INTO `admin_operation_log` VALUES ('1416', '2', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:54:37', '2019-09-11 02:54:37');
INSERT INTO `admin_operation_log` VALUES ('1417', '2', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:54:40', '2019-09-11 02:54:40');
INSERT INTO `admin_operation_log` VALUES ('1418', '2', 'admin/acticles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:54:43', '2019-09-11 02:54:43');
INSERT INTO `admin_operation_log` VALUES ('1419', '2', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:54:47', '2019-09-11 02:54:47');
INSERT INTO `admin_operation_log` VALUES ('1420', '2', 'admin/acticles/collects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:54:51', '2019-09-11 02:54:51');
INSERT INTO `admin_operation_log` VALUES ('1421', '2', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-11 02:54:52', '2019-09-11 02:54:52');
INSERT INTO `admin_operation_log` VALUES ('1422', '2', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:55:31', '2019-09-11 02:55:31');
INSERT INTO `admin_operation_log` VALUES ('1423', '1', 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 02:58:07', '2019-09-11 02:58:07');
INSERT INTO `admin_operation_log` VALUES ('1424', '1', 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"funds\",\"name\":\"fundsManagement\",\"http_method\":[null],\"http_path\":\"\\/funds*\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-11 02:58:18', '2019-09-11 02:58:18');
INSERT INTO `admin_operation_log` VALUES ('1425', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-11 02:58:20', '2019-09-11 02:58:20');
INSERT INTO `admin_operation_log` VALUES ('1426', '2', 'admin/questions/categorys', 'GET', '127.0.0.1', '[]', '2019-09-11 02:58:40', '2019-09-11 02:58:40');
INSERT INTO `admin_operation_log` VALUES ('1427', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:00:30', '2019-09-11 03:00:30');
INSERT INTO `admin_operation_log` VALUES ('1428', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 03:00:40', '2019-09-11 03:00:40');
INSERT INTO `admin_operation_log` VALUES ('1429', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 03:02:03', '2019-09-11 03:02:03');
INSERT INTO `admin_operation_log` VALUES ('1430', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 03:03:04', '2019-09-11 03:03:04');
INSERT INTO `admin_operation_log` VALUES ('1431', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:05:14', '2019-09-11 03:05:14');
INSERT INTO `admin_operation_log` VALUES ('1432', '2', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:05:23', '2019-09-11 03:05:23');
INSERT INTO `admin_operation_log` VALUES ('1433', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:05:29', '2019-09-11 03:05:29');
INSERT INTO `admin_operation_log` VALUES ('1434', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticle\",\"permissions\":[\"3\",\"4\",\"7\",null],\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/roles\"}', '2019-09-11 03:05:37', '2019-09-11 03:05:37');
INSERT INTO `admin_operation_log` VALUES ('1435', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-09-11 03:05:39', '2019-09-11 03:05:39');
INSERT INTO `admin_operation_log` VALUES ('1436', '2', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-09-11 03:05:44', '2019-09-11 03:05:44');
INSERT INTO `admin_operation_log` VALUES ('1437', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:05:57', '2019-09-11 03:05:57');
INSERT INTO `admin_operation_log` VALUES ('1438', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:06:01', '2019-09-11 03:06:01');
INSERT INTO `admin_operation_log` VALUES ('1439', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 03:06:16', '2019-09-11 03:06:16');
INSERT INTO `admin_operation_log` VALUES ('1440', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:06:27', '2019-09-11 03:06:27');
INSERT INTO `admin_operation_log` VALUES ('1441', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"acticle\",\"name\":\"acticle\",\"permissions\":[\"2\",\"3\",\"4\",\"7\",null],\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/roles\"}', '2019-09-11 03:06:36', '2019-09-11 03:06:36');
INSERT INTO `admin_operation_log` VALUES ('1442', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-09-11 03:06:39', '2019-09-11 03:06:39');
INSERT INTO `admin_operation_log` VALUES ('1443', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 03:06:45', '2019-09-11 03:06:45');
INSERT INTO `admin_operation_log` VALUES ('1444', '2', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:07:07', '2019-09-11 03:07:07');
INSERT INTO `admin_operation_log` VALUES ('1445', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:07:22', '2019-09-11 03:07:22');
INSERT INTO `admin_operation_log` VALUES ('1446', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:08:51', '2019-09-11 03:08:51');
INSERT INTO `admin_operation_log` VALUES ('1447', '2', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:08:54', '2019-09-11 03:08:54');
INSERT INTO `admin_operation_log` VALUES ('1448', '2', 'admin/acticles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:08:57', '2019-09-11 03:08:57');
INSERT INTO `admin_operation_log` VALUES ('1449', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:09:05', '2019-09-11 03:09:05');
INSERT INTO `admin_operation_log` VALUES ('1450', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:09:09', '2019-09-11 03:09:09');
INSERT INTO `admin_operation_log` VALUES ('1451', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:09:14', '2019-09-11 03:09:14');
INSERT INTO `admin_operation_log` VALUES ('1452', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:09:22', '2019-09-11 03:09:22');
INSERT INTO `admin_operation_log` VALUES ('1453', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 03:14:15', '2019-09-11 03:14:15');
INSERT INTO `admin_operation_log` VALUES ('1454', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 03:14:37', '2019-09-11 03:14:37');
INSERT INTO `admin_operation_log` VALUES ('1455', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 03:16:46', '2019-09-11 03:16:46');
INSERT INTO `admin_operation_log` VALUES ('1456', '1', 'admin/acticles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 03:20:03', '2019-09-11 03:20:03');
INSERT INTO `admin_operation_log` VALUES ('1457', '1', 'admin/acticles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:20:45', '2019-09-11 03:20:45');
INSERT INTO `admin_operation_log` VALUES ('1458', '1', 'admin/acticles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 03:29:44', '2019-09-11 03:29:44');
INSERT INTO `admin_operation_log` VALUES ('1459', '1', 'admin/acticles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 03:33:48', '2019-09-11 03:33:48');
INSERT INTO `admin_operation_log` VALUES ('1460', '1', 'admin/acticles/likes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:35:22', '2019-09-11 03:35:22');
INSERT INTO `admin_operation_log` VALUES ('1461', '1', 'admin/acticles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 03:35:27', '2019-09-11 03:35:27');
INSERT INTO `admin_operation_log` VALUES ('1462', '1', 'admin/acticles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 03:35:59', '2019-09-11 03:35:59');
INSERT INTO `admin_operation_log` VALUES ('1463', '1', 'admin/acticles/likes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:36:34', '2019-09-11 03:36:34');
INSERT INTO `admin_operation_log` VALUES ('1464', '1', 'admin/acticles/likes', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"1\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/acticles\\/likes\"}', '2019-09-11 03:36:44', '2019-09-11 03:36:44');
INSERT INTO `admin_operation_log` VALUES ('1465', '1', 'admin/acticles/likes/create', 'GET', '127.0.0.1', '[]', '2019-09-11 03:36:49', '2019-09-11 03:36:49');
INSERT INTO `admin_operation_log` VALUES ('1466', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-11 03:50:21', '2019-09-11 03:50:21');
INSERT INTO `admin_operation_log` VALUES ('1467', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:50:50', '2019-09-11 03:50:50');
INSERT INTO `admin_operation_log` VALUES ('1468', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:51:03', '2019-09-11 03:51:03');
INSERT INTO `admin_operation_log` VALUES ('1469', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"article\",\"name\":\"articleManagement\",\"http_method\":[null],\"http_path\":\"\\/articles*\\r\\n\\/questions*\\r\\n\\/collects*\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-09-11 03:51:22', '2019-09-11 03:51:22');
INSERT INTO `admin_operation_log` VALUES ('1470', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-11 03:51:25', '2019-09-11 03:51:25');
INSERT INTO `admin_operation_log` VALUES ('1471', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:51:43', '2019-09-11 03:51:43');
INSERT INTO `admin_operation_log` VALUES ('1472', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:51:55', '2019-09-11 03:51:55');
INSERT INTO `admin_operation_log` VALUES ('1473', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-11 03:52:13', '2019-09-11 03:52:13');
INSERT INTO `admin_operation_log` VALUES ('1474', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:52:17', '2019-09-11 03:52:17');
INSERT INTO `admin_operation_log` VALUES ('1475', '1', 'admin/auth/menu/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:52:33', '2019-09-11 03:52:33');
INSERT INTO `admin_operation_log` VALUES ('1476', '1', 'admin/auth/menu/22', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6d4f\\u89c8\\u8bb0\\u5f55\",\"icon\":\"fa-arrow-left\",\"uri\":\"\\/articles\\/browse-history\",\"roles\":[null],\"permission\":null,\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-11 03:52:47', '2019-09-11 03:52:47');
INSERT INTO `admin_operation_log` VALUES ('1477', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:52:51', '2019-09-11 03:52:51');
INSERT INTO `admin_operation_log` VALUES ('1478', '1', 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:53:05', '2019-09-11 03:53:05');
INSERT INTO `admin_operation_log` VALUES ('1479', '1', 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u70b9\\u8d5e\",\"icon\":\"fa-thumbs-up\",\"uri\":\"\\/articles\\/likes\",\"roles\":[null],\"permission\":null,\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-11 03:53:33', '2019-09-11 03:53:33');
INSERT INTO `admin_operation_log` VALUES ('1480', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:53:38', '2019-09-11 03:53:38');
INSERT INTO `admin_operation_log` VALUES ('1481', '1', 'admin/auth/menu/40/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:53:56', '2019-09-11 03:53:56');
INSERT INTO `admin_operation_log` VALUES ('1482', '1', 'admin/auth/menu/40', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6536\\u85cf\",\"icon\":\"fa-heart\",\"uri\":\"\\/articles\\/collects\",\"roles\":[null],\"permission\":null,\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-11 03:54:08', '2019-09-11 03:54:08');
INSERT INTO `admin_operation_log` VALUES ('1483', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:54:12', '2019-09-11 03:54:12');
INSERT INTO `admin_operation_log` VALUES ('1484', '1', 'admin/auth/menu/41/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:54:31', '2019-09-11 03:54:31');
INSERT INTO `admin_operation_log` VALUES ('1485', '1', 'admin/auth/menu/41', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6848\\u4f8b\",\"icon\":\"fa-newspaper-o\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-11 03:54:45', '2019-09-11 03:54:45');
INSERT INTO `admin_operation_log` VALUES ('1486', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:54:49', '2019-09-11 03:54:49');
INSERT INTO `admin_operation_log` VALUES ('1487', '1', 'admin/auth/menu/49/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:55:03', '2019-09-11 03:55:03');
INSERT INTO `admin_operation_log` VALUES ('1488', '1', 'admin/auth/menu/49', 'PUT', '127.0.0.1', '{\"parent_id\":\"41\",\"title\":\"\\u54a8\\u8be2\\u4e13\\u5bb6\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\\/specialist\\/advices\",\"roles\":[null],\"permission\":null,\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-11 03:55:16', '2019-09-11 03:55:16');
INSERT INTO `admin_operation_log` VALUES ('1489', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:55:20', '2019-09-11 03:55:20');
INSERT INTO `admin_operation_log` VALUES ('1490', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:56:10', '2019-09-11 03:56:10');
INSERT INTO `admin_operation_log` VALUES ('1491', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:57:21', '2019-09-11 03:57:21');
INSERT INTO `admin_operation_log` VALUES ('1492', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:57:23', '2019-09-11 03:57:23');
INSERT INTO `admin_operation_log` VALUES ('1493', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 03:58:54', '2019-09-11 03:58:54');
INSERT INTO `admin_operation_log` VALUES ('1494', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 03:58:58', '2019-09-11 03:58:58');
INSERT INTO `admin_operation_log` VALUES ('1495', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 04:02:02', '2019-09-11 04:02:02');
INSERT INTO `admin_operation_log` VALUES ('1496', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:04:01', '2019-09-11 04:04:01');
INSERT INTO `admin_operation_log` VALUES ('1497', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 04:04:03', '2019-09-11 04:04:03');
INSERT INTO `admin_operation_log` VALUES ('1498', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:04:44', '2019-09-11 04:04:44');
INSERT INTO `admin_operation_log` VALUES ('1499', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 04:04:48', '2019-09-11 04:04:48');
INSERT INTO `admin_operation_log` VALUES ('1500', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:05:54', '2019-09-11 04:05:54');
INSERT INTO `admin_operation_log` VALUES ('1501', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 04:05:58', '2019-09-11 04:05:58');
INSERT INTO `admin_operation_log` VALUES ('1502', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:09:02', '2019-09-11 04:09:02');
INSERT INTO `admin_operation_log` VALUES ('1503', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:09:20', '2019-09-11 04:09:20');
INSERT INTO `admin_operation_log` VALUES ('1504', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 04:10:11', '2019-09-11 04:10:11');
INSERT INTO `admin_operation_log` VALUES ('1505', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:10:39', '2019-09-11 04:10:39');
INSERT INTO `admin_operation_log` VALUES ('1506', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 04:10:43', '2019-09-11 04:10:43');
INSERT INTO `admin_operation_log` VALUES ('1507', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 04:11:53', '2019-09-11 04:11:53');
INSERT INTO `admin_operation_log` VALUES ('1508', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:12:24', '2019-09-11 04:12:24');
INSERT INTO `admin_operation_log` VALUES ('1509', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 04:12:55', '2019-09-11 04:12:55');
INSERT INTO `admin_operation_log` VALUES ('1510', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:13:28', '2019-09-11 04:13:28');
INSERT INTO `admin_operation_log` VALUES ('1511', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 04:14:10', '2019-09-11 04:14:10');
INSERT INTO `admin_operation_log` VALUES ('1512', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 04:14:40', '2019-09-11 04:14:40');
INSERT INTO `admin_operation_log` VALUES ('1513', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 06:12:21', '2019-09-11 06:12:21');
INSERT INTO `admin_operation_log` VALUES ('1514', '1', 'admin/articles/likes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:12:36', '2019-09-11 06:12:36');
INSERT INTO `admin_operation_log` VALUES ('1515', '1', 'admin/articles/likes', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"1\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/likes\"}', '2019-09-11 06:13:43', '2019-09-11 06:13:43');
INSERT INTO `admin_operation_log` VALUES ('1516', '1', 'admin/articles/likes/create', 'GET', '127.0.0.1', '[]', '2019-09-11 06:13:47', '2019-09-11 06:13:47');
INSERT INTO `admin_operation_log` VALUES ('1517', '1', 'admin/articles/likes', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"1\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 06:17:21', '2019-09-11 06:17:21');
INSERT INTO `admin_operation_log` VALUES ('1518', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 06:17:24', '2019-09-11 06:17:24');
INSERT INTO `admin_operation_log` VALUES ('1519', '1', 'admin/articles/likes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:18:33', '2019-09-11 06:18:33');
INSERT INTO `admin_operation_log` VALUES ('1520', '1', 'admin/articles/likes', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"1\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/likes\"}', '2019-09-11 06:18:45', '2019-09-11 06:18:45');
INSERT INTO `admin_operation_log` VALUES ('1521', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 06:18:50', '2019-09-11 06:18:50');
INSERT INTO `admin_operation_log` VALUES ('1522', '1', 'admin/articles/likes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:19:55', '2019-09-11 06:19:55');
INSERT INTO `admin_operation_log` VALUES ('1523', '1', 'admin/articles/likes', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"1\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/likes\"}', '2019-09-11 06:20:04', '2019-09-11 06:20:04');
INSERT INTO `admin_operation_log` VALUES ('1524', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-11 06:20:10', '2019-09-11 06:20:10');
INSERT INTO `admin_operation_log` VALUES ('1525', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:20:47', '2019-09-11 06:20:47');
INSERT INTO `admin_operation_log` VALUES ('1526', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:22:06', '2019-09-11 06:22:06');
INSERT INTO `admin_operation_log` VALUES ('1527', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"39\",\"title\":\"\\u95ee\\u9898\",\"icon\":\"fa-bars\",\"uri\":\"\\/questions\",\"roles\":[null],\"permission\":\"article\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 06:24:28', '2019-09-11 06:24:28');
INSERT INTO `admin_operation_log` VALUES ('1528', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 06:24:34', '2019-09-11 06:24:34');
INSERT INTO `admin_operation_log` VALUES ('1529', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 06:25:13', '2019-09-11 06:25:13');
INSERT INTO `admin_operation_log` VALUES ('1530', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 06:30:05', '2019-09-11 06:30:05');
INSERT INTO `admin_operation_log` VALUES ('1531', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:30:35', '2019-09-11 06:30:35');
INSERT INTO `admin_operation_log` VALUES ('1532', '1', 'admin/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:32:41', '2019-09-11 06:32:41');
INSERT INTO `admin_operation_log` VALUES ('1533', '1', 'admin/questions/create', 'GET', '127.0.0.1', '[]', '2019-09-11 06:34:08', '2019-09-11 06:34:08');
INSERT INTO `admin_operation_log` VALUES ('1534', '1', 'admin/questions/create', 'GET', '127.0.0.1', '[]', '2019-09-11 06:36:38', '2019-09-11 06:36:38');
INSERT INTO `admin_operation_log` VALUES ('1535', '1', 'admin/questions', 'POST', '127.0.0.1', '{\"title\":\"\\u6309\\u63ed\\u8d37\\u6b3e\",\"cate_id\":\"53\",\"answer\":\"\\u6309\\u63ed\\u8d37\\u6b3e\\u662f\\u6307\\u4ee5\\u6309\\u63ed\\u65b9\\u5f0f\\u8fdb\\u884c\\u7684\\u4e00\\u79cd\\u8d37\\u6b3e\\u4e1a\\u52a1\\u3002 \\u5982\\uff1a\\u4f4f\\u623f\\u6309\\u63ed\\u8d37\\u6b3e\\u5c31\\u662f\\u8d2d\\u623f\\u8005\\u4ee5\\u6240\\u8d2d\\u4f4f\\u623f\\u505a\\u62b5\\u62bc\\u5e76\\u7531\\u5176\\u6240\\u8d2d\\u4e70\\u4f4f\\u623f\\u7684\\u623f\\u5730\\u4ea7\\u4f01\\u4e1a\\u63d0\\u4f9b\\u9636\\u6bb5\\u6027\\u62c5\\u4fdd\\u7684\\u4e2a\\u4eba\\u4f4f\\u623f\\u8d37\\u6b3e\\u4e1a\\u52a1\\u3002 \\u6240\\u8c13\\u6309\\u63ed\\u662f\\u6307\\u6309\\u63ed\\u4eba\\u5c06\\u623f\\u4ea7\\u4ea7\\u6743\\u8f6c\\u8ba9\\u6309\\u63ed\\uff0c\\u53d7\\u76ca\\u4eba\\u4f5c\\u4e3a\\u8fd8\\u8d37\\u4fdd\\u8bc1\\u4eba\\u5728\\u6309\\u63ed\\u4eba\\u8fd8\\u6e05\\u8d37\\u6b3e\\u540e\\uff0c\\u53d7\\u76ca\\u4eba\\u7acb\\u5373\\u5c06\\u6240\\u6d89\\u53ca\\u7684\\u623f\\u5c4b\\u4ea7\\u6743\\u8f6c\\u8ba9\\u6309\\u63ed\\u4eba\\uff0c\\u8fc7\\u7a0b\\u4e2d\\u6309\\u63ed\\u4eba\\u4eab\\u6709\\u4f7f\\u7528\\u6743\\u3002\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 06:37:22', '2019-09-11 06:37:22');
INSERT INTO `admin_operation_log` VALUES ('1536', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-11 06:37:25', '2019-09-11 06:37:25');
INSERT INTO `admin_operation_log` VALUES ('1537', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-11 06:38:15', '2019-09-11 06:38:15');
INSERT INTO `admin_operation_log` VALUES ('1538', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-11 06:38:41', '2019-09-11 06:38:41');
INSERT INTO `admin_operation_log` VALUES ('1539', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-11 06:39:17', '2019-09-11 06:39:17');
INSERT INTO `admin_operation_log` VALUES ('1540', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-11 06:42:34', '2019-09-11 06:42:34');
INSERT INTO `admin_operation_log` VALUES ('1541', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-11 06:43:44', '2019-09-11 06:43:44');
INSERT INTO `admin_operation_log` VALUES ('1542', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:44:26', '2019-09-11 06:44:26');
INSERT INTO `admin_operation_log` VALUES ('1543', '1', 'admin/questions', 'GET', '127.0.0.1', '[]', '2019-09-11 06:44:29', '2019-09-11 06:44:29');
INSERT INTO `admin_operation_log` VALUES ('1544', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 06:46:03', '2019-09-11 06:46:03');
INSERT INTO `admin_operation_log` VALUES ('1545', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '[]', '2019-09-11 07:02:51', '2019-09-11 07:02:51');
INSERT INTO `admin_operation_log` VALUES ('1546', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '[]', '2019-09-11 07:03:32', '2019-09-11 07:03:32');
INSERT INTO `admin_operation_log` VALUES ('1547', '1', 'admin/articles/collects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:06:43', '2019-09-11 07:06:43');
INSERT INTO `admin_operation_log` VALUES ('1548', '1', 'admin/articles/collects/create', 'GET', '127.0.0.1', '[]', '2019-09-11 07:07:31', '2019-09-11 07:07:31');
INSERT INTO `admin_operation_log` VALUES ('1549', '1', 'admin/articles/collects', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"article_id\":\"18\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/collects\"}', '2019-09-11 07:07:48', '2019-09-11 07:07:48');
INSERT INTO `admin_operation_log` VALUES ('1550', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '[]', '2019-09-11 07:07:52', '2019-09-11 07:07:52');
INSERT INTO `admin_operation_log` VALUES ('1551', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:10:47', '2019-09-11 07:10:47');
INSERT INTO `admin_operation_log` VALUES ('1552', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"41\",\"title\":\"\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":\"article\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 07:14:27', '2019-09-11 07:14:27');
INSERT INTO `admin_operation_log` VALUES ('1553', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 07:14:29', '2019-09-11 07:14:29');
INSERT INTO `admin_operation_log` VALUES ('1554', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 07:14:50', '2019-09-11 07:14:50');
INSERT INTO `admin_operation_log` VALUES ('1555', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:16:53', '2019-09-11 07:16:53');
INSERT INTO `admin_operation_log` VALUES ('1556', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-09-11 07:17:28', '2019-09-11 07:17:28');
INSERT INTO `admin_operation_log` VALUES ('1557', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:17:52', '2019-09-11 07:17:52');
INSERT INTO `admin_operation_log` VALUES ('1558', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:18:03', '2019-09-11 07:18:03');
INSERT INTO `admin_operation_log` VALUES ('1559', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:18:13', '2019-09-11 07:18:13');
INSERT INTO `admin_operation_log` VALUES ('1560', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:18:30', '2019-09-11 07:18:30');
INSERT INTO `admin_operation_log` VALUES ('1561', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:32:54', '2019-09-11 07:32:54');
INSERT INTO `admin_operation_log` VALUES ('1562', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:34:56', '2019-09-11 07:34:56');
INSERT INTO `admin_operation_log` VALUES ('1563', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:35:38', '2019-09-11 07:35:38');
INSERT INTO `admin_operation_log` VALUES ('1564', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:35:57', '2019-09-11 07:35:57');
INSERT INTO `admin_operation_log` VALUES ('1565', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:36:47', '2019-09-11 07:36:47');
INSERT INTO `admin_operation_log` VALUES ('1566', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:39:35', '2019-09-11 07:39:35');
INSERT INTO `admin_operation_log` VALUES ('1567', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:42:08', '2019-09-11 07:42:08');
INSERT INTO `admin_operation_log` VALUES ('1568', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '[]', '2019-09-11 07:51:12', '2019-09-11 07:51:12');
INSERT INTO `admin_operation_log` VALUES ('1569', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:57:59', '2019-09-11 07:57:59');
INSERT INTO `admin_operation_log` VALUES ('1570', '1', 'admin/articles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:58:04', '2019-09-11 07:58:04');
INSERT INTO `admin_operation_log` VALUES ('1571', '1', 'admin/articles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":null,\"article_id\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/browse-history\"}', '2019-09-11 07:58:16', '2019-09-11 07:58:16');
INSERT INTO `admin_operation_log` VALUES ('1572', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 07:58:18', '2019-09-11 07:58:18');
INSERT INTO `admin_operation_log` VALUES ('1573', '1', 'admin/articles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 07:58:28', '2019-09-11 07:58:28');
INSERT INTO `admin_operation_log` VALUES ('1574', '1', 'admin/articles/browse-history/create', 'GET', '127.0.0.1', '[]', '2019-09-11 07:59:24', '2019-09-11 07:59:24');
INSERT INTO `admin_operation_log` VALUES ('1575', '1', 'admin/articles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":\"5\",\"article_id\":\"2\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 07:59:55', '2019-09-11 07:59:55');
INSERT INTO `admin_operation_log` VALUES ('1576', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 07:59:59', '2019-09-11 07:59:59');
INSERT INTO `admin_operation_log` VALUES ('1577', '1', 'admin/articles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:01:50', '2019-09-11 08:01:50');
INSERT INTO `admin_operation_log` VALUES ('1578', '1', 'admin/articles/browse-history', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"article_id\":\"2\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/browse-history\"}', '2019-09-11 08:02:03', '2019-09-11 08:02:03');
INSERT INTO `admin_operation_log` VALUES ('1579', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 08:02:08', '2019-09-11 08:02:08');
INSERT INTO `admin_operation_log` VALUES ('1580', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-11 08:02:20', '2019-09-11 08:02:20');
INSERT INTO `admin_operation_log` VALUES ('1581', '1', 'admin/articles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:02:32', '2019-09-11 08:02:32');
INSERT INTO `admin_operation_log` VALUES ('1582', '1', 'admin/articles/browse-history/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:02:53', '2019-09-11 08:02:53');
INSERT INTO `admin_operation_log` VALUES ('1583', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:10:33', '2019-09-11 08:10:33');
INSERT INTO `admin_operation_log` VALUES ('1584', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_BrowseHistory\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-09-11 08:13:45', '2019-09-11 08:13:45');
INSERT INTO `admin_operation_log` VALUES ('1585', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:13:48', '2019-09-11 08:13:48');
INSERT INTO `admin_operation_log` VALUES ('1586', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:21:19', '2019-09-11 08:21:19');
INSERT INTO `admin_operation_log` VALUES ('1587', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:27:37', '2019-09-11 08:27:37');
INSERT INTO `admin_operation_log` VALUES ('1588', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:27:39', '2019-09-11 08:27:39');
INSERT INTO `admin_operation_log` VALUES ('1589', '1', 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:27:59', '2019-09-11 08:27:59');
INSERT INTO `admin_operation_log` VALUES ('1590', '1', 'admin/auth/menu/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\"}', '2019-09-11 08:28:55', '2019-09-11 08:28:55');
INSERT INTO `admin_operation_log` VALUES ('1591', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:28:57', '2019-09-11 08:28:57');
INSERT INTO `admin_operation_log` VALUES ('1592', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-11 08:29:48', '2019-09-11 08:29:48');
INSERT INTO `admin_operation_log` VALUES ('1593', '1', 'admin/usercenter/attentions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 08:30:14', '2019-09-11 08:30:14');
INSERT INTO `admin_operation_log` VALUES ('1594', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:32:31', '2019-09-11 08:32:31');
INSERT INTO `admin_operation_log` VALUES ('1595', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:33:45', '2019-09-11 08:33:45');
INSERT INTO `admin_operation_log` VALUES ('1596', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:40:49', '2019-09-11 08:40:49');
INSERT INTO `admin_operation_log` VALUES ('1597', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:41:31', '2019-09-11 08:41:31');
INSERT INTO `admin_operation_log` VALUES ('1598', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:44:13', '2019-09-11 08:44:13');
INSERT INTO `admin_operation_log` VALUES ('1599', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:48:00', '2019-09-11 08:48:00');
INSERT INTO `admin_operation_log` VALUES ('1600', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:48:34', '2019-09-11 08:48:34');
INSERT INTO `admin_operation_log` VALUES ('1601', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:49:11', '2019-09-11 08:49:11');
INSERT INTO `admin_operation_log` VALUES ('1602', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:49:57', '2019-09-11 08:49:57');
INSERT INTO `admin_operation_log` VALUES ('1603', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:52:05', '2019-09-11 08:52:05');
INSERT INTO `admin_operation_log` VALUES ('1604', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:53:30', '2019-09-11 08:53:30');
INSERT INTO `admin_operation_log` VALUES ('1605', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 08:58:14', '2019-09-11 08:58:14');
INSERT INTO `admin_operation_log` VALUES ('1606', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 09:01:28', '2019-09-11 09:01:28');
INSERT INTO `admin_operation_log` VALUES ('1607', '1', 'admin/usercenter/lists', 'GET', '127.0.0.1', '[]', '2019-09-11 09:01:48', '2019-09-11 09:01:48');
INSERT INTO `admin_operation_log` VALUES ('1608', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:03:06', '2019-09-11 09:03:06');
INSERT INTO `admin_operation_log` VALUES ('1609', '1', 'admin/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:03:18', '2019-09-11 09:03:18');
INSERT INTO `admin_operation_log` VALUES ('1610', '1', 'admin/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:03:29', '2019-09-11 09:03:29');
INSERT INTO `admin_operation_log` VALUES ('1611', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:03:39', '2019-09-11 09:03:39');
INSERT INTO `admin_operation_log` VALUES ('1612', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:03:50', '2019-09-11 09:03:50');
INSERT INTO `admin_operation_log` VALUES ('1613', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:04:03', '2019-09-11 09:04:03');
INSERT INTO `admin_operation_log` VALUES ('1614', '1', 'admin/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:04:10', '2019-09-11 09:04:10');
INSERT INTO `admin_operation_log` VALUES ('1615', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:04:36', '2019-09-11 09:04:36');
INSERT INTO `admin_operation_log` VALUES ('1616', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:04:46', '2019-09-11 09:04:46');
INSERT INTO `admin_operation_log` VALUES ('1617', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-11 09:07:03', '2019-09-11 09:07:03');
INSERT INTO `admin_operation_log` VALUES ('1618', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-09-11 09:11:14', '2019-09-11 09:11:14');
INSERT INTO `admin_operation_log` VALUES ('1619', '1', 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:11:32', '2019-09-11 09:11:32');
INSERT INTO `admin_operation_log` VALUES ('1620', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-11 09:16:45', '2019-09-11 09:16:45');
INSERT INTO `admin_operation_log` VALUES ('1621', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-11 09:18:15', '2019-09-11 09:18:15');
INSERT INTO `admin_operation_log` VALUES ('1622', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-11 09:19:11', '2019-09-11 09:19:11');
INSERT INTO `admin_operation_log` VALUES ('1623', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-11 09:19:44', '2019-09-11 09:19:44');
INSERT INTO `admin_operation_log` VALUES ('1624', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-11 09:21:27', '2019-09-11 09:21:27');
INSERT INTO `admin_operation_log` VALUES ('1625', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-11 09:21:53', '2019-09-11 09:21:53');
INSERT INTO `admin_operation_log` VALUES ('1626', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:22:04', '2019-09-11 09:22:04');
INSERT INTO `admin_operation_log` VALUES ('1627', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:22:14', '2019-09-11 09:22:14');
INSERT INTO `admin_operation_log` VALUES ('1628', '1', 'admin/coupons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:22:23', '2019-09-11 09:22:23');
INSERT INTO `admin_operation_log` VALUES ('1629', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:22:32', '2019-09-11 09:22:32');
INSERT INTO `admin_operation_log` VALUES ('1630', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:22:42', '2019-09-11 09:22:42');
INSERT INTO `admin_operation_log` VALUES ('1631', '1', 'admin/tools/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:22:49', '2019-09-11 09:22:49');
INSERT INTO `admin_operation_log` VALUES ('1632', '1', 'admin/coupons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:26:25', '2019-09-11 09:26:25');
INSERT INTO `admin_operation_log` VALUES ('1633', '1', 'admin/coupons', 'GET', '127.0.0.1', '[]', '2019-09-11 09:29:54', '2019-09-11 09:29:54');
INSERT INTO `admin_operation_log` VALUES ('1634', '1', 'admin/coupons', 'GET', '127.0.0.1', '[]', '2019-09-11 09:31:48', '2019-09-11 09:31:48');
INSERT INTO `admin_operation_log` VALUES ('1635', '1', 'admin/coupons', 'GET', '127.0.0.1', '[]', '2019-09-11 09:32:30', '2019-09-11 09:32:30');
INSERT INTO `admin_operation_log` VALUES ('1636', '1', 'admin/coupons', 'GET', '127.0.0.1', '[]', '2019-09-11 09:35:00', '2019-09-11 09:35:00');
INSERT INTO `admin_operation_log` VALUES ('1637', '1', 'admin/coupons', 'GET', '127.0.0.1', '[]', '2019-09-11 09:37:46', '2019-09-11 09:37:46');
INSERT INTO `admin_operation_log` VALUES ('1638', '1', 'admin/coupons/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:38:04', '2019-09-11 09:38:04');
INSERT INTO `admin_operation_log` VALUES ('1639', '1', 'admin/coupons', 'POST', '127.0.0.1', '{\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"type\":\"on\",\"condition\":\"100\",\"amount\":\"40\",\"start_time\":\"2019-09-11 17:38:04\",\"end_time\":\"2019-09-20 17:38:04\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\",\"status\":\"on\",\"_token\":\"WjwyZvPlMLRs7UhPXz1VZGAyffVoYyQ2tVt7RgBN\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\"}', '2019-09-11 09:39:33', '2019-09-11 09:39:33');
INSERT INTO `admin_operation_log` VALUES ('1640', '1', 'admin/coupons', 'GET', '127.0.0.1', '[]', '2019-09-11 09:39:34', '2019-09-11 09:39:34');
INSERT INTO `admin_operation_log` VALUES ('1641', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:40:06', '2019-09-11 09:40:06');
INSERT INTO `admin_operation_log` VALUES ('1642', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-11 09:43:10', '2019-09-11 09:43:10');
INSERT INTO `admin_operation_log` VALUES ('1643', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-12 01:05:12', '2019-09-12 01:05:12');
INSERT INTO `admin_operation_log` VALUES ('1644', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:05:25', '2019-09-12 01:05:25');
INSERT INTO `admin_operation_log` VALUES ('1645', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:05:32', '2019-09-12 01:05:32');
INSERT INTO `admin_operation_log` VALUES ('1646', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-12 01:06:11', '2019-09-12 01:06:11');
INSERT INTO `admin_operation_log` VALUES ('1647', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:06:33', '2019-09-12 01:06:33');
INSERT INTO `admin_operation_log` VALUES ('1648', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:06:55', '2019-09-12 01:06:55');
INSERT INTO `admin_operation_log` VALUES ('1649', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:07:40', '2019-09-12 01:07:40');
INSERT INTO `admin_operation_log` VALUES ('1650', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:10:46', '2019-09-12 01:10:46');
INSERT INTO `admin_operation_log` VALUES ('1651', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:12:15', '2019-09-12 01:12:15');
INSERT INTO `admin_operation_log` VALUES ('1652', '1', 'admin/coupons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:12:23', '2019-09-12 01:12:23');
INSERT INTO `admin_operation_log` VALUES ('1653', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:12:33', '2019-09-12 01:12:33');
INSERT INTO `admin_operation_log` VALUES ('1654', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 01:22:25', '2019-09-12 01:22:25');
INSERT INTO `admin_operation_log` VALUES ('1655', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:22:31', '2019-09-12 01:22:31');
INSERT INTO `admin_operation_log` VALUES ('1656', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 01:32:10', '2019-09-12 01:32:10');
INSERT INTO `admin_operation_log` VALUES ('1657', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 01:33:24', '2019-09-12 01:33:24');
INSERT INTO `admin_operation_log` VALUES ('1658', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 01:34:41', '2019-09-12 01:34:41');
INSERT INTO `admin_operation_log` VALUES ('1659', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 01:37:21', '2019-09-12 01:37:21');
INSERT INTO `admin_operation_log` VALUES ('1660', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":null,\"coupon_id\":null,\"name\":null,\"num\":null,\"amount\":null,\"condition\":null,\"start_time\":null,\"end_time\":null,\"remark\":null,\"status\":\"off\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\"}', '2019-09-12 01:41:01', '2019-09-12 01:41:01');
INSERT INTO `admin_operation_log` VALUES ('1661', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 01:41:03', '2019-09-12 01:41:03');
INSERT INTO `admin_operation_log` VALUES ('1662', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 01:41:19', '2019-09-12 01:41:19');
INSERT INTO `admin_operation_log` VALUES ('1663', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 01:41:44', '2019-09-12 01:41:44');
INSERT INTO `admin_operation_log` VALUES ('1664', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:02:50', '2019-09-12 02:02:50');
INSERT INTO `admin_operation_log` VALUES ('1665', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:06:04', '2019-09-12 02:06:04');
INSERT INTO `admin_operation_log` VALUES ('1666', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:10:25', '2019-09-12 02:10:25');
INSERT INTO `admin_operation_log` VALUES ('1667', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:12:32', '2019-09-12 02:12:32');
INSERT INTO `admin_operation_log` VALUES ('1668', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:18:02', '2019-09-12 02:18:02');
INSERT INTO `admin_operation_log` VALUES ('1669', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:19:19', '2019-09-12 02:19:19');
INSERT INTO `admin_operation_log` VALUES ('1670', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:20:15', '2019-09-12 02:20:15');
INSERT INTO `admin_operation_log` VALUES ('1671', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 02:25:15', '2019-09-12 02:25:15');
INSERT INTO `admin_operation_log` VALUES ('1672', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":null}', '2019-09-12 02:27:14', '2019-09-12 02:27:14');
INSERT INTO `admin_operation_log` VALUES ('1673', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:27:17', '2019-09-12 02:27:17');
INSERT INTO `admin_operation_log` VALUES ('1674', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 02:28:58', '2019-09-12 02:28:58');
INSERT INTO `admin_operation_log` VALUES ('1675', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:32:28', '2019-09-12 02:32:28');
INSERT INTO `admin_operation_log` VALUES ('1676', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 02:35:51', '2019-09-12 02:35:51');
INSERT INTO `admin_operation_log` VALUES ('1677', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:36:34', '2019-09-12 02:36:34');
INSERT INTO `admin_operation_log` VALUES ('1678', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 02:41:05', '2019-09-12 02:41:05');
INSERT INTO `admin_operation_log` VALUES ('1679', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:42:09', '2019-09-12 02:42:09');
INSERT INTO `admin_operation_log` VALUES ('1680', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:42:46', '2019-09-12 02:42:46');
INSERT INTO `admin_operation_log` VALUES ('1681', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:43:31', '2019-09-12 02:43:31');
INSERT INTO `admin_operation_log` VALUES ('1682', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:43:52', '2019-09-12 02:43:52');
INSERT INTO `admin_operation_log` VALUES ('1683', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:45:18', '2019-09-12 02:45:18');
INSERT INTO `admin_operation_log` VALUES ('1684', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:45:33', '2019-09-12 02:45:33');
INSERT INTO `admin_operation_log` VALUES ('1685', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 02:46:00', '2019-09-12 02:46:00');
INSERT INTO `admin_operation_log` VALUES ('1686', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:46:33', '2019-09-12 02:46:33');
INSERT INTO `admin_operation_log` VALUES ('1687', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:49:16', '2019-09-12 02:49:16');
INSERT INTO `admin_operation_log` VALUES ('1688', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:49:55', '2019-09-12 02:49:55');
INSERT INTO `admin_operation_log` VALUES ('1689', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:50:41', '2019-09-12 02:50:41');
INSERT INTO `admin_operation_log` VALUES ('1690', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 02:51:03', '2019-09-12 02:51:03');
INSERT INTO `admin_operation_log` VALUES ('1691', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 02:51:14', '2019-09-12 02:51:14');
INSERT INTO `admin_operation_log` VALUES ('1692', '1', 'admin/coupons/grants/1', 'PUT', '127.0.0.1', '{\"user_id\":[\"1\",\"3\",null],\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-14 00:00:00\",\"end_time\":\"2019-09-18 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\",\"_method\":\"PUT\"}', '2019-09-12 02:52:09', '2019-09-12 02:52:09');
INSERT INTO `admin_operation_log` VALUES ('1693', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:52:14', '2019-09-12 02:52:14');
INSERT INTO `admin_operation_log` VALUES ('1694', '1', 'admin/coupons/grants/1', 'PUT', '127.0.0.1', '{\"user_id\":[\"1\",null],\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-14 00:00:00\",\"end_time\":\"2019-09-18 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\",\"_method\":\"PUT\"}', '2019-09-12 02:52:57', '2019-09-12 02:52:57');
INSERT INTO `admin_operation_log` VALUES ('1695', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:52:59', '2019-09-12 02:52:59');
INSERT INTO `admin_operation_log` VALUES ('1696', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:53:19', '2019-09-12 02:53:19');
INSERT INTO `admin_operation_log` VALUES ('1697', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 02:53:41', '2019-09-12 02:53:41');
INSERT INTO `admin_operation_log` VALUES ('1698', '1', 'admin/coupons/grants/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-15 00:00:00\",\"end_time\":\"2019-09-29 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\",\"_method\":\"PUT\"}', '2019-09-12 02:53:59', '2019-09-12 02:53:59');
INSERT INTO `admin_operation_log` VALUES ('1699', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 02:54:03', '2019-09-12 02:54:03');
INSERT INTO `admin_operation_log` VALUES ('1700', '1', 'admin/coupons/grants/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-15 00:00:00\",\"end_time\":\"2019-09-29 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\",\"_method\":\"PUT\"}', '2019-09-12 02:56:03', '2019-09-12 02:56:03');
INSERT INTO `admin_operation_log` VALUES ('1701', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 02:56:07', '2019-09-12 02:56:07');
INSERT INTO `admin_operation_log` VALUES ('1702', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 03:06:56', '2019-09-12 03:06:56');
INSERT INTO `admin_operation_log` VALUES ('1703', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 03:07:02', '2019-09-12 03:07:02');
INSERT INTO `admin_operation_log` VALUES ('1704', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 03:07:04', '2019-09-12 03:07:04');
INSERT INTO `admin_operation_log` VALUES ('1705', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 03:07:08', '2019-09-12 03:07:08');
INSERT INTO `admin_operation_log` VALUES ('1706', '1', 'admin/coupons/grants/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-15 00:00:00\",\"end_time\":\"2019-09-29 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 03:07:13', '2019-09-12 03:07:13');
INSERT INTO `admin_operation_log` VALUES ('1707', '1', 'admin/coupons/grants/1', 'GET', '127.0.0.1', '[]', '2019-09-12 03:21:44', '2019-09-12 03:21:44');
INSERT INTO `admin_operation_log` VALUES ('1708', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 03:21:57', '2019-09-12 03:21:57');
INSERT INTO `admin_operation_log` VALUES ('1709', '1', 'admin/coupons/grants/1', 'GET', '127.0.0.1', '[]', '2019-09-12 03:22:06', '2019-09-12 03:22:06');
INSERT INTO `admin_operation_log` VALUES ('1710', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 03:22:30', '2019-09-12 03:22:30');
INSERT INTO `admin_operation_log` VALUES ('1711', '1', 'admin/coupons/grants/1', 'GET', '127.0.0.1', '[]', '2019-09-12 03:22:40', '2019-09-12 03:22:40');
INSERT INTO `admin_operation_log` VALUES ('1712', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 03:23:26', '2019-09-12 03:23:26');
INSERT INTO `admin_operation_log` VALUES ('1713', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 03:23:39', '2019-09-12 03:23:39');
INSERT INTO `admin_operation_log` VALUES ('1714', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 03:23:48', '2019-09-12 03:23:48');
INSERT INTO `admin_operation_log` VALUES ('1715', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 03:24:05', '2019-09-12 03:24:05');
INSERT INTO `admin_operation_log` VALUES ('1716', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 03:28:06', '2019-09-12 03:28:06');
INSERT INTO `admin_operation_log` VALUES ('1717', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 03:28:25', '2019-09-12 03:28:25');
INSERT INTO `admin_operation_log` VALUES ('1718', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 03:28:44', '2019-09-12 03:28:44');
INSERT INTO `admin_operation_log` VALUES ('1719', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 04:08:53', '2019-09-12 04:08:53');
INSERT INTO `admin_operation_log` VALUES ('1720', '1', 'admin/coupons/grants/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"2\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-15 00:00:00\",\"end_time\":\"2019-09-29 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\",\"_method\":\"PUT\"}', '2019-09-12 04:09:07', '2019-09-12 04:09:07');
INSERT INTO `admin_operation_log` VALUES ('1721', '1', 'admin/coupons/grants/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-12 04:09:10', '2019-09-12 04:09:10');
INSERT INTO `admin_operation_log` VALUES ('1722', '1', 'admin/coupons/grants/1', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"2\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-15 00:00:00\",\"end_time\":\"2019-09-29 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"SaHY69AjmpJnhne68DOhJiGaJR7kbERsmpSLPiff\",\"_method\":\"PUT\"}', '2019-09-12 04:10:41', '2019-09-12 04:10:41');
INSERT INTO `admin_operation_log` VALUES ('1723', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 04:10:45', '2019-09-12 04:10:45');
INSERT INTO `admin_operation_log` VALUES ('1724', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:11:57', '2019-09-12 06:11:57');
INSERT INTO `admin_operation_log` VALUES ('1725', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 06:12:21', '2019-09-12 06:12:21');
INSERT INTO `admin_operation_log` VALUES ('1726', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 06:13:43', '2019-09-12 06:13:43');
INSERT INTO `admin_operation_log` VALUES ('1727', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 06:14:35', '2019-09-12 06:14:35');
INSERT INTO `admin_operation_log` VALUES ('1728', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:14:55', '2019-09-12 06:14:55');
INSERT INTO `admin_operation_log` VALUES ('1729', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-15 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 06:15:15', '2019-09-12 06:15:15');
INSERT INTO `admin_operation_log` VALUES ('1730', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:15:19', '2019-09-12 06:15:19');
INSERT INTO `admin_operation_log` VALUES ('1731', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:16:55', '2019-09-12 06:16:55');
INSERT INTO `admin_operation_log` VALUES ('1732', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:17:09', '2019-09-12 06:17:09');
INSERT INTO `admin_operation_log` VALUES ('1733', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:17:12', '2019-09-12 06:17:12');
INSERT INTO `admin_operation_log` VALUES ('1734', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-15 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:17:29', '2019-09-12 06:17:29');
INSERT INTO `admin_operation_log` VALUES ('1735', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:17:33', '2019-09-12 06:17:33');
INSERT INTO `admin_operation_log` VALUES ('1736', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:18:23', '2019-09-12 06:18:23');
INSERT INTO `admin_operation_log` VALUES ('1737', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:18:34', '2019-09-12 06:18:34');
INSERT INTO `admin_operation_log` VALUES ('1738', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:18:37', '2019-09-12 06:18:37');
INSERT INTO `admin_operation_log` VALUES ('1739', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:18:43', '2019-09-12 06:18:43');
INSERT INTO `admin_operation_log` VALUES ('1740', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"5\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-14 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:18:52', '2019-09-12 06:18:52');
INSERT INTO `admin_operation_log` VALUES ('1741', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:18:55', '2019-09-12 06:18:55');
INSERT INTO `admin_operation_log` VALUES ('1742', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:21:50', '2019-09-12 06:21:50');
INSERT INTO `admin_operation_log` VALUES ('1743', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:22:16', '2019-09-12 06:22:16');
INSERT INTO `admin_operation_log` VALUES ('1744', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:22:18', '2019-09-12 06:22:18');
INSERT INTO `admin_operation_log` VALUES ('1745', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:22:22', '2019-09-12 06:22:22');
INSERT INTO `admin_operation_log` VALUES ('1746', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:22:26', '2019-09-12 06:22:26');
INSERT INTO `admin_operation_log` VALUES ('1747', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"6\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u65e0\\u6cd5\\u7ed1\\u5b9a\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:22:31', '2019-09-12 06:22:31');
INSERT INTO `admin_operation_log` VALUES ('1748', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:22:35', '2019-09-12 06:22:35');
INSERT INTO `admin_operation_log` VALUES ('1749', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:24:50', '2019-09-12 06:24:50');
INSERT INTO `admin_operation_log` VALUES ('1750', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:25:06', '2019-09-12 06:25:06');
INSERT INTO `admin_operation_log` VALUES ('1751', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:25:09', '2019-09-12 06:25:09');
INSERT INTO `admin_operation_log` VALUES ('1752', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:25:15', '2019-09-12 06:25:15');
INSERT INTO `admin_operation_log` VALUES ('1753', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:25:22', '2019-09-12 06:25:22');
INSERT INTO `admin_operation_log` VALUES ('1754', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:25:24', '2019-09-12 06:25:24');
INSERT INTO `admin_operation_log` VALUES ('1755', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:25:29', '2019-09-12 06:25:29');
INSERT INTO `admin_operation_log` VALUES ('1756', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:25:54', '2019-09-12 06:25:54');
INSERT INTO `admin_operation_log` VALUES ('1757', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:26:02', '2019-09-12 06:26:02');
INSERT INTO `admin_operation_log` VALUES ('1758', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 06:29:42', '2019-09-12 06:29:42');
INSERT INTO `admin_operation_log` VALUES ('1759', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:30:01', '2019-09-12 06:30:01');
INSERT INTO `admin_operation_log` VALUES ('1760', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 06:30:12', '2019-09-12 06:30:12');
INSERT INTO `admin_operation_log` VALUES ('1761', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:31:16', '2019-09-12 06:31:16');
INSERT INTO `admin_operation_log` VALUES ('1762', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:31:34', '2019-09-12 06:31:34');
INSERT INTO `admin_operation_log` VALUES ('1763', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 06:32:23', '2019-09-12 06:32:23');
INSERT INTO `admin_operation_log` VALUES ('1764', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:32:36', '2019-09-12 06:32:36');
INSERT INTO `admin_operation_log` VALUES ('1765', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"6\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 06:32:49', '2019-09-12 06:32:49');
INSERT INTO `admin_operation_log` VALUES ('1766', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:38:12', '2019-09-12 06:38:12');
INSERT INTO `admin_operation_log` VALUES ('1767', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:38:44', '2019-09-12 06:38:44');
INSERT INTO `admin_operation_log` VALUES ('1768', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:38:50', '2019-09-12 06:38:50');
INSERT INTO `admin_operation_log` VALUES ('1769', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 06:38:59', '2019-09-12 06:38:59');
INSERT INTO `admin_operation_log` VALUES ('1770', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:39:11', '2019-09-12 06:39:11');
INSERT INTO `admin_operation_log` VALUES ('1771', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:39:14', '2019-09-12 06:39:14');
INSERT INTO `admin_operation_log` VALUES ('1772', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:47:38', '2019-09-12 06:47:38');
INSERT INTO `admin_operation_log` VALUES ('1773', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:47:51', '2019-09-12 06:47:51');
INSERT INTO `admin_operation_log` VALUES ('1774', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:47:53', '2019-09-12 06:47:53');
INSERT INTO `admin_operation_log` VALUES ('1775', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:48:00', '2019-09-12 06:48:00');
INSERT INTO `admin_operation_log` VALUES ('1776', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:48:03', '2019-09-12 06:48:03');
INSERT INTO `admin_operation_log` VALUES ('1777', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:48:36', '2019-09-12 06:48:36');
INSERT INTO `admin_operation_log` VALUES ('1778', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:48:46', '2019-09-12 06:48:46');
INSERT INTO `admin_operation_log` VALUES ('1779', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:48:50', '2019-09-12 06:48:50');
INSERT INTO `admin_operation_log` VALUES ('1780', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:48:55', '2019-09-12 06:48:55');
INSERT INTO `admin_operation_log` VALUES ('1781', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:49:00', '2019-09-12 06:49:00');
INSERT INTO `admin_operation_log` VALUES ('1782', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:49:20', '2019-09-12 06:49:20');
INSERT INTO `admin_operation_log` VALUES ('1783', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:52:45', '2019-09-12 06:52:45');
INSERT INTO `admin_operation_log` VALUES ('1784', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:52:57', '2019-09-12 06:52:57');
INSERT INTO `admin_operation_log` VALUES ('1785', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"5\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:53:23', '2019-09-12 06:53:23');
INSERT INTO `admin_operation_log` VALUES ('1786', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:53:26', '2019-09-12 06:53:26');
INSERT INTO `admin_operation_log` VALUES ('1787', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:54:05', '2019-09-12 06:54:05');
INSERT INTO `admin_operation_log` VALUES ('1788', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:54:37', '2019-09-12 06:54:37');
INSERT INTO `admin_operation_log` VALUES ('1789', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:54:41', '2019-09-12 06:54:41');
INSERT INTO `admin_operation_log` VALUES ('1790', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:54:50', '2019-09-12 06:54:50');
INSERT INTO `admin_operation_log` VALUES ('1791', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:54:55', '2019-09-12 06:54:55');
INSERT INTO `admin_operation_log` VALUES ('1792', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 06:55:14', '2019-09-12 06:55:14');
INSERT INTO `admin_operation_log` VALUES ('1793', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:55:25', '2019-09-12 06:55:25');
INSERT INTO `admin_operation_log` VALUES ('1794', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:55:28', '2019-09-12 06:55:28');
INSERT INTO `admin_operation_log` VALUES ('1795', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 06:55:33', '2019-09-12 06:55:33');
INSERT INTO `admin_operation_log` VALUES ('1796', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 06:55:48', '2019-09-12 06:55:48');
INSERT INTO `admin_operation_log` VALUES ('1797', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 06:58:06', '2019-09-12 06:58:06');
INSERT INTO `admin_operation_log` VALUES ('1798', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:01:35', '2019-09-12 07:01:35');
INSERT INTO `admin_operation_log` VALUES ('1799', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:01:43', '2019-09-12 07:01:43');
INSERT INTO `admin_operation_log` VALUES ('1800', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 07:01:56', '2019-09-12 07:01:56');
INSERT INTO `admin_operation_log` VALUES ('1801', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:02:16', '2019-09-12 07:02:16');
INSERT INTO `admin_operation_log` VALUES ('1802', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:02:20', '2019-09-12 07:02:20');
INSERT INTO `admin_operation_log` VALUES ('1803', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:02:41', '2019-09-12 07:02:41');
INSERT INTO `admin_operation_log` VALUES ('1804', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 07:02:54', '2019-09-12 07:02:54');
INSERT INTO `admin_operation_log` VALUES ('1805', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 07:02:58', '2019-09-12 07:02:58');
INSERT INTO `admin_operation_log` VALUES ('1806', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6bcf\\u4eba\\u6bcf\\u6b21\\u9650\\u4f7f\\u7528\\u4e00\\u5f20\\uff0c\\u4e0d\\u53ef\\u53e0\\u52a0\\u4f7f\\u7528\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:03:08', '2019-09-12 07:03:08');
INSERT INTO `admin_operation_log` VALUES ('1807', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:03:13', '2019-09-12 07:03:13');
INSERT INTO `admin_operation_log` VALUES ('1808', '1', 'admin/coupons/grants/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:03:32', '2019-09-12 07:03:32');
INSERT INTO `admin_operation_log` VALUES ('1809', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:03:49', '2019-09-12 07:03:49');
INSERT INTO `admin_operation_log` VALUES ('1810', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:03:53', '2019-09-12 07:03:53');
INSERT INTO `admin_operation_log` VALUES ('1811', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:03:58', '2019-09-12 07:03:58');
INSERT INTO `admin_operation_log` VALUES ('1812', '1', 'admin/coupons/grants/11', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:04:06', '2019-09-12 07:04:06');
INSERT INTO `admin_operation_log` VALUES ('1813', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:04:10', '2019-09-12 07:04:10');
INSERT INTO `admin_operation_log` VALUES ('1814', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:07:40', '2019-09-12 07:07:40');
INSERT INTO `admin_operation_log` VALUES ('1815', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:09:38', '2019-09-12 07:09:38');
INSERT INTO `admin_operation_log` VALUES ('1816', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:10:01', '2019-09-12 07:10:01');
INSERT INTO `admin_operation_log` VALUES ('1817', '1', 'admin/coupons/grants/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:10:14', '2019-09-12 07:10:14');
INSERT INTO `admin_operation_log` VALUES ('1818', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:10:26', '2019-09-12 07:10:26');
INSERT INTO `admin_operation_log` VALUES ('1819', '1', 'admin/coupons/grants/11', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u6d4b\\u8bd5\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:10:33', '2019-09-12 07:10:33');
INSERT INTO `admin_operation_log` VALUES ('1820', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:10:37', '2019-09-12 07:10:37');
INSERT INTO `admin_operation_log` VALUES ('1821', '1', 'admin/coupons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:11:11', '2019-09-12 07:11:11');
INSERT INTO `admin_operation_log` VALUES ('1822', '1', 'admin/coupons/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:17:25', '2019-09-12 07:17:25');
INSERT INTO `admin_operation_log` VALUES ('1823', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:17:37', '2019-09-12 07:17:37');
INSERT INTO `admin_operation_log` VALUES ('1824', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:17:45', '2019-09-12 07:17:45');
INSERT INTO `admin_operation_log` VALUES ('1825', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:17:55', '2019-09-12 07:17:55');
INSERT INTO `admin_operation_log` VALUES ('1826', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:17:58', '2019-09-12 07:17:58');
INSERT INTO `admin_operation_log` VALUES ('1827', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:18:05', '2019-09-12 07:18:05');
INSERT INTO `admin_operation_log` VALUES ('1828', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:18:44', '2019-09-12 07:18:44');
INSERT INTO `admin_operation_log` VALUES ('1829', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:19:00', '2019-09-12 07:19:00');
INSERT INTO `admin_operation_log` VALUES ('1830', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:19:11', '2019-09-12 07:19:11');
INSERT INTO `admin_operation_log` VALUES ('1831', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:19:18', '2019-09-12 07:19:18');
INSERT INTO `admin_operation_log` VALUES ('1832', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 07:19:28', '2019-09-12 07:19:28');
INSERT INTO `admin_operation_log` VALUES ('1833', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 07:19:54', '2019-09-12 07:19:54');
INSERT INTO `admin_operation_log` VALUES ('1834', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 07:20:01', '2019-09-12 07:20:01');
INSERT INTO `admin_operation_log` VALUES ('1835', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:20:10', '2019-09-12 07:20:10');
INSERT INTO `admin_operation_log` VALUES ('1836', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 07:20:26', '2019-09-12 07:20:26');
INSERT INTO `admin_operation_log` VALUES ('1837', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 07:20:32', '2019-09-12 07:20:32');
INSERT INTO `admin_operation_log` VALUES ('1838', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 07:20:54', '2019-09-12 07:20:54');
INSERT INTO `admin_operation_log` VALUES ('1839', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:25:12', '2019-09-12 07:25:12');
INSERT INTO `admin_operation_log` VALUES ('1840', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:25:20', '2019-09-12 07:25:20');
INSERT INTO `admin_operation_log` VALUES ('1841', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 07:25:28', '2019-09-12 07:25:28');
INSERT INTO `admin_operation_log` VALUES ('1842', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:25:33', '2019-09-12 07:25:33');
INSERT INTO `admin_operation_log` VALUES ('1843', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:29:20', '2019-09-12 07:29:20');
INSERT INTO `admin_operation_log` VALUES ('1844', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:29:33', '2019-09-12 07:29:33');
INSERT INTO `admin_operation_log` VALUES ('1845', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:30:30', '2019-09-12 07:30:30');
INSERT INTO `admin_operation_log` VALUES ('1846', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:30:37', '2019-09-12 07:30:37');
INSERT INTO `admin_operation_log` VALUES ('1847', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 07:30:38', '2019-09-12 07:30:38');
INSERT INTO `admin_operation_log` VALUES ('1848', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 07:31:02', '2019-09-12 07:31:02');
INSERT INTO `admin_operation_log` VALUES ('1849', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:32:17', '2019-09-12 07:32:17');
INSERT INTO `admin_operation_log` VALUES ('1850', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:32:32', '2019-09-12 07:32:32');
INSERT INTO `admin_operation_log` VALUES ('1851', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:32:44', '2019-09-12 07:32:44');
INSERT INTO `admin_operation_log` VALUES ('1852', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:33:08', '2019-09-12 07:33:08');
INSERT INTO `admin_operation_log` VALUES ('1853', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:33:31', '2019-09-12 07:33:31');
INSERT INTO `admin_operation_log` VALUES ('1854', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:33:40', '2019-09-12 07:33:40');
INSERT INTO `admin_operation_log` VALUES ('1855', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:33:52', '2019-09-12 07:33:52');
INSERT INTO `admin_operation_log` VALUES ('1856', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:34:03', '2019-09-12 07:34:03');
INSERT INTO `admin_operation_log` VALUES ('1857', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:36:08', '2019-09-12 07:36:08');
INSERT INTO `admin_operation_log` VALUES ('1858', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:36:17', '2019-09-12 07:36:17');
INSERT INTO `admin_operation_log` VALUES ('1859', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:36:26', '2019-09-12 07:36:26');
INSERT INTO `admin_operation_log` VALUES ('1860', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:36:33', '2019-09-12 07:36:33');
INSERT INTO `admin_operation_log` VALUES ('1861', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:36:51', '2019-09-12 07:36:51');
INSERT INTO `admin_operation_log` VALUES ('1862', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:37:02', '2019-09-12 07:37:02');
INSERT INTO `admin_operation_log` VALUES ('1863', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:37:12', '2019-09-12 07:37:12');
INSERT INTO `admin_operation_log` VALUES ('1864', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:37:20', '2019-09-12 07:37:20');
INSERT INTO `admin_operation_log` VALUES ('1865', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:40:23', '2019-09-12 07:40:23');
INSERT INTO `admin_operation_log` VALUES ('1866', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:40:37', '2019-09-12 07:40:37');
INSERT INTO `admin_operation_log` VALUES ('1867', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:40:47', '2019-09-12 07:40:47');
INSERT INTO `admin_operation_log` VALUES ('1868', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u65e0\\u6cd5\\u7ed1\\u5b9a\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:41:00', '2019-09-12 07:41:00');
INSERT INTO `admin_operation_log` VALUES ('1869', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:51:13', '2019-09-12 07:51:13');
INSERT INTO `admin_operation_log` VALUES ('1870', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:52:58', '2019-09-12 07:52:58');
INSERT INTO `admin_operation_log` VALUES ('1871', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 07:53:18', '2019-09-12 07:53:18');
INSERT INTO `admin_operation_log` VALUES ('1872', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 07:53:30', '2019-09-12 07:53:30');
INSERT INTO `admin_operation_log` VALUES ('1873', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 07:53:50', '2019-09-12 07:53:50');
INSERT INTO `admin_operation_log` VALUES ('1874', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":[\"3\",\"4\",\"6\",null],\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":\"\\u65e0\\u6cd5\\u7ed1\\u5b9a\",\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 07:54:05', '2019-09-12 07:54:05');
INSERT INTO `admin_operation_log` VALUES ('1875', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 07:54:12', '2019-09-12 07:54:12');
INSERT INTO `admin_operation_log` VALUES ('1876', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 07:55:21', '2019-09-12 07:55:21');
INSERT INTO `admin_operation_log` VALUES ('1877', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2019-09-12 08:05:15', '2019-09-12 08:05:15');
INSERT INTO `admin_operation_log` VALUES ('1878', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"2\",\"name\":\"\\u5168\\u6c11\\u5927\\u4f18\\u60e0\",\"total_num\":\"100\",\"num\":\"1\",\"amount\":\"40\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 08:05:21', '2019-09-12 08:05:21');
INSERT INTO `admin_operation_log` VALUES ('1879', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 08:09:55', '2019-09-12 08:09:55');
INSERT INTO `admin_operation_log` VALUES ('1880', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 08:11:59', '2019-09-12 08:11:59');
INSERT INTO `admin_operation_log` VALUES ('1881', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 08:12:16', '2019-09-12 08:12:16');
INSERT INTO `admin_operation_log` VALUES ('1882', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 08:12:24', '2019-09-12 08:12:24');
INSERT INTO `admin_operation_log` VALUES ('1883', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 08:12:27', '2019-09-12 08:12:27');
INSERT INTO `admin_operation_log` VALUES ('1884', '1', 'admin/coupons/grants', 'GET', '127.0.0.1', '[]', '2019-09-12 08:23:10', '2019-09-12 08:23:10');
INSERT INTO `admin_operation_log` VALUES ('1885', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-12 08:23:23', '2019-09-12 08:23:23');
INSERT INTO `admin_operation_log` VALUES ('1886', '1', 'admin/coupons/getInfo', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2019-09-12 08:23:30', '2019-09-12 08:23:30');
INSERT INTO `admin_operation_log` VALUES ('1887', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/coupons\\/grants\"}', '2019-09-12 08:24:13', '2019-09-12 08:24:13');
INSERT INTO `admin_operation_log` VALUES ('1888', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 08:24:14', '2019-09-12 08:24:14');
INSERT INTO `admin_operation_log` VALUES ('1889', '1', 'admin/coupons/grants', 'POST', '127.0.0.1', '{\"user_id\":\"3\",\"coupon_id\":\"1\",\"name\":\"\\u4e2d\\u79cb\\u9001\\u793c\\u5927\\u4f18\\u60e0\",\"total_num\":\"20\",\"num\":\"1\",\"amount\":\"20\",\"condition\":\"100\",\"start_time\":\"2019-09-12 00:00:00\",\"end_time\":\"2019-09-30 00:00:00\",\"remark\":null,\"_token\":\"Lr0jcLecd2L9aqNzWWUDDDHnxOL170Zm798towGO\"}', '2019-09-12 08:24:54', '2019-09-12 08:24:54');
INSERT INTO `admin_operation_log` VALUES ('1890', '1', 'admin/coupons/grants/create', 'GET', '127.0.0.1', '[]', '2019-09-12 08:24:56', '2019-09-12 08:24:56');
INSERT INTO `admin_operation_log` VALUES ('1891', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 05:50:04', '2019-09-16 05:50:04');
INSERT INTO `admin_operation_log` VALUES ('1892', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 06:02:46', '2019-09-16 06:02:46');
INSERT INTO `admin_operation_log` VALUES ('1893', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 06:03:22', '2019-09-16 06:03:22');
INSERT INTO `admin_operation_log` VALUES ('1894', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 06:04:45', '2019-09-16 06:04:45');
INSERT INTO `admin_operation_log` VALUES ('1895', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '[]', '2019-09-16 06:05:18', '2019-09-16 06:05:18');
INSERT INTO `admin_operation_log` VALUES ('1896', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 06:46:33', '2019-09-16 06:46:33');
INSERT INTO `admin_operation_log` VALUES ('1897', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 06:46:57', '2019-09-16 06:46:57');
INSERT INTO `admin_operation_log` VALUES ('1898', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 06:47:24', '2019-09-16 06:47:24');
INSERT INTO `admin_operation_log` VALUES ('1899', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 06:56:22', '2019-09-16 06:56:22');
INSERT INTO `admin_operation_log` VALUES ('1900', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 09:07:51', '2019-09-17 09:07:51');
INSERT INTO `admin_operation_log` VALUES ('1901', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-25 10:55:02', '2019-09-25 10:55:02');
INSERT INTO `admin_operation_log` VALUES ('1902', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-26 08:49:42', '2019-09-26 08:49:42');
INSERT INTO `admin_operation_log` VALUES ('1903', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-27 11:01:51', '2019-09-27 11:01:51');
INSERT INTO `admin_operation_log` VALUES ('1904', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 11:01:59', '2019-09-27 11:01:59');
INSERT INTO `admin_operation_log` VALUES ('1905', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-27 15:55:14', '2019-09-27 15:55:14');
INSERT INTO `admin_operation_log` VALUES ('1906', '1', 'admin/services/reservations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 15:56:22', '2019-09-27 15:56:22');
INSERT INTO `admin_operation_log` VALUES ('1907', '1', 'admin/answers/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 15:56:36', '2019-09-27 15:56:36');
INSERT INTO `admin_operation_log` VALUES ('1908', '1', 'admin/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 15:56:40', '2019-09-27 15:56:40');
INSERT INTO `admin_operation_log` VALUES ('1909', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 15:56:51', '2019-09-27 15:56:51');
INSERT INTO `admin_operation_log` VALUES ('1910', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-09-27 15:59:48', '2019-09-27 15:59:48');
INSERT INTO `admin_operation_log` VALUES ('1911', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-09-27 16:00:33', '2019-09-27 16:00:33');
INSERT INTO `admin_operation_log` VALUES ('1912', '1', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-09-27 16:01:37', '2019-09-27 16:01:37');
INSERT INTO `admin_operation_log` VALUES ('1913', '1', 'admin/articles/specialist/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:04:07', '2019-09-27 16:04:07');
INSERT INTO `admin_operation_log` VALUES ('1914', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:04:33', '2019-09-27 16:04:33');
INSERT INTO `admin_operation_log` VALUES ('1915', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-27 16:05:45', '2019-09-27 16:05:45');
INSERT INTO `admin_operation_log` VALUES ('1916', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:06:03', '2019-09-27 16:06:03');
INSERT INTO `admin_operation_log` VALUES ('1917', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '[]', '2019-09-27 16:06:19', '2019-09-27 16:06:19');
INSERT INTO `admin_operation_log` VALUES ('1918', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:06:51', '2019-09-27 16:06:51');
INSERT INTO `admin_operation_log` VALUES ('1919', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:07:00', '2019-09-27 16:07:00');
INSERT INTO `admin_operation_log` VALUES ('1920', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '[]', '2019-09-27 16:08:02', '2019-09-27 16:08:02');
INSERT INTO `admin_operation_log` VALUES ('1921', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '[]', '2019-09-27 16:08:56', '2019-09-27 16:08:56');
INSERT INTO `admin_operation_log` VALUES ('1922', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '[]', '2019-09-27 16:09:16', '2019-09-27 16:09:16');
INSERT INTO `admin_operation_log` VALUES ('1923', '1', 'admin/articles/collects', 'GET', '127.0.0.1', '[]', '2019-09-27 16:09:35', '2019-09-27 16:09:35');
INSERT INTO `admin_operation_log` VALUES ('1924', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:11:34', '2019-09-27 16:11:34');
INSERT INTO `admin_operation_log` VALUES ('1925', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:11:47', '2019-09-27 16:11:47');
INSERT INTO `admin_operation_log` VALUES ('1926', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:11:59', '2019-09-27 16:11:59');
INSERT INTO `admin_operation_log` VALUES ('1927', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:12:08', '2019-09-27 16:12:08');
INSERT INTO `admin_operation_log` VALUES ('1928', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-09-27 16:12:44', '2019-09-27 16:12:44');
INSERT INTO `admin_operation_log` VALUES ('1929', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:13:25', '2019-09-27 16:13:25');
INSERT INTO `admin_operation_log` VALUES ('1930', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:13:53', '2019-09-27 16:13:53');
INSERT INTO `admin_operation_log` VALUES ('1931', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u6cd5\\u5b9d\\u7ba1\\u7406\",\"icon\":\"fa-skype\",\"uri\":\"\\/funds\\/ingots\",\"roles\":[null],\"permission\":null,\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 16:14:03', '2019-09-27 16:14:03');
INSERT INTO `admin_operation_log` VALUES ('1932', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:14:05', '2019-09-27 16:14:05');
INSERT INTO `admin_operation_log` VALUES ('1933', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:14:38', '2019-09-27 16:14:38');
INSERT INTO `admin_operation_log` VALUES ('1934', '1', 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:15:43', '2019-09-27 16:15:43');
INSERT INTO `admin_operation_log` VALUES ('1935', '1', 'admin/members', 'GET', '127.0.0.1', '[]', '2019-09-27 16:21:45', '2019-09-27 16:21:45');
INSERT INTO `admin_operation_log` VALUES ('1936', '1', 'admin/tools/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:22:32', '2019-09-27 16:22:32');
INSERT INTO `admin_operation_log` VALUES ('1937', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:24:00', '2019-09-27 16:24:00');
INSERT INTO `admin_operation_log` VALUES ('1938', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:24:15', '2019-09-27 16:24:15');
INSERT INTO `admin_operation_log` VALUES ('1939', '1', 'admin/auth/menu/44', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\"}', '2019-09-27 16:24:25', '2019-09-27 16:24:25');
INSERT INTO `admin_operation_log` VALUES ('1940', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:24:34', '2019-09-27 16:24:34');
INSERT INTO `admin_operation_log` VALUES ('1941', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:24:51', '2019-09-27 16:24:51');
INSERT INTO `admin_operation_log` VALUES ('1942', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:25:28', '2019-09-27 16:25:28');
INSERT INTO `admin_operation_log` VALUES ('1943', '1', 'admin/tools/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:26:17', '2019-09-27 16:26:17');
INSERT INTO `admin_operation_log` VALUES ('1944', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:26:54', '2019-09-27 16:26:54');
INSERT INTO `admin_operation_log` VALUES ('1945', '1', 'admin/auth/menu/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:27:21', '2019-09-27 16:27:21');
INSERT INTO `admin_operation_log` VALUES ('1946', '1', 'admin/auth/menu/32', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"VIP\\u901a\\u9053\\u8d2d\\u4e70\\u8bb0\\u5f55\",\"icon\":\"fa-align-center\",\"uri\":\"\\/members\",\"roles\":[null],\"permission\":\"member\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 16:27:42', '2019-09-27 16:27:42');
INSERT INTO `admin_operation_log` VALUES ('1947', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:27:45', '2019-09-27 16:27:45');
INSERT INTO `admin_operation_log` VALUES ('1948', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:28:20', '2019-09-27 16:28:20');
INSERT INTO `admin_operation_log` VALUES ('1949', '1', 'admin/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:28:44', '2019-09-27 16:28:44');
INSERT INTO `admin_operation_log` VALUES ('1950', '1', 'admin/legals/categorys/48', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\"}', '2019-09-27 16:29:11', '2019-09-27 16:29:11');
INSERT INTO `admin_operation_log` VALUES ('1951', '1', 'admin/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:29:16', '2019-09-27 16:29:16');
INSERT INTO `admin_operation_log` VALUES ('1952', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:30:01', '2019-09-27 16:30:01');
INSERT INTO `admin_operation_log` VALUES ('1953', '1', 'admin/auth/menu/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\"}', '2019-09-27 16:30:13', '2019-09-27 16:30:13');
INSERT INTO `admin_operation_log` VALUES ('1954', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:30:17', '2019-09-27 16:30:17');
INSERT INTO `admin_operation_log` VALUES ('1955', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:30:40', '2019-09-27 16:30:40');
INSERT INTO `admin_operation_log` VALUES ('1956', '1', 'admin/auth/menu/40', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\"}', '2019-09-27 16:32:36', '2019-09-27 16:32:36');
INSERT INTO `admin_operation_log` VALUES ('1957', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:32:45', '2019-09-27 16:32:45');
INSERT INTO `admin_operation_log` VALUES ('1958', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:33:01', '2019-09-27 16:33:01');
INSERT INTO `admin_operation_log` VALUES ('1959', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:38:52', '2019-09-27 16:38:52');
INSERT INTO `admin_operation_log` VALUES ('1960', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/personnel\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 16:43:41', '2019-09-27 16:43:41');
INSERT INTO `admin_operation_log` VALUES ('1961', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:43:43', '2019-09-27 16:43:43');
INSERT INTO `admin_operation_log` VALUES ('1962', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:44:02', '2019-09-27 16:44:02');
INSERT INTO `admin_operation_log` VALUES ('1963', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-comment\",\"uri\":\"\\/personnel\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 16:53:31', '2019-09-27 16:53:31');
INSERT INTO `admin_operation_log` VALUES ('1964', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 16:53:34', '2019-09-27 16:53:34');
INSERT INTO `admin_operation_log` VALUES ('1965', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 16:53:42', '2019-09-27 16:53:42');
INSERT INTO `admin_operation_log` VALUES ('1966', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-user-friends\",\"uri\":\"\\/personnel\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 17:00:10', '2019-09-27 17:00:10');
INSERT INTO `admin_operation_log` VALUES ('1967', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 17:00:12', '2019-09-27 17:00:12');
INSERT INTO `admin_operation_log` VALUES ('1968', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:00:21', '2019-09-27 17:00:21');
INSERT INTO `admin_operation_log` VALUES ('1969', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/personnel\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 17:06:11', '2019-09-27 17:06:11');
INSERT INTO `admin_operation_log` VALUES ('1970', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 17:06:15', '2019-09-27 17:06:15');
INSERT INTO `admin_operation_log` VALUES ('1971', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:08:12', '2019-09-27 17:08:12');
INSERT INTO `admin_operation_log` VALUES ('1972', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:09:14', '2019-09-27 17:09:14');
INSERT INTO `admin_operation_log` VALUES ('1973', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:09:19', '2019-09-27 17:09:19');
INSERT INTO `admin_operation_log` VALUES ('1974', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 17:09:48', '2019-09-27 17:09:48');
INSERT INTO `admin_operation_log` VALUES ('1975', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 17:09:50', '2019-09-27 17:09:50');
INSERT INTO `admin_operation_log` VALUES ('1976', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 17:10:06', '2019-09-27 17:10:06');
INSERT INTO `admin_operation_log` VALUES ('1977', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:11:42', '2019-09-27 17:11:42');
INSERT INTO `admin_operation_log` VALUES ('1978', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-file-text\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 17:12:04', '2019-09-27 17:12:04');
INSERT INTO `admin_operation_log` VALUES ('1979', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 17:12:06', '2019-09-27 17:12:06');
INSERT INTO `admin_operation_log` VALUES ('1980', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:17:21', '2019-09-27 17:17:21');
INSERT INTO `admin_operation_log` VALUES ('1981', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d22\\u5bcc\\u7ba1\\u7406\",\"icon\":\"fa-money\",\"uri\":\"\\/funds\",\"roles\":[null],\"permission\":null,\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 17:18:09', '2019-09-27 17:18:09');
INSERT INTO `admin_operation_log` VALUES ('1982', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 17:18:13', '2019-09-27 17:18:13');
INSERT INTO `admin_operation_log` VALUES ('1983', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:18:59', '2019-09-27 17:18:59');
INSERT INTO `admin_operation_log` VALUES ('1984', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u6cd5\\u5b9d\\u7ba1\\u7406\",\"icon\":\"fa-gg\",\"uri\":\"\\/funds\\/ingots\",\"roles\":[null],\"permission\":null,\"_token\":\"ANzQ8OCpsbs8iQBKX6s21RJfAOi0GovI3hk70Jwr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-09-27 17:19:11', '2019-09-27 17:19:11');
INSERT INTO `admin_operation_log` VALUES ('1985', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-27 17:19:15', '2019-09-27 17:19:15');
INSERT INTO `admin_operation_log` VALUES ('1986', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-27 17:22:26', '2019-09-27 17:22:26');
INSERT INTO `admin_operation_log` VALUES ('1987', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-27 17:22:44', '2019-09-27 17:22:44');
INSERT INTO `admin_operation_log` VALUES ('1988', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-27 17:31:42', '2019-09-27 17:31:42');
INSERT INTO `admin_operation_log` VALUES ('1989', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-27 17:35:56', '2019-09-27 17:35:56');
INSERT INTO `admin_operation_log` VALUES ('1990', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-28 09:00:17', '2019-09-28 09:00:17');
INSERT INTO `admin_operation_log` VALUES ('1991', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:08:33', '2019-09-28 10:08:33');
INSERT INTO `admin_operation_log` VALUES ('1992', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:08:52', '2019-09-28 10:08:52');
INSERT INTO `admin_operation_log` VALUES ('1993', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:09:10', '2019-09-28 10:09:10');
INSERT INTO `admin_operation_log` VALUES ('1994', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:21:22', '2019-09-28 10:21:22');
INSERT INTO `admin_operation_log` VALUES ('1995', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:21:46', '2019-09-28 10:21:46');
INSERT INTO `admin_operation_log` VALUES ('1996', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:23:11', '2019-09-28 10:23:11');
INSERT INTO `admin_operation_log` VALUES ('1997', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:24:15', '2019-09-28 10:24:15');
INSERT INTO `admin_operation_log` VALUES ('1998', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:36:55', '2019-09-28 10:36:55');
INSERT INTO `admin_operation_log` VALUES ('1999', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:37:20', '2019-09-28 10:37:20');
INSERT INTO `admin_operation_log` VALUES ('2000', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:39:49', '2019-09-28 10:39:49');
INSERT INTO `admin_operation_log` VALUES ('2001', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:45:39', '2019-09-28 10:45:39');
INSERT INTO `admin_operation_log` VALUES ('2002', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:49:04', '2019-09-28 10:49:04');
INSERT INTO `admin_operation_log` VALUES ('2003', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:50:35', '2019-09-28 10:50:35');
INSERT INTO `admin_operation_log` VALUES ('2004', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:50:49', '2019-09-28 10:50:49');
INSERT INTO `admin_operation_log` VALUES ('2005', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:51:33', '2019-09-28 10:51:33');
INSERT INTO `admin_operation_log` VALUES ('2006', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:51:58', '2019-09-28 10:51:58');
INSERT INTO `admin_operation_log` VALUES ('2007', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:52:24', '2019-09-28 10:52:24');
INSERT INTO `admin_operation_log` VALUES ('2008', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 10:53:07', '2019-09-28 10:53:07');
INSERT INTO `admin_operation_log` VALUES ('2009', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-28 14:09:50', '2019-09-28 14:09:50');
INSERT INTO `admin_operation_log` VALUES ('2010', '1', 'admin/legals/columns', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-28 14:27:58', '2019-09-28 14:27:58');
INSERT INTO `admin_operation_log` VALUES ('2011', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-28 14:28:54', '2019-09-28 14:28:54');
INSERT INTO `admin_operation_log` VALUES ('2012', '1', 'admin/auth/menu/31', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Dj80i2ADLlnNleqa7nNjv2YO6zNBJ3HRXnEHMEnF\"}', '2019-09-28 14:29:21', '2019-09-28 14:29:21');
INSERT INTO `admin_operation_log` VALUES ('2013', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-28 14:29:26', '2019-09-28 14:29:26');
INSERT INTO `admin_operation_log` VALUES ('2014', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 14:52:06', '2019-09-28 14:52:06');
INSERT INTO `admin_operation_log` VALUES ('2015', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 14:55:55', '2019-09-28 14:55:55');
INSERT INTO `admin_operation_log` VALUES ('2016', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 15:10:02', '2019-09-28 15:10:02');
INSERT INTO `admin_operation_log` VALUES ('2017', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 15:11:38', '2019-09-28 15:11:38');
INSERT INTO `admin_operation_log` VALUES ('2018', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 15:29:27', '2019-09-28 15:29:27');
INSERT INTO `admin_operation_log` VALUES ('2019', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 15:51:22', '2019-09-28 15:51:22');
INSERT INTO `admin_operation_log` VALUES ('2020', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 15:57:00', '2019-09-28 15:57:00');
INSERT INTO `admin_operation_log` VALUES ('2021', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 15:58:31', '2019-09-28 15:58:31');
INSERT INTO `admin_operation_log` VALUES ('2022', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 16:01:21', '2019-09-28 16:01:21');
INSERT INTO `admin_operation_log` VALUES ('2023', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-28 16:03:07', '2019-09-28 16:03:07');
INSERT INTO `admin_operation_log` VALUES ('2024', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-28 16:03:16', '2019-09-28 16:03:16');
INSERT INTO `admin_operation_log` VALUES ('2025', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 16:08:11', '2019-09-28 16:08:11');
INSERT INTO `admin_operation_log` VALUES ('2026', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 16:25:23', '2019-09-28 16:25:23');
INSERT INTO `admin_operation_log` VALUES ('2027', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 16:30:27', '2019-09-28 16:30:27');
INSERT INTO `admin_operation_log` VALUES ('2028', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 16:31:16', '2019-09-28 16:31:16');
INSERT INTO `admin_operation_log` VALUES ('2029', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 16:34:50', '2019-09-28 16:34:50');
INSERT INTO `admin_operation_log` VALUES ('2030', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-28 16:35:06', '2019-09-28 16:35:06');
INSERT INTO `admin_operation_log` VALUES ('2031', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-30 08:42:28', '2019-09-30 08:42:28');
INSERT INTO `admin_operation_log` VALUES ('2032', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 08:42:43', '2019-09-30 08:42:43');
INSERT INTO `admin_operation_log` VALUES ('2033', '1', 'admin/articles/browse-history/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 08:43:14', '2019-09-30 08:43:14');
INSERT INTO `admin_operation_log` VALUES ('2034', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 08:43:22', '2019-09-30 08:43:22');
INSERT INTO `admin_operation_log` VALUES ('2035', '1', 'admin/articles/browse-history/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 08:43:31', '2019-09-30 08:43:31');
INSERT INTO `admin_operation_log` VALUES ('2036', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 08:43:37', '2019-09-30 08:43:37');
INSERT INTO `admin_operation_log` VALUES ('2037', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-30 08:52:16', '2019-09-30 08:52:16');
INSERT INTO `admin_operation_log` VALUES ('2038', '1', 'admin/articles/browse-history/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 08:52:25', '2019-09-30 08:52:25');
INSERT INTO `admin_operation_log` VALUES ('2039', '1', 'admin/articles/browse-history/1', 'GET', '127.0.0.1', '[]', '2019-09-30 08:55:26', '2019-09-30 08:55:26');
INSERT INTO `admin_operation_log` VALUES ('2040', '1', 'admin/articles/browse-history/1', 'GET', '127.0.0.1', '[]', '2019-09-30 08:57:17', '2019-09-30 08:57:17');
INSERT INTO `admin_operation_log` VALUES ('2041', '1', 'admin/articles/browse-history/1', 'GET', '127.0.0.1', '[]', '2019-09-30 09:05:31', '2019-09-30 09:05:31');
INSERT INTO `admin_operation_log` VALUES ('2042', '1', 'admin/articles/browse-history/1', 'GET', '127.0.0.1', '[]', '2019-09-30 09:09:17', '2019-09-30 09:09:17');
INSERT INTO `admin_operation_log` VALUES ('2043', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 09:44:20', '2019-09-30 09:44:20');
INSERT INTO `admin_operation_log` VALUES ('2044', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 09:44:32', '2019-09-30 09:44:32');
INSERT INTO `admin_operation_log` VALUES ('2045', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-30 09:45:13', '2019-09-30 09:45:13');
INSERT INTO `admin_operation_log` VALUES ('2046', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-30 10:02:36', '2019-09-30 10:02:36');
INSERT INTO `admin_operation_log` VALUES ('2047', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:05:19', '2019-09-30 10:05:19');
INSERT INTO `admin_operation_log` VALUES ('2048', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:05:30', '2019-09-30 10:05:30');
INSERT INTO `admin_operation_log` VALUES ('2049', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:05:36', '2019-09-30 10:05:36');
INSERT INTO `admin_operation_log` VALUES ('2050', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:05:43', '2019-09-30 10:05:43');
INSERT INTO `admin_operation_log` VALUES ('2051', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:06:17', '2019-09-30 10:06:17');
INSERT INTO `admin_operation_log` VALUES ('2052', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:06:28', '2019-09-30 10:06:28');
INSERT INTO `admin_operation_log` VALUES ('2053', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:06:35', '2019-09-30 10:06:35');
INSERT INTO `admin_operation_log` VALUES ('2054', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-09-30 10:15:29', '2019-09-30 10:15:29');
INSERT INTO `admin_operation_log` VALUES ('2055', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:15:45', '2019-09-30 10:15:45');
INSERT INTO `admin_operation_log` VALUES ('2056', '1', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:15:49', '2019-09-30 10:15:49');
INSERT INTO `admin_operation_log` VALUES ('2057', '1', 'admin/usercenter/signs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:15:58', '2019-09-30 10:15:58');
INSERT INTO `admin_operation_log` VALUES ('2058', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:51:04', '2019-09-30 10:51:04');
INSERT INTO `admin_operation_log` VALUES ('2059', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 10:51:38', '2019-09-30 10:51:38');
INSERT INTO `admin_operation_log` VALUES ('2060', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 13:59:48', '2019-09-30 13:59:48');
INSERT INTO `admin_operation_log` VALUES ('2061', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u8f6c\\u53d1\",\"icon\":\"fa-share\",\"uri\":\"\\/articles\\/shares\",\"roles\":[null],\"permission\":\"article\",\"_token\":\"LR8eNCBHslbpmj4UxL30m1C7l4NfRAd5L8Sk1tOK\"}', '2019-09-30 14:00:58', '2019-09-30 14:00:58');
INSERT INTO `admin_operation_log` VALUES ('2062', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-30 14:01:01', '2019-09-30 14:01:01');
INSERT INTO `admin_operation_log` VALUES ('2063', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-30 14:03:00', '2019-09-30 14:03:00');
INSERT INTO `admin_operation_log` VALUES ('2064', '1', 'admin/articles/shares', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-30 14:03:23', '2019-09-30 14:03:23');
INSERT INTO `admin_operation_log` VALUES ('2065', '1', 'admin/articles/shares', 'GET', '127.0.0.1', '[]', '2019-09-30 14:10:32', '2019-09-30 14:10:32');
INSERT INTO `admin_operation_log` VALUES ('2066', '1', 'admin/articles/shares', 'GET', '127.0.0.1', '[]', '2019-09-30 14:11:39', '2019-09-30 14:11:39');
INSERT INTO `admin_operation_log` VALUES ('2067', '1', 'admin/articles/shares', 'GET', '127.0.0.1', '[]', '2019-10-08 09:13:54', '2019-10-08 09:13:54');
INSERT INTO `admin_operation_log` VALUES ('2068', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:14:21', '2019-10-08 09:14:21');
INSERT INTO `admin_operation_log` VALUES ('2069', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:14:28', '2019-10-08 09:14:28');
INSERT INTO `admin_operation_log` VALUES ('2070', '1', 'admin/auth/menu/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:14:41', '2019-10-08 09:14:41');
INSERT INTO `admin_operation_log` VALUES ('2071', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:14:45', '2019-10-08 09:14:45');
INSERT INTO `admin_operation_log` VALUES ('2072', '1', 'admin/auth/menu/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:15:08', '2019-10-08 09:15:08');
INSERT INTO `admin_operation_log` VALUES ('2073', '1', 'admin/auth/menu/28', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u610f\\u89c1\\u548c\\u7559\\u8a00\",\"icon\":\"iconfont iconyonghuliuyan\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:16:57', '2019-10-08 09:16:57');
INSERT INTO `admin_operation_log` VALUES ('2074', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:16:58', '2019-10-08 09:16:58');
INSERT INTO `admin_operation_log` VALUES ('2075', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"28\",\"title\":\"\\u7528\\u6237\\u7559\\u8a00\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 09:17:47', '2019-10-08 09:17:47');
INSERT INTO `admin_operation_log` VALUES ('2076', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:17:48', '2019-10-08 09:17:48');
INSERT INTO `admin_operation_log` VALUES ('2077', '1', 'admin/auth/menu/54/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:18:02', '2019-10-08 09:18:02');
INSERT INTO `admin_operation_log` VALUES ('2078', '1', 'admin/auth/menu/54', 'PUT', '127.0.0.1', '{\"parent_id\":\"28\",\"title\":\"\\u7528\\u6237\\u7559\\u8a00\",\"icon\":\"fa-bars\",\"uri\":\"\\/messages\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:18:32', '2019-10-08 09:18:32');
INSERT INTO `admin_operation_log` VALUES ('2079', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:18:34', '2019-10-08 09:18:34');
INSERT INTO `admin_operation_log` VALUES ('2080', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"28\",\"title\":\"\\u610f\\u89c1\\u53cd\\u9988\",\"icon\":\"fa-bars\",\"uri\":\"\\/feedback\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 09:19:29', '2019-10-08 09:19:29');
INSERT INTO `admin_operation_log` VALUES ('2081', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:19:31', '2019-10-08 09:19:31');
INSERT INTO `admin_operation_log` VALUES ('2082', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:19:42', '2019-10-08 09:19:42');
INSERT INTO `admin_operation_log` VALUES ('2083', '1', 'admin/auth/menu/43/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:20:44', '2019-10-08 09:20:44');
INSERT INTO `admin_operation_log` VALUES ('2084', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:20:49', '2019-10-08 09:20:49');
INSERT INTO `admin_operation_log` VALUES ('2085', '1', 'admin/auth/menu/45/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:20:55', '2019-10-08 09:20:55');
INSERT INTO `admin_operation_log` VALUES ('2086', '1', 'admin/auth/menu/45', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u516c\\u8bc1\\u5904\",\"icon\":\"iconfont icongongzhengchu\",\"uri\":\"\\/notarys\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:21:43', '2019-10-08 09:21:43');
INSERT INTO `admin_operation_log` VALUES ('2087', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:21:45', '2019-10-08 09:21:45');
INSERT INTO `admin_operation_log` VALUES ('2088', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:22:08', '2019-10-08 09:22:08');
INSERT INTO `admin_operation_log` VALUES ('2089', '1', 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:22:16', '2019-10-08 09:22:16');
INSERT INTO `admin_operation_log` VALUES ('2090', '1', 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"notary\",\"name\":\"notaryManagement\",\"http_method\":[null],\"http_path\":\"\\/laywers*\\r\\n\\/notarys*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:23:02', '2019-10-08 09:23:02');
INSERT INTO `admin_operation_log` VALUES ('2091', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:23:03', '2019-10-08 09:23:03');
INSERT INTO `admin_operation_log` VALUES ('2092', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:23:51', '2019-10-08 09:23:51');
INSERT INTO `admin_operation_log` VALUES ('2093', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"personnel\",\"name\":\"Personnel management\",\"http_method\":[null],\"http_path\":\"\\/personnel\\/laywers*\\r\\n\\/personnel\\/specialists*\\r\\n\\/personnel\\/categorys*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:24:02', '2019-10-08 09:24:02');
INSERT INTO `admin_operation_log` VALUES ('2094', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:24:03', '2019-10-08 09:24:03');
INSERT INTO `admin_operation_log` VALUES ('2095', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:24:10', '2019-10-08 09:24:10');
INSERT INTO `admin_operation_log` VALUES ('2096', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"article\",\"name\":\"Article management\",\"http_method\":[null],\"http_path\":\"\\/articles*\\r\\n\\/questions*\\r\\n\\/collects*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:24:20', '2019-10-08 09:24:20');
INSERT INTO `admin_operation_log` VALUES ('2097', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:24:21', '2019-10-08 09:24:21');
INSERT INTO `admin_operation_log` VALUES ('2098', '1', 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:24:28', '2019-10-08 09:24:28');
INSERT INTO `admin_operation_log` VALUES ('2099', '1', 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"funds\",\"name\":\"Funds management\",\"http_method\":[null],\"http_path\":\"\\/funds*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:24:40', '2019-10-08 09:24:40');
INSERT INTO `admin_operation_log` VALUES ('2100', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:24:41', '2019-10-08 09:24:41');
INSERT INTO `admin_operation_log` VALUES ('2101', '1', 'admin/auth/permissions/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:24:47', '2019-10-08 09:24:47');
INSERT INTO `admin_operation_log` VALUES ('2102', '1', 'admin/auth/permissions/18', 'PUT', '127.0.0.1', '{\"slug\":\"coupon\",\"name\":\"Coupon management\",\"http_method\":[null],\"http_path\":\"\\/coupons*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:24:57', '2019-10-08 09:24:57');
INSERT INTO `admin_operation_log` VALUES ('2103', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:24:59', '2019-10-08 09:24:59');
INSERT INTO `admin_operation_log` VALUES ('2104', '1', 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:25:06', '2019-10-08 09:25:06');
INSERT INTO `admin_operation_log` VALUES ('2105', '1', 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"slug\":\"logs\",\"name\":\"Logs management\",\"http_method\":[null],\"http_path\":\"\\/logs*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:25:17', '2019-10-08 09:25:17');
INSERT INTO `admin_operation_log` VALUES ('2106', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:25:18', '2019-10-08 09:25:18');
INSERT INTO `admin_operation_log` VALUES ('2107', '1', 'admin/auth/permissions/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:25:26', '2019-10-08 09:25:26');
INSERT INTO `admin_operation_log` VALUES ('2108', '1', 'admin/auth/permissions/11', 'PUT', '127.0.0.1', '{\"slug\":\"usercenter\",\"name\":\"Usercenter management\",\"http_method\":[null],\"http_path\":\"\\/usercenter\\/collects*\\r\\n\\/usercenter\\/attentions*\\r\\n\\/usercenter\\/comments*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:25:37', '2019-10-08 09:25:37');
INSERT INTO `admin_operation_log` VALUES ('2109', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:25:38', '2019-10-08 09:25:38');
INSERT INTO `admin_operation_log` VALUES ('2110', '1', 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:25:47', '2019-10-08 09:25:47');
INSERT INTO `admin_operation_log` VALUES ('2111', '1', 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"legal\",\"name\":\"Legal management\",\"http_method\":[null],\"http_path\":\"\\/legals\\/category\\/*\\r\\n\\/legals\\/books\\/*\\r\\n\\/legals\\/columns\\/*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:25:59', '2019-10-08 09:25:59');
INSERT INTO `admin_operation_log` VALUES ('2112', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:26:00', '2019-10-08 09:26:00');
INSERT INTO `admin_operation_log` VALUES ('2113', '1', 'admin/auth/permissions/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:26:09', '2019-10-08 09:26:09');
INSERT INTO `admin_operation_log` VALUES ('2114', '1', 'admin/auth/permissions/13', 'PUT', '127.0.0.1', '{\"slug\":\"answer\",\"name\":\"Answer management\",\"http_method\":[null],\"http_path\":\"\\/answers*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:26:21', '2019-10-08 09:26:21');
INSERT INTO `admin_operation_log` VALUES ('2115', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:26:22', '2019-10-08 09:26:22');
INSERT INTO `admin_operation_log` VALUES ('2116', '1', 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:26:32', '2019-10-08 09:26:32');
INSERT INTO `admin_operation_log` VALUES ('2117', '1', 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"message\",\"name\":\"Message management\",\"http_method\":[null],\"http_path\":\"\\/messages*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:26:42', '2019-10-08 09:26:42');
INSERT INTO `admin_operation_log` VALUES ('2118', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:26:43', '2019-10-08 09:26:43');
INSERT INTO `admin_operation_log` VALUES ('2119', '1', 'admin/auth/permissions/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:26:51', '2019-10-08 09:26:51');
INSERT INTO `admin_operation_log` VALUES ('2120', '1', 'admin/auth/permissions/15', 'PUT', '127.0.0.1', '{\"slug\":\"notice\",\"name\":\"Notice management\",\"http_method\":[null],\"http_path\":\"\\/notices*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:27:00', '2019-10-08 09:27:00');
INSERT INTO `admin_operation_log` VALUES ('2121', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:27:02', '2019-10-08 09:27:02');
INSERT INTO `admin_operation_log` VALUES ('2122', '1', 'admin/auth/permissions/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:27:10', '2019-10-08 09:27:10');
INSERT INTO `admin_operation_log` VALUES ('2123', '1', 'admin/auth/permissions/16', 'PUT', '127.0.0.1', '{\"slug\":\"member\",\"name\":\"Member management\",\"http_method\":[null],\"http_path\":\"\\/members*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:27:21', '2019-10-08 09:27:21');
INSERT INTO `admin_operation_log` VALUES ('2124', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:27:22', '2019-10-08 09:27:22');
INSERT INTO `admin_operation_log` VALUES ('2125', '1', 'admin/auth/permissions/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:27:29', '2019-10-08 09:27:29');
INSERT INTO `admin_operation_log` VALUES ('2126', '1', 'admin/auth/permissions/17', 'PUT', '127.0.0.1', '{\"slug\":\"banner\",\"name\":\"Banner management\",\"http_method\":[null],\"http_path\":\"\\/banners*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:27:40', '2019-10-08 09:27:40');
INSERT INTO `admin_operation_log` VALUES ('2127', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:27:41', '2019-10-08 09:27:41');
INSERT INTO `admin_operation_log` VALUES ('2128', '1', 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:27:48', '2019-10-08 09:27:48');
INSERT INTO `admin_operation_log` VALUES ('2129', '1', 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"notary\",\"name\":\"Notary management\",\"http_method\":[null],\"http_path\":\"\\/laywers*\\r\\n\\/notarys*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:27:58', '2019-10-08 09:27:58');
INSERT INTO `admin_operation_log` VALUES ('2130', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:28:00', '2019-10-08 09:28:00');
INSERT INTO `admin_operation_log` VALUES ('2131', '1', 'admin/auth/permissions/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:28:06', '2019-10-08 09:28:06');
INSERT INTO `admin_operation_log` VALUES ('2132', '1', 'admin/auth/permissions/20', 'PUT', '127.0.0.1', '{\"slug\":\"service\",\"name\":\"Service management\",\"http_method\":[null],\"http_path\":\"\\/service\\/reservation*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 09:28:16', '2019-10-08 09:28:16');
INSERT INTO `admin_operation_log` VALUES ('2133', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:28:18', '2019-10-08 09:28:18');
INSERT INTO `admin_operation_log` VALUES ('2134', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 09:29:08', '2019-10-08 09:29:08');
INSERT INTO `admin_operation_log` VALUES ('2135', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:29:23', '2019-10-08 09:29:23');
INSERT INTO `admin_operation_log` VALUES ('2136', '1', 'admin/auth/menu/43', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 09:29:31', '2019-10-08 09:29:31');
INSERT INTO `admin_operation_log` VALUES ('2137', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:29:34', '2019-10-08 09:29:34');
INSERT INTO `admin_operation_log` VALUES ('2138', '1', 'admin/auth/menu/46/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:30:08', '2019-10-08 09:30:08');
INSERT INTO `admin_operation_log` VALUES ('2139', '1', 'admin/auth/menu/46', 'PUT', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u516c\\u8bc1\\u5904\\u8bc4\\u8bba\",\"icon\":\"iconfont iconpinglun2\",\"uri\":\"\\/notarys\\/comments\",\"roles\":[null],\"permission\":\"notary\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:30:35', '2019-10-08 09:30:35');
INSERT INTO `admin_operation_log` VALUES ('2140', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:30:37', '2019-10-08 09:30:37');
INSERT INTO `admin_operation_log` VALUES ('2141', '1', 'admin/auth/menu/47/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:30:43', '2019-10-08 09:30:43');
INSERT INTO `admin_operation_log` VALUES ('2142', '1', 'admin/auth/menu/47', 'PUT', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u987e\\u95ee\\u5217\\u8868\",\"icon\":\"iconfont iconguwen3\",\"uri\":\"\\/notarys\\/specialists\",\"roles\":[null],\"permission\":\"notary\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:30:56', '2019-10-08 09:30:56');
INSERT INTO `admin_operation_log` VALUES ('2143', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:30:58', '2019-10-08 09:30:58');
INSERT INTO `admin_operation_log` VALUES ('2144', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:31:09', '2019-10-08 09:31:09');
INSERT INTO `admin_operation_log` VALUES ('2145', '1', 'admin/auth/menu/47/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:32:22', '2019-10-08 09:32:22');
INSERT INTO `admin_operation_log` VALUES ('2146', '1', 'admin/auth/menu/47', 'PUT', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u987e\\u95ee\",\"icon\":\"iconfont iconguwen3\",\"uri\":\"\\/notarys\\/specialists\",\"roles\":[null],\"permission\":\"notary\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:32:31', '2019-10-08 09:32:31');
INSERT INTO `admin_operation_log` VALUES ('2147', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:32:33', '2019-10-08 09:32:33');
INSERT INTO `admin_operation_log` VALUES ('2148', '1', 'admin/auth/menu/46/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:32:39', '2019-10-08 09:32:39');
INSERT INTO `admin_operation_log` VALUES ('2149', '1', 'admin/auth/menu/46', 'PUT', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u516c\\u8bc1\\u5904\",\"icon\":\"iconfont iconpinglun2\",\"uri\":\"\\/notarys\\/comments\",\"roles\":[null],\"permission\":\"notary\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:32:46', '2019-10-08 09:32:46');
INSERT INTO `admin_operation_log` VALUES ('2150', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:32:48', '2019-10-08 09:32:48');
INSERT INTO `admin_operation_log` VALUES ('2151', '1', 'admin/auth/menu/46/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:33:02', '2019-10-08 09:33:02');
INSERT INTO `admin_operation_log` VALUES ('2152', '1', 'admin/auth/menu/46', 'PUT', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u8bc4\\u8bba\",\"icon\":\"iconfont iconpinglun2\",\"uri\":\"\\/notarys\\/comments\",\"roles\":[null],\"permission\":\"notary\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:33:14', '2019-10-08 09:33:14');
INSERT INTO `admin_operation_log` VALUES ('2153', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:33:16', '2019-10-08 09:33:16');
INSERT INTO `admin_operation_log` VALUES ('2154', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:33:46', '2019-10-08 09:33:46');
INSERT INTO `admin_operation_log` VALUES ('2155', '1', 'admin/auth/menu/38/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:34:04', '2019-10-08 09:34:04');
INSERT INTO `admin_operation_log` VALUES ('2156', '1', 'admin/auth/menu/38', 'PUT', '127.0.0.1', '{\"parent_id\":\"36\",\"title\":\"\\u4f18\\u60e0\\u5238\\u5217\\u8868\",\"icon\":\"iconfont iconyouhuiquanliebiao1\",\"uri\":\"\\/coupons\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:34:17', '2019-10-08 09:34:17');
INSERT INTO `admin_operation_log` VALUES ('2157', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:34:18', '2019-10-08 09:34:18');
INSERT INTO `admin_operation_log` VALUES ('2158', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:34:30', '2019-10-08 09:34:30');
INSERT INTO `admin_operation_log` VALUES ('2159', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:35:20', '2019-10-08 09:35:20');
INSERT INTO `admin_operation_log` VALUES ('2160', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:35:42', '2019-10-08 09:35:42');
INSERT INTO `admin_operation_log` VALUES ('2161', '1', 'admin/auth/menu/33/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:35:50', '2019-10-08 09:35:50');
INSERT INTO `admin_operation_log` VALUES ('2162', '1', 'admin/auth/menu/33', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u64ad\\u56fe\",\"icon\":\"iconfont iconlunbotuguanli\",\"uri\":\"\\/banners\",\"roles\":[null],\"permission\":\"banner\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:35:56', '2019-10-08 09:35:56');
INSERT INTO `admin_operation_log` VALUES ('2163', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:35:58', '2019-10-08 09:35:58');
INSERT INTO `admin_operation_log` VALUES ('2164', '1', 'admin/auth/menu/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:36:08', '2019-10-08 09:36:08');
INSERT INTO `admin_operation_log` VALUES ('2165', '1', 'admin/auth/menu/30', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d88\\u606f\",\"icon\":\"iconfont iconxiaoxi\",\"uri\":\"\\/notices\",\"roles\":[null],\"permission\":\"notice\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:36:14', '2019-10-08 09:36:14');
INSERT INTO `admin_operation_log` VALUES ('2166', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:36:16', '2019-10-08 09:36:16');
INSERT INTO `admin_operation_log` VALUES ('2167', '1', 'admin/auth/menu/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:36:25', '2019-10-08 09:36:25');
INSERT INTO `admin_operation_log` VALUES ('2168', '1', 'admin/auth/menu/25', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7b54\\u9898\",\"icon\":\"iconfont icondati1\",\"uri\":\"\\/answers\",\"roles\":[null],\"permission\":\"answer\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:36:32', '2019-10-08 09:36:32');
INSERT INTO `admin_operation_log` VALUES ('2169', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:36:34', '2019-10-08 09:36:34');
INSERT INTO `admin_operation_log` VALUES ('2170', '1', 'admin/auth/menu/35/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:36:45', '2019-10-08 09:36:45');
INSERT INTO `admin_operation_log` VALUES ('2171', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:36:55', '2019-10-08 09:36:55');
INSERT INTO `admin_operation_log` VALUES ('2172', '1', 'admin/auth/menu/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:37:00', '2019-10-08 09:37:00');
INSERT INTO `admin_operation_log` VALUES ('2173', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:37:10', '2019-10-08 09:37:10');
INSERT INTO `admin_operation_log` VALUES ('2174', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:37:17', '2019-10-08 09:37:17');
INSERT INTO `admin_operation_log` VALUES ('2175', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\",\"icon\":\"iconfont iconyonghuguanli4\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:37:24', '2019-10-08 09:37:24');
INSERT INTO `admin_operation_log` VALUES ('2176', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:37:27', '2019-10-08 09:37:27');
INSERT INTO `admin_operation_log` VALUES ('2177', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:37:40', '2019-10-08 09:37:40');
INSERT INTO `admin_operation_log` VALUES ('2178', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d22\\u5bcc\",\"icon\":\"iconfont iconzhanghuyueguanli\",\"uri\":\"\\/funds\",\"roles\":[null],\"permission\":null,\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:37:47', '2019-10-08 09:37:47');
INSERT INTO `admin_operation_log` VALUES ('2179', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:37:49', '2019-10-08 09:37:49');
INSERT INTO `admin_operation_log` VALUES ('2180', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:37:56', '2019-10-08 09:37:56');
INSERT INTO `admin_operation_log` VALUES ('2181', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u4f59\\u989d\",\"icon\":\"iconfont iconyue\",\"uri\":\"\\/funds\\/balances\",\"roles\":[null],\"permission\":null,\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:38:04', '2019-10-08 09:38:04');
INSERT INTO `admin_operation_log` VALUES ('2182', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:38:06', '2019-10-08 09:38:06');
INSERT INTO `admin_operation_log` VALUES ('2183', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:38:14', '2019-10-08 09:38:14');
INSERT INTO `admin_operation_log` VALUES ('2184', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u6cd5\\u5b9d\",\"icon\":\"iconfont iconhuobi\",\"uri\":\"\\/funds\\/ingots\",\"roles\":[null],\"permission\":null,\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:38:21', '2019-10-08 09:38:21');
INSERT INTO `admin_operation_log` VALUES ('2185', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:38:24', '2019-10-08 09:38:24');
INSERT INTO `admin_operation_log` VALUES ('2186', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:38:40', '2019-10-08 09:38:40');
INSERT INTO `admin_operation_log` VALUES ('2187', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\",\"icon\":\"iconfont iconsvgwrite\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:38:46', '2019-10-08 09:38:46');
INSERT INTO `admin_operation_log` VALUES ('2188', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:38:49', '2019-10-08 09:38:49');
INSERT INTO `admin_operation_log` VALUES ('2189', '1', 'admin/auth/menu/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:38:57', '2019-10-08 09:38:57');
INSERT INTO `admin_operation_log` VALUES ('2190', '1', 'admin/auth/menu/29', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5f8b\\u5e08\",\"icon\":\"iconfont iconlvshi\",\"uri\":\"\\/personnel\\/laywers\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:39:06', '2019-10-08 09:39:06');
INSERT INTO `admin_operation_log` VALUES ('2191', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:39:08', '2019-10-08 09:39:08');
INSERT INTO `admin_operation_log` VALUES ('2192', '1', 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:39:16', '2019-10-08 09:39:16');
INSERT INTO `admin_operation_log` VALUES ('2193', '1', 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u4e13\\u5bb6\",\"icon\":\"iconfont iconzhuanjiaguanli\",\"uri\":\"\\/personnel\\/specialists\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:39:25', '2019-10-08 09:39:25');
INSERT INTO `admin_operation_log` VALUES ('2194', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:39:28', '2019-10-08 09:39:28');
INSERT INTO `admin_operation_log` VALUES ('2195', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:39:36', '2019-10-08 09:39:36');
INSERT INTO `admin_operation_log` VALUES ('2196', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\",\"icon\":\"iconfont iconrenyuanguanli\",\"uri\":\"\\/personnel\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:39:44', '2019-10-08 09:39:44');
INSERT INTO `admin_operation_log` VALUES ('2197', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:39:46', '2019-10-08 09:39:46');
INSERT INTO `admin_operation_log` VALUES ('2198', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:39:55', '2019-10-08 09:39:55');
INSERT INTO `admin_operation_log` VALUES ('2199', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"iconfont iconxitongguanli3\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:40:05', '2019-10-08 09:40:05');
INSERT INTO `admin_operation_log` VALUES ('2200', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:40:07', '2019-10-08 09:40:07');
INSERT INTO `admin_operation_log` VALUES ('2201', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:40:16', '2019-10-08 09:40:16');
INSERT INTO `admin_operation_log` VALUES ('2202', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:40:55', '2019-10-08 09:40:55');
INSERT INTO `admin_operation_log` VALUES ('2203', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:41:04', '2019-10-08 09:41:04');
INSERT INTO `admin_operation_log` VALUES ('2204', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\",\"icon\":\"iconfont iconyonghuguanli4\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:41:27', '2019-10-08 09:41:27');
INSERT INTO `admin_operation_log` VALUES ('2205', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:41:28', '2019-10-08 09:41:28');
INSERT INTO `admin_operation_log` VALUES ('2206', '1', 'admin/auth/menu/35/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:42:21', '2019-10-08 09:42:21');
INSERT INTO `admin_operation_log` VALUES ('2207', '1', 'admin/auth/menu/35', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6240\\u6709\\u7528\\u6237\",\"icon\":\"iconfont iconyonghu\",\"uri\":\"\\/usercenter\\/lists\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:42:33', '2019-10-08 09:42:33');
INSERT INTO `admin_operation_log` VALUES ('2208', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:42:35', '2019-10-08 09:42:35');
INSERT INTO `admin_operation_log` VALUES ('2209', '1', 'admin/auth/menu/35/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:42:42', '2019-10-08 09:42:42');
INSERT INTO `admin_operation_log` VALUES ('2210', '1', 'admin/auth/menu/35', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6240\\u6709\\u7528\\u6237\",\"icon\":\"iconfont iconyonghu\",\"uri\":\"\\/personnel\\/lists\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:43:25', '2019-10-08 09:43:25');
INSERT INTO `admin_operation_log` VALUES ('2211', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:43:27', '2019-10-08 09:43:27');
INSERT INTO `admin_operation_log` VALUES ('2212', '1', 'admin/auth/menu/42/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:43:37', '2019-10-08 09:43:37');
INSERT INTO `admin_operation_log` VALUES ('2213', '1', 'admin/auth/menu/42', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u7b7e\\u5230\",\"icon\":\"iconfont iconqiandao\",\"uri\":\"\\/personnel\\/signs\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:43:51', '2019-10-08 09:43:51');
INSERT INTO `admin_operation_log` VALUES ('2214', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:43:53', '2019-10-08 09:43:53');
INSERT INTO `admin_operation_log` VALUES ('2215', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:44:07', '2019-10-08 09:44:07');
INSERT INTO `admin_operation_log` VALUES ('2216', '1', 'admin/auth/menu/50/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:44:55', '2019-10-08 09:44:55');
INSERT INTO `admin_operation_log` VALUES ('2217', '1', 'admin/auth/menu/50', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u670d\\u52a1\\u9884\\u7ea6\",\"icon\":\"iconfont iconfuwuyuyue1\",\"uri\":\"\\/personnel\\/reservations\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:46:31', '2019-10-08 09:46:31');
INSERT INTO `admin_operation_log` VALUES ('2218', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:46:32', '2019-10-08 09:46:32');
INSERT INTO `admin_operation_log` VALUES ('2219', '1', 'admin/auth/menu/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:46:50', '2019-10-08 09:46:50');
INSERT INTO `admin_operation_log` VALUES ('2220', '1', 'admin/auth/menu/32', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"VIP\\u901a\\u9053\",\"icon\":\"iconfont iconhuaban\",\"uri\":\"\\/personnel\\/members\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:47:37', '2019-10-08 09:47:37');
INSERT INTO `admin_operation_log` VALUES ('2221', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:47:39', '2019-10-08 09:47:39');
INSERT INTO `admin_operation_log` VALUES ('2222', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:49:00', '2019-10-08 09:49:00');
INSERT INTO `admin_operation_log` VALUES ('2223', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:51:31', '2019-10-08 09:51:31');
INSERT INTO `admin_operation_log` VALUES ('2224', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2019-10-08 09:52:44', '2019-10-08 09:52:44');
INSERT INTO `admin_operation_log` VALUES ('2225', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:53:56', '2019-10-08 09:53:56');
INSERT INTO `admin_operation_log` VALUES ('2226', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-10-08 09:55:22', '2019-10-08 09:55:22');
INSERT INTO `admin_operation_log` VALUES ('2227', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-10-08 09:56:24', '2019-10-08 09:56:24');
INSERT INTO `admin_operation_log` VALUES ('2228', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '[]', '2019-10-08 09:57:20', '2019-10-08 09:57:20');
INSERT INTO `admin_operation_log` VALUES ('2229', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:58:05', '2019-10-08 09:58:05');
INSERT INTO `admin_operation_log` VALUES ('2230', '1', 'admin/auth/menu/34/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:58:11', '2019-10-08 09:58:11');
INSERT INTO `admin_operation_log` VALUES ('2231', '1', 'admin/auth/menu/34', 'PUT', '127.0.0.1', '{\"parent_id\":\"29\",\"title\":\"\\u4e1a\\u52a1\\u5206\\u7c7b\",\"icon\":\"iconfont iconicon-ywfl\",\"uri\":\"\\/personnel\\/categorys\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 09:58:32', '2019-10-08 09:58:32');
INSERT INTO `admin_operation_log` VALUES ('2232', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:58:33', '2019-10-08 09:58:33');
INSERT INTO `admin_operation_log` VALUES ('2233', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:58:41', '2019-10-08 09:58:41');
INSERT INTO `admin_operation_log` VALUES ('2234', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:58:51', '2019-10-08 09:58:51');
INSERT INTO `admin_operation_log` VALUES ('2235', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 09:59:02', '2019-10-08 09:59:02');
INSERT INTO `admin_operation_log` VALUES ('2236', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"29\",\"title\":\"\\u6240\\u6709\\u5f8b\\u5e08\",\"icon\":\"fa-bars\",\"uri\":\"\\/personnel\\/laywers\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 09:59:46', '2019-10-08 09:59:46');
INSERT INTO `admin_operation_log` VALUES ('2237', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:59:47', '2019-10-08 09:59:47');
INSERT INTO `admin_operation_log` VALUES ('2238', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 09:59:56', '2019-10-08 09:59:56');
INSERT INTO `admin_operation_log` VALUES ('2239', '1', 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:01:41', '2019-10-08 10:01:41');
INSERT INTO `admin_operation_log` VALUES ('2240', '1', 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6cd5\\u5f8b\\u5b9d\\u5178\",\"icon\":\"iconfont iconfalv\",\"uri\":\"\\/articles\\/legals\",\"roles\":[null],\"permission\":\"article\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:02:16', '2019-10-08 10:02:16');
INSERT INTO `admin_operation_log` VALUES ('2241', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:02:18', '2019-10-08 10:02:18');
INSERT INTO `admin_operation_log` VALUES ('2242', '1', 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:03:02', '2019-10-08 10:03:02');
INSERT INTO `admin_operation_log` VALUES ('2243', '1', 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"iconfont iconleimupinleifenleileibie\",\"uri\":\"\\/articles\\/legals\\/categorys\",\"roles\":[null],\"permission\":\"article\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:03:16', '2019-10-08 10:03:16');
INSERT INTO `admin_operation_log` VALUES ('2244', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:03:18', '2019-10-08 10:03:18');
INSERT INTO `admin_operation_log` VALUES ('2245', '1', 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:03:26', '2019-10-08 10:03:26');
INSERT INTO `admin_operation_log` VALUES ('2246', '1', 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"19\",\"title\":\"\\u5b9d\\u5178\",\"icon\":\"iconfont iconbaodian1\",\"uri\":\"\\/articles\\/legals\\/books\",\"roles\":[null],\"permission\":\"article\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:03:38', '2019-10-08 10:03:38');
INSERT INTO `admin_operation_log` VALUES ('2247', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:03:42', '2019-10-08 10:03:42');
INSERT INTO `admin_operation_log` VALUES ('2248', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:03:56', '2019-10-08 10:03:56');
INSERT INTO `admin_operation_log` VALUES ('2249', '1', 'admin/auth/menu/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:04:40', '2019-10-08 10:04:40');
INSERT INTO `admin_operation_log` VALUES ('2250', '1', 'admin/auth/menu/26', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u9898\\u5e93\",\"icon\":\"iconfont icontiku1\",\"uri\":\"\\/articles\\/answers\\/lists\",\"roles\":[null],\"permission\":\"article\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:05:33', '2019-10-08 10:05:33');
INSERT INTO `admin_operation_log` VALUES ('2251', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:05:34', '2019-10-08 10:05:34');
INSERT INTO `admin_operation_log` VALUES ('2252', '1', 'admin/auth/menu/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:05:51', '2019-10-08 10:05:51');
INSERT INTO `admin_operation_log` VALUES ('2253', '1', 'admin/auth/menu/27', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u6bcf\\u65e5\\u7b54\\u9898\",\"icon\":\"iconfont icondati\",\"uri\":\"\\/personnel\\/answers\\/records\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:06:37', '2019-10-08 10:06:37');
INSERT INTO `admin_operation_log` VALUES ('2254', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:06:38', '2019-10-08 10:06:38');
INSERT INTO `admin_operation_log` VALUES ('2255', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:08:07', '2019-10-08 10:08:07');
INSERT INTO `admin_operation_log` VALUES ('2256', '1', 'admin/auth/menu/25', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 10:08:21', '2019-10-08 10:08:21');
INSERT INTO `admin_operation_log` VALUES ('2257', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:08:24', '2019-10-08 10:08:24');
INSERT INTO `admin_operation_log` VALUES ('2258', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:08:28', '2019-10-08 10:08:28');
INSERT INTO `admin_operation_log` VALUES ('2259', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:19', '2019-10-08 10:10:19');
INSERT INTO `admin_operation_log` VALUES ('2260', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:23', '2019-10-08 10:10:23');
INSERT INTO `admin_operation_log` VALUES ('2261', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:27', '2019-10-08 10:10:27');
INSERT INTO `admin_operation_log` VALUES ('2262', '1', 'admin/personnel/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:31', '2019-10-08 10:10:31');
INSERT INTO `admin_operation_log` VALUES ('2263', '1', 'admin/personnel/signs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:35', '2019-10-08 10:10:35');
INSERT INTO `admin_operation_log` VALUES ('2264', '1', 'admin/personnel/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:40', '2019-10-08 10:10:40');
INSERT INTO `admin_operation_log` VALUES ('2265', '1', 'admin/personnel/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:46', '2019-10-08 10:10:46');
INSERT INTO `admin_operation_log` VALUES ('2266', '1', 'admin/personnel/reservations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:10:51', '2019-10-08 10:10:51');
INSERT INTO `admin_operation_log` VALUES ('2267', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:11:00', '2019-10-08 10:11:00');
INSERT INTO `admin_operation_log` VALUES ('2268', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:11:04', '2019-10-08 10:11:04');
INSERT INTO `admin_operation_log` VALUES ('2269', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '[]', '2019-10-08 10:13:27', '2019-10-08 10:13:27');
INSERT INTO `admin_operation_log` VALUES ('2270', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:13:45', '2019-10-08 10:13:45');
INSERT INTO `admin_operation_log` VALUES ('2271', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:13:49', '2019-10-08 10:13:49');
INSERT INTO `admin_operation_log` VALUES ('2272', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:13:56', '2019-10-08 10:13:56');
INSERT INTO `admin_operation_log` VALUES ('2273', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:14:01', '2019-10-08 10:14:01');
INSERT INTO `admin_operation_log` VALUES ('2274', '1', 'admin/funds/ingots', 'GET', '127.0.0.1', '[]', '2019-10-08 10:14:47', '2019-10-08 10:14:47');
INSERT INTO `admin_operation_log` VALUES ('2275', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:15:56', '2019-10-08 10:15:56');
INSERT INTO `admin_operation_log` VALUES ('2276', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:16:02', '2019-10-08 10:16:02');
INSERT INTO `admin_operation_log` VALUES ('2277', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:16:13', '2019-10-08 10:16:13');
INSERT INTO `admin_operation_log` VALUES ('2278', '1', 'admin/coupons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:17:46', '2019-10-08 10:17:46');
INSERT INTO `admin_operation_log` VALUES ('2279', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:23:48', '2019-10-08 10:23:48');
INSERT INTO `admin_operation_log` VALUES ('2280', '1', 'admin/auth/menu/55/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:24:04', '2019-10-08 10:24:04');
INSERT INTO `admin_operation_log` VALUES ('2281', '1', 'admin/auth/menu/55', 'PUT', '127.0.0.1', '{\"parent_id\":\"28\",\"title\":\"\\u610f\\u89c1\\u53cd\\u9988\",\"icon\":\"iconfont iconyijianfankui2\",\"uri\":\"\\/feedback\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:24:20', '2019-10-08 10:24:20');
INSERT INTO `admin_operation_log` VALUES ('2282', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:24:22', '2019-10-08 10:24:22');
INSERT INTO `admin_operation_log` VALUES ('2283', '1', 'admin/auth/menu/54/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:24:33', '2019-10-08 10:24:33');
INSERT INTO `admin_operation_log` VALUES ('2284', '1', 'admin/auth/menu/54', 'PUT', '127.0.0.1', '{\"parent_id\":\"28\",\"title\":\"\\u7528\\u6237\\u7559\\u8a00\",\"icon\":\"iconfont iconyonghuliuyan1\",\"uri\":\"\\/messages\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:24:47', '2019-10-08 10:24:47');
INSERT INTO `admin_operation_log` VALUES ('2285', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:24:48', '2019-10-08 10:24:48');
INSERT INTO `admin_operation_log` VALUES ('2286', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:25:02', '2019-10-08 10:25:02');
INSERT INTO `admin_operation_log` VALUES ('2287', '1', 'admin/auth/menu/55/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:25:32', '2019-10-08 10:25:32');
INSERT INTO `admin_operation_log` VALUES ('2288', '1', 'admin/auth/menu/55', 'PUT', '127.0.0.1', '{\"parent_id\":\"28\",\"title\":\"\\u610f\\u89c1\\u53cd\\u9988\",\"icon\":\"iconfont iconyijianfankui3\",\"uri\":\"\\/feedback\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 10:25:39', '2019-10-08 10:25:39');
INSERT INTO `admin_operation_log` VALUES ('2289', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:25:41', '2019-10-08 10:25:41');
INSERT INTO `admin_operation_log` VALUES ('2290', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:25:51', '2019-10-08 10:25:51');
INSERT INTO `admin_operation_log` VALUES ('2291', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:26:44', '2019-10-08 10:26:44');
INSERT INTO `admin_operation_log` VALUES ('2292', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:27:04', '2019-10-08 10:27:04');
INSERT INTO `admin_operation_log` VALUES ('2293', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:27:08', '2019-10-08 10:27:08');
INSERT INTO `admin_operation_log` VALUES ('2294', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"\\u7528\\u6237\\u4f59\\u989d\",\"icon\":\"fa-bars\",\"uri\":\"\\/funds\\/balances\",\"roles\":[null],\"permission\":\"funds\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 10:28:42', '2019-10-08 10:28:42');
INSERT INTO `admin_operation_log` VALUES ('2295', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:28:43', '2019-10-08 10:28:43');
INSERT INTO `admin_operation_log` VALUES ('2296', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u7528\\u6237\\u6cd5\\u5b9d\",\"icon\":\"fa-bars\",\"uri\":\"\\/funds\\/ingots\",\"roles\":[null],\"permission\":\"funds\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 10:29:38', '2019-10-08 10:29:38');
INSERT INTO `admin_operation_log` VALUES ('2297', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:29:40', '2019-10-08 10:29:40');
INSERT INTO `admin_operation_log` VALUES ('2298', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:32:54', '2019-10-08 10:32:54');
INSERT INTO `admin_operation_log` VALUES ('2299', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"\\u6d41\\u6c34\",\"icon\":\"fa-bars\",\"uri\":\"\\/funds\\/balances\\/logs\",\"roles\":[null],\"permission\":\"funds\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 10:36:38', '2019-10-08 10:36:38');
INSERT INTO `admin_operation_log` VALUES ('2300', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:36:40', '2019-10-08 10:36:40');
INSERT INTO `admin_operation_log` VALUES ('2301', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u6d41\\u6c34\",\"icon\":\"fa-bars\",\"uri\":\"\\/funds\\/ingots\\/logs\",\"roles\":[null],\"permission\":\"funds\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 10:37:10', '2019-10-08 10:37:10');
INSERT INTO `admin_operation_log` VALUES ('2302', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:37:12', '2019-10-08 10:37:12');
INSERT INTO `admin_operation_log` VALUES ('2303', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 10:37:34', '2019-10-08 10:37:34');
INSERT INTO `admin_operation_log` VALUES ('2304', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:38:45', '2019-10-08 10:38:45');
INSERT INTO `admin_operation_log` VALUES ('2305', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:38:57', '2019-10-08 10:38:57');
INSERT INTO `admin_operation_log` VALUES ('2306', '1', 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"personnel\",\"name\":\"Personnel management\",\"http_method\":[null],\"http_path\":\"\\/personnel\\/laywers*\\r\\n\\/personnel\\/specialists*\\r\\n\\/personnel\\/categorys*\\r\\n\\/personnel\\/answers\\/records*\\r\\n\\/personnel\\/lists*\\r\\n\\/personnel\\/signs*\\r\\n\\/personnel\\/members*\\r\\n\\/personnel\\/reservations*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 10:41:45', '2019-10-08 10:41:45');
INSERT INTO `admin_operation_log` VALUES ('2307', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 10:41:46', '2019-10-08 10:41:46');
INSERT INTO `admin_operation_log` VALUES ('2308', '1', 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:41:56', '2019-10-08 10:41:56');
INSERT INTO `admin_operation_log` VALUES ('2309', '1', 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"article\",\"name\":\"Article management\",\"http_method\":[null],\"http_path\":\"\\/questions*\\r\\n\\/articles*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 10:44:02', '2019-10-08 10:44:02');
INSERT INTO `admin_operation_log` VALUES ('2310', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 10:44:03', '2019-10-08 10:44:03');
INSERT INTO `admin_operation_log` VALUES ('2311', '1', 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:44:30', '2019-10-08 10:44:30');
INSERT INTO `admin_operation_log` VALUES ('2312', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:44:38', '2019-10-08 10:44:38');
INSERT INTO `admin_operation_log` VALUES ('2313', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"16\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-10-08 10:45:43', '2019-10-08 10:45:43');
INSERT INTO `admin_operation_log` VALUES ('2314', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:45:45', '2019-10-08 10:45:45');
INSERT INTO `admin_operation_log` VALUES ('2315', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"20\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-10-08 10:46:11', '2019-10-08 10:46:11');
INSERT INTO `admin_operation_log` VALUES ('2316', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:46:13', '2019-10-08 10:46:13');
INSERT INTO `admin_operation_log` VALUES ('2317', '1', 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 10:46:19', '2019-10-08 10:46:19');
INSERT INTO `admin_operation_log` VALUES ('2318', '1', 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"notary\",\"name\":\"Notary management\",\"http_method\":[null],\"http_path\":\"\\/notarys*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 10:46:26', '2019-10-08 10:46:26');
INSERT INTO `admin_operation_log` VALUES ('2319', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 10:46:28', '2019-10-08 10:46:28');
INSERT INTO `admin_operation_log` VALUES ('2320', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 10:47:11', '2019-10-08 10:47:11');
INSERT INTO `admin_operation_log` VALUES ('2321', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-10-08 11:10:29', '2019-10-08 11:10:29');
INSERT INTO `admin_operation_log` VALUES ('2322', '1', 'admin/messages/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:11:02', '2019-10-08 11:11:02');
INSERT INTO `admin_operation_log` VALUES ('2323', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:11:07', '2019-10-08 11:11:07');
INSERT INTO `admin_operation_log` VALUES ('2324', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-10-08 11:13:43', '2019-10-08 11:13:43');
INSERT INTO `admin_operation_log` VALUES ('2325', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-10-08 11:14:56', '2019-10-08 11:14:56');
INSERT INTO `admin_operation_log` VALUES ('2326', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-10-08 11:15:33', '2019-10-08 11:15:33');
INSERT INTO `admin_operation_log` VALUES ('2327', '1', 'admin/feedback', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:15:46', '2019-10-08 11:15:46');
INSERT INTO `admin_operation_log` VALUES ('2328', '1', 'admin/feedback', 'GET', '127.0.0.1', '[]', '2019-10-08 11:16:43', '2019-10-08 11:16:43');
INSERT INTO `admin_operation_log` VALUES ('2329', '1', 'admin/feedback', 'GET', '127.0.0.1', '[]', '2019-10-08 11:18:15', '2019-10-08 11:18:15');
INSERT INTO `admin_operation_log` VALUES ('2330', '1', 'admin/feedback', 'GET', '127.0.0.1', '[]', '2019-10-08 11:18:50', '2019-10-08 11:18:50');
INSERT INTO `admin_operation_log` VALUES ('2331', '1', 'admin/feedback', 'GET', '127.0.0.1', '[]', '2019-10-08 11:22:46', '2019-10-08 11:22:46');
INSERT INTO `admin_operation_log` VALUES ('2332', '1', 'admin/feedback', 'GET', '127.0.0.1', '[]', '2019-10-08 11:22:57', '2019-10-08 11:22:57');
INSERT INTO `admin_operation_log` VALUES ('2333', '1', 'admin/feedback', 'GET', '127.0.0.1', '[]', '2019-10-08 11:23:37', '2019-10-08 11:23:37');
INSERT INTO `admin_operation_log` VALUES ('2334', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:39:51', '2019-10-08 11:39:51');
INSERT INTO `admin_operation_log` VALUES ('2335', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-10-08 11:40:21', '2019-10-08 11:40:21');
INSERT INTO `admin_operation_log` VALUES ('2336', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:40:30', '2019-10-08 11:40:30');
INSERT INTO `admin_operation_log` VALUES ('2337', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:40:52', '2019-10-08 11:40:52');
INSERT INTO `admin_operation_log` VALUES ('2338', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\",\"icon\":\"iconfont iconshangpin\",\"uri\":\"\\/goods\",\"roles\":[null],\"permission\":null,\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\"}', '2019-10-08 11:44:21', '2019-10-08 11:44:21');
INSERT INTO `admin_operation_log` VALUES ('2339', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:44:23', '2019-10-08 11:44:23');
INSERT INTO `admin_operation_log` VALUES ('2340', '1', 'admin/auth/menu/61/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:44:33', '2019-10-08 11:44:33');
INSERT INTO `admin_operation_log` VALUES ('2341', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:44:39', '2019-10-08 11:44:39');
INSERT INTO `admin_operation_log` VALUES ('2342', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:44:45', '2019-10-08 11:44:45');
INSERT INTO `admin_operation_log` VALUES ('2343', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"goods\",\"name\":\"Goods management\",\"http_method\":[null],\"http_path\":\"\\/goods*\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-08 11:45:08', '2019-10-08 11:45:08');
INSERT INTO `admin_operation_log` VALUES ('2344', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-08 11:45:09', '2019-10-08 11:45:09');
INSERT INTO `admin_operation_log` VALUES ('2345', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:45:19', '2019-10-08 11:45:19');
INSERT INTO `admin_operation_log` VALUES ('2346', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:45:31', '2019-10-08 11:45:31');
INSERT INTO `admin_operation_log` VALUES ('2347', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:46:33', '2019-10-08 11:46:33');
INSERT INTO `admin_operation_log` VALUES ('2348', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:46:50', '2019-10-08 11:46:50');
INSERT INTO `admin_operation_log` VALUES ('2349', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:47:23', '2019-10-08 11:47:23');
INSERT INTO `admin_operation_log` VALUES ('2350', '1', 'admin/auth/menu/59/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:51:55', '2019-10-08 11:51:55');
INSERT INTO `admin_operation_log` VALUES ('2351', '1', 'admin/auth/menu/59', 'PUT', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"\\u4f59\\u989d\\u6d41\\u6c34\",\"icon\":\"iconfont iconliushui2\",\"uri\":\"\\/funds\\/balances\\/logs\",\"roles\":[null],\"permission\":\"funds\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 11:52:04', '2019-10-08 11:52:04');
INSERT INTO `admin_operation_log` VALUES ('2352', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:52:06', '2019-10-08 11:52:06');
INSERT INTO `admin_operation_log` VALUES ('2353', '1', 'admin/auth/menu/60/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:52:13', '2019-10-08 11:52:13');
INSERT INTO `admin_operation_log` VALUES ('2354', '1', 'admin/auth/menu/60', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u6cd5\\u5b9d\\u6d41\\u6c34\",\"icon\":\"iconfont iconliushui2\",\"uri\":\"\\/funds\\/ingots\\/logs\",\"roles\":[null],\"permission\":\"funds\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-08 11:52:23', '2019-10-08 11:52:23');
INSERT INTO `admin_operation_log` VALUES ('2355', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:52:25', '2019-10-08 11:52:25');
INSERT INTO `admin_operation_log` VALUES ('2356', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-08 11:52:33', '2019-10-08 11:52:33');
INSERT INTO `admin_operation_log` VALUES ('2357', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:52:54', '2019-10-08 11:52:54');
INSERT INTO `admin_operation_log` VALUES ('2358', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 11:54:32', '2019-10-08 11:54:32');
INSERT INTO `admin_operation_log` VALUES ('2359', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 11:55:39', '2019-10-08 11:55:39');
INSERT INTO `admin_operation_log` VALUES ('2360', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 11:56:10', '2019-10-08 11:56:10');
INSERT INTO `admin_operation_log` VALUES ('2361', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 11:56:39', '2019-10-08 11:56:39');
INSERT INTO `admin_operation_log` VALUES ('2362', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 11:57:47', '2019-10-08 11:57:47');
INSERT INTO `admin_operation_log` VALUES ('2363', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:47:59', '2019-10-08 13:47:59');
INSERT INTO `admin_operation_log` VALUES ('2364', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:53:10', '2019-10-08 13:53:10');
INSERT INTO `admin_operation_log` VALUES ('2365', '1', 'admin/goods', 'POST', '127.0.0.1', '{\"goods_name\":\"\\u4e50\\u6276\\u9886\\u5dfe\",\"exchange_price\":\"10\",\"stock\":\"10\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/goods\"}', '2019-10-08 13:54:18', '2019-10-08 13:54:18');
INSERT INTO `admin_operation_log` VALUES ('2366', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 13:54:19', '2019-10-08 13:54:19');
INSERT INTO `admin_operation_log` VALUES ('2367', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:55:28', '2019-10-08 13:55:28');
INSERT INTO `admin_operation_log` VALUES ('2368', '1', 'admin/goods/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:55:44', '2019-10-08 13:55:44');
INSERT INTO `admin_operation_log` VALUES ('2369', '1', 'admin/goods/2', 'PUT', '127.0.0.1', '{\"goods_name\":\"\\u4e50\\u6276\\u9886\\u5dfe \\u7ea2\\u8272 \\u4e2d\\u7801  400*300\",\"exchange_price\":\"10\",\"stock\":\"10\",\"_token\":\"llJhT7iROpGZKuLBe1CVQPa1eFnTgO9hbKY4lJSO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/goods\"}', '2019-10-08 13:56:38', '2019-10-08 13:56:38');
INSERT INTO `admin_operation_log` VALUES ('2370', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 13:56:39', '2019-10-08 13:56:39');
INSERT INTO `admin_operation_log` VALUES ('2371', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:57:41', '2019-10-08 13:57:41');
INSERT INTO `admin_operation_log` VALUES ('2372', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 13:57:43', '2019-10-08 13:57:43');
INSERT INTO `admin_operation_log` VALUES ('2373', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:59:42', '2019-10-08 13:59:42');
INSERT INTO `admin_operation_log` VALUES ('2374', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-08 13:59:44', '2019-10-08 13:59:44');
INSERT INTO `admin_operation_log` VALUES ('2375', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:59:49', '2019-10-08 13:59:49');
INSERT INTO `admin_operation_log` VALUES ('2376', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 13:59:56', '2019-10-08 13:59:56');
INSERT INTO `admin_operation_log` VALUES ('2377', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '[]', '2019-10-08 13:59:57', '2019-10-08 13:59:57');
INSERT INTO `admin_operation_log` VALUES ('2378', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:00:15', '2019-10-08 14:00:15');
INSERT INTO `admin_operation_log` VALUES ('2379', '1', 'admin/funds/balances', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:00:30', '2019-10-08 14:00:30');
INSERT INTO `admin_operation_log` VALUES ('2380', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:00:43', '2019-10-08 14:00:43');
INSERT INTO `admin_operation_log` VALUES ('2381', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:05:15', '2019-10-08 14:05:15');
INSERT INTO `admin_operation_log` VALUES ('2382', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:07:13', '2019-10-08 14:07:13');
INSERT INTO `admin_operation_log` VALUES ('2383', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:07:45', '2019-10-08 14:07:45');
INSERT INTO `admin_operation_log` VALUES ('2384', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:09:37', '2019-10-08 14:09:37');
INSERT INTO `admin_operation_log` VALUES ('2385', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:10:08', '2019-10-08 14:10:08');
INSERT INTO `admin_operation_log` VALUES ('2386', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 14:10:59', '2019-10-08 14:10:59');
INSERT INTO `admin_operation_log` VALUES ('2387', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 14:11:39', '2019-10-08 14:11:39');
INSERT INTO `admin_operation_log` VALUES ('2388', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 14:12:21', '2019-10-08 14:12:21');
INSERT INTO `admin_operation_log` VALUES ('2389', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 14:12:38', '2019-10-08 14:12:38');
INSERT INTO `admin_operation_log` VALUES ('2390', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 14:13:05', '2019-10-08 14:13:05');
INSERT INTO `admin_operation_log` VALUES ('2391', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 14:13:29', '2019-10-08 14:13:29');
INSERT INTO `admin_operation_log` VALUES ('2392', '1', 'admin/funds/balances/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 14:15:34', '2019-10-08 14:15:34');
INSERT INTO `admin_operation_log` VALUES ('2393', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:16:01', '2019-10-08 14:16:01');
INSERT INTO `admin_operation_log` VALUES ('2394', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:16:17', '2019-10-08 14:16:17');
INSERT INTO `admin_operation_log` VALUES ('2395', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:23:42', '2019-10-08 14:23:42');
INSERT INTO `admin_operation_log` VALUES ('2396', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:24:41', '2019-10-08 14:24:41');
INSERT INTO `admin_operation_log` VALUES ('2397', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:26:00', '2019-10-08 14:26:00');
INSERT INTO `admin_operation_log` VALUES ('2398', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:27:09', '2019-10-08 14:27:09');
INSERT INTO `admin_operation_log` VALUES ('2399', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '[]', '2019-10-08 14:29:36', '2019-10-08 14:29:36');
INSERT INTO `admin_operation_log` VALUES ('2400', '1', 'admin/funds/ingots/logs/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:31:10', '2019-10-08 14:31:10');
INSERT INTO `admin_operation_log` VALUES ('2401', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:43:35', '2019-10-08 14:43:35');
INSERT INTO `admin_operation_log` VALUES ('2402', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:43:42', '2019-10-08 14:43:42');
INSERT INTO `admin_operation_log` VALUES ('2403', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:44:00', '2019-10-08 14:44:00');
INSERT INTO `admin_operation_log` VALUES ('2404', '1', 'admin/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:44:09', '2019-10-08 14:44:09');
INSERT INTO `admin_operation_log` VALUES ('2405', '1', 'admin/articles/1', 'GET', '127.0.0.1', '[]', '2019-10-08 14:53:44', '2019-10-08 14:53:44');
INSERT INTO `admin_operation_log` VALUES ('2406', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:53:55', '2019-10-08 14:53:55');
INSERT INTO `admin_operation_log` VALUES ('2407', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 14:54:04', '2019-10-08 14:54:04');
INSERT INTO `admin_operation_log` VALUES ('2408', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-08 15:31:08', '2019-10-08 15:31:08');
INSERT INTO `admin_operation_log` VALUES ('2409', '1', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-08 15:32:29', '2019-10-08 15:32:29');
INSERT INTO `admin_operation_log` VALUES ('2410', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 15:48:35', '2019-10-08 15:48:35');
INSERT INTO `admin_operation_log` VALUES ('2411', '1', 'admin/funds/ingots/logs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 15:48:38', '2019-10-08 15:48:38');
INSERT INTO `admin_operation_log` VALUES ('2412', '1', 'admin/funds/ingots/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 15:49:23', '2019-10-08 15:49:23');
INSERT INTO `admin_operation_log` VALUES ('2413', '1', 'admin/funds/ingots/logs/create', 'GET', '127.0.0.1', '[]', '2019-10-08 15:49:32', '2019-10-08 15:49:32');
INSERT INTO `admin_operation_log` VALUES ('2414', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 15:49:59', '2019-10-08 15:49:59');
INSERT INTO `admin_operation_log` VALUES ('2415', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 15:59:25', '2019-10-08 15:59:25');
INSERT INTO `admin_operation_log` VALUES ('2416', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '[]', '2019-10-08 16:00:35', '2019-10-08 16:00:35');
INSERT INTO `admin_operation_log` VALUES ('2417', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:00:42', '2019-10-08 16:00:42');
INSERT INTO `admin_operation_log` VALUES ('2418', '1', 'admin/articles/legals/books/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:00:58', '2019-10-08 16:00:58');
INSERT INTO `admin_operation_log` VALUES ('2419', '1', 'admin/articles/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-10-08 16:01:10', '2019-10-08 16:01:10');
INSERT INTO `admin_operation_log` VALUES ('2420', '1', 'admin/articles/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-10-08 16:01:50', '2019-10-08 16:01:50');
INSERT INTO `admin_operation_log` VALUES ('2421', '1', 'admin/articles/legals/books/1', 'GET', '127.0.0.1', '[]', '2019-10-08 16:02:18', '2019-10-08 16:02:18');
INSERT INTO `admin_operation_log` VALUES ('2422', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:03:17', '2019-10-08 16:03:17');
INSERT INTO `admin_operation_log` VALUES ('2423', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:10:19', '2019-10-08 16:10:19');
INSERT INTO `admin_operation_log` VALUES ('2424', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:10:23', '2019-10-08 16:10:23');
INSERT INTO `admin_operation_log` VALUES ('2425', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2019-10-08 16:41:27', '2019-10-08 16:41:27');
INSERT INTO `admin_operation_log` VALUES ('2426', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:41:39', '2019-10-08 16:41:39');
INSERT INTO `admin_operation_log` VALUES ('2427', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-10-08 16:43:05', '2019-10-08 16:43:05');
INSERT INTO `admin_operation_log` VALUES ('2428', '1', 'admin/funds/balances/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:43:24', '2019-10-08 16:43:24');
INSERT INTO `admin_operation_log` VALUES ('2429', '1', 'admin/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:43:30', '2019-10-08 16:43:30');
INSERT INTO `admin_operation_log` VALUES ('2430', '1', 'admin/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:43:36', '2019-10-08 16:43:36');
INSERT INTO `admin_operation_log` VALUES ('2431', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:43:41', '2019-10-08 16:43:41');
INSERT INTO `admin_operation_log` VALUES ('2432', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:43:52', '2019-10-08 16:43:52');
INSERT INTO `admin_operation_log` VALUES ('2433', '1', 'admin/questions/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:43:57', '2019-10-08 16:43:57');
INSERT INTO `admin_operation_log` VALUES ('2434', '1', 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-08 16:44:00', '2019-10-08 16:44:00');
INSERT INTO `admin_operation_log` VALUES ('2435', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 10:36:25', '2019-10-09 10:36:25');
INSERT INTO `admin_operation_log` VALUES ('2436', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-09 10:36:44', '2019-10-09 10:36:44');
INSERT INTO `admin_operation_log` VALUES ('2437', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"upload\"}', '2019-10-09 10:36:48', '2019-10-09 10:36:48');
INSERT INTO `admin_operation_log` VALUES ('2438', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"database\"}', '2019-10-09 10:36:52', '2019-10-09 10:36:52');
INSERT INTO `admin_operation_log` VALUES ('2439', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"develop\"}', '2019-10-09 10:36:58', '2019-10-09 10:36:58');
INSERT INTO `admin_operation_log` VALUES ('2440', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:37:12', '2019-10-09 10:37:12');
INSERT INTO `admin_operation_log` VALUES ('2441', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:37:13', '2019-10-09 10:37:13');
INSERT INTO `admin_operation_log` VALUES ('2442', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"database\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 10:37:22', '2019-10-09 10:37:22');
INSERT INTO `admin_operation_log` VALUES ('2443', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 10:37:24', '2019-10-09 10:37:24');
INSERT INTO `admin_operation_log` VALUES ('2444', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:37:30', '2019-10-09 10:37:30');
INSERT INTO `admin_operation_log` VALUES ('2445', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:37:31', '2019-10-09 10:37:31');
INSERT INTO `admin_operation_log` VALUES ('2446', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"1\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:39:04', '2019-10-09 10:39:04');
INSERT INTO `admin_operation_log` VALUES ('2447', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:39:14', '2019-10-09 10:39:14');
INSERT INTO `admin_operation_log` VALUES ('2448', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:39:20', '2019-10-09 10:39:20');
INSERT INTO `admin_operation_log` VALUES ('2449', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:39:40', '2019-10-09 10:39:40');
INSERT INTO `admin_operation_log` VALUES ('2450', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:39:42', '2019-10-09 10:39:42');
INSERT INTO `admin_operation_log` VALUES ('2451', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"database\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 10:40:29', '2019-10-09 10:40:29');
INSERT INTO `admin_operation_log` VALUES ('2452', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 10:40:44', '2019-10-09 10:40:44');
INSERT INTO `admin_operation_log` VALUES ('2453', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"file_size\":\"100\",\"file_ext\":[\"doc\",\"docx\",\"xls\",\"ppt\",\"pptx\",\"pdf\",\"wps\",\"txt\",\"rar\",\"zip\",\"gz\",\"bz2\",\"7z\",null],\"image_size\":\"100\",\"image_ext\":[\"gif\",\"bmp\",\"jpeg\",\"png\",null],\"thumbnail_size\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Upload\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:42:52', '2019-10-09 10:42:52');
INSERT INTO `admin_operation_log` VALUES ('2454', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 10:42:53', '2019-10-09 10:42:53');
INSERT INTO `admin_operation_log` VALUES ('2455', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"file_size\":\"100\",\"file_ext\":[\"doc\",\"docx\",\"xls\",\"ppt\",\"pptx\",\"pdf\",\"wps\",\"txt\",\"rar\",\"zip\",\"gz\",\"bz2\",\"7z\",null],\"image_size\":\"100\",\"image_ext\":[\"gif\",\"bmp\",\"jpeg\",\"png\",null],\"thumbnail_size\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Upload\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:43:11', '2019-10-09 10:43:11');
INSERT INTO `admin_operation_log` VALUES ('2456', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 10:43:13', '2019-10-09 10:43:13');
INSERT INTO `admin_operation_log` VALUES ('2457', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"file_size\":\"100\",\"file_ext\":[\"doc\",\"docx\",\"xls\",\"ppt\",\"pptx\",\"pdf\",\"wps\",\"txt\",\"rar\",\"zip\",\"gz\",\"bz2\",\"7z\",null],\"image_size\":\"100\",\"image_ext\":[\"gif\",\"bmp\",\"jpeg\",\"png\",null],\"thumbnail_size\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Upload\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:43:26', '2019-10-09 10:43:26');
INSERT INTO `admin_operation_log` VALUES ('2458', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 10:43:27', '2019-10-09 10:43:27');
INSERT INTO `admin_operation_log` VALUES ('2459', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 10:43:45', '2019-10-09 10:43:45');
INSERT INTO `admin_operation_log` VALUES ('2460', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"1\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:43:49', '2019-10-09 10:43:49');
INSERT INTO `admin_operation_log` VALUES ('2461', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:56:56', '2019-10-09 10:56:56');
INSERT INTO `admin_operation_log` VALUES ('2462', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:57:03', '2019-10-09 10:57:03');
INSERT INTO `admin_operation_log` VALUES ('2463', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:57:05', '2019-10-09 10:57:05');
INSERT INTO `admin_operation_log` VALUES ('2464', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:57:28', '2019-10-09 10:57:28');
INSERT INTO `admin_operation_log` VALUES ('2465', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:57:29', '2019-10-09 10:57:29');
INSERT INTO `admin_operation_log` VALUES ('2466', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:58:40', '2019-10-09 10:58:40');
INSERT INTO `admin_operation_log` VALUES ('2467', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 10:59:02', '2019-10-09 10:59:02');
INSERT INTO `admin_operation_log` VALUES ('2468', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 10:59:16', '2019-10-09 10:59:16');
INSERT INTO `admin_operation_log` VALUES ('2469', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:00:00', '2019-10-09 11:00:00');
INSERT INTO `admin_operation_log` VALUES ('2470', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:02:06', '2019-10-09 11:02:06');
INSERT INTO `admin_operation_log` VALUES ('2471', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:02:14', '2019-10-09 11:02:14');
INSERT INTO `admin_operation_log` VALUES ('2472', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:06:57', '2019-10-09 11:06:57');
INSERT INTO `admin_operation_log` VALUES ('2473', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:07:12', '2019-10-09 11:07:12');
INSERT INTO `admin_operation_log` VALUES ('2474', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:07:19', '2019-10-09 11:07:19');
INSERT INTO `admin_operation_log` VALUES ('2475', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:09:03', '2019-10-09 11:09:03');
INSERT INTO `admin_operation_log` VALUES ('2476', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:09:24', '2019-10-09 11:09:24');
INSERT INTO `admin_operation_log` VALUES ('2477', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:09:26', '2019-10-09 11:09:26');
INSERT INTO `admin_operation_log` VALUES ('2478', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"1\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:17:17', '2019-10-09 11:17:17');
INSERT INTO `admin_operation_log` VALUES ('2479', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:18', '2019-10-09 11:17:18');
INSERT INTO `admin_operation_log` VALUES ('2480', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:19', '2019-10-09 11:17:19');
INSERT INTO `admin_operation_log` VALUES ('2481', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:20', '2019-10-09 11:17:20');
INSERT INTO `admin_operation_log` VALUES ('2482', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:21', '2019-10-09 11:17:21');
INSERT INTO `admin_operation_log` VALUES ('2483', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:22', '2019-10-09 11:17:22');
INSERT INTO `admin_operation_log` VALUES ('2484', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:23', '2019-10-09 11:17:23');
INSERT INTO `admin_operation_log` VALUES ('2485', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:25', '2019-10-09 11:17:25');
INSERT INTO `admin_operation_log` VALUES ('2486', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:26', '2019-10-09 11:17:26');
INSERT INTO `admin_operation_log` VALUES ('2487', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:27', '2019-10-09 11:17:27');
INSERT INTO `admin_operation_log` VALUES ('2488', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:28', '2019-10-09 11:17:28');
INSERT INTO `admin_operation_log` VALUES ('2489', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:30', '2019-10-09 11:17:30');
INSERT INTO `admin_operation_log` VALUES ('2490', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:31', '2019-10-09 11:17:31');
INSERT INTO `admin_operation_log` VALUES ('2491', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:33', '2019-10-09 11:17:33');
INSERT INTO `admin_operation_log` VALUES ('2492', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:34', '2019-10-09 11:17:34');
INSERT INTO `admin_operation_log` VALUES ('2493', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:36', '2019-10-09 11:17:36');
INSERT INTO `admin_operation_log` VALUES ('2494', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:37', '2019-10-09 11:17:37');
INSERT INTO `admin_operation_log` VALUES ('2495', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:38', '2019-10-09 11:17:38');
INSERT INTO `admin_operation_log` VALUES ('2496', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:40', '2019-10-09 11:17:40');
INSERT INTO `admin_operation_log` VALUES ('2497', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:41', '2019-10-09 11:17:41');
INSERT INTO `admin_operation_log` VALUES ('2498', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:17:43', '2019-10-09 11:17:43');
INSERT INTO `admin_operation_log` VALUES ('2499', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:17:50', '2019-10-09 11:17:50');
INSERT INTO `admin_operation_log` VALUES ('2500', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"1\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:17:58', '2019-10-09 11:17:58');
INSERT INTO `admin_operation_log` VALUES ('2501', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:18:09', '2019-10-09 11:18:09');
INSERT INTO `admin_operation_log` VALUES ('2502', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:18:54', '2019-10-09 11:18:54');
INSERT INTO `admin_operation_log` VALUES ('2503', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:23:05', '2019-10-09 11:23:05');
INSERT INTO `admin_operation_log` VALUES ('2504', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:24:34', '2019-10-09 11:24:34');
INSERT INTO `admin_operation_log` VALUES ('2505', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"1\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:24:55', '2019-10-09 11:24:55');
INSERT INTO `admin_operation_log` VALUES ('2506', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:25:05', '2019-10-09 11:25:05');
INSERT INTO `admin_operation_log` VALUES ('2507', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:26:17', '2019-10-09 11:26:17');
INSERT INTO `admin_operation_log` VALUES ('2508', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-09 11:27:03', '2019-10-09 11:27:03');
INSERT INTO `admin_operation_log` VALUES ('2509', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:27:09', '2019-10-09 11:27:09');
INSERT INTO `admin_operation_log` VALUES ('2510', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:27:16', '2019-10-09 11:27:16');
INSERT INTO `admin_operation_log` VALUES ('2511', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"database\"}', '2019-10-09 11:27:21', '2019-10-09 11:27:21');
INSERT INTO `admin_operation_log` VALUES ('2512', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"develop\"}', '2019-10-09 11:27:25', '2019-10-09 11:27:25');
INSERT INTO `admin_operation_log` VALUES ('2513', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"0\",\"show_trace\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:27:33', '2019-10-09 11:27:33');
INSERT INTO `admin_operation_log` VALUES ('2514', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:27:34', '2019-10-09 11:27:34');
INSERT INTO `admin_operation_log` VALUES ('2515', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"dev_mode\":\"1\",\"show_trace\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Develop\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:28:55', '2019-10-09 11:28:55');
INSERT INTO `admin_operation_log` VALUES ('2516', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:28:56', '2019-10-09 11:28:56');
INSERT INTO `admin_operation_log` VALUES ('2517', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:28:58', '2019-10-09 11:28:58');
INSERT INTO `admin_operation_log` VALUES ('2518', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:28:59', '2019-10-09 11:28:59');
INSERT INTO `admin_operation_log` VALUES ('2519', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:01', '2019-10-09 11:29:01');
INSERT INTO `admin_operation_log` VALUES ('2520', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:03', '2019-10-09 11:29:03');
INSERT INTO `admin_operation_log` VALUES ('2521', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:04', '2019-10-09 11:29:04');
INSERT INTO `admin_operation_log` VALUES ('2522', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:06', '2019-10-09 11:29:06');
INSERT INTO `admin_operation_log` VALUES ('2523', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:07', '2019-10-09 11:29:07');
INSERT INTO `admin_operation_log` VALUES ('2524', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:09', '2019-10-09 11:29:09');
INSERT INTO `admin_operation_log` VALUES ('2525', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:11', '2019-10-09 11:29:11');
INSERT INTO `admin_operation_log` VALUES ('2526', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:13', '2019-10-09 11:29:13');
INSERT INTO `admin_operation_log` VALUES ('2527', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:14', '2019-10-09 11:29:14');
INSERT INTO `admin_operation_log` VALUES ('2528', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:16', '2019-10-09 11:29:16');
INSERT INTO `admin_operation_log` VALUES ('2529', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:18', '2019-10-09 11:29:18');
INSERT INTO `admin_operation_log` VALUES ('2530', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:20', '2019-10-09 11:29:20');
INSERT INTO `admin_operation_log` VALUES ('2531', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:22', '2019-10-09 11:29:22');
INSERT INTO `admin_operation_log` VALUES ('2532', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:23', '2019-10-09 11:29:23');
INSERT INTO `admin_operation_log` VALUES ('2533', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:27', '2019-10-09 11:29:27');
INSERT INTO `admin_operation_log` VALUES ('2534', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:29', '2019-10-09 11:29:29');
INSERT INTO `admin_operation_log` VALUES ('2535', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:29:31', '2019-10-09 11:29:31');
INSERT INTO `admin_operation_log` VALUES ('2536', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:29:39', '2019-10-09 11:29:39');
INSERT INTO `admin_operation_log` VALUES ('2537', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:29:43', '2019-10-09 11:29:43');
INSERT INTO `admin_operation_log` VALUES ('2538', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 11:29:45', '2019-10-09 11:29:45');
INSERT INTO `admin_operation_log` VALUES ('2539', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:29:51', '2019-10-09 11:29:51');
INSERT INTO `admin_operation_log` VALUES ('2540', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 11:29:53', '2019-10-09 11:29:53');
INSERT INTO `admin_operation_log` VALUES ('2541', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:29:58', '2019-10-09 11:29:58');
INSERT INTO `admin_operation_log` VALUES ('2542', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 11:30:01', '2019-10-09 11:30:01');
INSERT INTO `admin_operation_log` VALUES ('2543', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:30:17', '2019-10-09 11:30:17');
INSERT INTO `admin_operation_log` VALUES ('2544', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:30:21', '2019-10-09 11:30:21');
INSERT INTO `admin_operation_log` VALUES ('2545', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:30:31', '2019-10-09 11:30:31');
INSERT INTO `admin_operation_log` VALUES ('2546', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 11:30:35', '2019-10-09 11:30:35');
INSERT INTO `admin_operation_log` VALUES ('2547', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:30:43', '2019-10-09 11:30:43');
INSERT INTO `admin_operation_log` VALUES ('2548', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 11:30:45', '2019-10-09 11:30:45');
INSERT INTO `admin_operation_log` VALUES ('2549', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:30:59', '2019-10-09 11:30:59');
INSERT INTO `admin_operation_log` VALUES ('2550', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 11:31:01', '2019-10-09 11:31:01');
INSERT INTO `admin_operation_log` VALUES ('2551', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 11:31:10', '2019-10-09 11:31:10');
INSERT INTO `admin_operation_log` VALUES ('2552', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:31:25', '2019-10-09 11:31:25');
INSERT INTO `admin_operation_log` VALUES ('2553', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\"}', '2019-10-09 11:31:28', '2019-10-09 11:31:28');
INSERT INTO `admin_operation_log` VALUES ('2554', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:31:36', '2019-10-09 11:31:36');
INSERT INTO `admin_operation_log` VALUES ('2555', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:32:02', '2019-10-09 11:32:02');
INSERT INTO `admin_operation_log` VALUES ('2556', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 11:32:05', '2019-10-09 11:32:05');
INSERT INTO `admin_operation_log` VALUES ('2557', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:32:14', '2019-10-09 11:32:14');
INSERT INTO `admin_operation_log` VALUES ('2558', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:32:22', '2019-10-09 11:32:22');
INSERT INTO `admin_operation_log` VALUES ('2559', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"develop\"}', '2019-10-09 11:32:28', '2019-10-09 11:32:28');
INSERT INTO `admin_operation_log` VALUES ('2560', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '[]', '2019-10-09 11:32:30', '2019-10-09 11:32:30');
INSERT INTO `admin_operation_log` VALUES ('2561', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:32:35', '2019-10-09 11:32:35');
INSERT INTO `admin_operation_log` VALUES ('2562', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '[]', '2019-10-09 11:32:40', '2019-10-09 11:32:40');
INSERT INTO `admin_operation_log` VALUES ('2563', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:32:47', '2019-10-09 11:32:47');
INSERT INTO `admin_operation_log` VALUES ('2564', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '[]', '2019-10-09 11:32:50', '2019-10-09 11:32:50');
INSERT INTO `admin_operation_log` VALUES ('2565', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:33:05', '2019-10-09 11:33:05');
INSERT INTO `admin_operation_log` VALUES ('2566', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\",\"_action\":\"App_Admin_Actions_ClearCache\",\"_input\":\"true\"}', '2019-10-09 11:33:12', '2019-10-09 11:33:12');
INSERT INTO `admin_operation_log` VALUES ('2567', '1', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:33:16', '2019-10-09 11:33:16');
INSERT INTO `admin_operation_log` VALUES ('2568', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:33:20', '2019-10-09 11:33:20');
INSERT INTO `admin_operation_log` VALUES ('2569', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"develop\"}', '2019-10-09 11:33:28', '2019-10-09 11:33:28');
INSERT INTO `admin_operation_log` VALUES ('2570', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '[]', '2019-10-09 11:33:32', '2019-10-09 11:33:32');
INSERT INTO `admin_operation_log` VALUES ('2571', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:35:19', '2019-10-09 11:35:19');
INSERT INTO `admin_operation_log` VALUES ('2572', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"database\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:35:24', '2019-10-09 11:35:24');
INSERT INTO `admin_operation_log` VALUES ('2573', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:35:27', '2019-10-09 11:35:27');
INSERT INTO `admin_operation_log` VALUES ('2574', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"database\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:39:33', '2019-10-09 11:39:33');
INSERT INTO `admin_operation_log` VALUES ('2575', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"upload\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:40:50', '2019-10-09 11:40:50');
INSERT INTO `admin_operation_log` VALUES ('2576', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:41:10', '2019-10-09 11:41:10');
INSERT INTO `admin_operation_log` VALUES ('2577', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:41:17', '2019-10-09 11:41:17');
INSERT INTO `admin_operation_log` VALUES ('2578', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:46:51', '2019-10-09 11:46:51');
INSERT INTO `admin_operation_log` VALUES ('2579', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 11:48:35', '2019-10-09 11:48:35');
INSERT INTO `admin_operation_log` VALUES ('2580', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:48:40', '2019-10-09 11:48:40');
INSERT INTO `admin_operation_log` VALUES ('2581', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 11:48:44', '2019-10-09 11:48:44');
INSERT INTO `admin_operation_log` VALUES ('2582', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:48:59', '2019-10-09 11:48:59');
INSERT INTO `admin_operation_log` VALUES ('2583', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_enable\":\"on\",\"website_title\":null,\"website_slogan\":null,\"website_desc\":null,\"website_keywords\":null,\"website_copyright\":null,\"website_icp\":null,\"website_statistics\":null,\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 11:54:01', '2019-10-09 11:54:01');
INSERT INTO `admin_operation_log` VALUES ('2584', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 11:54:02', '2019-10-09 11:54:02');
INSERT INTO `admin_operation_log` VALUES ('2585', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:02:29', '2019-10-09 12:02:29');
INSERT INTO `admin_operation_log` VALUES ('2586', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:03:04', '2019-10-09 12:03:04');
INSERT INTO `admin_operation_log` VALUES ('2587', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:03:23', '2019-10-09 12:03:23');
INSERT INTO `admin_operation_log` VALUES ('2588', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:07:06', '2019-10-09 12:07:06');
INSERT INTO `admin_operation_log` VALUES ('2589', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:07:40', '2019-10-09 12:07:40');
INSERT INTO `admin_operation_log` VALUES ('2590', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:08:41', '2019-10-09 12:08:41');
INSERT INTO `admin_operation_log` VALUES ('2591', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:08:58', '2019-10-09 12:08:58');
INSERT INTO `admin_operation_log` VALUES ('2592', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:36:48', '2019-10-09 12:36:48');
INSERT INTO `admin_operation_log` VALUES ('2593', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 12:37:06', '2019-10-09 12:37:06');
INSERT INTO `admin_operation_log` VALUES ('2594', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 14:27:36', '2019-10-09 14:27:36');
INSERT INTO `admin_operation_log` VALUES ('2595', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 14:28:00', '2019-10-09 14:28:00');
INSERT INTO `admin_operation_log` VALUES ('2596', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 14:28:39', '2019-10-09 14:28:39');
INSERT INTO `admin_operation_log` VALUES ('2597', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"5\",\"game\":\"5\",\"share\":\"5\",\"wechat\":\"5\",\"invite\":\"5\",\"verify\":\"5\",\"sign\":\"5\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:43:42', '2019-10-09 14:43:42');
INSERT INTO `admin_operation_log` VALUES ('2598', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 14:43:43', '2019-10-09 14:43:43');
INSERT INTO `admin_operation_log` VALUES ('2599', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"develop\"}', '2019-10-09 14:44:12', '2019-10-09 14:44:12');
INSERT INTO `admin_operation_log` VALUES ('2600', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 14:44:16', '2019-10-09 14:44:16');
INSERT INTO `admin_operation_log` VALUES ('2601', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 14:44:19', '2019-10-09 14:44:19');
INSERT INTO `admin_operation_log` VALUES ('2602', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:44:36', '2019-10-09 14:44:36');
INSERT INTO `admin_operation_log` VALUES ('2603', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:44:56', '2019-10-09 14:44:56');
INSERT INTO `admin_operation_log` VALUES ('2604', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:44:57', '2019-10-09 14:44:57');
INSERT INTO `admin_operation_log` VALUES ('2605', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:45:26', '2019-10-09 14:45:26');
INSERT INTO `admin_operation_log` VALUES ('2606', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:46:58', '2019-10-09 14:46:58');
INSERT INTO `admin_operation_log` VALUES ('2607', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:47:03', '2019-10-09 14:47:03');
INSERT INTO `admin_operation_log` VALUES ('2608', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:47:22', '2019-10-09 14:47:22');
INSERT INTO `admin_operation_log` VALUES ('2609', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:47:23', '2019-10-09 14:47:23');
INSERT INTO `admin_operation_log` VALUES ('2610', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:48:19', '2019-10-09 14:48:19');
INSERT INTO `admin_operation_log` VALUES ('2611', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:48:20', '2019-10-09 14:48:20');
INSERT INTO `admin_operation_log` VALUES ('2612', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:48:25', '2019-10-09 14:48:25');
INSERT INTO `admin_operation_log` VALUES ('2613', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:52:56', '2019-10-09 14:52:56');
INSERT INTO `admin_operation_log` VALUES ('2614', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:52:57', '2019-10-09 14:52:57');
INSERT INTO `admin_operation_log` VALUES ('2615', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:53:01', '2019-10-09 14:53:01');
INSERT INTO `admin_operation_log` VALUES ('2616', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:56:16', '2019-10-09 14:56:16');
INSERT INTO `admin_operation_log` VALUES ('2617', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:56:17', '2019-10-09 14:56:17');
INSERT INTO `admin_operation_log` VALUES ('2618', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:56:21', '2019-10-09 14:56:21');
INSERT INTO `admin_operation_log` VALUES ('2619', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:56:25', '2019-10-09 14:56:25');
INSERT INTO `admin_operation_log` VALUES ('2620', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:57:25', '2019-10-09 14:57:25');
INSERT INTO `admin_operation_log` VALUES ('2621', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:57:39', '2019-10-09 14:57:39');
INSERT INTO `admin_operation_log` VALUES ('2622', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:57:40', '2019-10-09 14:57:40');
INSERT INTO `admin_operation_log` VALUES ('2623', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 14:58:08', '2019-10-09 14:58:08');
INSERT INTO `admin_operation_log` VALUES ('2624', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 14:58:10', '2019-10-09 14:58:10');
INSERT INTO `admin_operation_log` VALUES ('2625', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:02:32', '2019-10-09 15:02:32');
INSERT INTO `admin_operation_log` VALUES ('2626', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"share\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 15:02:43', '2019-10-09 15:02:43');
INSERT INTO `admin_operation_log` VALUES ('2627', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:02:44', '2019-10-09 15:02:44');
INSERT INTO `admin_operation_log` VALUES ('2628', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 15:23:42', '2019-10-09 15:23:42');
INSERT INTO `admin_operation_log` VALUES ('2629', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 15:23:46', '2019-10-09 15:23:46');
INSERT INTO `admin_operation_log` VALUES ('2630', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:31:26', '2019-10-09 15:31:26');
INSERT INTO `admin_operation_log` VALUES ('2631', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:31:32', '2019-10-09 15:31:32');
INSERT INTO `admin_operation_log` VALUES ('2632', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:31:45', '2019-10-09 15:31:45');
INSERT INTO `admin_operation_log` VALUES ('2633', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:31:52', '2019-10-09 15:31:52');
INSERT INTO `admin_operation_log` VALUES ('2634', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:31:55', '2019-10-09 15:31:55');
INSERT INTO `admin_operation_log` VALUES ('2635', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:32:46', '2019-10-09 15:32:46');
INSERT INTO `admin_operation_log` VALUES ('2636', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:32:53', '2019-10-09 15:32:53');
INSERT INTO `admin_operation_log` VALUES ('2637', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:33:37', '2019-10-09 15:33:37');
INSERT INTO `admin_operation_log` VALUES ('2638', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 15:34:05', '2019-10-09 15:34:05');
INSERT INTO `admin_operation_log` VALUES ('2639', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 16:31:02', '2019-10-09 16:31:02');
INSERT INTO `admin_operation_log` VALUES ('2640', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 16:34:13', '2019-10-09 16:34:13');
INSERT INTO `admin_operation_log` VALUES ('2641', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 16:52:10', '2019-10-09 16:52:10');
INSERT INTO `admin_operation_log` VALUES ('2642', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 16:53:21', '2019-10-09 16:53:21');
INSERT INTO `admin_operation_log` VALUES ('2643', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 16:54:19', '2019-10-09 16:54:19');
INSERT INTO `admin_operation_log` VALUES ('2644', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"buy\":\"10\",\"game\":\"10\",\"game_limitation\":\"2\",\"share\":\"10\",\"share_limitation\":\"10\",\"wechat\":\"10\",\"invite\":\"10\",\"invite_limitation\":\"0\",\"verify\":\"10\",\"sign\":\"10\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Basic\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 16:58:47', '2019-10-09 16:58:47');
INSERT INTO `admin_operation_log` VALUES ('2645', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 16:58:48', '2019-10-09 16:58:48');
INSERT INTO `admin_operation_log` VALUES ('2646', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-09 16:58:54', '2019-10-09 16:58:54');
INSERT INTO `admin_operation_log` VALUES ('2647', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-09 16:59:05', '2019-10-09 16:59:05');
INSERT INTO `admin_operation_log` VALUES ('2648', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 16:59:36', '2019-10-09 16:59:36');
INSERT INTO `admin_operation_log` VALUES ('2649', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 16:59:57', '2019-10-09 16:59:57');
INSERT INTO `admin_operation_log` VALUES ('2650', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:00:11', '2019-10-09 17:00:11');
INSERT INTO `admin_operation_log` VALUES ('2651', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:03:24', '2019-10-09 17:03:24');
INSERT INTO `admin_operation_log` VALUES ('2652', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:03:38', '2019-10-09 17:03:38');
INSERT INTO `admin_operation_log` VALUES ('2653', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:04:13', '2019-10-09 17:04:13');
INSERT INTO `admin_operation_log` VALUES ('2654', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:04:24', '2019-10-09 17:04:24');
INSERT INTO `admin_operation_log` VALUES ('2655', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:05:38', '2019-10-09 17:05:38');
INSERT INTO `admin_operation_log` VALUES ('2656', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 17:09:39', '2019-10-09 17:09:39');
INSERT INTO `admin_operation_log` VALUES ('2657', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:09:40', '2019-10-09 17:09:40');
INSERT INTO `admin_operation_log` VALUES ('2658', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 17:10:08', '2019-10-09 17:10:08');
INSERT INTO `admin_operation_log` VALUES ('2659', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:10:09', '2019-10-09 17:10:09');
INSERT INTO `admin_operation_log` VALUES ('2660', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 17:10:19', '2019-10-09 17:10:19');
INSERT INTO `admin_operation_log` VALUES ('2661', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:10:20', '2019-10-09 17:10:20');
INSERT INTO `admin_operation_log` VALUES ('2662', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 17:10:57', '2019-10-09 17:10:57');
INSERT INTO `admin_operation_log` VALUES ('2663', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-09 17:10:58', '2019-10-09 17:10:58');
INSERT INTO `admin_operation_log` VALUES ('2664', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 17:14:56', '2019-10-09 17:14:56');
INSERT INTO `admin_operation_log` VALUES ('2665', '1', 'admin/feedback', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 17:15:30', '2019-10-09 17:15:30');
INSERT INTO `admin_operation_log` VALUES ('2666', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-09 17:30:15', '2019-10-09 17:30:15');
INSERT INTO `admin_operation_log` VALUES ('2667', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-09 17:30:22', '2019-10-09 17:30:22');
INSERT INTO `admin_operation_log` VALUES ('2668', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"Ff8PjTyLN50vW9bbLbelvhDaiL5hvd0kh7YfyfwT\"}', '2019-10-09 17:30:45', '2019-10-09 17:30:45');
INSERT INTO `admin_operation_log` VALUES ('2669', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 08:38:21', '2019-10-10 08:38:21');
INSERT INTO `admin_operation_log` VALUES ('2670', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 08:38:25', '2019-10-10 08:38:25');
INSERT INTO `admin_operation_log` VALUES ('2671', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 08:44:34', '2019-10-10 08:44:34');
INSERT INTO `admin_operation_log` VALUES ('2672', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-10 08:44:40', '2019-10-10 08:44:40');
INSERT INTO `admin_operation_log` VALUES ('2673', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 08:44:45', '2019-10-10 08:44:45');
INSERT INTO `admin_operation_log` VALUES ('2674', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\",\"_pjax\":\"#pjax-container\"}', '2019-10-10 08:44:51', '2019-10-10 08:44:51');
INSERT INTO `admin_operation_log` VALUES ('2675', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 08:45:10', '2019-10-10 08:45:10');
INSERT INTO `admin_operation_log` VALUES ('2676', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 08:47:34', '2019-10-10 08:47:34');
INSERT INTO `admin_operation_log` VALUES ('2677', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 08:47:41', '2019-10-10 08:47:41');
INSERT INTO `admin_operation_log` VALUES ('2678', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 08:47:58', '2019-10-10 08:47:58');
INSERT INTO `admin_operation_log` VALUES ('2679', '1', 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$nMtu4X\\/fCP\\/\\/eyKC3Yli4O\\/zhK6xXo1Vsc4btyLBtjb6JW6j5lvSO\",\"password_confirmation\":\"$2y$10$nMtu4X\\/fCP\\/\\/eyKC3Yli4O\\/zhK6xXo1Vsc4btyLBtjb6JW6j5lvSO\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\"}', '2019-10-10 08:48:13', '2019-10-10 08:48:13');
INSERT INTO `admin_operation_log` VALUES ('2680', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-10-10 08:48:14', '2019-10-10 08:48:14');
INSERT INTO `admin_operation_log` VALUES ('2681', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-10-10 08:48:31', '2019-10-10 08:48:31');
INSERT INTO `admin_operation_log` VALUES ('2682', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 09:10:49', '2019-10-10 09:10:49');
INSERT INTO `admin_operation_log` VALUES ('2683', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:11:19', '2019-10-10 09:11:19');
INSERT INTO `admin_operation_log` VALUES ('2684', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-10 09:11:22', '2019-10-10 09:11:22');
INSERT INTO `admin_operation_log` VALUES ('2685', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:11:34', '2019-10-10 09:11:34');
INSERT INTO `admin_operation_log` VALUES ('2686', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-10 09:11:36', '2019-10-10 09:11:36');
INSERT INTO `admin_operation_log` VALUES ('2687', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:12:31', '2019-10-10 09:12:31');
INSERT INTO `admin_operation_log` VALUES ('2688', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-10 09:12:32', '2019-10-10 09:12:32');
INSERT INTO `admin_operation_log` VALUES ('2689', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:12:47', '2019-10-10 09:12:47');
INSERT INTO `admin_operation_log` VALUES ('2690', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-10 09:12:48', '2019-10-10 09:12:48');
INSERT INTO `admin_operation_log` VALUES ('2691', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:13:39', '2019-10-10 09:13:39');
INSERT INTO `admin_operation_log` VALUES ('2692', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 09:14:20', '2019-10-10 09:14:20');
INSERT INTO `admin_operation_log` VALUES ('2693', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:14:25', '2019-10-10 09:14:25');
INSERT INTO `admin_operation_log` VALUES ('2694', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-10 09:14:29', '2019-10-10 09:14:29');
INSERT INTO `admin_operation_log` VALUES ('2695', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:14:41', '2019-10-10 09:14:41');
INSERT INTO `admin_operation_log` VALUES ('2696', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-10 09:14:43', '2019-10-10 09:14:43');
INSERT INTO `admin_operation_log` VALUES ('2697', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:15:03', '2019-10-10 09:15:03');
INSERT INTO `admin_operation_log` VALUES ('2698', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-10 09:15:05', '2019-10-10 09:15:05');
INSERT INTO `admin_operation_log` VALUES ('2699', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:15:34', '2019-10-10 09:15:34');
INSERT INTO `admin_operation_log` VALUES ('2700', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 09:21:05', '2019-10-10 09:21:05');
INSERT INTO `admin_operation_log` VALUES ('2701', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:21:10', '2019-10-10 09:21:10');
INSERT INTO `admin_operation_log` VALUES ('2702', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-10 09:21:13', '2019-10-10 09:21:13');
INSERT INTO `admin_operation_log` VALUES ('2703', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:21:24', '2019-10-10 09:21:24');
INSERT INTO `admin_operation_log` VALUES ('2704', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 09:25:28', '2019-10-10 09:25:28');
INSERT INTO `admin_operation_log` VALUES ('2705', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:25:33', '2019-10-10 09:25:33');
INSERT INTO `admin_operation_log` VALUES ('2706', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-10 09:25:36', '2019-10-10 09:25:36');
INSERT INTO `admin_operation_log` VALUES ('2707', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:25:46', '2019-10-10 09:25:46');
INSERT INTO `admin_operation_log` VALUES ('2708', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-10-10 09:30:25', '2019-10-10 09:30:25');
INSERT INTO `admin_operation_log` VALUES ('2709', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 09:30:50', '2019-10-10 09:30:50');
INSERT INTO `admin_operation_log` VALUES ('2710', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:30:54', '2019-10-10 09:30:54');
INSERT INTO `admin_operation_log` VALUES ('2711', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-10 09:30:58', '2019-10-10 09:30:58');
INSERT INTO `admin_operation_log` VALUES ('2712', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:31:09', '2019-10-10 09:31:09');
INSERT INTO `admin_operation_log` VALUES ('2713', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 09:35:47', '2019-10-10 09:35:47');
INSERT INTO `admin_operation_log` VALUES ('2714', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:35:55', '2019-10-10 09:35:55');
INSERT INTO `admin_operation_log` VALUES ('2715', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-10 09:35:58', '2019-10-10 09:35:58');
INSERT INTO `admin_operation_log` VALUES ('2716', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-10 09:39:39', '2019-10-10 09:39:39');
INSERT INTO `admin_operation_log` VALUES ('2717', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 09:39:51', '2019-10-10 09:39:51');
INSERT INTO `admin_operation_log` VALUES ('2718', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-10 09:39:52', '2019-10-10 09:39:52');
INSERT INTO `admin_operation_log` VALUES ('2719', '1', 'admin/personnel/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:54:01', '2019-10-10 09:54:01');
INSERT INTO `admin_operation_log` VALUES ('2720', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:54:18', '2019-10-10 09:54:18');
INSERT INTO `admin_operation_log` VALUES ('2721', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:54:35', '2019-10-10 09:54:35');
INSERT INTO `admin_operation_log` VALUES ('2722', '1', 'admin/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 09:54:39', '2019-10-10 09:54:39');
INSERT INTO `admin_operation_log` VALUES ('2723', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:05:49', '2019-10-10 10:05:49');
INSERT INTO `admin_operation_log` VALUES ('2724', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"11\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2019-10-10 10:06:15', '2019-10-10 10:06:15');
INSERT INTO `admin_operation_log` VALUES ('2725', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:06:16', '2019-10-10 10:06:16');
INSERT INTO `admin_operation_log` VALUES ('2726', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:10:25', '2019-10-10 10:10:25');
INSERT INTO `admin_operation_log` VALUES ('2727', '1', 'admin/auth/menu/49/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:10:31', '2019-10-10 10:10:31');
INSERT INTO `admin_operation_log` VALUES ('2728', '1', 'admin/auth/menu/49', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u54a8\\u8be2\\u4e13\\u5bb6\",\"icon\":\"iconfont iconmanage-expert\",\"uri\":\"\\/specialist\\/advices\",\"roles\":[null],\"permission\":null,\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-10 10:11:26', '2019-10-10 10:11:26');
INSERT INTO `admin_operation_log` VALUES ('2729', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 10:11:27', '2019-10-10 10:11:27');
INSERT INTO `admin_operation_log` VALUES ('2730', '1', 'admin/auth/menu/49/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:11:53', '2019-10-10 10:11:53');
INSERT INTO `admin_operation_log` VALUES ('2731', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:11:58', '2019-10-10 10:11:58');
INSERT INTO `admin_operation_log` VALUES ('2732', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:12:08', '2019-10-10 10:12:08');
INSERT INTO `admin_operation_log` VALUES ('2733', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"specialist\",\"name\":\"SpecialistsManagement\",\"http_method\":[null],\"http_path\":null,\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-10 10:13:04', '2019-10-10 10:13:04');
INSERT INTO `admin_operation_log` VALUES ('2734', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-10 10:13:05', '2019-10-10 10:13:05');
INSERT INTO `admin_operation_log` VALUES ('2735', '1', 'admin/auth/permissions/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:13:36', '2019-10-10 10:13:36');
INSERT INTO `admin_operation_log` VALUES ('2736', '1', 'admin/auth/permissions/22', 'PUT', '127.0.0.1', '{\"slug\":\"specialist\",\"name\":\"SpecialistsManagement\",\"http_method\":[null],\"http_path\":\"\\/specialists*\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-10 10:14:11', '2019-10-10 10:14:11');
INSERT INTO `admin_operation_log` VALUES ('2737', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-10 10:14:12', '2019-10-10 10:14:12');
INSERT INTO `admin_operation_log` VALUES ('2738', '1', 'admin/auth/permissions/22', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:15:33', '2019-10-10 10:15:33');
INSERT INTO `admin_operation_log` VALUES ('2739', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:15:37', '2019-10-10 10:15:37');
INSERT INTO `admin_operation_log` VALUES ('2740', '1', 'admin/auth/permissions/22', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:15:43', '2019-10-10 10:15:43');
INSERT INTO `admin_operation_log` VALUES ('2741', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:15:46', '2019-10-10 10:15:46');
INSERT INTO `admin_operation_log` VALUES ('2742', '1', 'admin/auth/permissions/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:15:52', '2019-10-10 10:15:52');
INSERT INTO `admin_operation_log` VALUES ('2743', '1', 'admin/auth/permissions/22', 'PUT', '127.0.0.1', '{\"slug\":\"specialist\",\"name\":\"Specialists management\",\"http_method\":[null],\"http_path\":\"\\/specialists*\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-10 10:16:08', '2019-10-10 10:16:08');
INSERT INTO `admin_operation_log` VALUES ('2744', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-10 10:16:09', '2019-10-10 10:16:09');
INSERT INTO `admin_operation_log` VALUES ('2745', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-10 10:16:58', '2019-10-10 10:16:58');
INSERT INTO `admin_operation_log` VALUES ('2746', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:17:17', '2019-10-10 10:17:17');
INSERT INTO `admin_operation_log` VALUES ('2747', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:17:26', '2019-10-10 10:17:26');
INSERT INTO `admin_operation_log` VALUES ('2748', '1', 'admin/auth/menu/41/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:17:42', '2019-10-10 10:17:42');
INSERT INTO `admin_operation_log` VALUES ('2749', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:18:06', '2019-10-10 10:18:06');
INSERT INTO `admin_operation_log` VALUES ('2750', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:18:13', '2019-10-10 10:18:13');
INSERT INTO `admin_operation_log` VALUES ('2751', '1', 'admin/auth/menu/52', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 10:18:31', '2019-10-10 10:18:31');
INSERT INTO `admin_operation_log` VALUES ('2752', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:18:32', '2019-10-10 10:18:32');
INSERT INTO `admin_operation_log` VALUES ('2753', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 10:18:42', '2019-10-10 10:18:42');
INSERT INTO `admin_operation_log` VALUES ('2754', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:18:49', '2019-10-10 10:18:49');
INSERT INTO `admin_operation_log` VALUES ('2755', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:35:11', '2019-10-10 10:35:11');
INSERT INTO `admin_operation_log` VALUES ('2756', '1', 'admin/auth/menu/49/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:35:19', '2019-10-10 10:35:19');
INSERT INTO `admin_operation_log` VALUES ('2757', '1', 'admin/auth/menu/49', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u54a8\\u8be2\\u4e13\\u5bb6\",\"icon\":\"iconfont iconmanage-expert\",\"uri\":\"\\/specialists\\/advices\",\"roles\":[null],\"permission\":null,\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-10 10:35:27', '2019-10-10 10:35:27');
INSERT INTO `admin_operation_log` VALUES ('2758', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 10:35:28', '2019-10-10 10:35:28');
INSERT INTO `admin_operation_log` VALUES ('2759', '1', 'admin/auth/menu/49/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:35:36', '2019-10-10 10:35:36');
INSERT INTO `admin_operation_log` VALUES ('2760', '1', 'admin/auth/menu/49', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u54a8\\u8be2\\u4e13\\u5bb6\",\"icon\":\"iconfont iconmanage-expert\",\"uri\":\"\\/specialists\\/advices\",\"roles\":[null],\"permission\":\"specialist\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-10 10:35:45', '2019-10-10 10:35:45');
INSERT INTO `admin_operation_log` VALUES ('2761', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 10:35:46', '2019-10-10 10:35:46');
INSERT INTO `admin_operation_log` VALUES ('2762', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:36:03', '2019-10-10 10:36:03');
INSERT INTO `admin_operation_log` VALUES ('2763', '1', 'admin/auth/permissions/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:36:11', '2019-10-10 10:36:11');
INSERT INTO `admin_operation_log` VALUES ('2764', '1', 'admin/auth/permissions/22', 'PUT', '127.0.0.1', '{\"slug\":\"specialistAdvice\",\"name\":\"Specialistadvice management\",\"http_method\":[null],\"http_path\":\"\\/specialists*\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-10 10:36:40', '2019-10-10 10:36:40');
INSERT INTO `admin_operation_log` VALUES ('2765', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-10 10:36:41', '2019-10-10 10:36:41');
INSERT INTO `admin_operation_log` VALUES ('2766', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:36:47', '2019-10-10 10:36:47');
INSERT INTO `admin_operation_log` VALUES ('2767', '1', 'admin/auth/menu/49/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:36:53', '2019-10-10 10:36:53');
INSERT INTO `admin_operation_log` VALUES ('2768', '1', 'admin/auth/menu/49', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u54a8\\u8be2\\u4e13\\u5bb6\",\"icon\":\"iconfont iconmanage-expert\",\"uri\":\"\\/specialists\\/advices\",\"roles\":[null],\"permission\":\"specialistAdvice\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-10 10:37:04', '2019-10-10 10:37:04');
INSERT INTO `admin_operation_log` VALUES ('2769', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 10:37:07', '2019-10-10 10:37:07');
INSERT INTO `admin_operation_log` VALUES ('2770', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 10:37:25', '2019-10-10 10:37:25');
INSERT INTO `admin_operation_log` VALUES ('2771', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_action\":\"App_Admin_Actions_ClearCache\",\"_input\":\"true\"}', '2019-10-10 10:37:38', '2019-10-10 10:37:38');
INSERT INTO `admin_operation_log` VALUES ('2772', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:37:40', '2019-10-10 10:37:40');
INSERT INTO `admin_operation_log` VALUES ('2773', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:37:47', '2019-10-10 10:37:47');
INSERT INTO `admin_operation_log` VALUES ('2774', '1', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:38:05', '2019-10-10 10:38:05');
INSERT INTO `admin_operation_log` VALUES ('2775', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 10:38:06', '2019-10-10 10:38:06');
INSERT INTO `admin_operation_log` VALUES ('2776', '1', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 10:38:18', '2019-10-10 10:38:18');
INSERT INTO `admin_operation_log` VALUES ('2777', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 10:38:19', '2019-10-10 10:38:19');
INSERT INTO `admin_operation_log` VALUES ('2778', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 10:59:53', '2019-10-10 10:59:53');
INSERT INTO `admin_operation_log` VALUES ('2779', '1', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:00:00', '2019-10-10 11:00:00');
INSERT INTO `admin_operation_log` VALUES ('2780', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:02:58', '2019-10-10 11:02:58');
INSERT INTO `admin_operation_log` VALUES ('2781', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:03:03', '2019-10-10 11:03:03');
INSERT INTO `admin_operation_log` VALUES ('2782', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:03:25', '2019-10-10 11:03:25');
INSERT INTO `admin_operation_log` VALUES ('2783', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:03:29', '2019-10-10 11:03:29');
INSERT INTO `admin_operation_log` VALUES ('2784', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"laywer\",\"name\":\"laywer\",\"permissions\":[\"22\",null],\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/roles\"}', '2019-10-10 11:03:54', '2019-10-10 11:03:54');
INSERT INTO `admin_operation_log` VALUES ('2785', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-10-10 11:03:54', '2019-10-10 11:03:54');
INSERT INTO `admin_operation_log` VALUES ('2786', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:04:04', '2019-10-10 11:04:04');
INSERT INTO `admin_operation_log` VALUES ('2787', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:04:12', '2019-10-10 11:04:12');
INSERT INTO `admin_operation_log` VALUES ('2788', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"laywer\",\"name\":\"\\u5f8b\\u5e08\",\"password\":\"12345678\",\"password_confirmation\":\"12345678\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/users\"}', '2019-10-10 11:05:27', '2019-10-10 11:05:27');
INSERT INTO `admin_operation_log` VALUES ('2789', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 11:05:28', '2019-10-10 11:05:28');
INSERT INTO `admin_operation_log` VALUES ('2790', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 11:06:36', '2019-10-10 11:06:36');
INSERT INTO `admin_operation_log` VALUES ('2791', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:06:44', '2019-10-10 11:06:44');
INSERT INTO `admin_operation_log` VALUES ('2792', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 11:06:59', '2019-10-10 11:06:59');
INSERT INTO `admin_operation_log` VALUES ('2793', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:07:17', '2019-10-10 11:07:17');
INSERT INTO `admin_operation_log` VALUES ('2794', '3', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:07:23', '2019-10-10 11:07:23');
INSERT INTO `admin_operation_log` VALUES ('2795', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:07:39', '2019-10-10 11:07:39');
INSERT INTO `admin_operation_log` VALUES ('2796', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:07:45', '2019-10-10 11:07:45');
INSERT INTO `admin_operation_log` VALUES ('2797', '3', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:07:58', '2019-10-10 11:07:58');
INSERT INTO `admin_operation_log` VALUES ('2798', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"laywer\",\"name\":\"laywer\",\"permissions\":[\"3\",\"4\",\"22\",null],\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/roles\"}', '2019-10-10 11:08:28', '2019-10-10 11:08:28');
INSERT INTO `admin_operation_log` VALUES ('2799', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-10-10 11:08:29', '2019-10-10 11:08:29');
INSERT INTO `admin_operation_log` VALUES ('2800', '3', 'admin/forms/settings', 'GET', '127.0.0.1', '[]', '2019-10-10 11:08:40', '2019-10-10 11:08:40');
INSERT INTO `admin_operation_log` VALUES ('2801', '3', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:08:44', '2019-10-10 11:08:44');
INSERT INTO `admin_operation_log` VALUES ('2802', '3', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:08:47', '2019-10-10 11:08:47');
INSERT INTO `admin_operation_log` VALUES ('2803', '3', 'admin/articles/browse-history', 'GET', '127.0.0.1', '[]', '2019-10-10 11:09:05', '2019-10-10 11:09:05');
INSERT INTO `admin_operation_log` VALUES ('2804', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:09:09', '2019-10-10 11:09:09');
INSERT INTO `admin_operation_log` VALUES ('2805', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:09:17', '2019-10-10 11:09:17');
INSERT INTO `admin_operation_log` VALUES ('2806', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 11:10:00', '2019-10-10 11:10:00');
INSERT INTO `admin_operation_log` VALUES ('2807', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 11:10:44', '2019-10-10 11:10:44');
INSERT INTO `admin_operation_log` VALUES ('2808', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 11:11:07', '2019-10-10 11:11:07');
INSERT INTO `admin_operation_log` VALUES ('2809', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 11:12:10', '2019-10-10 11:12:10');
INSERT INTO `admin_operation_log` VALUES ('2810', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:21:45', '2019-10-10 11:21:45');
INSERT INTO `admin_operation_log` VALUES ('2811', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:21:52', '2019-10-10 11:21:52');
INSERT INTO `admin_operation_log` VALUES ('2812', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:26:16', '2019-10-10 11:26:16');
INSERT INTO `admin_operation_log` VALUES ('2813', '1', 'admin/personnel/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:27:41', '2019-10-10 11:27:41');
INSERT INTO `admin_operation_log` VALUES ('2814', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:30:48', '2019-10-10 11:30:48');
INSERT INTO `admin_operation_log` VALUES ('2815', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u5173\\u8054\",\"icon\":\"fa-external-link\",\"uri\":\"\\/admin\\/auth\\/related\",\"roles\":[null],\"permission\":\"specialistAdvice\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 11:34:37', '2019-10-10 11:34:37');
INSERT INTO `admin_operation_log` VALUES ('2816', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 11:34:38', '2019-10-10 11:34:38');
INSERT INTO `admin_operation_log` VALUES ('2817', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 11:34:46', '2019-10-10 11:34:46');
INSERT INTO `admin_operation_log` VALUES ('2818', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:41:00', '2019-10-10 11:41:00');
INSERT INTO `admin_operation_log` VALUES ('2819', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 11:47:43', '2019-10-10 11:47:43');
INSERT INTO `admin_operation_log` VALUES ('2820', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 11:52:21', '2019-10-10 11:52:21');
INSERT INTO `admin_operation_log` VALUES ('2821', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:53:05', '2019-10-10 11:53:05');
INSERT INTO `admin_operation_log` VALUES ('2822', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:53:21', '2019-10-10 11:53:21');
INSERT INTO `admin_operation_log` VALUES ('2823', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 11:58:29', '2019-10-10 11:58:29');
INSERT INTO `admin_operation_log` VALUES ('2824', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:58:42', '2019-10-10 11:58:42');
INSERT INTO `admin_operation_log` VALUES ('2825', '1', 'admin/auth/menu/62/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 11:59:25', '2019-10-10 11:59:25');
INSERT INTO `admin_operation_log` VALUES ('2826', '1', 'admin/auth/menu/62', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u5173\\u8054\",\"icon\":\"fa-external-link\",\"uri\":\"\\/auth\\/related\",\"roles\":[null],\"permission\":\"specialistAdvice\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-10 11:59:32', '2019-10-10 11:59:32');
INSERT INTO `admin_operation_log` VALUES ('2827', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 11:59:33', '2019-10-10 11:59:33');
INSERT INTO `admin_operation_log` VALUES ('2828', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 12:00:12', '2019-10-10 12:00:12');
INSERT INTO `admin_operation_log` VALUES ('2829', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 12:01:04', '2019-10-10 12:01:04');
INSERT INTO `admin_operation_log` VALUES ('2830', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 12:02:26', '2019-10-10 12:02:26');
INSERT INTO `admin_operation_log` VALUES ('2831', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 12:03:48', '2019-10-10 12:03:48');
INSERT INTO `admin_operation_log` VALUES ('2832', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 12:08:31', '2019-10-10 12:08:31');
INSERT INTO `admin_operation_log` VALUES ('2833', '1', 'admin/auth/related', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 12:32:56', '2019-10-10 12:32:56');
INSERT INTO `admin_operation_log` VALUES ('2834', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 12:34:16', '2019-10-10 12:34:16');
INSERT INTO `admin_operation_log` VALUES ('2835', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 14:05:14', '2019-10-10 14:05:14');
INSERT INTO `admin_operation_log` VALUES ('2836', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 14:06:17', '2019-10-10 14:06:17');
INSERT INTO `admin_operation_log` VALUES ('2837', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 14:11:37', '2019-10-10 14:11:37');
INSERT INTO `admin_operation_log` VALUES ('2838', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 14:12:01', '2019-10-10 14:12:01');
INSERT INTO `admin_operation_log` VALUES ('2839', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 14:12:10', '2019-10-10 14:12:10');
INSERT INTO `admin_operation_log` VALUES ('2840', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 14:13:17', '2019-10-10 14:13:17');
INSERT INTO `admin_operation_log` VALUES ('2841', '1', 'admin/auth/related', 'GET', '127.0.0.1', '[]', '2019-10-10 14:13:22', '2019-10-10 14:13:22');
INSERT INTO `admin_operation_log` VALUES ('2842', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:16:17', '2019-10-10 14:16:17');
INSERT INTO `admin_operation_log` VALUES ('2843', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:16:57', '2019-10-10 14:16:57');
INSERT INTO `admin_operation_log` VALUES ('2844', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:17:04', '2019-10-10 14:17:04');
INSERT INTO `admin_operation_log` VALUES ('2845', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:17:08', '2019-10-10 14:17:08');
INSERT INTO `admin_operation_log` VALUES ('2846', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:20:44', '2019-10-10 14:20:44');
INSERT INTO `admin_operation_log` VALUES ('2847', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:20:52', '2019-10-10 14:20:52');
INSERT INTO `admin_operation_log` VALUES ('2848', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:22:43', '2019-10-10 14:22:43');
INSERT INTO `admin_operation_log` VALUES ('2849', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:22:49', '2019-10-10 14:22:49');
INSERT INTO `admin_operation_log` VALUES ('2850', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:23:42', '2019-10-10 14:23:42');
INSERT INTO `admin_operation_log` VALUES ('2851', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:24:06', '2019-10-10 14:24:06');
INSERT INTO `admin_operation_log` VALUES ('2852', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:24:23', '2019-10-10 14:24:23');
INSERT INTO `admin_operation_log` VALUES ('2853', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:25:22', '2019-10-10 14:25:22');
INSERT INTO `admin_operation_log` VALUES ('2854', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:25:54', '2019-10-10 14:25:54');
INSERT INTO `admin_operation_log` VALUES ('2855', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:26:47', '2019-10-10 14:26:47');
INSERT INTO `admin_operation_log` VALUES ('2856', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:27:31', '2019-10-10 14:27:31');
INSERT INTO `admin_operation_log` VALUES ('2857', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:27:37', '2019-10-10 14:27:37');
INSERT INTO `admin_operation_log` VALUES ('2858', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:27:44', '2019-10-10 14:27:44');
INSERT INTO `admin_operation_log` VALUES ('2859', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:27:47', '2019-10-10 14:27:47');
INSERT INTO `admin_operation_log` VALUES ('2860', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-10-10 14:30:13', '2019-10-10 14:30:13');
INSERT INTO `admin_operation_log` VALUES ('2861', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-10-10 14:31:18', '2019-10-10 14:31:18');
INSERT INTO `admin_operation_log` VALUES ('2862', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-10-10 14:31:53', '2019-10-10 14:31:53');
INSERT INTO `admin_operation_log` VALUES ('2863', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:35:39', '2019-10-10 14:35:39');
INSERT INTO `admin_operation_log` VALUES ('2864', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:35:48', '2019-10-10 14:35:48');
INSERT INTO `admin_operation_log` VALUES ('2865', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:35:49', '2019-10-10 14:35:49');
INSERT INTO `admin_operation_log` VALUES ('2866', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:44:18', '2019-10-10 14:44:18');
INSERT INTO `admin_operation_log` VALUES ('2867', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:44:28', '2019-10-10 14:44:28');
INSERT INTO `admin_operation_log` VALUES ('2868', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:44:33', '2019-10-10 14:44:33');
INSERT INTO `admin_operation_log` VALUES ('2869', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:44:34', '2019-10-10 14:44:34');
INSERT INTO `admin_operation_log` VALUES ('2870', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:44:41', '2019-10-10 14:44:41');
INSERT INTO `admin_operation_log` VALUES ('2871', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:44:42', '2019-10-10 14:44:42');
INSERT INTO `admin_operation_log` VALUES ('2872', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:45:19', '2019-10-10 14:45:19');
INSERT INTO `admin_operation_log` VALUES ('2873', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:45:20', '2019-10-10 14:45:20');
INSERT INTO `admin_operation_log` VALUES ('2874', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:46:36', '2019-10-10 14:46:36');
INSERT INTO `admin_operation_log` VALUES ('2875', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:46:44', '2019-10-10 14:46:44');
INSERT INTO `admin_operation_log` VALUES ('2876', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:46:48', '2019-10-10 14:46:48');
INSERT INTO `admin_operation_log` VALUES ('2877', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:46:53', '2019-10-10 14:46:53');
INSERT INTO `admin_operation_log` VALUES ('2878', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:46:58', '2019-10-10 14:46:58');
INSERT INTO `admin_operation_log` VALUES ('2879', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 14:46:59', '2019-10-10 14:46:59');
INSERT INTO `admin_operation_log` VALUES ('2880', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:47:41', '2019-10-10 14:47:41');
INSERT INTO `admin_operation_log` VALUES ('2881', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-10-10 14:47:43', '2019-10-10 14:47:43');
INSERT INTO `admin_operation_log` VALUES ('2882', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-10-10 14:48:17', '2019-10-10 14:48:17');
INSERT INTO `admin_operation_log` VALUES ('2883', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-10-10 14:48:45', '2019-10-10 14:48:45');
INSERT INTO `admin_operation_log` VALUES ('2884', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-10-10 14:49:11', '2019-10-10 14:49:11');
INSERT INTO `admin_operation_log` VALUES ('2885', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-10-10 14:50:16', '2019-10-10 14:50:16');
INSERT INTO `admin_operation_log` VALUES ('2886', '1', 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-10-10 14:50:38', '2019-10-10 14:50:38');
INSERT INTO `admin_operation_log` VALUES ('2887', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:50:50', '2019-10-10 14:50:50');
INSERT INTO `admin_operation_log` VALUES ('2888', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:51:58', '2019-10-10 14:51:58');
INSERT INTO `admin_operation_log` VALUES ('2889', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:52:16', '2019-10-10 14:52:16');
INSERT INTO `admin_operation_log` VALUES ('2890', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 14:54:32', '2019-10-10 14:54:32');
INSERT INTO `admin_operation_log` VALUES ('2891', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 14:55:02', '2019-10-10 14:55:02');
INSERT INTO `admin_operation_log` VALUES ('2892', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 14:55:08', '2019-10-10 14:55:08');
INSERT INTO `admin_operation_log` VALUES ('2893', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 14:57:42', '2019-10-10 14:57:42');
INSERT INTO `admin_operation_log` VALUES ('2894', '1', 'admin/specialists/advices/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:58:25', '2019-10-10 14:58:25');
INSERT INTO `admin_operation_log` VALUES ('2895', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:58:32', '2019-10-10 14:58:32');
INSERT INTO `admin_operation_log` VALUES ('2896', '1', 'admin/specialists/advices/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 14:59:02', '2019-10-10 14:59:02');
INSERT INTO `admin_operation_log` VALUES ('2897', '1', 'admin/specialists/advices/1', 'GET', '127.0.0.1', '[]', '2019-10-10 15:01:14', '2019-10-10 15:01:14');
INSERT INTO `admin_operation_log` VALUES ('2898', '1', 'admin/specialists/advices/1', 'GET', '127.0.0.1', '[]', '2019-10-10 15:16:23', '2019-10-10 15:16:23');
INSERT INTO `admin_operation_log` VALUES ('2899', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:17:33', '2019-10-10 15:17:33');
INSERT INTO `admin_operation_log` VALUES ('2900', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 15:18:42', '2019-10-10 15:18:42');
INSERT INTO `admin_operation_log` VALUES ('2901', '1', 'admin/specialists/advices/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:19:02', '2019-10-10 15:19:02');
INSERT INTO `admin_operation_log` VALUES ('2902', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:19:26', '2019-10-10 15:19:26');
INSERT INTO `admin_operation_log` VALUES ('2903', '1', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:19:31', '2019-10-10 15:19:31');
INSERT INTO `admin_operation_log` VALUES ('2904', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 15:19:50', '2019-10-10 15:19:50');
INSERT INTO `admin_operation_log` VALUES ('2905', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:19:55', '2019-10-10 15:19:55');
INSERT INTO `admin_operation_log` VALUES ('2906', '1', 'admin/auth/users/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:20:08', '2019-10-10 15:20:08');
INSERT INTO `admin_operation_log` VALUES ('2907', '1', 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:20:11', '2019-10-10 15:20:11');
INSERT INTO `admin_operation_log` VALUES ('2908', '1', 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"laywer\",\"name\":\"\\u5f8b\\u5e08\",\"password\":\"$2y$10$Dm9gQwiVlA6m5cpGuHzeouqAmt\\/8srJc1y11Kq3Sbp61rNxOi1BDK\",\"password_confirmation\":\"$2y$10$Dm9gQwiVlA6m5cpGuHzeouqAmt\\/8srJc1y11Kq3Sbp61rNxOi1BDK\",\"roles\":[\"3\",null],\"permissions\":[null],\"related_spec_id\":\"1\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/users\\/3\"}', '2019-10-10 15:20:18', '2019-10-10 15:20:18');
INSERT INTO `admin_operation_log` VALUES ('2909', '1', 'admin/auth/users/3', 'GET', '127.0.0.1', '[]', '2019-10-10 15:20:19', '2019-10-10 15:20:19');
INSERT INTO `admin_operation_log` VALUES ('2910', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 15:20:35', '2019-10-10 15:20:35');
INSERT INTO `admin_operation_log` VALUES ('2911', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:20:40', '2019-10-10 15:20:40');
INSERT INTO `admin_operation_log` VALUES ('2912', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:20:46', '2019-10-10 15:20:46');
INSERT INTO `admin_operation_log` VALUES ('2913', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:20:51', '2019-10-10 15:20:51');
INSERT INTO `admin_operation_log` VALUES ('2914', '1', 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"$2y$10$nMtu4X\\/fCP\\/\\/eyKC3Yli4O\\/zhK6xXo1Vsc4btyLBtjb6JW6j5lvSO\",\"password_confirmation\":\"$2y$10$nMtu4X\\/fCP\\/\\/eyKC3Yli4O\\/zhK6xXo1Vsc4btyLBtjb6JW6j5lvSO\",\"roles\":[\"1\",null],\"permissions\":[null],\"related_spec_id\":null,\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/users\"}', '2019-10-10 15:21:10', '2019-10-10 15:21:10');
INSERT INTO `admin_operation_log` VALUES ('2915', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-10 15:21:11', '2019-10-10 15:21:11');
INSERT INTO `admin_operation_log` VALUES ('2916', '3', 'admin/specialists/advices/1', 'PUT', '127.0.0.1', '{\"measures\":\"<p>\\u81ea\\u884c\\u5904\\u7406<\\/p><p>\\u6211\\u6d4b\\u8bd5<br><\\/p>\",\"_token\":\"aW4rH6OELlNwq3sqBYEjYkqLcnGcjnx4MfltySnx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/specialists\\/advices\"}', '2019-10-10 15:21:17', '2019-10-10 15:21:17');
INSERT INTO `admin_operation_log` VALUES ('2917', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 15:21:18', '2019-10-10 15:21:18');
INSERT INTO `admin_operation_log` VALUES ('2918', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:21:25', '2019-10-10 15:21:25');
INSERT INTO `admin_operation_log` VALUES ('2919', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:34:17', '2019-10-10 15:34:17');
INSERT INTO `admin_operation_log` VALUES ('2920', '3', 'admin/specialists/advices/1', 'PUT', '127.0.0.1', '{\"measures\":\"<p><\\/p><p>\\u81ea\\u884c\\u5904\\u7406<\\/p><p>\\u6211\\u6d4b\\u8bd5<\\/p><p><br>\\u5728\\u6d4b\\u8bd5<\\/p>\",\"_token\":\"aW4rH6OELlNwq3sqBYEjYkqLcnGcjnx4MfltySnx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/specialists\\/advices\"}', '2019-10-10 15:34:29', '2019-10-10 15:34:29');
INSERT INTO `admin_operation_log` VALUES ('2921', '3', 'admin/specialists/advices/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 15:34:29', '2019-10-10 15:34:29');
INSERT INTO `admin_operation_log` VALUES ('2922', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 15:34:47', '2019-10-10 15:34:47');
INSERT INTO `admin_operation_log` VALUES ('2923', '3', 'admin/specialists/advices/1', 'PUT', '127.0.0.1', '{\"measures\":\"<p><\\/p><p>\\u81ea\\u884c\\u5904\\u7406<\\/p><p>\\u6211\\u6d4b\\u8bd5<\\/p><p><br>\\u5728\\u6d4b\\u8bd5<\\/p>\",\"_token\":\"aW4rH6OELlNwq3sqBYEjYkqLcnGcjnx4MfltySnx\",\"_method\":\"PUT\"}', '2019-10-10 15:44:17', '2019-10-10 15:44:17');
INSERT INTO `admin_operation_log` VALUES ('2924', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 15:44:18', '2019-10-10 15:44:18');
INSERT INTO `admin_operation_log` VALUES ('2925', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 15:45:46', '2019-10-10 15:45:46');
INSERT INTO `admin_operation_log` VALUES ('2926', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:49:25', '2019-10-10 15:49:25');
INSERT INTO `admin_operation_log` VALUES ('2927', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:49:35', '2019-10-10 15:49:35');
INSERT INTO `admin_operation_log` VALUES ('2928', '1', 'admin/auth/roles/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:49:40', '2019-10-10 15:49:40');
INSERT INTO `admin_operation_log` VALUES ('2929', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:49:44', '2019-10-10 15:49:44');
INSERT INTO `admin_operation_log` VALUES ('2930', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 15:49:50', '2019-10-10 15:49:50');
INSERT INTO `admin_operation_log` VALUES ('2931', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"laywer\",\"name\":\"laywer\",\"permissions\":[\"3\",\"4\",\"7\",\"22\",null],\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/roles\"}', '2019-10-10 15:50:11', '2019-10-10 15:50:11');
INSERT INTO `admin_operation_log` VALUES ('2932', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-10-10 15:50:12', '2019-10-10 15:50:12');
INSERT INTO `admin_operation_log` VALUES ('2933', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:04:34', '2019-10-10 16:04:34');
INSERT INTO `admin_operation_log` VALUES ('2934', '1', 'admin/auth/roles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:05:54', '2019-10-10 16:05:54');
INSERT INTO `admin_operation_log` VALUES ('2935', '1', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:05:59', '2019-10-10 16:05:59');
INSERT INTO `admin_operation_log` VALUES ('2936', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:08:43', '2019-10-10 16:08:43');
INSERT INTO `admin_operation_log` VALUES ('2937', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\",\"icon\":\"fa-dot-circle-o\",\"uri\":\"\\/personnel\\/authentications\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 16:15:16', '2019-10-10 16:15:16');
INSERT INTO `admin_operation_log` VALUES ('2938', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 16:15:17', '2019-10-10 16:15:17');
INSERT INTO `admin_operation_log` VALUES ('2939', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 16:15:39', '2019-10-10 16:15:39');
INSERT INTO `admin_operation_log` VALUES ('2940', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:16:44', '2019-10-10 16:16:44');
INSERT INTO `admin_operation_log` VALUES ('2941', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:22:19', '2019-10-10 16:22:19');
INSERT INTO `admin_operation_log` VALUES ('2942', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:24:56', '2019-10-10 16:24:56');
INSERT INTO `admin_operation_log` VALUES ('2943', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:25:04', '2019-10-10 16:25:04');
INSERT INTO `admin_operation_log` VALUES ('2944', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:26:51', '2019-10-10 16:26:51');
INSERT INTO `admin_operation_log` VALUES ('2945', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:27:55', '2019-10-10 16:27:55');
INSERT INTO `admin_operation_log` VALUES ('2946', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:28:23', '2019-10-10 16:28:23');
INSERT INTO `admin_operation_log` VALUES ('2947', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:32:12', '2019-10-10 16:32:12');
INSERT INTO `admin_operation_log` VALUES ('2948', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:32:45', '2019-10-10 16:32:45');
INSERT INTO `admin_operation_log` VALUES ('2949', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:36:59', '2019-10-10 16:36:59');
INSERT INTO `admin_operation_log` VALUES ('2950', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:38:33', '2019-10-10 16:38:33');
INSERT INTO `admin_operation_log` VALUES ('2951', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:38:50', '2019-10-10 16:38:50');
INSERT INTO `admin_operation_log` VALUES ('2952', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:39:13', '2019-10-10 16:39:13');
INSERT INTO `admin_operation_log` VALUES ('2953', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:39:26', '2019-10-10 16:39:26');
INSERT INTO `admin_operation_log` VALUES ('2954', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:41:05', '2019-10-10 16:41:05');
INSERT INTO `admin_operation_log` VALUES ('2955', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:42:35', '2019-10-10 16:42:35');
INSERT INTO `admin_operation_log` VALUES ('2956', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:42:46', '2019-10-10 16:42:46');
INSERT INTO `admin_operation_log` VALUES ('2957', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:43:54', '2019-10-10 16:43:54');
INSERT INTO `admin_operation_log` VALUES ('2958', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:44:33', '2019-10-10 16:44:33');
INSERT INTO `admin_operation_log` VALUES ('2959', '1', 'admin/personnel/authentications/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:45:28', '2019-10-10 16:45:28');
INSERT INTO `admin_operation_log` VALUES ('2960', '1', 'admin/personnel/authentications/1', 'GET', '127.0.0.1', '[]', '2019-10-10 16:46:47', '2019-10-10 16:46:47');
INSERT INTO `admin_operation_log` VALUES ('2961', '1', 'admin/personnel/authentications/1', 'GET', '127.0.0.1', '[]', '2019-10-10 16:48:40', '2019-10-10 16:48:40');
INSERT INTO `admin_operation_log` VALUES ('2962', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:49:13', '2019-10-10 16:49:13');
INSERT INTO `admin_operation_log` VALUES ('2963', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:59:53', '2019-10-10 16:59:53');
INSERT INTO `admin_operation_log` VALUES ('2964', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 16:59:57', '2019-10-10 16:59:57');
INSERT INTO `admin_operation_log` VALUES ('2965', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:00:05', '2019-10-10 17:00:05');
INSERT INTO `admin_operation_log` VALUES ('2966', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:00:43', '2019-10-10 17:00:43');
INSERT INTO `admin_operation_log` VALUES ('2967', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:00:47', '2019-10-10 17:00:47');
INSERT INTO `admin_operation_log` VALUES ('2968', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":null,\"reason\":null,\"type\":null,\"created_at\":null,\"status\":[null],\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-10 17:01:33', '2019-10-10 17:01:33');
INSERT INTO `admin_operation_log` VALUES ('2969', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":null,\"reason\":null,\"type\":null,\"created_at\":null,\"status\":[null],\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-10 17:01:34', '2019-10-10 17:01:34');
INSERT INTO `admin_operation_log` VALUES ('2970', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":null,\"reason\":null,\"type\":null,\"created_at\":null,\"status\":[null],\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-10 17:01:35', '2019-10-10 17:01:35');
INSERT INTO `admin_operation_log` VALUES ('2971', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:02:48', '2019-10-10 17:02:48');
INSERT INTO `admin_operation_log` VALUES ('2972', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:03:30', '2019-10-10 17:03:30');
INSERT INTO `admin_operation_log` VALUES ('2973', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:06:27', '2019-10-10 17:06:27');
INSERT INTO `admin_operation_log` VALUES ('2974', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:15:54', '2019-10-10 17:15:54');
INSERT INTO `admin_operation_log` VALUES ('2975', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:19:42', '2019-10-10 17:19:42');
INSERT INTO `admin_operation_log` VALUES ('2976', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 17:19:59', '2019-10-10 17:19:59');
INSERT INTO `admin_operation_log` VALUES ('2977', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-10 17:20:23', '2019-10-10 17:20:23');
INSERT INTO `admin_operation_log` VALUES ('2978', '1', 'admin/auth/menu/62', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"1re9SAExZcws9ev7e4wtTE4rBNRsAdT4IRnmZHPv\"}', '2019-10-10 17:20:32', '2019-10-10 17:20:32');
INSERT INTO `admin_operation_log` VALUES ('2979', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 17:20:33', '2019-10-10 17:20:33');
INSERT INTO `admin_operation_log` VALUES ('2980', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 17:21:54', '2019-10-10 17:21:54');
INSERT INTO `admin_operation_log` VALUES ('2981', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 17:22:09', '2019-10-10 17:22:09');
INSERT INTO `admin_operation_log` VALUES ('2982', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:22:24', '2019-10-10 17:22:24');
INSERT INTO `admin_operation_log` VALUES ('2983', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-10 17:42:40', '2019-10-10 17:42:40');
INSERT INTO `admin_operation_log` VALUES ('2984', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-10 17:45:20', '2019-10-10 17:45:20');
INSERT INTO `admin_operation_log` VALUES ('2985', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 08:35:20', '2019-10-11 08:35:20');
INSERT INTO `admin_operation_log` VALUES ('2986', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 08:36:28', '2019-10-11 08:36:28');
INSERT INTO `admin_operation_log` VALUES ('2987', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 08:38:55', '2019-10-11 08:38:55');
INSERT INTO `admin_operation_log` VALUES ('2988', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 08:39:40', '2019-10-11 08:39:40');
INSERT INTO `admin_operation_log` VALUES ('2989', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 08:40:10', '2019-10-11 08:40:10');
INSERT INTO `admin_operation_log` VALUES ('2990', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 08:40:48', '2019-10-11 08:40:48');
INSERT INTO `admin_operation_log` VALUES ('2991', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 08:41:03', '2019-10-11 08:41:03');
INSERT INTO `admin_operation_log` VALUES ('2992', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 08:42:05', '2019-10-11 08:42:05');
INSERT INTO `admin_operation_log` VALUES ('2993', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 08:43:29', '2019-10-11 08:43:29');
INSERT INTO `admin_operation_log` VALUES ('2994', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 08:48:15', '2019-10-11 08:48:15');
INSERT INTO `admin_operation_log` VALUES ('2995', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 08:49:36', '2019-10-11 08:49:36');
INSERT INTO `admin_operation_log` VALUES ('2996', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":null,\"status\":\"0\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 08:49:47', '2019-10-11 08:49:47');
INSERT INTO `admin_operation_log` VALUES ('2997', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 08:50:25', '2019-10-11 08:50:25');
INSERT INTO `admin_operation_log` VALUES ('2998', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"0\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 08:50:48', '2019-10-11 08:50:48');
INSERT INTO `admin_operation_log` VALUES ('2999', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:18:11', '2019-10-11 09:18:11');
INSERT INTO `admin_operation_log` VALUES ('3000', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"1\",\"remark\":\"\\u8d44\\u6599\\u5b8c\\u6574\",\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:19:19', '2019-10-11 09:19:19');
INSERT INTO `admin_operation_log` VALUES ('3001', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:19:20', '2019-10-11 09:19:20');
INSERT INTO `admin_operation_log` VALUES ('3002', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:23:45', '2019-10-11 09:23:45');
INSERT INTO `admin_operation_log` VALUES ('3003', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:26:09', '2019-10-11 09:26:09');
INSERT INTO `admin_operation_log` VALUES ('3004', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:26:22', '2019-10-11 09:26:22');
INSERT INTO `admin_operation_log` VALUES ('3005', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:26:49', '2019-10-11 09:26:49');
INSERT INTO `admin_operation_log` VALUES ('3006', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:26:57', '2019-10-11 09:26:57');
INSERT INTO `admin_operation_log` VALUES ('3007', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:27:06', '2019-10-11 09:27:06');
INSERT INTO `admin_operation_log` VALUES ('3008', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:27:35', '2019-10-11 09:27:35');
INSERT INTO `admin_operation_log` VALUES ('3009', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:27:50', '2019-10-11 09:27:50');
INSERT INTO `admin_operation_log` VALUES ('3010', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:28:45', '2019-10-11 09:28:45');
INSERT INTO `admin_operation_log` VALUES ('3011', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"1\",\"remark\":\"555\",\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:29:39', '2019-10-11 09:29:39');
INSERT INTO `admin_operation_log` VALUES ('3012', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:29:40', '2019-10-11 09:29:40');
INSERT INTO `admin_operation_log` VALUES ('3013', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"1\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:31:30', '2019-10-11 09:31:30');
INSERT INTO `admin_operation_log` VALUES ('3014', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:31:32', '2019-10-11 09:31:32');
INSERT INTO `admin_operation_log` VALUES ('3015', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:32:29', '2019-10-11 09:32:29');
INSERT INTO `admin_operation_log` VALUES ('3016', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:32:53', '2019-10-11 09:32:53');
INSERT INTO `admin_operation_log` VALUES ('3017', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:32:55', '2019-10-11 09:32:55');
INSERT INTO `admin_operation_log` VALUES ('3018', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 09:35:22', '2019-10-11 09:35:22');
INSERT INTO `admin_operation_log` VALUES ('3019', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"1\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:35:38', '2019-10-11 09:35:38');
INSERT INTO `admin_operation_log` VALUES ('3020', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:35:39', '2019-10-11 09:35:39');
INSERT INTO `admin_operation_log` VALUES ('3021', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"1\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:36:20', '2019-10-11 09:36:20');
INSERT INTO `admin_operation_log` VALUES ('3022', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:36:23', '2019-10-11 09:36:23');
INSERT INTO `admin_operation_log` VALUES ('3023', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"2\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:45:01', '2019-10-11 09:45:01');
INSERT INTO `admin_operation_log` VALUES ('3024', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:45:02', '2019-10-11 09:45:02');
INSERT INTO `admin_operation_log` VALUES ('3025', '1', 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\\u5ba1\\u6838\",\"status\":\"1\",\"remark\":null,\"_model\":\"App_Models_Authentication\",\"_key\":\"1\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_action\":\"App_Admin_Actions_Post_ReportPost\"}', '2019-10-11 09:59:42', '2019-10-11 09:59:42');
INSERT INTO `admin_operation_log` VALUES ('3026', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 09:59:43', '2019-10-11 09:59:43');
INSERT INTO `admin_operation_log` VALUES ('3027', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 10:01:29', '2019-10-11 10:01:29');
INSERT INTO `admin_operation_log` VALUES ('3028', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 10:01:58', '2019-10-11 10:01:58');
INSERT INTO `admin_operation_log` VALUES ('3029', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 10:02:12', '2019-10-11 10:02:12');
INSERT INTO `admin_operation_log` VALUES ('3030', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '[]', '2019-10-11 10:03:14', '2019-10-11 10:03:14');
INSERT INTO `admin_operation_log` VALUES ('3031', '1', 'admin/personnel/authentications/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:08:34', '2019-10-11 10:08:34');
INSERT INTO `admin_operation_log` VALUES ('3032', '1', 'admin/personnel/authentications/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-11 10:09:28', '2019-10-11 10:09:28');
INSERT INTO `admin_operation_log` VALUES ('3033', '1', 'admin/personnel/authentications/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-11 10:09:40', '2019-10-11 10:09:40');
INSERT INTO `admin_operation_log` VALUES ('3034', '1', 'admin/personnel/authentications/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:10:14', '2019-10-11 10:10:14');
INSERT INTO `admin_operation_log` VALUES ('3035', '1', 'admin/personnel/authentications/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:10:39', '2019-10-11 10:10:39');
INSERT INTO `admin_operation_log` VALUES ('3036', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:10:45', '2019-10-11 10:10:45');
INSERT INTO `admin_operation_log` VALUES ('3037', '1', 'admin/personnel/authentications/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:10:48', '2019-10-11 10:10:48');
INSERT INTO `admin_operation_log` VALUES ('3038', '1', 'admin/personnel/authentications/create', 'GET', '127.0.0.1', '[]', '2019-10-11 10:11:15', '2019-10-11 10:11:15');
INSERT INTO `admin_operation_log` VALUES ('3039', '1', 'admin/personnel/authentications/create', 'GET', '127.0.0.1', '[]', '2019-10-11 10:11:37', '2019-10-11 10:11:37');
INSERT INTO `admin_operation_log` VALUES ('3040', '1', 'admin/personnel/authentications', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:12:42', '2019-10-11 10:12:42');
INSERT INTO `admin_operation_log` VALUES ('3041', '1', 'admin/personnel/authentications/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:12:47', '2019-10-11 10:12:47');
INSERT INTO `admin_operation_log` VALUES ('3042', '1', 'admin/personnel/answers/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:15:47', '2019-10-11 10:15:47');
INSERT INTO `admin_operation_log` VALUES ('3043', '1', 'admin/personnel/signs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:23:40', '2019-10-11 10:23:40');
INSERT INTO `admin_operation_log` VALUES ('3044', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:24:17', '2019-10-11 10:24:17');
INSERT INTO `admin_operation_log` VALUES ('3045', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-11 10:24:44', '2019-10-11 10:24:44');
INSERT INTO `admin_operation_log` VALUES ('3046', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"basic\"}', '2019-10-11 10:27:56', '2019-10-11 10:27:56');
INSERT INTO `admin_operation_log` VALUES ('3047', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"basic\"}', '2019-10-11 10:28:39', '2019-10-11 10:28:39');
INSERT INTO `admin_operation_log` VALUES ('3048', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:29:40', '2019-10-11 10:29:40');
INSERT INTO `admin_operation_log` VALUES ('3049', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-10-11 10:33:34', '2019-10-11 10:33:34');
INSERT INTO `admin_operation_log` VALUES ('3050', '1', 'admin/banners', 'GET', '127.0.0.1', '[]', '2019-10-11 10:34:20', '2019-10-11 10:34:20');
INSERT INTO `admin_operation_log` VALUES ('3051', '1', 'admin/personnel/laywers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:43:12', '2019-10-11 10:43:12');
INSERT INTO `admin_operation_log` VALUES ('3052', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:49:18', '2019-10-11 10:49:18');
INSERT INTO `admin_operation_log` VALUES ('3053', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:52:51', '2019-10-11 10:52:51');
INSERT INTO `admin_operation_log` VALUES ('3054', '1', 'admin/articles/legals/categorys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:53:34', '2019-10-11 10:53:34');
INSERT INTO `admin_operation_log` VALUES ('3055', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:54:07', '2019-10-11 10:54:07');
INSERT INTO `admin_operation_log` VALUES ('3056', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:55:28', '2019-10-11 10:55:28');
INSERT INTO `admin_operation_log` VALUES ('3057', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:56:37', '2019-10-11 10:56:37');
INSERT INTO `admin_operation_log` VALUES ('3058', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 10:56:47', '2019-10-11 10:56:47');
INSERT INTO `admin_operation_log` VALUES ('3059', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '[]', '2019-10-11 10:58:05', '2019-10-11 10:58:05');
INSERT INTO `admin_operation_log` VALUES ('3060', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '[]', '2019-10-11 11:01:12', '2019-10-11 11:01:12');
INSERT INTO `admin_operation_log` VALUES ('3061', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '[]', '2019-10-11 11:02:04', '2019-10-11 11:02:04');
INSERT INTO `admin_operation_log` VALUES ('3062', '1', 'admin/articles/legals/categorys/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:02:33', '2019-10-11 11:02:33');
INSERT INTO `admin_operation_log` VALUES ('3063', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:03:50', '2019-10-11 11:03:50');
INSERT INTO `admin_operation_log` VALUES ('3064', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:08:51', '2019-10-11 11:08:51');
INSERT INTO `admin_operation_log` VALUES ('3065', '1', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:11:02', '2019-10-11 11:11:02');
INSERT INTO `admin_operation_log` VALUES ('3066', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:11:28', '2019-10-11 11:11:28');
INSERT INTO `admin_operation_log` VALUES ('3067', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '[]', '2019-10-11 11:18:09', '2019-10-11 11:18:09');
INSERT INTO `admin_operation_log` VALUES ('3068', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '[]', '2019-10-11 11:19:42', '2019-10-11 11:19:42');
INSERT INTO `admin_operation_log` VALUES ('3069', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:24:24', '2019-10-11 11:24:24');
INSERT INTO `admin_operation_log` VALUES ('3070', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"5\"}', '2019-10-11 11:29:36', '2019-10-11 11:29:36');
INSERT INTO `admin_operation_log` VALUES ('3071', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-11 11:32:36', '2019-10-11 11:32:36');
INSERT INTO `admin_operation_log` VALUES ('3072', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"id\":\"5\"}', '2019-10-11 11:43:08', '2019-10-11 11:43:08');
INSERT INTO `admin_operation_log` VALUES ('3073', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '[]', '2019-10-11 11:43:25', '2019-10-11 11:43:25');
INSERT INTO `admin_operation_log` VALUES ('3074', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"type\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:43:58', '2019-10-11 11:43:58');
INSERT INTO `admin_operation_log` VALUES ('3075', '1', 'admin/funds/ingots/logs', 'GET', '127.0.0.1', '{\"type\":\"1\"}', '2019-10-11 11:44:33', '2019-10-11 11:44:33');
INSERT INTO `admin_operation_log` VALUES ('3076', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:45:24', '2019-10-11 11:45:24');
INSERT INTO `admin_operation_log` VALUES ('3077', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-10-11 11:54:59', '2019-10-11 11:54:59');
INSERT INTO `admin_operation_log` VALUES ('3078', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-10-11 11:55:35', '2019-10-11 11:55:35');
INSERT INTO `admin_operation_log` VALUES ('3079', '1', 'admin/notices', 'GET', '127.0.0.1', '[]', '2019-10-11 11:56:44', '2019-10-11 11:56:44');
INSERT INTO `admin_operation_log` VALUES ('3080', '1', 'admin/personnel/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 11:57:27', '2019-10-11 11:57:27');
INSERT INTO `admin_operation_log` VALUES ('3081', '1', 'admin/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 12:09:14', '2019-10-11 12:09:14');
INSERT INTO `admin_operation_log` VALUES ('3082', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:05:18', '2019-10-11 14:05:18');
INSERT INTO `admin_operation_log` VALUES ('3083', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:05:48', '2019-10-11 14:05:48');
INSERT INTO `admin_operation_log` VALUES ('3084', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/notarys\",\"roles\":[null],\"permission\":\"notary\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\"}', '2019-10-11 14:08:06', '2019-10-11 14:08:06');
INSERT INTO `admin_operation_log` VALUES ('3085', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-11 14:08:11', '2019-10-11 14:08:11');
INSERT INTO `admin_operation_log` VALUES ('3086', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-11 14:09:33', '2019-10-11 14:09:33');
INSERT INTO `admin_operation_log` VALUES ('3087', '1', 'admin/notarys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:09:53', '2019-10-11 14:09:53');
INSERT INTO `admin_operation_log` VALUES ('3088', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:14:12', '2019-10-11 14:14:12');
INSERT INTO `admin_operation_log` VALUES ('3089', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:14:29', '2019-10-11 14:14:29');
INSERT INTO `admin_operation_log` VALUES ('3090', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:14:53', '2019-10-11 14:14:53');
INSERT INTO `admin_operation_log` VALUES ('3091', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:15:08', '2019-10-11 14:15:08');
INSERT INTO `admin_operation_log` VALUES ('3092', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:15:19', '2019-10-11 14:15:19');
INSERT INTO `admin_operation_log` VALUES ('3093', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:15:38', '2019-10-11 14:15:38');
INSERT INTO `admin_operation_log` VALUES ('3094', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:16:05', '2019-10-11 14:16:05');
INSERT INTO `admin_operation_log` VALUES ('3095', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:16:47', '2019-10-11 14:16:47');
INSERT INTO `admin_operation_log` VALUES ('3096', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:17:24', '2019-10-11 14:17:24');
INSERT INTO `admin_operation_log` VALUES ('3097', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:18:05', '2019-10-11 14:18:05');
INSERT INTO `admin_operation_log` VALUES ('3098', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:18:34', '2019-10-11 14:18:34');
INSERT INTO `admin_operation_log` VALUES ('3099', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:20:51', '2019-10-11 14:20:51');
INSERT INTO `admin_operation_log` VALUES ('3100', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:22:27', '2019-10-11 14:22:27');
INSERT INTO `admin_operation_log` VALUES ('3101', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:23:37', '2019-10-11 14:23:37');
INSERT INTO `admin_operation_log` VALUES ('3102', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:23:55', '2019-10-11 14:23:55');
INSERT INTO `admin_operation_log` VALUES ('3103', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:24:33', '2019-10-11 14:24:33');
INSERT INTO `admin_operation_log` VALUES ('3104', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:25:22', '2019-10-11 14:25:22');
INSERT INTO `admin_operation_log` VALUES ('3105', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:25:42', '2019-10-11 14:25:42');
INSERT INTO `admin_operation_log` VALUES ('3106', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:26:10', '2019-10-11 14:26:10');
INSERT INTO `admin_operation_log` VALUES ('3107', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:29:22', '2019-10-11 14:29:22');
INSERT INTO `admin_operation_log` VALUES ('3108', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:30:30', '2019-10-11 14:30:30');
INSERT INTO `admin_operation_log` VALUES ('3109', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:31:36', '2019-10-11 14:31:36');
INSERT INTO `admin_operation_log` VALUES ('3110', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:32:02', '2019-10-11 14:32:02');
INSERT INTO `admin_operation_log` VALUES ('3111', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:32:38', '2019-10-11 14:32:38');
INSERT INTO `admin_operation_log` VALUES ('3112', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:33:04', '2019-10-11 14:33:04');
INSERT INTO `admin_operation_log` VALUES ('3113', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:34:45', '2019-10-11 14:34:45');
INSERT INTO `admin_operation_log` VALUES ('3114', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:35:12', '2019-10-11 14:35:12');
INSERT INTO `admin_operation_log` VALUES ('3115', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:35:44', '2019-10-11 14:35:44');
INSERT INTO `admin_operation_log` VALUES ('3116', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:36:02', '2019-10-11 14:36:02');
INSERT INTO `admin_operation_log` VALUES ('3117', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:36:19', '2019-10-11 14:36:19');
INSERT INTO `admin_operation_log` VALUES ('3118', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:37:13', '2019-10-11 14:37:13');
INSERT INTO `admin_operation_log` VALUES ('3119', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:38:17', '2019-10-11 14:38:17');
INSERT INTO `admin_operation_log` VALUES ('3120', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:38:43', '2019-10-11 14:38:43');
INSERT INTO `admin_operation_log` VALUES ('3121', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:39:01', '2019-10-11 14:39:01');
INSERT INTO `admin_operation_log` VALUES ('3122', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:39:37', '2019-10-11 14:39:37');
INSERT INTO `admin_operation_log` VALUES ('3123', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:40:20', '2019-10-11 14:40:20');
INSERT INTO `admin_operation_log` VALUES ('3124', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:40:56', '2019-10-11 14:40:56');
INSERT INTO `admin_operation_log` VALUES ('3125', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:41:33', '2019-10-11 14:41:33');
INSERT INTO `admin_operation_log` VALUES ('3126', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:42:36', '2019-10-11 14:42:36');
INSERT INTO `admin_operation_log` VALUES ('3127', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 14:43:03', '2019-10-11 14:43:03');
INSERT INTO `admin_operation_log` VALUES ('3128', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:45:13', '2019-10-11 14:45:13');
INSERT INTO `admin_operation_log` VALUES ('3129', '1', 'admin/articles/legals/books/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:45:28', '2019-10-11 14:45:28');
INSERT INTO `admin_operation_log` VALUES ('3130', '1', 'admin/articles/legals/books/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u517b\\u8001\",\"cate_id\":\"2\",\"detail\":\"<p><\\/p><p>1515151<\\/p>\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/legals\\/books\"}', '2019-10-11 14:45:47', '2019-10-11 14:45:47');
INSERT INTO `admin_operation_log` VALUES ('3131', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '[]', '2019-10-11 14:45:52', '2019-10-11 14:45:52');
INSERT INTO `admin_operation_log` VALUES ('3132', '1', 'admin/notarys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 15:36:15', '2019-10-11 15:36:15');
INSERT INTO `admin_operation_log` VALUES ('3133', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 15:42:07', '2019-10-11 15:42:07');
INSERT INTO `admin_operation_log` VALUES ('3134', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 15:44:47', '2019-10-11 15:44:47');
INSERT INTO `admin_operation_log` VALUES ('3135', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 16:02:49', '2019-10-11 16:02:49');
INSERT INTO `admin_operation_log` VALUES ('3136', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-11 16:03:47', '2019-10-11 16:03:47');
INSERT INTO `admin_operation_log` VALUES ('3137', '1', 'admin/notarys/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"summary\":\"\\u6d4b\\u8bd5\",\"comments_count\":\"1\",\"score\":\"5.00\",\"province_id\":\"230000\",\"city_id\":\"230100\",\"district_id\":\"230102\",\"address\":\"\\u5e7f\\u897f\\u5357\\u5b81\\u5e02\\u6d4e\\u5357\\u8def23-5\\u53f7\",\"lng\":\"105.1241\",\"lat\":\"203.5241\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/notarys\"}', '2019-10-11 16:05:57', '2019-10-11 16:05:57');
INSERT INTO `admin_operation_log` VALUES ('3138', '1', 'admin/notarys/1', 'GET', '127.0.0.1', '[]', '2019-10-11 16:06:06', '2019-10-11 16:06:06');
INSERT INTO `admin_operation_log` VALUES ('3139', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 16:07:00', '2019-10-11 16:07:00');
INSERT INTO `admin_operation_log` VALUES ('3140', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-11 16:07:24', '2019-10-11 16:07:24');
INSERT INTO `admin_operation_log` VALUES ('3141', '1', 'admin/notarys/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"summary\":\"\\u6d4b\\u8bd5\",\"comments_count\":\"1\",\"score\":\"5.00\",\"province_id\":\"440000\",\"city_id\":\"442000\",\"district_id\":\"442000\",\"address\":\"\\u5e7f\\u897f\\u5357\\u5b81\\u5e02\\u6d4e\\u5357\\u8def23-5\\u53f7\",\"lng\":\"105.1241\",\"lat\":\"203.5241\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_method\":\"PUT\"}', '2019-10-11 16:08:23', '2019-10-11 16:08:23');
INSERT INTO `admin_operation_log` VALUES ('3142', '1', 'admin/notarys/1', 'GET', '127.0.0.1', '[]', '2019-10-11 16:08:32', '2019-10-11 16:08:32');
INSERT INTO `admin_operation_log` VALUES ('3143', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 16:08:58', '2019-10-11 16:08:58');
INSERT INTO `admin_operation_log` VALUES ('3144', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 16:09:05', '2019-10-11 16:09:05');
INSERT INTO `admin_operation_log` VALUES ('3145', '1', 'admin/notarys/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"summary\":\"\\u6d4b\\u8bd5\",\"comments_count\":\"1\",\"score\":\"5.00\",\"province\":\"430000\",\"city\":\"430100\",\"district\":\"430102\",\"address\":\"\\u5e7f\\u897f\\u5357\\u5b81\\u5e02\\u6d4e\\u5357\\u8def23-5\\u53f7\",\"lng\":\"105.1241\",\"lat\":\"203.5241\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_method\":\"PUT\"}', '2019-10-11 16:09:35', '2019-10-11 16:09:35');
INSERT INTO `admin_operation_log` VALUES ('3146', '1', 'admin/notarys/1', 'GET', '127.0.0.1', '[]', '2019-10-11 16:11:22', '2019-10-11 16:11:22');
INSERT INTO `admin_operation_log` VALUES ('3147', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 16:11:47', '2019-10-11 16:11:47');
INSERT INTO `admin_operation_log` VALUES ('3148', '1', 'admin/notarys/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"summary\":\"\\u6d4b\\u8bd5\",\"comments_count\":\"1\",\"score\":\"5.00\",\"province\":\"450000\",\"city\":\"450100\",\"district\":\"450102\",\"address\":\"\\u5e7f\\u897f\\u5357\\u5b81\\u5e02\\u6d4e\\u5357\\u8def23-5\\u53f7\",\"lng\":\"105.1241\",\"lat\":\"203.5241\",\"_token\":\"5S4IBFfbncslfh9a9WcCNetkIvgdakBZ89k01i8k\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/notarys\\/1\"}', '2019-10-11 16:15:18', '2019-10-11 16:15:18');
INSERT INTO `admin_operation_log` VALUES ('3149', '1', 'admin/notarys/1', 'GET', '127.0.0.1', '[]', '2019-10-11 16:15:23', '2019-10-11 16:15:23');
INSERT INTO `admin_operation_log` VALUES ('3150', '1', 'admin/notarys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 16:18:09', '2019-10-11 16:18:09');
INSERT INTO `admin_operation_log` VALUES ('3151', '1', 'admin/notarys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 16:27:40', '2019-10-11 16:27:40');
INSERT INTO `admin_operation_log` VALUES ('3152', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 16:53:05', '2019-10-11 16:53:05');
INSERT INTO `admin_operation_log` VALUES ('3153', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 16:54:40', '2019-10-11 16:54:40');
INSERT INTO `admin_operation_log` VALUES ('3154', '1', 'admin/notarys', 'GET', '127.0.0.1', '[]', '2019-10-11 17:09:04', '2019-10-11 17:09:04');
INSERT INTO `admin_operation_log` VALUES ('3155', '1', 'admin/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 17:40:07', '2019-10-11 17:40:07');
INSERT INTO `admin_operation_log` VALUES ('3156', '1', 'admin/notarys/specialists/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 17:40:21', '2019-10-11 17:40:21');
INSERT INTO `admin_operation_log` VALUES ('3157', '1', 'admin/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 17:40:41', '2019-10-11 17:40:41');
INSERT INTO `admin_operation_log` VALUES ('3158', '1', 'admin/notarys/specialists/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 17:42:22', '2019-10-11 17:42:22');
INSERT INTO `admin_operation_log` VALUES ('3159', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:29:16', '2019-10-12 09:29:16');
INSERT INTO `admin_operation_log` VALUES ('3160', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 09:30:02', '2019-10-12 09:30:02');
INSERT INTO `admin_operation_log` VALUES ('3161', '1', 'admin/notarys/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:42:00', '2019-10-12 09:42:00');
INSERT INTO `admin_operation_log` VALUES ('3162', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 09:42:07', '2019-10-12 09:42:07');
INSERT INTO `admin_operation_log` VALUES ('3163', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:42:19', '2019-10-12 09:42:19');
INSERT INTO `admin_operation_log` VALUES ('3164', '1', 'admin/auth/menu/47/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:42:41', '2019-10-12 09:42:41');
INSERT INTO `admin_operation_log` VALUES ('3165', '1', 'admin/auth/menu/47', 'PUT', '127.0.0.1', '{\"parent_id\":\"45\",\"title\":\"\\u987e\\u95ee\",\"icon\":\"iconfont iconguwen3\",\"uri\":\"\\/notarys\\/consultants\",\"roles\":[null],\"permission\":\"notary\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-12 09:43:15', '2019-10-12 09:43:15');
INSERT INTO `admin_operation_log` VALUES ('3166', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 09:43:22', '2019-10-12 09:43:22');
INSERT INTO `admin_operation_log` VALUES ('3167', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 09:43:50', '2019-10-12 09:43:50');
INSERT INTO `admin_operation_log` VALUES ('3168', '1', 'admin/notarys/consultants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:44:16', '2019-10-12 09:44:16');
INSERT INTO `admin_operation_log` VALUES ('3169', '1', 'admin/notarys/consultants', 'GET', '127.0.0.1', '[]', '2019-10-12 09:47:54', '2019-10-12 09:47:54');
INSERT INTO `admin_operation_log` VALUES ('3170', '1', 'admin/personnel/specialists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:48:10', '2019-10-12 09:48:10');
INSERT INTO `admin_operation_log` VALUES ('3171', '1', 'admin/notarys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:48:41', '2019-10-12 09:48:41');
INSERT INTO `admin_operation_log` VALUES ('3172', '1', 'admin/notarys/consultants', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:48:55', '2019-10-12 09:48:55');
INSERT INTO `admin_operation_log` VALUES ('3173', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 09:56:59', '2019-10-12 09:56:59');
INSERT INTO `admin_operation_log` VALUES ('3174', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 09:58:22', '2019-10-12 09:58:22');
INSERT INTO `admin_operation_log` VALUES ('3175', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:16:24', '2019-10-12 10:16:24');
INSERT INTO `admin_operation_log` VALUES ('3176', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:18:55', '2019-10-12 10:18:55');
INSERT INTO `admin_operation_log` VALUES ('3177', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:20:43', '2019-10-12 10:20:43');
INSERT INTO `admin_operation_log` VALUES ('3178', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:23:56', '2019-10-12 10:23:56');
INSERT INTO `admin_operation_log` VALUES ('3179', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:24:24', '2019-10-12 10:24:24');
INSERT INTO `admin_operation_log` VALUES ('3180', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:25:04', '2019-10-12 10:25:04');
INSERT INTO `admin_operation_log` VALUES ('3181', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:25:39', '2019-10-12 10:25:39');
INSERT INTO `admin_operation_log` VALUES ('3182', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:28:02', '2019-10-12 10:28:02');
INSERT INTO `admin_operation_log` VALUES ('3183', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:28:40', '2019-10-12 10:28:40');
INSERT INTO `admin_operation_log` VALUES ('3184', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:29:05', '2019-10-12 10:29:05');
INSERT INTO `admin_operation_log` VALUES ('3185', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:30:58', '2019-10-12 10:30:58');
INSERT INTO `admin_operation_log` VALUES ('3186', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:33:02', '2019-10-12 10:33:02');
INSERT INTO `admin_operation_log` VALUES ('3187', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:43:41', '2019-10-12 10:43:41');
INSERT INTO `admin_operation_log` VALUES ('3188', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:47:06', '2019-10-12 10:47:06');
INSERT INTO `admin_operation_log` VALUES ('3189', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:48:05', '2019-10-12 10:48:05');
INSERT INTO `admin_operation_log` VALUES ('3190', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:51:52', '2019-10-12 10:51:52');
INSERT INTO `admin_operation_log` VALUES ('3191', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:52:27', '2019-10-12 10:52:27');
INSERT INTO `admin_operation_log` VALUES ('3192', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:53:57', '2019-10-12 10:53:57');
INSERT INTO `admin_operation_log` VALUES ('3193', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:54:33', '2019-10-12 10:54:33');
INSERT INTO `admin_operation_log` VALUES ('3194', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 10:54:50', '2019-10-12 10:54:50');
INSERT INTO `admin_operation_log` VALUES ('3195', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:55:20', '2019-10-12 10:55:20');
INSERT INTO `admin_operation_log` VALUES ('3196', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 10:56:12', '2019-10-12 10:56:12');
INSERT INTO `admin_operation_log` VALUES ('3197', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 10:57:12', '2019-10-12 10:57:12');
INSERT INTO `admin_operation_log` VALUES ('3198', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:00:20', '2019-10-12 11:00:20');
INSERT INTO `admin_operation_log` VALUES ('3199', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:02:14', '2019-10-12 11:02:14');
INSERT INTO `admin_operation_log` VALUES ('3200', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:03:19', '2019-10-12 11:03:19');
INSERT INTO `admin_operation_log` VALUES ('3201', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:07:42', '2019-10-12 11:07:42');
INSERT INTO `admin_operation_log` VALUES ('3202', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:08:54', '2019-10-12 11:08:54');
INSERT INTO `admin_operation_log` VALUES ('3203', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:10:46', '2019-10-12 11:10:46');
INSERT INTO `admin_operation_log` VALUES ('3204', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:13:30', '2019-10-12 11:13:30');
INSERT INTO `admin_operation_log` VALUES ('3205', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:15:34', '2019-10-12 11:15:34');
INSERT INTO `admin_operation_log` VALUES ('3206', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:22:15', '2019-10-12 11:22:15');
INSERT INTO `admin_operation_log` VALUES ('3207', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:23:12', '2019-10-12 11:23:12');
INSERT INTO `admin_operation_log` VALUES ('3208', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:27:03', '2019-10-12 11:27:03');
INSERT INTO `admin_operation_log` VALUES ('3209', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:32:25', '2019-10-12 11:32:25');
INSERT INTO `admin_operation_log` VALUES ('3210', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:35:25', '2019-10-12 11:35:25');
INSERT INTO `admin_operation_log` VALUES ('3211', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:42:11', '2019-10-12 11:42:11');
INSERT INTO `admin_operation_log` VALUES ('3212', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:43:24', '2019-10-12 11:43:24');
INSERT INTO `admin_operation_log` VALUES ('3213', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:45:48', '2019-10-12 11:45:48');
INSERT INTO `admin_operation_log` VALUES ('3214', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:47:21', '2019-10-12 11:47:21');
INSERT INTO `admin_operation_log` VALUES ('3215', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 11:50:46', '2019-10-12 11:50:46');
INSERT INTO `admin_operation_log` VALUES ('3216', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 11:58:24', '2019-10-12 11:58:24');
INSERT INTO `admin_operation_log` VALUES ('3217', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 11:58:48', '2019-10-12 11:58:48');
INSERT INTO `admin_operation_log` VALUES ('3218', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"iconfont iconshouyedaohangtubiao\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-12 11:59:24', '2019-10-12 11:59:24');
INSERT INTO `admin_operation_log` VALUES ('3219', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 11:59:30', '2019-10-12 11:59:30');
INSERT INTO `admin_operation_log` VALUES ('3220', '1', 'admin/auth/menu/63/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 12:00:00', '2019-10-12 12:00:00');
INSERT INTO `admin_operation_log` VALUES ('3221', '1', 'admin/auth/menu/63', 'PUT', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"\\u5b9e\\u540d\\u8ba4\\u8bc1\",\"icon\":\"iconfont iconshenfenzhenghaomaguizheng\",\"uri\":\"\\/personnel\\/authentications\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-12 12:00:26', '2019-10-12 12:00:26');
INSERT INTO `admin_operation_log` VALUES ('3222', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 12:00:33', '2019-10-12 12:00:33');
INSERT INTO `admin_operation_log` VALUES ('3223', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 12:00:51', '2019-10-12 12:00:51');
INSERT INTO `admin_operation_log` VALUES ('3224', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 12:01:13', '2019-10-12 12:01:13');
INSERT INTO `admin_operation_log` VALUES ('3225', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 12:01:26', '2019-10-12 12:01:26');
INSERT INTO `admin_operation_log` VALUES ('3226', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 12:01:50', '2019-10-12 12:01:50');
INSERT INTO `admin_operation_log` VALUES ('3227', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 12:02:23', '2019-10-12 12:02:23');
INSERT INTO `admin_operation_log` VALUES ('3228', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 12:03:14', '2019-10-12 12:03:14');
INSERT INTO `admin_operation_log` VALUES ('3229', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 12:03:56', '2019-10-12 12:03:56');
INSERT INTO `admin_operation_log` VALUES ('3230', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 12:04:08', '2019-10-12 12:04:08');
INSERT INTO `admin_operation_log` VALUES ('3231', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 12:07:29', '2019-10-12 12:07:29');
INSERT INTO `admin_operation_log` VALUES ('3232', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 12:08:39', '2019-10-12 12:08:39');
INSERT INTO `admin_operation_log` VALUES ('3233', '1', 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 13:56:30', '2019-10-12 13:56:30');
INSERT INTO `admin_operation_log` VALUES ('3234', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 13:56:50', '2019-10-12 13:56:50');
INSERT INTO `admin_operation_log` VALUES ('3235', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 13:57:53', '2019-10-12 13:57:53');
INSERT INTO `admin_operation_log` VALUES ('3236', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 13:58:33', '2019-10-12 13:58:33');
INSERT INTO `admin_operation_log` VALUES ('3237', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 13:59:42', '2019-10-12 13:59:42');
INSERT INTO `admin_operation_log` VALUES ('3238', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 13:59:49', '2019-10-12 13:59:49');
INSERT INTO `admin_operation_log` VALUES ('3239', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:04:19', '2019-10-12 14:04:19');
INSERT INTO `admin_operation_log` VALUES ('3240', '1', 'admin/notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:04:46', '2019-10-12 14:04:46');
INSERT INTO `admin_operation_log` VALUES ('3241', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:04:54', '2019-10-12 14:04:54');
INSERT INTO `admin_operation_log` VALUES ('3242', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:06:14', '2019-10-12 14:06:14');
INSERT INTO `admin_operation_log` VALUES ('3243', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:07:00', '2019-10-12 14:07:00');
INSERT INTO `admin_operation_log` VALUES ('3244', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:07:26', '2019-10-12 14:07:26');
INSERT INTO `admin_operation_log` VALUES ('3245', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:10:50', '2019-10-12 14:10:50');
INSERT INTO `admin_operation_log` VALUES ('3246', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:11:14', '2019-10-12 14:11:14');
INSERT INTO `admin_operation_log` VALUES ('3247', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:11:35', '2019-10-12 14:11:35');
INSERT INTO `admin_operation_log` VALUES ('3248', '1', 'admin/personnel/lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:11:49', '2019-10-12 14:11:49');
INSERT INTO `admin_operation_log` VALUES ('3249', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:12:13', '2019-10-12 14:12:13');
INSERT INTO `admin_operation_log` VALUES ('3250', '1', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:12:24', '2019-10-12 14:12:24');
INSERT INTO `admin_operation_log` VALUES ('3251', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:12:40', '2019-10-12 14:12:40');
INSERT INTO `admin_operation_log` VALUES ('3252', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:13:30', '2019-10-12 14:13:30');
INSERT INTO `admin_operation_log` VALUES ('3253', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:14:38', '2019-10-12 14:14:38');
INSERT INTO `admin_operation_log` VALUES ('3254', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:15:08', '2019-10-12 14:15:08');
INSERT INTO `admin_operation_log` VALUES ('3255', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:18:07', '2019-10-12 14:18:07');
INSERT INTO `admin_operation_log` VALUES ('3256', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:18:55', '2019-10-12 14:18:55');
INSERT INTO `admin_operation_log` VALUES ('3257', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"username\":\"ad\",\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:19:10', '2019-10-12 14:19:10');
INSERT INTO `admin_operation_log` VALUES ('3258', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"username\":\"ad\"}', '2019-10-12 14:20:39', '2019-10-12 14:20:39');
INSERT INTO `admin_operation_log` VALUES ('3259', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"username\":\"ad\",\"name\":\"ad\",\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:21:42', '2019-10-12 14:21:42');
INSERT INTO `admin_operation_log` VALUES ('3260', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"username\":\"ad\",\"name\":\"ad\"}', '2019-10-12 14:24:40', '2019-10-12 14:24:40');
INSERT INTO `admin_operation_log` VALUES ('3261', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:25:01', '2019-10-12 14:25:01');
INSERT INTO `admin_operation_log` VALUES ('3262', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:25:20', '2019-10-12 14:25:20');
INSERT INTO `admin_operation_log` VALUES ('3263', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"ebd38c3d7e9280c90731ef82eae9f662\":\"ad\",\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:25:37', '2019-10-12 14:25:37');
INSERT INTO `admin_operation_log` VALUES ('3264', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"ebd38c3d7e9280c90731ef82eae9f662\":\"ad\"}', '2019-10-12 14:26:17', '2019-10-12 14:26:17');
INSERT INTO `admin_operation_log` VALUES ('3265', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:26:57', '2019-10-12 14:26:57');
INSERT INTO `admin_operation_log` VALUES ('3266', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"ebd38c3d7e9280c90731ef82eae9f662\":\"\\u5f8b\\u5e08\",\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:27:31', '2019-10-12 14:27:31');
INSERT INTO `admin_operation_log` VALUES ('3267', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"ebd38c3d7e9280c90731ef82eae9f662\":\"laywer\"}', '2019-10-12 14:27:52', '2019-10-12 14:27:52');
INSERT INTO `admin_operation_log` VALUES ('3268', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 14:28:09', '2019-10-12 14:28:09');
INSERT INTO `admin_operation_log` VALUES ('3269', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"ebd38c3d7e9280c90731ef82eae9f662\":\"articl\",\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:28:29', '2019-10-12 14:28:29');
INSERT INTO `admin_operation_log` VALUES ('3270', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"ebd38c3d7e9280c90731ef82eae9f662\":\"articl\"}', '2019-10-12 14:28:53', '2019-10-12 14:28:53');
INSERT INTO `admin_operation_log` VALUES ('3271', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"ebd38c3d7e9280c90731ef82eae9f662\":null}', '2019-10-12 14:29:07', '2019-10-12 14:29:07');
INSERT INTO `admin_operation_log` VALUES ('3272', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:29:16', '2019-10-12 14:29:16');
INSERT INTO `admin_operation_log` VALUES ('3273', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:29:26', '2019-10-12 14:29:26');
INSERT INTO `admin_operation_log` VALUES ('3274', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"article\",\"name\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"password\":\"$2y$10$uN4FHTJph5HvKAVyc9qr0eU\\/LrWkG.jcWheNXFajTJXqWrvjOxaMq\",\"password_confirmation\":\"$2y$10$uN4FHTJph5HvKAVyc9qr0eU\\/LrWkG.jcWheNXFajTJXqWrvjOxaMq\",\"roles\":[\"2\",null],\"permissions\":[null],\"related_spec_id\":null,\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/users?ebd38c3d7e9280c90731ef82eae9f662\"}', '2019-10-12 14:29:50', '2019-10-12 14:29:50');
INSERT INTO `admin_operation_log` VALUES ('3275', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"ebd38c3d7e9280c90731ef82eae9f662\":null}', '2019-10-12 14:29:55', '2019-10-12 14:29:55');
INSERT INTO `admin_operation_log` VALUES ('3276', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:30:07', '2019-10-12 14:30:07');
INSERT INTO `admin_operation_log` VALUES ('3277', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:30:20', '2019-10-12 14:30:20');
INSERT INTO `admin_operation_log` VALUES ('3278', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"article\",\"name\":\"article\",\"permissions\":[\"2\",\"3\",\"4\",\"7\",null],\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/roles\"}', '2019-10-12 14:31:02', '2019-10-12 14:31:02');
INSERT INTO `admin_operation_log` VALUES ('3279', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-10-12 14:31:07', '2019-10-12 14:31:07');
INSERT INTO `admin_operation_log` VALUES ('3280', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:31:21', '2019-10-12 14:31:21');
INSERT INTO `admin_operation_log` VALUES ('3281', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:31:38', '2019-10-12 14:31:38');
INSERT INTO `admin_operation_log` VALUES ('3282', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:33:04', '2019-10-12 14:33:04');
INSERT INTO `admin_operation_log` VALUES ('3283', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:33:19', '2019-10-12 14:33:19');
INSERT INTO `admin_operation_log` VALUES ('3284', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:33:43', '2019-10-12 14:33:43');
INSERT INTO `admin_operation_log` VALUES ('3285', '3', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:33:54', '2019-10-12 14:33:54');
INSERT INTO `admin_operation_log` VALUES ('3286', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:34:21', '2019-10-12 14:34:21');
INSERT INTO `admin_operation_log` VALUES ('3287', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:34:54', '2019-10-12 14:34:54');
INSERT INTO `admin_operation_log` VALUES ('3288', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:35:38', '2019-10-12 14:35:38');
INSERT INTO `admin_operation_log` VALUES ('3289', '1', 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:35:56', '2019-10-12 14:35:56');
INSERT INTO `admin_operation_log` VALUES ('3290', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:37:33', '2019-10-12 14:37:33');
INSERT INTO `admin_operation_log` VALUES ('3291', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:38:04', '2019-10-12 14:38:04');
INSERT INTO `admin_operation_log` VALUES ('3292', '1', 'admin/auth/menu/61/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:39:36', '2019-10-12 14:39:36');
INSERT INTO `admin_operation_log` VALUES ('3293', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:40:35', '2019-10-12 14:40:35');
INSERT INTO `admin_operation_log` VALUES ('3294', '3', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:42:02', '2019-10-12 14:42:02');
INSERT INTO `admin_operation_log` VALUES ('3295', '3', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:42:12', '2019-10-12 14:42:12');
INSERT INTO `admin_operation_log` VALUES ('3296', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:43:55', '2019-10-12 14:43:55');
INSERT INTO `admin_operation_log` VALUES ('3297', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:45:23', '2019-10-12 14:45:23');
INSERT INTO `admin_operation_log` VALUES ('3298', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:47:20', '2019-10-12 14:47:20');
INSERT INTO `admin_operation_log` VALUES ('3299', '3', 'admin/articles/legals/categorys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:48:27', '2019-10-12 14:48:27');
INSERT INTO `admin_operation_log` VALUES ('3300', '3', 'admin/articles/legals/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:48:36', '2019-10-12 14:48:36');
INSERT INTO `admin_operation_log` VALUES ('3301', '3', 'admin/articles/browse-history', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:48:44', '2019-10-12 14:48:44');
INSERT INTO `admin_operation_log` VALUES ('3302', '3', 'admin/articles/likes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:48:55', '2019-10-12 14:48:55');
INSERT INTO `admin_operation_log` VALUES ('3303', '3', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:49:08', '2019-10-12 14:49:08');
INSERT INTO `admin_operation_log` VALUES ('3304', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:49:53', '2019-10-12 14:49:53');
INSERT INTO `admin_operation_log` VALUES ('3305', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:50:16', '2019-10-12 14:50:16');
INSERT INTO `admin_operation_log` VALUES ('3306', '3', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:54:32', '2019-10-12 14:54:32');
INSERT INTO `admin_operation_log` VALUES ('3307', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"articles\",\"name\":\"\\u6848\\u4f8b\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/articles\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-12 14:55:08', '2019-10-12 14:55:08');
INSERT INTO `admin_operation_log` VALUES ('3308', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-12 14:55:12', '2019-10-12 14:55:12');
INSERT INTO `admin_operation_log` VALUES ('3309', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:55:32', '2019-10-12 14:55:32');
INSERT INTO `admin_operation_log` VALUES ('3310', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:55:45', '2019-10-12 14:55:45');
INSERT INTO `admin_operation_log` VALUES ('3311', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '[]', '2019-10-12 14:56:05', '2019-10-12 14:56:05');
INSERT INTO `admin_operation_log` VALUES ('3312', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"laywer\",\"name\":\"laywer\",\"permissions\":[\"3\",\"4\",\"22\",\"23\",null],\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\"}', '2019-10-12 14:56:39', '2019-10-12 14:56:39');
INSERT INTO `admin_operation_log` VALUES ('3313', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-10-12 14:56:44', '2019-10-12 14:56:44');
INSERT INTO `admin_operation_log` VALUES ('3314', '3', 'admin/articles/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-12 14:57:00', '2019-10-12 14:57:00');
INSERT INTO `admin_operation_log` VALUES ('3315', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:57:12', '2019-10-12 14:57:12');
INSERT INTO `admin_operation_log` VALUES ('3316', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 14:57:24', '2019-10-12 14:57:24');
INSERT INTO `admin_operation_log` VALUES ('3317', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:57:37', '2019-10-12 14:57:37');
INSERT INTO `admin_operation_log` VALUES ('3318', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:58:16', '2019-10-12 14:58:16');
INSERT INTO `admin_operation_log` VALUES ('3319', '1', 'admin/auth/permissions/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 14:59:08', '2019-10-12 14:59:08');
INSERT INTO `admin_operation_log` VALUES ('3320', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:00:13', '2019-10-12 15:00:13');
INSERT INTO `admin_operation_log` VALUES ('3321', '1', 'admin/auth/permissions/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:00:27', '2019-10-12 15:00:27');
INSERT INTO `admin_operation_log` VALUES ('3322', '1', 'admin/auth/permissions/23', 'PUT', '127.0.0.1', '{\"slug\":\"articles\",\"name\":\"\\u6848\\u4f8b\",\"http_method\":[null],\"http_path\":\"\\/articles\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\"}', '2019-10-12 15:00:43', '2019-10-12 15:00:43');
INSERT INTO `admin_operation_log` VALUES ('3323', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-12 15:00:48', '2019-10-12 15:00:48');
INSERT INTO `admin_operation_log` VALUES ('3324', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-12 15:01:25', '2019-10-12 15:01:25');
INSERT INTO `admin_operation_log` VALUES ('3325', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '[]', '2019-10-12 15:01:42', '2019-10-12 15:01:42');
INSERT INTO `admin_operation_log` VALUES ('3326', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:01:47', '2019-10-12 15:01:47');
INSERT INTO `admin_operation_log` VALUES ('3327', '1', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:03:03', '2019-10-12 15:03:03');
INSERT INTO `admin_operation_log` VALUES ('3328', '3', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-10-12 15:04:04', '2019-10-12 15:04:04');
INSERT INTO `admin_operation_log` VALUES ('3329', '3', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-10-12 15:05:51', '2019-10-12 15:05:51');
INSERT INTO `admin_operation_log` VALUES ('3330', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:06:03', '2019-10-12 15:06:03');
INSERT INTO `admin_operation_log` VALUES ('3331', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:06:19', '2019-10-12 15:06:19');
INSERT INTO `admin_operation_log` VALUES ('3332', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:06:26', '2019-10-12 15:06:26');
INSERT INTO `admin_operation_log` VALUES ('3333', '3', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:07:13', '2019-10-12 15:07:13');
INSERT INTO `admin_operation_log` VALUES ('3334', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:07:46', '2019-10-12 15:07:46');
INSERT INTO `admin_operation_log` VALUES ('3335', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:08:17', '2019-10-12 15:08:17');
INSERT INTO `admin_operation_log` VALUES ('3336', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:10:47', '2019-10-12 15:10:47');
INSERT INTO `admin_operation_log` VALUES ('3337', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:11:15', '2019-10-12 15:11:15');
INSERT INTO `admin_operation_log` VALUES ('3338', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2019-10-12 15:13:01', '2019-10-12 15:13:01');
INSERT INTO `admin_operation_log` VALUES ('3339', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:14:59', '2019-10-12 15:14:59');
INSERT INTO `admin_operation_log` VALUES ('3340', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2019-10-12 15:15:57', '2019-10-12 15:15:57');
INSERT INTO `admin_operation_log` VALUES ('3341', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:17:30', '2019-10-12 15:17:30');
INSERT INTO `admin_operation_log` VALUES ('3342', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:17:48', '2019-10-12 15:17:48');
INSERT INTO `admin_operation_log` VALUES ('3343', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2019-10-12 15:18:11', '2019-10-12 15:18:11');
INSERT INTO `admin_operation_log` VALUES ('3344', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:18:39', '2019-10-12 15:18:39');
INSERT INTO `admin_operation_log` VALUES ('3345', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:18:54', '2019-10-12 15:18:54');
INSERT INTO `admin_operation_log` VALUES ('3346', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:19:43', '2019-10-12 15:19:43');
INSERT INTO `admin_operation_log` VALUES ('3347', '1', 'admin/auth/permissions/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:20:00', '2019-10-12 15:20:00');
INSERT INTO `admin_operation_log` VALUES ('3348', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:20:39', '2019-10-12 15:20:39');
INSERT INTO `admin_operation_log` VALUES ('3349', '3', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:20:57', '2019-10-12 15:20:57');
INSERT INTO `admin_operation_log` VALUES ('3350', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:23:28', '2019-10-12 15:23:28');
INSERT INTO `admin_operation_log` VALUES ('3351', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-12 15:28:19', '2019-10-12 15:28:19');
INSERT INTO `admin_operation_log` VALUES ('3352', '1', 'admin/auth/permissions/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:28:38', '2019-10-12 15:28:38');
INSERT INTO `admin_operation_log` VALUES ('3353', '1', 'admin/auth/permissions/23', 'PUT', '127.0.0.1', '{\"slug\":\"articles\",\"name\":\"\\u6848\\u4f8b\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/articles\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-12 15:28:54', '2019-10-12 15:28:54');
INSERT INTO `admin_operation_log` VALUES ('3354', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-12 15:28:59', '2019-10-12 15:28:59');
INSERT INTO `admin_operation_log` VALUES ('3355', '3', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-10-12 15:29:29', '2019-10-12 15:29:29');
INSERT INTO `admin_operation_log` VALUES ('3356', '3', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:29:47', '2019-10-12 15:29:47');
INSERT INTO `admin_operation_log` VALUES ('3357', '1', 'admin/auth/permissions/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:30:37', '2019-10-12 15:30:37');
INSERT INTO `admin_operation_log` VALUES ('3358', '3', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:30:46', '2019-10-12 15:30:46');
INSERT INTO `admin_operation_log` VALUES ('3359', '1', 'admin/auth/permissions/23', 'PUT', '127.0.0.1', '{\"slug\":\"articles\",\"name\":\"\\u6848\\u4f8b\",\"http_method\":[null],\"http_path\":\"\\/articles\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-12 15:30:54', '2019-10-12 15:30:54');
INSERT INTO `admin_operation_log` VALUES ('3360', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-12 15:30:59', '2019-10-12 15:30:59');
INSERT INTO `admin_operation_log` VALUES ('3361', '3', 'admin/articles', 'GET', '127.0.0.1', '[]', '2019-10-12 15:33:42', '2019-10-12 15:33:42');
INSERT INTO `admin_operation_log` VALUES ('3362', '3', 'admin/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:33:59', '2019-10-12 15:33:59');
INSERT INTO `admin_operation_log` VALUES ('3363', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:35:13', '2019-10-12 15:35:13');
INSERT INTO `admin_operation_log` VALUES ('3364', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:35:29', '2019-10-12 15:35:29');
INSERT INTO `admin_operation_log` VALUES ('3365', '3', 'admin/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:36:12', '2019-10-12 15:36:12');
INSERT INTO `admin_operation_log` VALUES ('3366', '3', 'admin/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:36:40', '2019-10-12 15:36:40');
INSERT INTO `admin_operation_log` VALUES ('3367', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:38:55', '2019-10-12 15:38:55');
INSERT INTO `admin_operation_log` VALUES ('3368', '1', 'admin/auth/menu/41/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:39:41', '2019-10-12 15:39:41');
INSERT INTO `admin_operation_log` VALUES ('3369', '1', 'admin/auth/menu/41', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u6848\\u4f8b\",\"icon\":\"iconfont iconanli2\",\"uri\":\"\\/articles\\/cases\",\"roles\":[null],\"permission\":\"articles\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-12 15:39:58', '2019-10-12 15:39:58');
INSERT INTO `admin_operation_log` VALUES ('3370', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-12 15:40:05', '2019-10-12 15:40:05');
INSERT INTO `admin_operation_log` VALUES ('3371', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:40:25', '2019-10-12 15:40:25');
INSERT INTO `admin_operation_log` VALUES ('3372', '1', 'admin/auth/permissions/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:40:42', '2019-10-12 15:40:42');
INSERT INTO `admin_operation_log` VALUES ('3373', '1', 'admin/auth/permissions/23', 'PUT', '127.0.0.1', '{\"slug\":\"articles\",\"name\":\"\\u6848\\u4f8b\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/articles\\/cases*\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-12 15:41:05', '2019-10-12 15:41:05');
INSERT INTO `admin_operation_log` VALUES ('3374', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-12 15:41:13', '2019-10-12 15:41:13');
INSERT INTO `admin_operation_log` VALUES ('3375', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:41:24', '2019-10-12 15:41:24');
INSERT INTO `admin_operation_log` VALUES ('3376', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:41:55', '2019-10-12 15:41:55');
INSERT INTO `admin_operation_log` VALUES ('3377', '3', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:42:06', '2019-10-12 15:42:06');
INSERT INTO `admin_operation_log` VALUES ('3378', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:42:22', '2019-10-12 15:42:22');
INSERT INTO `admin_operation_log` VALUES ('3379', '3', 'admin/articles/cases/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:42:33', '2019-10-12 15:42:33');
INSERT INTO `admin_operation_log` VALUES ('3380', '3', 'admin/articles/cases/1', 'PUT', '127.0.0.1', '{\"spec_id\":\"1\",\"content\":\"<blockquote><b>Accusantium sed similique qui ut dolore nihil.<\\/b><\\/blockquote><p>\\u200b<br><\\/p>1515615\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\"}', '2019-10-12 15:42:48', '2019-10-12 15:42:48');
INSERT INTO `admin_operation_log` VALUES ('3381', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 15:42:51', '2019-10-12 15:42:51');
INSERT INTO `admin_operation_log` VALUES ('3382', '3', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:43:01', '2019-10-12 15:43:01');
INSERT INTO `admin_operation_log` VALUES ('3383', '3', 'admin/articles/cases', 'POST', '127.0.0.1', '{\"spec_id\":\"1\",\"content\":\"141515\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\"}', '2019-10-12 15:43:37', '2019-10-12 15:43:37');
INSERT INTO `admin_operation_log` VALUES ('3384', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 15:43:47', '2019-10-12 15:43:47');
INSERT INTO `admin_operation_log` VALUES ('3385', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:43:55', '2019-10-12 15:43:55');
INSERT INTO `admin_operation_log` VALUES ('3386', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:44:58', '2019-10-12 15:44:58');
INSERT INTO `admin_operation_log` VALUES ('3387', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:46:33', '2019-10-12 15:46:33');
INSERT INTO `admin_operation_log` VALUES ('3388', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:46:46', '2019-10-12 15:46:46');
INSERT INTO `admin_operation_log` VALUES ('3389', '1', 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '[]', '2019-10-12 15:47:19', '2019-10-12 15:47:19');
INSERT INTO `admin_operation_log` VALUES ('3390', '1', 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"laywer\",\"name\":\"laywer\",\"permissions\":[\"2\",\"3\",\"4\",\"22\",\"23\",null],\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\"}', '2019-10-12 15:47:37', '2019-10-12 15:47:37');
INSERT INTO `admin_operation_log` VALUES ('3391', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-10-12 15:47:42', '2019-10-12 15:47:42');
INSERT INTO `admin_operation_log` VALUES ('3392', '3', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-12 15:47:55', '2019-10-12 15:47:55');
INSERT INTO `admin_operation_log` VALUES ('3393', '3', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:49:56', '2019-10-12 15:49:56');
INSERT INTO `admin_operation_log` VALUES ('3394', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:52:05', '2019-10-12 15:52:05');
INSERT INTO `admin_operation_log` VALUES ('3395', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:52:14', '2019-10-12 15:52:14');
INSERT INTO `admin_operation_log` VALUES ('3396', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:57:35', '2019-10-12 15:57:35');
INSERT INTO `admin_operation_log` VALUES ('3397', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:58:16', '2019-10-12 15:58:16');
INSERT INTO `admin_operation_log` VALUES ('3398', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 15:58:53', '2019-10-12 15:58:53');
INSERT INTO `admin_operation_log` VALUES ('3399', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-10-12 16:00:02', '2019-10-12 16:00:02');
INSERT INTO `admin_operation_log` VALUES ('3400', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:07:53', '2019-10-12 16:07:53');
INSERT INTO `admin_operation_log` VALUES ('3401', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:08:04', '2019-10-12 16:08:04');
INSERT INTO `admin_operation_log` VALUES ('3402', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"root\",\"name\":\"root\",\"password\":\"12345678\",\"password_confirmation\":\"12345678\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"related_spec_id\":\"1\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/users\"}', '2019-10-12 16:09:10', '2019-10-12 16:09:10');
INSERT INTO `admin_operation_log` VALUES ('3403', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 16:09:15', '2019-10-12 16:09:15');
INSERT INTO `admin_operation_log` VALUES ('3404', '1', 'admin/auth/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:09:29', '2019-10-12 16:09:29');
INSERT INTO `admin_operation_log` VALUES ('3405', '1', 'admin/auth/users/4', 'PUT', '127.0.0.1', '{\"username\":\"root\",\"name\":\"root\",\"password\":\"$2y$10$CCKk59oyBB3.Qv3cYZ9pA.WKKGt\\/3YKHzzXCo1Xt\\/qYjyVcqb1dfy\",\"password_confirmation\":\"$2y$10$CCKk59oyBB3.Qv3cYZ9pA.WKKGt\\/3YKHzzXCo1Xt\\/qYjyVcqb1dfy\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"related_spec_id\":null,\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/users\"}', '2019-10-12 16:09:42', '2019-10-12 16:09:42');
INSERT INTO `admin_operation_log` VALUES ('3406', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-10-12 16:09:47', '2019-10-12 16:09:47');
INSERT INTO `admin_operation_log` VALUES ('3407', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:11:31', '2019-10-12 16:11:31');
INSERT INTO `admin_operation_log` VALUES ('3408', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:18:49', '2019-10-12 16:18:49');
INSERT INTO `admin_operation_log` VALUES ('3409', '1', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:19:13', '2019-10-12 16:19:13');
INSERT INTO `admin_operation_log` VALUES ('3410', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:19:19', '2019-10-12 16:19:19');
INSERT INTO `admin_operation_log` VALUES ('3411', '1', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:21:22', '2019-10-12 16:21:22');
INSERT INTO `admin_operation_log` VALUES ('3412', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:21:27', '2019-10-12 16:21:27');
INSERT INTO `admin_operation_log` VALUES ('3413', '1', 'admin/articles/cases/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:22:11', '2019-10-12 16:22:11');
INSERT INTO `admin_operation_log` VALUES ('3414', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:22:17', '2019-10-12 16:22:17');
INSERT INTO `admin_operation_log` VALUES ('3415', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:22:43', '2019-10-12 16:22:43');
INSERT INTO `admin_operation_log` VALUES ('3416', '3', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:22:55', '2019-10-12 16:22:55');
INSERT INTO `admin_operation_log` VALUES ('3417', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:23:02', '2019-10-12 16:23:02');
INSERT INTO `admin_operation_log` VALUES ('3418', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:24:34', '2019-10-12 16:24:34');
INSERT INTO `admin_operation_log` VALUES ('3419', '3', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:24:55', '2019-10-12 16:24:55');
INSERT INTO `admin_operation_log` VALUES ('3420', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:24:59', '2019-10-12 16:24:59');
INSERT INTO `admin_operation_log` VALUES ('3421', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:28:15', '2019-10-12 16:28:15');
INSERT INTO `admin_operation_log` VALUES ('3422', '1', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:28:38', '2019-10-12 16:28:38');
INSERT INTO `admin_operation_log` VALUES ('3423', '1', 'admin/articles/cases/create', 'GET', '127.0.0.1', '[]', '2019-10-12 16:29:12', '2019-10-12 16:29:12');
INSERT INTO `admin_operation_log` VALUES ('3424', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:30:47', '2019-10-12 16:30:47');
INSERT INTO `admin_operation_log` VALUES ('3425', '1', 'admin/articles/cases/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:35:37', '2019-10-12 16:35:37');
INSERT INTO `admin_operation_log` VALUES ('3426', '1', 'admin/articles/cases', 'POST', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"content\":\"15451651\",\"_token\":\"cjRdXtX9ysAo9b1RVbcCZqoFGqvRiRrkJAxOAR3C\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\"}', '2019-10-12 16:36:47', '2019-10-12 16:36:47');
INSERT INTO `admin_operation_log` VALUES ('3427', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:36:53', '2019-10-12 16:36:53');
INSERT INTO `admin_operation_log` VALUES ('3428', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:37:08', '2019-10-12 16:37:08');
INSERT INTO `admin_operation_log` VALUES ('3429', '3', 'admin/specialists/advices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:37:23', '2019-10-12 16:37:23');
INSERT INTO `admin_operation_log` VALUES ('3430', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:38:19', '2019-10-12 16:38:19');
INSERT INTO `admin_operation_log` VALUES ('3431', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:38:30', '2019-10-12 16:38:30');
INSERT INTO `admin_operation_log` VALUES ('3432', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-10-12 16:38:41', '2019-10-12 16:38:41');
INSERT INTO `admin_operation_log` VALUES ('3433', '3', 'admin/articles/cases/120/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:38:57', '2019-10-12 16:38:57');
INSERT INTO `admin_operation_log` VALUES ('3434', '3', 'admin/articles/cases/120/edit', 'GET', '127.0.0.1', '[]', '2019-10-12 16:40:29', '2019-10-12 16:40:29');
INSERT INTO `admin_operation_log` VALUES ('3435', '3', 'admin/articles/cases/120', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"content\":\"15451651\",\"interpretation\":\"\\u8fd8\\u53ef\\u4ee5\",\"measures\":\"\\u4e0d\\u77e5\\u9053\\u600e\\u4e48\\u56de\\u4e8b\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\"}', '2019-10-12 16:44:02', '2019-10-12 16:44:02');
INSERT INTO `admin_operation_log` VALUES ('3436', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '[]', '2019-10-12 16:44:07', '2019-10-12 16:44:07');
INSERT INTO `admin_operation_log` VALUES ('3437', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:44:18', '2019-10-12 16:44:18');
INSERT INTO `admin_operation_log` VALUES ('3438', '3', 'admin/articles/cases/120/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:47:03', '2019-10-12 16:47:03');
INSERT INTO `admin_operation_log` VALUES ('3439', '3', 'admin/articles/cases/120', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"content\":\"15451651\",\"interpretation\":\"\\u8fd8\\u53ef\\u4ee5\",\"measures\":\"\\u4e0d\\u77e5\\u9053\\u600e\\u4e48\\u56de\\u4e8b00\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-10-12 16:47:28', '2019-10-12 16:47:28');
INSERT INTO `admin_operation_log` VALUES ('3440', '3', 'admin/articles/cases/120', 'GET', '127.0.0.1', '[]', '2019-10-12 16:48:22', '2019-10-12 16:48:22');
INSERT INTO `admin_operation_log` VALUES ('3441', '3', 'admin/articles/cases/120/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:48:36', '2019-10-12 16:48:36');
INSERT INTO `admin_operation_log` VALUES ('3442', '3', 'admin/articles/cases/120', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"content\":\"15451651\",\"interpretation\":\"\\u8fd8\\u53ef\\u4ee5\",\"measures\":\"\\u4e0d\\u77e5\\u9053\\u600e\\u4e48\\u56de\\u4e8b000\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\\/120\"}', '2019-10-12 16:48:48', '2019-10-12 16:48:48');
INSERT INTO `admin_operation_log` VALUES ('3443', '3', 'admin/articles/cases/120', 'GET', '127.0.0.1', '[]', '2019-10-12 16:49:48', '2019-10-12 16:49:48');
INSERT INTO `admin_operation_log` VALUES ('3444', '3', 'admin/articles/cases/120/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:50:00', '2019-10-12 16:50:00');
INSERT INTO `admin_operation_log` VALUES ('3445', '3', 'admin/articles/cases/120', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"content\":\"15451651\",\"interpretation\":\"\\u8fd8\\u53ef\\u4ee5\",\"measures\":\"\\u4e0d\\u77e5\\u9053\\u600e\\u4e48\\u56de\\u4e8b000\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\\/120\"}', '2019-10-12 16:50:14', '2019-10-12 16:50:14');
INSERT INTO `admin_operation_log` VALUES ('3446', '3', 'admin/articles/cases/120', 'GET', '127.0.0.1', '[]', '2019-10-12 16:50:20', '2019-10-12 16:50:20');
INSERT INTO `admin_operation_log` VALUES ('3447', '3', 'admin/articles/cases/120/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:50:44', '2019-10-12 16:50:44');
INSERT INTO `admin_operation_log` VALUES ('3448', '3', 'admin/articles/cases/120', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"content\":\"15451651\",\"interpretation\":\"\\u8fd8\\u53ef\\u4ee5\",\"measures\":\"\\u4e0d\\u77e5\\u9053\\u600e\\u4e48\\u56de\\u4e8b000\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\\/120\"}', '2019-10-12 16:55:05', '2019-10-12 16:55:05');
INSERT INTO `admin_operation_log` VALUES ('3449', '3', 'admin/articles/cases/120', 'GET', '127.0.0.1', '[]', '2019-10-12 16:55:11', '2019-10-12 16:55:11');
INSERT INTO `admin_operation_log` VALUES ('3450', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-10-12 16:55:24', '2019-10-12 16:55:24');
INSERT INTO `admin_operation_log` VALUES ('3451', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-10-12 16:55:45', '2019-10-12 16:55:45');
INSERT INTO `admin_operation_log` VALUES ('3452', '3', 'admin/articles/cases/120/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 16:59:18', '2019-10-12 16:59:18');
INSERT INTO `admin_operation_log` VALUES ('3453', '3', 'admin/articles/cases/120', 'PUT', '127.0.0.1', '{\"user_id\":\"1\",\"title\":\"\\u6d4b\\u8bd5\",\"content\":\"15451651\",\"interpretation\":\"\\u8fd8\\u53ef\\u4ee5\",\"measures\":\"\\u4e0d\\u77e5\\u9053\\u600e\\u4e48\\u56de\\u4e8b\",\"_token\":\"QhkIzEInHwsoCafJ5jtFmL7Xviw9Bp2mIVsUluL8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/articles\\/cases\\/120\"}', '2019-10-12 16:59:32', '2019-10-12 16:59:32');
INSERT INTO `admin_operation_log` VALUES ('3454', '3', 'admin/articles/cases/120', 'GET', '127.0.0.1', '[]', '2019-10-12 16:59:37', '2019-10-12 16:59:37');
INSERT INTO `admin_operation_log` VALUES ('3455', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-10-12 16:59:56', '2019-10-12 16:59:56');
INSERT INTO `admin_operation_log` VALUES ('3456', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 17:00:40', '2019-10-12 17:00:40');
INSERT INTO `admin_operation_log` VALUES ('3457', '3', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 17:09:08', '2019-10-12 17:09:08');
INSERT INTO `admin_operation_log` VALUES ('3458', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-10-12 17:11:53', '2019-10-12 17:11:53');
INSERT INTO `admin_operation_log` VALUES ('3459', '1', 'admin/articles/cases', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-10-12 17:14:12', '2019-10-12 17:14:12');
INSERT INTO `admin_operation_log` VALUES ('3460', '1', 'admin/feedback', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 10:53:25', '2019-10-14 10:53:25');
INSERT INTO `admin_operation_log` VALUES ('3461', '1', 'admin/feedback', 'GET', '127.0.0.1', '[]', '2019-10-14 10:54:50', '2019-10-14 10:54:50');
INSERT INTO `admin_operation_log` VALUES ('3462', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:00:05', '2019-10-14 11:00:05');
INSERT INTO `admin_operation_log` VALUES ('3463', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"active\":\"site\"}', '2019-10-14 11:00:09', '2019-10-14 11:00:09');
INSERT INTO `admin_operation_log` VALUES ('3464', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"2VCR8SyYDafWOTnHq7usyvAzc3yZ99HN3kUuNyQ2\"}', '2019-10-14 11:00:58', '2019-10-14 11:00:58');
INSERT INTO `admin_operation_log` VALUES ('3465', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-14 11:01:00', '2019-10-14 11:01:00');
INSERT INTO `admin_operation_log` VALUES ('3466', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-14 11:13:35', '2019-10-14 11:13:35');
INSERT INTO `admin_operation_log` VALUES ('3467', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-14 11:14:11', '2019-10-14 11:14:11');
INSERT INTO `admin_operation_log` VALUES ('3468', '1', 'admin/_handle_form_', 'POST', '127.0.0.1', '{\"website_title\":\"\\u5bb6\\u6709\\u6cd5\\u5b9d\",\"website_desc\":\"\\u6cd5\\u5f8b\\u54a8\\u8be2\\uff0c\\u4e13\\u5bb6\\u7b54\\u7591\",\"website_copyright\":\"My Company 2019\",\"website_icp\":\"\\u6842icp20191009\",\"telephone\":\"07718562543\",\"address\":\"1049 Sycamore Street\",\"summary\":\"\\u516c\\u8bc1\\u5f8b\\u5e08\",\"website_statistics\":\"888\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Settings\\\\Site\",\"_token\":\"2VCR8SyYDafWOTnHq7usyvAzc3yZ99HN3kUuNyQ2\"}', '2019-10-14 11:15:36', '2019-10-14 11:15:36');
INSERT INTO `admin_operation_log` VALUES ('3469', '1', 'admin/forms/settings', 'GET', '127.0.0.1', '{\"active\":\"site\"}', '2019-10-14 11:15:37', '2019-10-14 11:15:37');
INSERT INTO `admin_operation_log` VALUES ('3470', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:32:16', '2019-10-14 11:32:16');
INSERT INTO `admin_operation_log` VALUES ('3471', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-14 11:40:07', '2019-10-14 11:40:07');
INSERT INTO `admin_operation_log` VALUES ('3472', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-14 11:41:22', '2019-10-14 11:41:22');
INSERT INTO `admin_operation_log` VALUES ('3473', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-14 11:41:51', '2019-10-14 11:41:51');
INSERT INTO `admin_operation_log` VALUES ('3474', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:41:59', '2019-10-14 11:41:59');
INSERT INTO `admin_operation_log` VALUES ('3475', '1', 'admin/goods', 'POST', '127.0.0.1', '{\"goods_name\":\"\\u795e\\u9a6c\\u8863\\u670d \\u7537\\u58eb M 170 \\u7eff\\u8272 \\u5916\\u5957\",\"detail\":\"<p><\\/p><p>\\u5f88\\u597d\\u5f88\\u5f3a\\u5927<\\/p>\",\"exchange_price\":\"10\",\"exchange_rule\":\"\\u6bcf\\u4eba\\u6bcf\\u5929\\u53ea\\u80fd\\u5151\\u6362\\u4e00\\u6b21\",\"description\":\"555\",\"stock\":\"10\",\"_token\":\"2VCR8SyYDafWOTnHq7usyvAzc3yZ99HN3kUuNyQ2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/goods\"}', '2019-10-14 11:44:06', '2019-10-14 11:44:06');
INSERT INTO `admin_operation_log` VALUES ('3476', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2019-10-14 11:44:07', '2019-10-14 11:44:07');
INSERT INTO `admin_operation_log` VALUES ('3477', '1', 'admin/notarys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:57:30', '2019-10-14 11:57:30');
INSERT INTO `admin_operation_log` VALUES ('3478', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 12:06:44', '2019-10-14 12:06:44');
INSERT INTO `admin_operation_log` VALUES ('3479', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5ba2\\u670d\",\"icon\":\"fa-tty\",\"uri\":\"\\/customers\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"2VCR8SyYDafWOTnHq7usyvAzc3yZ99HN3kUuNyQ2\"}', '2019-10-14 12:10:16', '2019-10-14 12:10:16');
INSERT INTO `admin_operation_log` VALUES ('3480', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 12:10:17', '2019-10-14 12:10:17');
INSERT INTO `admin_operation_log` VALUES ('3481', '1', 'admin/auth/menu/65/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 12:10:29', '2019-10-14 12:10:29');
INSERT INTO `admin_operation_log` VALUES ('3482', '1', 'admin/auth/menu/65', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5ba2\\u670d\",\"icon\":\"fa-tty\",\"uri\":\"\\/personnal\\/customers\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"2VCR8SyYDafWOTnHq7usyvAzc3yZ99HN3kUuNyQ2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-14 12:10:45', '2019-10-14 12:10:45');
INSERT INTO `admin_operation_log` VALUES ('3483', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 12:10:46', '2019-10-14 12:10:46');
INSERT INTO `admin_operation_log` VALUES ('3484', '1', 'admin/auth/menu/65/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 12:10:59', '2019-10-14 12:10:59');
INSERT INTO `admin_operation_log` VALUES ('3485', '1', 'admin/auth/menu/65', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5ba2\\u670d\",\"icon\":\"fa-tty\",\"uri\":\"\\/personnel\\/customers\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"2VCR8SyYDafWOTnHq7usyvAzc3yZ99HN3kUuNyQ2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-14 12:11:05', '2019-10-14 12:11:05');
INSERT INTO `admin_operation_log` VALUES ('3486', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 12:11:06', '2019-10-14 12:11:06');
INSERT INTO `admin_operation_log` VALUES ('3487', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 12:43:39', '2019-10-14 12:43:39');
INSERT INTO `admin_operation_log` VALUES ('3488', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 13:56:54', '2019-10-14 13:56:54');
INSERT INTO `admin_operation_log` VALUES ('3489', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 14:40:44', '2019-10-14 14:40:44');
INSERT INTO `admin_operation_log` VALUES ('3490', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 14:51:34', '2019-10-14 14:51:34');
INSERT INTO `admin_operation_log` VALUES ('3491', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 15:03:21', '2019-10-14 15:03:21');
INSERT INTO `admin_operation_log` VALUES ('3492', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 15:05:24', '2019-10-14 15:05:24');
INSERT INTO `admin_operation_log` VALUES ('3493', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 15:05:45', '2019-10-14 15:05:45');
INSERT INTO `admin_operation_log` VALUES ('3494', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 15:12:51', '2019-10-14 15:12:51');
INSERT INTO `admin_operation_log` VALUES ('3495', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-14 15:13:25', '2019-10-14 15:13:25');
INSERT INTO `admin_operation_log` VALUES ('3496', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 15:29:35', '2019-10-14 15:29:35');
INSERT INTO `admin_operation_log` VALUES ('3497', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:25:17', '2019-10-14 16:25:17');
INSERT INTO `admin_operation_log` VALUES ('3498', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:26:24', '2019-10-14 16:26:24');
INSERT INTO `admin_operation_log` VALUES ('3499', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:26:37', '2019-10-14 16:26:37');
INSERT INTO `admin_operation_log` VALUES ('3500', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:27:16', '2019-10-14 16:27:16');
INSERT INTO `admin_operation_log` VALUES ('3501', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:27:30', '2019-10-14 16:27:30');
INSERT INTO `admin_operation_log` VALUES ('3502', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:30:26', '2019-10-14 16:30:26');
INSERT INTO `admin_operation_log` VALUES ('3503', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:31:25', '2019-10-14 16:31:25');
INSERT INTO `admin_operation_log` VALUES ('3504', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:33:18', '2019-10-14 16:33:18');
INSERT INTO `admin_operation_log` VALUES ('3505', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:36:20', '2019-10-14 16:36:20');
INSERT INTO `admin_operation_log` VALUES ('3506', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:37:46', '2019-10-14 16:37:46');
INSERT INTO `admin_operation_log` VALUES ('3507', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:38:41', '2019-10-14 16:38:41');
INSERT INTO `admin_operation_log` VALUES ('3508', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:38:54', '2019-10-14 16:38:54');
INSERT INTO `admin_operation_log` VALUES ('3509', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:39:01', '2019-10-14 16:39:01');
INSERT INTO `admin_operation_log` VALUES ('3510', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:39:09', '2019-10-14 16:39:09');
INSERT INTO `admin_operation_log` VALUES ('3511', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:39:27', '2019-10-14 16:39:27');
INSERT INTO `admin_operation_log` VALUES ('3512', '1', 'admin/personnel/customers', 'GET', '127.0.0.1', '[]', '2019-10-14 16:39:44', '2019-10-14 16:39:44');
INSERT INTO `admin_operation_log` VALUES ('3513', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-10-14 17:13:09', '2019-10-14 17:13:09');
INSERT INTO `admin_operation_log` VALUES ('3514', '1', 'admin/notarys/comments', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:13:30', '2019-10-14 17:13:30');
INSERT INTO `admin_operation_log` VALUES ('3515', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:13:54', '2019-10-14 17:13:54');
INSERT INTO `admin_operation_log` VALUES ('3516', '1', 'admin/auth/menu/46', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"wCmv0b4v8aTAXiTXsUtLNrWLD14FuIgjAEWIB98K\"}', '2019-10-14 17:14:04', '2019-10-14 17:14:04');
INSERT INTO `admin_operation_log` VALUES ('3517', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:14:05', '2019-10-14 17:14:05');
INSERT INTO `admin_operation_log` VALUES ('3518', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 17:14:49', '2019-10-14 17:14:49');
INSERT INTO `admin_operation_log` VALUES ('3519', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:18:31', '2019-10-14 17:18:31');
INSERT INTO `admin_operation_log` VALUES ('3520', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5c5e\\u987e\\u95ee\",\"icon\":\"fa-bars\",\"uri\":\"\\/customers\",\"roles\":[null],\"permission\":null,\"_token\":\"wCmv0b4v8aTAXiTXsUtLNrWLD14FuIgjAEWIB98K\"}', '2019-10-14 17:19:00', '2019-10-14 17:19:00');
INSERT INTO `admin_operation_log` VALUES ('3521', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 17:19:01', '2019-10-14 17:19:01');
INSERT INTO `admin_operation_log` VALUES ('3522', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:19:09', '2019-10-14 17:19:09');
INSERT INTO `admin_operation_log` VALUES ('3523', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:19:14', '2019-10-14 17:19:14');
INSERT INTO `admin_operation_log` VALUES ('3524', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"customer\",\"name\":\"\\u4e13\\u5c5e\\u987e\\u95ee\",\"http_method\":[null],\"http_path\":\"\\/customers*\",\"_token\":\"wCmv0b4v8aTAXiTXsUtLNrWLD14FuIgjAEWIB98K\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}', '2019-10-14 17:19:45', '2019-10-14 17:19:45');
INSERT INTO `admin_operation_log` VALUES ('3525', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-10-14 17:19:45', '2019-10-14 17:19:45');
INSERT INTO `admin_operation_log` VALUES ('3526', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:19:52', '2019-10-14 17:19:52');
INSERT INTO `admin_operation_log` VALUES ('3527', '1', 'admin/auth/menu/66/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 17:19:58', '2019-10-14 17:19:58');
INSERT INTO `admin_operation_log` VALUES ('3528', '1', 'admin/auth/menu/66', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5c5e\\u987e\\u95ee\",\"icon\":\"fa-bars\",\"uri\":\"\\/customers\",\"roles\":[null],\"permission\":\"customer\",\"_token\":\"wCmv0b4v8aTAXiTXsUtLNrWLD14FuIgjAEWIB98K\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}', '2019-10-14 17:20:06', '2019-10-14 17:20:06');
INSERT INTO `admin_operation_log` VALUES ('3529', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 17:20:07', '2019-10-14 17:20:07');
INSERT INTO `admin_operation_log` VALUES ('3530', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"66\",\"title\":\"\\u627e\\u5f8b\\u5e08\",\"icon\":\"fa-bars\",\"uri\":\"\\/customers\\/laywer\",\"roles\":[null],\"permission\":null,\"_token\":\"wCmv0b4v8aTAXiTXsUtLNrWLD14FuIgjAEWIB98K\"}', '2019-10-14 17:30:51', '2019-10-14 17:30:51');
INSERT INTO `admin_operation_log` VALUES ('3531', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-10-14 17:30:52', '2019-10-14 17:30:52');

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_permissions` VALUES ('23', '案例', 'articles', 'GET,PUT', '/articles/cases*', '2019-10-12 14:55:09', '2019-10-12 15:41:06');
INSERT INTO `admin_permissions` VALUES ('12', '法律宝典管理', 'legal', '', '/legals/category/*\r\n/legals/books/*\r\n/legals/columns/*', '2019-09-02 23:21:46', '2019-10-08 09:25:59');
INSERT INTO `admin_permissions` VALUES ('13', '答题管理', 'answer', '', '/answers*', '2019-09-04 07:24:56', '2019-10-08 09:26:21');
INSERT INTO `admin_permissions` VALUES ('14', '留言管理', 'message', '', '/messages*', '2019-09-04 07:40:39', '2019-10-08 09:26:42');
INSERT INTO `admin_permissions` VALUES ('15', '消息管理', 'notice', '', '/notices*', '2019-09-04 08:16:57', '2019-10-08 09:27:01');
INSERT INTO `admin_permissions` VALUES ('17', '录播图管理', 'banner', '', '/banners*', '2019-09-04 08:45:14', '2019-10-08 09:27:40');
INSERT INTO `admin_permissions` VALUES ('19', '公证处管理', 'notary', '', '/notarys*', '2019-09-09 07:16:36', '2019-10-08 10:46:26');
INSERT INTO `admin_permissions` VALUES ('21', '商品管理', 'goods', '', '/goods*', '2019-10-08 11:45:08', '2019-10-08 11:45:08');
INSERT INTO `admin_permissions` VALUES ('24', '专属顾问', 'customer', '', '/customers*', '2019-10-14 17:19:45', '2019-10-14 17:19:45');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2019-08-27 17:09:44', '2019-08-27 17:09:44');
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$nMtu4X/fCP//eyKC3Yli4O/zhK6xXo1Vsc4btyLBtjb6JW6j5lvSO', 'Administrator', 'images/4.jpg', 'YCg3cmwAm2Rx6M9ec1s83zwF5RmkxhExd0IS1ewBTsVOLKIXNxyndqz68AtR', null, '2019-08-27 17:09:44', '2019-10-10 15:21:10');
INSERT INTO `admin_users` VALUES ('2', 'article', '$2y$10$uN4FHTJph5HvKAVyc9qr0eU/LrWkG.jcWheNXFajTJXqWrvjOxaMq', '文章管理', 'images/64f828dc4a0b95f1c364a0299afac7dc.jpg', 'N1DM18N247XRefewqd1R4s7l0aHlKz0boPeRIr6ZHBKZ3vGK6QvNgu7ZYvEm', null, '2019-09-11 02:51:39', '2019-10-12 14:29:51');
INSERT INTO `admin_users` VALUES ('3', 'laywer', '$2y$10$Dm9gQwiVlA6m5cpGuHzeouqAmt/8srJc1y11Kq3Sbp61rNxOi1BDK', '律师', 'images/20.jpg', 'w0M8TMjVcygxHUbVA1POtoOvvo2HlZiwkHI0hk2kLkcOTpVjVwN7GxawNtgF', '1', '2019-10-10 11:05:27', '2019-10-10 15:20:18');
INSERT INTO `admin_users` VALUES ('4', 'root', '$2y$10$CCKk59oyBB3.Qv3cYZ9pA.WKKGt/3YKHzzXCo1Xt/qYjyVcqb1dfy', 'root', 'images/bd5bb3ef13379f87fed22dc3d767b5df.jpg', null, null, '2019-10-12 16:09:11', '2019-10-12 16:09:42');

-- ----------------------------
-- Table structure for jyfb_answer_list
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_answer_list`;
CREATE TABLE `jyfb_answer_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '题目',
  `A` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '选项A',
  `B` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项B',
  `C` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项C',
  `D` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项D',
  `correct` enum('A','B','C','D') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '正确答案',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='答题表';

-- ----------------------------
-- Records of jyfb_answer_list
-- ----------------------------
INSERT INTO `jyfb_answer_list` VALUES ('1', '法律规定，企业必须给职工缴足', '五险一金', '住房补贴', null, null, 'A', '1', '0', '2019-09-10 04:16:00', '2019-09-10 04:16:00');

-- ----------------------------
-- Table structure for jyfb_article
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_article`;
CREATE TABLE `jyfb_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '发布者id',
  `spec_id` int(11) DEFAULT NULL COMMENT '专家id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `interpretation` text COMMENT '解读',
  `measures` text COMMENT '措施',
  `images` varchar(255) DEFAULT NULL COMMENT '缩略图/封面图',
  `browse_count` int(11) DEFAULT NULL COMMENT '浏览次数',
  `like_count` int(11) DEFAULT NULL COMMENT '点赞数',
  `share_count` int(11) DEFAULT NULL COMMENT '分享次数',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COMMENT='热门文章表';

-- ----------------------------
-- Records of jyfb_article
-- ----------------------------
INSERT INTO `jyfb_article` VALUES ('1', null, '1', null, '<blockquote><b>Accusantium sed similique qui ut dolore nihil.</b></blockquote><p>​<br></p>1515615', null, null, null, null, '831', '28', '0', '0', '2019-09-01 21:15:06', '2019-10-12 15:42:48');
INSERT INTO `jyfb_article` VALUES ('17', null, '1', null, 'Consequuntur voluptatem dolorum quia laudantium consequatur deleniti deleniti modi.', null, null, null, null, '-2', '2', '1', '0', '2019-09-01 21:15:06', '2019-09-30 16:20:17');
INSERT INTO `jyfb_article` VALUES ('119', '3', '1', null, '848485151515', null, null, null, null, null, null, '1', '0', '2019-09-19 03:34:29', '2019-09-19 03:34:29');
INSERT INTO `jyfb_article` VALUES ('120', '1', '1', '测试', '15451651', '还可以', '不知道怎么回事', 'images/22.jpg', null, null, null, '1', '0', '2019-10-12 16:36:48', '2019-10-12 16:59:33');

-- ----------------------------
-- Table structure for jyfb_article_like
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_article_like`;
CREATE TABLE `jyfb_article_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='热门资讯点赞表';

-- ----------------------------
-- Records of jyfb_article_like
-- ----------------------------
INSERT INTO `jyfb_article_like` VALUES ('3', '1', '1', '2019-09-11 06:20:05');
INSERT INTO `jyfb_article_like` VALUES ('5', '3', '1', '2019-09-18 09:02:56');

-- ----------------------------
-- Table structure for jyfb_article_share
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_article_share`;
CREATE TABLE `jyfb_article_share` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='热门资讯分享表';

-- ----------------------------
-- Records of jyfb_article_share
-- ----------------------------
INSERT INTO `jyfb_article_share` VALUES ('1', '3', '17', '2019-09-19 02:02:45');
INSERT INTO `jyfb_article_share` VALUES ('6', '4', '1', '2019-09-26 10:20:20');
INSERT INTO `jyfb_article_share` VALUES ('7', '4', '1', '2019-09-26 16:42:41');
INSERT INTO `jyfb_article_share` VALUES ('8', '4', '1', '2019-09-26 16:43:36');
INSERT INTO `jyfb_article_share` VALUES ('9', '4', '1', '2019-09-26 16:43:40');
INSERT INTO `jyfb_article_share` VALUES ('11', '4', '1', '2019-09-26 17:02:27');
INSERT INTO `jyfb_article_share` VALUES ('12', '4', '1', '2019-09-26 17:04:13');
INSERT INTO `jyfb_article_share` VALUES ('13', '4', '1', '2019-09-26 17:04:33');
INSERT INTO `jyfb_article_share` VALUES ('14', '4', '1', '2019-09-26 17:04:49');
INSERT INTO `jyfb_article_share` VALUES ('15', '4', '1', '2019-09-26 17:05:02');
INSERT INTO `jyfb_article_share` VALUES ('16', '4', '1', '2019-09-26 17:05:33');
INSERT INTO `jyfb_article_share` VALUES ('17', '4', '1', '2019-09-26 17:05:59');
INSERT INTO `jyfb_article_share` VALUES ('18', '4', '1', '2019-09-26 17:07:31');
INSERT INTO `jyfb_article_share` VALUES ('19', '4', '1', '2019-09-26 17:09:22');
INSERT INTO `jyfb_article_share` VALUES ('20', '4', '1', '2019-09-26 17:11:02');
INSERT INTO `jyfb_article_share` VALUES ('21', '4', '1', '2019-09-26 17:11:58');
INSERT INTO `jyfb_article_share` VALUES ('22', '4', '1', '2019-09-26 17:17:23');
INSERT INTO `jyfb_article_share` VALUES ('23', '4', '1', '2019-09-26 17:17:43');
INSERT INTO `jyfb_article_share` VALUES ('27', '4', '1', '2019-09-26 17:23:42');
INSERT INTO `jyfb_article_share` VALUES ('28', '4', '1', '2019-09-26 17:24:30');
INSERT INTO `jyfb_article_share` VALUES ('29', '4', '1', '2019-09-26 17:24:55');
INSERT INTO `jyfb_article_share` VALUES ('30', '4', '1', '2019-09-26 17:25:19');
INSERT INTO `jyfb_article_share` VALUES ('31', '4', '1', '2019-09-27 08:52:19');
INSERT INTO `jyfb_article_share` VALUES ('32', '4', '1', '2019-09-27 08:52:52');
INSERT INTO `jyfb_article_share` VALUES ('35', '4', '1', '2019-09-27 10:19:49');
INSERT INTO `jyfb_article_share` VALUES ('37', '4', '1', '2019-09-27 10:25:08');
INSERT INTO `jyfb_article_share` VALUES ('38', '4', '1', '2019-09-27 10:25:46');
INSERT INTO `jyfb_article_share` VALUES ('39', '4', '1', '2019-09-27 10:26:05');
INSERT INTO `jyfb_article_share` VALUES ('40', '4', '1', '2019-09-27 10:27:04');
INSERT INTO `jyfb_article_share` VALUES ('41', '4', '17', '2019-09-30 16:20:17');

-- ----------------------------
-- Table structure for jyfb_balance
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_balance`;
CREATE TABLE `jyfb_balance` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(4) DEFAULT NULL COMMENT '用户id',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '金额大小',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `balance-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='余额表';

-- ----------------------------
-- Records of jyfb_balance
-- ----------------------------
INSERT INTO `jyfb_balance` VALUES ('102', '1', '100.55', '1', '0', '2019-09-11 02:34:32', '2019-09-11 02:34:32');

-- ----------------------------
-- Table structure for jyfb_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_balance_log`;
CREATE TABLE `jyfb_balance_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型：1增加2减少',
  `cost` decimal(10,0) DEFAULT NULL COMMENT '变动金额大小',
  `descr` varchar(200) DEFAULT NULL COMMENT '用途描述',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `balance_log-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='钱包余额流水记录表';

-- ----------------------------
-- Records of jyfb_balance_log
-- ----------------------------
INSERT INTO `jyfb_balance_log` VALUES ('1', '4', '1', '20', '111', '111', '1', '0', '2019-09-24 03:36:45', '2019-09-24 03:36:47');

-- ----------------------------
-- Table structure for jyfb_banner
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_banner`;
CREATE TABLE `jyfb_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picname` varchar(50) DEFAULT NULL COMMENT '图片名称',
  `image_path` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `url` varchar(255) DEFAULT NULL COMMENT '跳转链接',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

-- ----------------------------
-- Records of jyfb_banner
-- ----------------------------
INSERT INTO `jyfb_banner` VALUES ('1', '轮播1', 'images/5969cf244ae9075d662b5b5d38754dac.jpg', null, '1', '1', '0', '2019-09-10 07:26:37', '2019-09-10 07:26:37');
INSERT INTO `jyfb_banner` VALUES ('2', '轮播2', 'images/20181115212521.png', null, '2', '1', '0', '2019-09-10 07:27:20', '2019-09-10 07:27:20');
INSERT INTO `jyfb_banner` VALUES ('3', '轮播3', 'images/20181115212611.png', null, '3', '1', '0', '2019-09-10 07:27:47', '2019-09-10 07:27:47');
INSERT INTO `jyfb_banner` VALUES ('4', '轮播4', 'images/201811152124488.jpg', null, '4', '1', '0', '2019-09-10 07:28:18', '2019-09-10 07:28:18');

-- ----------------------------
-- Table structure for jyfb_browse_history
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_browse_history`;
CREATE TABLE `jyfb_browse_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `article_id` int(11) DEFAULT NULL COMMENT '文章id',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `history-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='浏览记录表';

-- ----------------------------
-- Records of jyfb_browse_history
-- ----------------------------
INSERT INTO `jyfb_browse_history` VALUES ('1', '1', '1', '1', '0', '2019-09-04 06:29:21', '2019-09-04 06:29:21');
INSERT INTO `jyfb_browse_history` VALUES ('2', '2', '1', '1', '0', '2019-09-04 06:29:39', '2019-09-04 06:29:39');
INSERT INTO `jyfb_browse_history` VALUES ('3', '3', '1', '1', '0', '2019-09-04 06:29:58', '2019-09-04 06:29:58');
INSERT INTO `jyfb_browse_history` VALUES ('4', '4', '1', '1', '0', '2019-09-04 06:30:12', '2019-09-04 06:30:12');
INSERT INTO `jyfb_browse_history` VALUES ('5', '5', '1', '1', '0', '2019-09-04 06:30:28', '2019-09-04 06:30:28');
INSERT INTO `jyfb_browse_history` VALUES ('7', '5', '2', '1', '0', '2019-09-11 07:59:55', '2019-09-11 07:59:55');
INSERT INTO `jyfb_browse_history` VALUES ('8', '1', '2', '1', '0', '2019-09-11 08:02:03', '2019-09-11 08:02:03');

-- ----------------------------
-- Table structure for jyfb_business_category
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_business_category`;
CREATE TABLE `jyfb_business_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `descr` varchar(200) DEFAULT NULL COMMENT '内容描述',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='业务分类表';

-- ----------------------------
-- Records of jyfb_business_category
-- ----------------------------
INSERT INTO `jyfb_business_category` VALUES ('1', '房地产', '房地产', '1', '0', '2019-09-11 00:48:11', '2019-09-11 00:48:11');
INSERT INTO `jyfb_business_category` VALUES ('2', '公司诉讼', '公司诉讼', '1', '0', '2019-09-11 00:48:39', '2019-09-11 00:48:39');
INSERT INTO `jyfb_business_category` VALUES ('3', '婚姻家庭', '婚姻家庭', '1', '0', '2019-09-11 00:48:58', '2019-09-11 00:48:58');
INSERT INTO `jyfb_business_category` VALUES ('4', '医药行业', '医药行业', '1', '0', '2019-09-11 00:49:15', '2019-09-11 00:49:15');
INSERT INTO `jyfb_business_category` VALUES ('5', '劳动关系', '劳动关系', '1', '0', '2019-09-11 00:49:32', '2019-09-11 00:49:32');
INSERT INTO `jyfb_business_category` VALUES ('6', '民事纠纷', '民事纠纷', '1', '0', '2019-09-11 00:49:51', '2019-09-11 00:49:51');
INSERT INTO `jyfb_business_category` VALUES ('7', '刑事案件', '刑事案件', '1', '0', '2019-09-11 00:50:08', '2019-09-11 00:50:08');
INSERT INTO `jyfb_business_category` VALUES ('8', '其他', '其他', '1', '0', '2019-09-11 00:50:26', '2019-09-11 00:50:26');

-- ----------------------------
-- Table structure for jyfb_consultant
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_consultant`;
CREATE TABLE `jyfb_consultant` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `level` tinyint(4) DEFAULT NULL COMMENT '等级',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职务、头衔',
  `expertise` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '擅长业务',
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '固定电话',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位名称',
  `comments_count` int(11) DEFAULT NULL COMMENT '评论总数',
  `score` decimal(10,0) DEFAULT NULL COMMENT '服务平均分',
  `summary` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='公证处顾问表';

-- ----------------------------
-- Records of jyfb_consultant
-- ----------------------------
INSERT INTO `jyfb_consultant` VALUES ('1', 'jone', '2', 'speew', '婚姻家庭', '15678837703', '07711515155', '桂南公证处', '1', '5', '地产，婚姻家庭，医药行业', '1', '0', '2019-09-02 19:19:18', '2019-09-09 09:05:03');
INSERT INTO `jyfb_consultant` VALUES ('2', 'jack', '1', '专注于婚姻法10年', '婚姻家庭', '15658554555', '07715255545', '德方公证处', '1', '5', '婚姻', '1', '0', '2019-10-12 09:47:34', '2019-10-12 09:47:38');

-- ----------------------------
-- Table structure for jyfb_coupon
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_coupon`;
CREATE TABLE `jyfb_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '优惠券名称',
  `total_num` int(11) DEFAULT NULL COMMENT '优惠券发放总数量',
  `distribute` int(11) NOT NULL DEFAULT '0' COMMENT '已发放数量',
  `num` int(11) DEFAULT NULL COMMENT '每人限领张数',
  `type` tinyint(4) DEFAULT '1' COMMENT '折扣类型：1满减，2满折',
  `condition` decimal(8,2) DEFAULT NULL COMMENT '使用条件',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '面值大小',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0禁用1正常',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='优惠券表';

-- ----------------------------
-- Records of jyfb_coupon
-- ----------------------------
INSERT INTO `jyfb_coupon` VALUES ('1', '中秋送礼大优惠', '20', '100', '1', '1', '100.00', '20.00', '2019-09-12 09:36:20', '2019-09-15 09:36:28', null, '1', '2019-09-11 09:37:39', '2019-09-11 09:36:44');
INSERT INTO `jyfb_coupon` VALUES ('2', '全民大优惠', '100', '1', '1', '1', '100.00', '40.00', '2019-09-11 09:38:04', '2019-09-20 09:38:04', '每人每次限使用一张', '1', '2019-09-11 09:39:33', '2019-09-11 09:39:33');

-- ----------------------------
-- Table structure for jyfb_coupon_grant
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_coupon_grant`;
CREATE TABLE `jyfb_coupon_grant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `coupon_id` int(11) DEFAULT NULL COMMENT '优惠券id',
  `name` varchar(50) DEFAULT NULL COMMENT '优惠券名称',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '面值大小',
  `condition` decimal(8,2) DEFAULT NULL COMMENT '使用条件',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `grant-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='优惠券发放/领取记录表';

-- ----------------------------
-- Records of jyfb_coupon_grant
-- ----------------------------
INSERT INTO `jyfb_coupon_grant` VALUES ('11', '1', '2', '全民大优惠', '1', '40.00', '100.00', '2019-09-11 16:00:00', '2019-09-29 16:00:00', '测试', '1', '2019-09-12 07:02:16', '2019-09-12 07:10:34');
INSERT INTO `jyfb_coupon_grant` VALUES ('12', '3', '1', '中秋送礼大优惠', '1', '20.00', '100.00', '2019-09-11 16:00:00', '2019-09-29 16:00:00', '每人每次限使用一张，不可叠加使用', '1', '2019-09-12 07:03:09', '2019-09-12 07:03:09');

-- ----------------------------
-- Table structure for jyfb_customer
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_customer`;
CREATE TABLE `jyfb_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) DEFAULT NULL COMMENT '名称',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0正常，1禁用',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='客服表';

-- ----------------------------
-- Records of jyfb_customer
-- ----------------------------

-- ----------------------------
-- Table structure for jyfb_everyday_answer_record
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_everyday_answer_record`;
CREATE TABLE `jyfb_everyday_answer_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `answer_list_id` int(11) DEFAULT NULL COMMENT '问题id',
  `date` timestamp NULL DEFAULT NULL COMMENT '答题日期',
  `question` varchar(255) DEFAULT NULL COMMENT '问题',
  `answer` varchar(255) DEFAULT NULL COMMENT '用户答案（A/B/C/D）',
  `correct` varchar(255) DEFAULT NULL COMMENT '正确答案（A/B/C/D）',
  `score` tinyint(4) DEFAULT NULL COMMENT '获得分数',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `answer-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='每日答题记录表';

-- ----------------------------
-- Records of jyfb_everyday_answer_record
-- ----------------------------
INSERT INTO `jyfb_everyday_answer_record` VALUES ('3', '5', '1', '2019-09-10 06:34:09', '法律规定，企业必须给职工缴足', '五险一金', null, null, '2019-09-10 06:34:48', '2019-09-10 06:34:48');
INSERT INTO `jyfb_everyday_answer_record` VALUES ('4', '4', '1', '2019-09-10 06:34:09', '法律规定，企业必须给职工缴足', '五险一金', '', null, '2019-09-10 06:34:48', '2019-09-10 06:34:48');
INSERT INTO `jyfb_everyday_answer_record` VALUES ('5', '3', '1', '2019-09-10 06:34:09', '法律规定，企业必须给职工缴足', '五险一金', '', null, '2019-09-10 06:34:48', '2019-09-10 06:34:48');
INSERT INTO `jyfb_everyday_answer_record` VALUES ('6', '4', '1', '2019-09-19 16:00:00', '法律规定，企业必须给职工缴足', 'A', 'A', '1', '2019-09-20 03:27:07', '2019-09-20 03:27:07');
INSERT INTO `jyfb_everyday_answer_record` VALUES ('7', '4', '1', '2019-09-27 00:00:00', '法律规定，企业必须给职工缴足', 'A', 'A', '1', '2019-09-27 10:29:44', '2019-09-27 10:29:44');
INSERT INTO `jyfb_everyday_answer_record` VALUES ('8', '4', '1', '2019-09-27 00:00:00', '法律规定，企业必须给职工缴足', '五险一金', 'A', '0', '2019-09-27 10:33:11', '2019-09-27 10:33:11');
INSERT INTO `jyfb_everyday_answer_record` VALUES ('9', '4', '1', '2019-09-30 00:00:00', '法律规定，企业必须给职工缴足', '五险一金', 'A', '0', '2019-09-30 16:07:14', '2019-09-30 16:07:14');
INSERT INTO `jyfb_everyday_answer_record` VALUES ('10', '4', '1', '2019-09-30 00:00:00', '法律规定，企业必须给职工缴足', '五险一金', 'A', '1', '2019-09-30 16:14:22', '2019-09-30 16:14:22');

-- ----------------------------
-- Table structure for jyfb_exchange
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_exchange`;
CREATE TABLE `jyfb_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `goods_id` int(11) DEFAULT NULL COMMENT '兑换的商品id',
  `ingots` tinyint(11) DEFAULT NULL COMMENT '使用法宝数量',
  `quantity` int(11) DEFAULT NULL COMMENT '兑换商品数量',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `exchange` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='法宝兑换记录表';

-- ----------------------------
-- Records of jyfb_exchange
-- ----------------------------
INSERT INTO `jyfb_exchange` VALUES ('2', '4', '1', null, null, '1', null);
INSERT INTO `jyfb_exchange` VALUES ('3', '4', '1', '10', '1', '1', null);
INSERT INTO `jyfb_exchange` VALUES ('4', '4', '1', '10', '1', '1', '2019-09-25 01:47:31');
INSERT INTO `jyfb_exchange` VALUES ('5', '4', '1', '10', '1', '1', '2019-09-26 09:20:02');
INSERT INTO `jyfb_exchange` VALUES ('6', '4', '1', '10', '1', '1', '2019-09-26 09:24:36');
INSERT INTO `jyfb_exchange` VALUES ('7', '4', '1', '20', '1', '1', '2019-09-30 17:04:20');

-- ----------------------------
-- Table structure for jyfb_feedback
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_feedback`;
CREATE TABLE `jyfb_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `content` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='意见反馈表';

-- ----------------------------
-- Records of jyfb_feedback
-- ----------------------------
INSERT INTO `jyfb_feedback` VALUES ('1', '4', null, null, 'dddddd4619619691', null);
INSERT INTO `jyfb_feedback` VALUES ('2', '4', null, null, 'dddddd4619619691', null);
INSERT INTO `jyfb_feedback` VALUES ('3', '4', null, null, 'dddddd4619619691', '2019-09-27 15:53:53');

-- ----------------------------
-- Table structure for jyfb_goods
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_goods`;
CREATE TABLE `jyfb_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `detail` text COMMENT '商品详情',
  `exchange_price` int(11) DEFAULT NULL COMMENT '法宝兑换价',
  `exchange_rule` text COMMENT '兑换规则',
  `description` text COMMENT '其他描述',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `goods` (`goods_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

-- ----------------------------
-- Records of jyfb_goods
-- ----------------------------
INSERT INTO `jyfb_goods` VALUES ('1', '衣服', null, null, '20', null, null, '0', '2019-09-25 01:08:45', '2019-09-30 17:04:20');
INSERT INTO `jyfb_goods` VALUES ('2', '乐扶领巾 红色 中码  400*300', 'images/12.jpg', null, '10', null, null, '10', '2019-10-08 13:54:18', '2019-10-08 13:56:38');
INSERT INTO `jyfb_goods` VALUES ('3', '神马衣服 男士 M 170 绿色 外套', 'images/img8.jpg', '<p></p><p>很好很强大</p>', '10', '每人每天只能兑换一次', '555', '10', '2019-10-14 11:44:06', '2019-10-14 11:44:06');

-- ----------------------------
-- Table structure for jyfb_goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_goods_attr`;
CREATE TABLE `jyfb_goods_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `size` varchar(255) DEFAULT NULL COMMENT '尺寸',
  `color` varchar(255) DEFAULT NULL COMMENT '颜色',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `attrs` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品属性表';

-- ----------------------------
-- Records of jyfb_goods_attr
-- ----------------------------

-- ----------------------------
-- Table structure for jyfb_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_goods_stock`;
CREATE TABLE `jyfb_goods_stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `stock` int(11) DEFAULT NULL COMMENT '库存量',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `stock` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品库存表';

-- ----------------------------
-- Records of jyfb_goods_stock
-- ----------------------------

-- ----------------------------
-- Table structure for jyfb_hot_question
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_hot_question`;
CREATE TABLE `jyfb_hot_question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `cate_id` int(11) DEFAULT NULL COMMENT '分类id',
  `answer` text COMMENT '答案',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='热门问题表';

-- ----------------------------
-- Records of jyfb_hot_question
-- ----------------------------
INSERT INTO `jyfb_hot_question` VALUES ('1', '常见1', null, '我也不知道', '1', '0', '2019-09-09 07:06:59', '2019-09-09 07:06:59');
INSERT INTO `jyfb_hot_question` VALUES ('2', '贷款产品介绍', null, '贷款产品介绍', '1', '0', '2019-09-10 06:40:28', '2019-09-10 06:40:28');
INSERT INTO `jyfb_hot_question` VALUES ('3', '按揭贷款', '53', '按揭贷款是指以按揭方式进行的一种贷款业务。 如：住房按揭贷款就是购房者以所购住房做抵押并由其所购买住房的房地产企业提供阶段性担保的个人住房贷款业务。 所谓按揭是指按揭人将房产产权转让按揭，受益人作为还贷保证人在按揭人还清贷款后，受益人立即将所涉及的房屋产权转让按揭人，过程中按揭人享有使用权。', '1', '0', '2019-09-11 06:37:22', '2019-09-11 06:37:22');

-- ----------------------------
-- Table structure for jyfb_hot_question_category
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_hot_question_category`;
CREATE TABLE `jyfb_hot_question_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '主题',
  `parent_id` tinyint(4) DEFAULT NULL COMMENT '父级id',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `order` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COMMENT='热门问题分类表';

-- ----------------------------
-- Records of jyfb_hot_question_category
-- ----------------------------
INSERT INTO `jyfb_hot_question_category` VALUES ('50', '贷款产品介绍', '0', null, '0', '', '1', '0', '2019-09-10 07:19:11', '2019-09-10 07:19:11');
INSERT INTO `jyfb_hot_question_category` VALUES ('51', '房屋过户介绍', '0', null, '0', '', '1', '0', '2019-09-10 07:19:36', '2019-09-10 07:19:36');
INSERT INTO `jyfb_hot_question_category` VALUES ('52', '功能使用指南', '0', null, '0', '', '1', '0', '2019-09-10 07:20:02', '2019-09-10 07:20:02');
INSERT INTO `jyfb_hot_question_category` VALUES ('53', '按揭贷款', '50', null, '0', '', '1', '0', '2019-09-10 07:20:37', '2019-09-10 07:20:37');
INSERT INTO `jyfb_hot_question_category` VALUES ('54', '车辆贷款', '50', null, '0', '', '1', '0', '2019-09-10 07:21:12', '2019-09-10 07:21:12');
INSERT INTO `jyfb_hot_question_category` VALUES ('55', '消费贷款', '50', null, '0', '', '1', '0', '2019-09-10 07:21:35', '2019-09-10 07:21:35');
INSERT INTO `jyfb_hot_question_category` VALUES ('56', '信用贷款', '50', null, '0', '', '1', '0', '2019-09-10 07:21:50', '2019-09-10 07:21:50');

-- ----------------------------
-- Table structure for jyfb_ingots
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_ingots`;
CREATE TABLE `jyfb_ingots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `expire_time` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ingots-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='元宝表';

-- ----------------------------
-- Records of jyfb_ingots
-- ----------------------------
INSERT INTO `jyfb_ingots` VALUES ('1', '1', '31', '1', '0', '2019-09-11 01:22:56', '2019-09-02 00:36:29', '2019-09-02 00:36:29');
INSERT INTO `jyfb_ingots` VALUES ('2', '3', '196', '1', '0', '2019-09-11 01:23:00', '2019-09-02 00:36:29', '2019-09-02 00:36:29');
INSERT INTO `jyfb_ingots` VALUES ('4', '4', '235', '1', '0', '2019-09-25 01:38:22', '2019-09-02 00:36:29', '2019-09-30 17:04:20');
INSERT INTO `jyfb_ingots` VALUES ('5', '5', '71', '1', '0', '2019-09-11 01:23:06', '2019-09-02 00:36:29', '2019-09-02 00:36:29');
INSERT INTO `jyfb_ingots` VALUES ('101', '6', '20', '1', '0', '2019-09-11 01:29:01', '2019-09-11 01:36:59', '2019-09-11 01:36:59');

-- ----------------------------
-- Table structure for jyfb_ingots_config
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_ingots_config`;
CREATE TABLE `jyfb_ingots_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `limitation` int(11) DEFAULT NULL COMMENT '每天限制次数，0为不限制',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标（全路径图片或者字体图标样式）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='法宝获取配置表';

-- ----------------------------
-- Records of jyfb_ingots_config
-- ----------------------------
INSERT INTO `jyfb_ingots_config` VALUES ('1', 'buy', '10', '土豪直接购买法宝', '0', null);
INSERT INTO `jyfb_ingots_config` VALUES ('2', 'game', '10', '游戏闯关边玩边学', '2', null);
INSERT INTO `jyfb_ingots_config` VALUES ('3', 'share', '10', '好文分享', '10', null);
INSERT INTO `jyfb_ingots_config` VALUES ('4', 'wechat', '10', '关注微信公众号', '1', null);
INSERT INTO `jyfb_ingots_config` VALUES ('5', 'invite', '10', '邀请好友', '0', null);
INSERT INTO `jyfb_ingots_config` VALUES ('6', 'verify', '10', '实名认证', '1', null);
INSERT INTO `jyfb_ingots_config` VALUES ('7', 'sign', '10', '每日签到', '1', null);

-- ----------------------------
-- Table structure for jyfb_ingots_log
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_ingots_log`;
CREATE TABLE `jyfb_ingots_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `cost` int(11) DEFAULT NULL COMMENT '数量',
  `descr` varchar(200) DEFAULT NULL COMMENT '描述',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型：1增加2减少',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ingots-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='元宝流水记录表';

-- ----------------------------
-- Records of jyfb_ingots_log
-- ----------------------------
INSERT INTO `jyfb_ingots_log` VALUES ('1', '4', '10', '兑换商品', '2', '1', '0', '', '2019-09-25 01:30:53', '2019-09-25 01:30:53');
INSERT INTO `jyfb_ingots_log` VALUES ('2', '4', '10', '兑换商品', '2', '1', '0', '', '2019-09-25 01:38:22', '2019-09-25 01:38:22');
INSERT INTO `jyfb_ingots_log` VALUES ('3', '4', '10', '兑换商品', '2', '1', '0', '', '2019-09-25 01:47:31', '2019-09-25 01:47:31');
INSERT INTO `jyfb_ingots_log` VALUES ('4', '4', '10', '兑换商品', '2', '1', '0', null, '2019-09-26 09:20:02', '2019-09-26 09:20:02');
INSERT INTO `jyfb_ingots_log` VALUES ('5', '4', '10', '兑换商品', '2', '1', '0', null, '2019-09-26 09:24:36', '2019-09-26 09:24:36');
INSERT INTO `jyfb_ingots_log` VALUES ('6', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 10:20:20', '2019-09-26 10:20:20');
INSERT INTO `jyfb_ingots_log` VALUES ('7', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 16:42:41', '2019-09-26 16:42:41');
INSERT INTO `jyfb_ingots_log` VALUES ('9', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:02:28', '2019-09-26 17:02:28');
INSERT INTO `jyfb_ingots_log` VALUES ('10', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:04:13', '2019-09-26 17:04:13');
INSERT INTO `jyfb_ingots_log` VALUES ('11', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:04:33', '2019-09-26 17:04:33');
INSERT INTO `jyfb_ingots_log` VALUES ('12', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:04:49', '2019-09-26 17:04:49');
INSERT INTO `jyfb_ingots_log` VALUES ('13', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:05:02', '2019-09-26 17:05:02');
INSERT INTO `jyfb_ingots_log` VALUES ('14', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:05:33', '2019-09-26 17:05:33');
INSERT INTO `jyfb_ingots_log` VALUES ('15', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:05:59', '2019-09-26 17:05:59');
INSERT INTO `jyfb_ingots_log` VALUES ('16', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:07:31', '2019-09-26 17:07:31');
INSERT INTO `jyfb_ingots_log` VALUES ('17', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:09:23', '2019-09-26 17:09:23');
INSERT INTO `jyfb_ingots_log` VALUES ('18', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:11:03', '2019-09-26 17:11:03');
INSERT INTO `jyfb_ingots_log` VALUES ('19', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:11:58', '2019-09-26 17:11:58');
INSERT INTO `jyfb_ingots_log` VALUES ('20', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:17:24', '2019-09-26 17:17:24');
INSERT INTO `jyfb_ingots_log` VALUES ('21', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:17:43', '2019-09-26 17:17:43');
INSERT INTO `jyfb_ingots_log` VALUES ('22', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:23:42', '2019-09-26 17:23:42');
INSERT INTO `jyfb_ingots_log` VALUES ('23', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:24:31', '2019-09-26 17:24:31');
INSERT INTO `jyfb_ingots_log` VALUES ('24', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-26 17:24:56', '2019-09-26 17:24:56');
INSERT INTO `jyfb_ingots_log` VALUES ('25', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-27 08:52:52', '2019-09-27 08:52:52');
INSERT INTO `jyfb_ingots_log` VALUES ('26', '4', '10', '答题正确获得法宝', '1', '1', '0', null, '2019-09-27 10:25:08', '2019-09-27 10:25:08');
INSERT INTO `jyfb_ingots_log` VALUES ('27', '4', '10', '答题正确获得法宝', '1', '1', '0', null, '2019-09-27 10:25:46', '2019-09-27 10:25:46');
INSERT INTO `jyfb_ingots_log` VALUES ('28', '4', '10', '答题正确获得法宝', '1', '1', '0', null, '2019-09-27 10:26:05', '2019-09-27 10:26:05');
INSERT INTO `jyfb_ingots_log` VALUES ('29', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-27 10:27:05', '2019-09-27 10:27:05');
INSERT INTO `jyfb_ingots_log` VALUES ('30', '4', '10', '答题正确获得法宝', '1', '1', '0', null, '2019-09-27 10:29:44', '2019-09-27 10:29:44');
INSERT INTO `jyfb_ingots_log` VALUES ('31', '4', '5', '每日签到获得法宝', '1', '1', '0', null, '2019-09-30 15:09:00', '2019-09-30 15:09:00');
INSERT INTO `jyfb_ingots_log` VALUES ('32', '4', '5', '使用VIP通道咨询专家消耗法宝', '2', '1', '0', null, '2019-09-30 15:28:19', '2019-09-30 15:28:19');
INSERT INTO `jyfb_ingots_log` VALUES ('33', '4', '5', '使用VIP通道咨询专家消耗法宝', '2', '1', '0', null, '2019-09-30 15:49:33', '2019-09-30 15:49:33');
INSERT INTO `jyfb_ingots_log` VALUES ('34', '4', '10', '答题正确获得法宝', '1', '1', '0', null, '2019-09-30 16:14:22', '2019-09-30 16:14:22');
INSERT INTO `jyfb_ingots_log` VALUES ('35', '4', '10', '好文分享获得法宝', '1', '1', '0', null, '2019-09-30 16:20:17', '2019-09-30 16:20:17');
INSERT INTO `jyfb_ingots_log` VALUES ('36', '4', '20', '兑换商品', '2', '1', '0', null, '2019-09-30 17:04:20', '2019-09-30 17:04:20');

-- ----------------------------
-- Table structure for jyfb_laywer
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_laywer`;
CREATE TABLE `jyfb_laywer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `title` varchar(50) DEFAULT NULL COMMENT '头衔',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(15) DEFAULT NULL COMMENT '固定电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `wechat` varchar(30) DEFAULT NULL COMMENT '微信号码',
  `company` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `cate_id` int(10) DEFAULT NULL COMMENT '律师职务分类',
  `summary` text COMMENT '职位描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `laywer-name-mobile` (`name`(191),`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='律师表';

-- ----------------------------
-- Records of jyfb_laywer
-- ----------------------------
INSERT INTO `jyfb_laywer` VALUES ('1', '律师甲', '执业律师', '13655454556', '07711515155', null, null, null, '江城律师事务所', null, null, '1', '地产，婚姻家庭，医药行业', '1', '0', '2019-09-09 08:14:00', '2019-09-09 08:14:00');
INSERT INTO `jyfb_laywer` VALUES ('2', '律师乙', '执业律师', '17788486595', '07711515155', null, null, null, '江城律师事务所', null, null, '2', '地产，婚姻家庭', '1', '0', '2019-09-09 08:21:41', '2019-09-09 08:21:41');

-- ----------------------------
-- Table structure for jyfb_legal_book
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_legal_book`;
CREATE TABLE `jyfb_legal_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '主题',
  `cate_id` tinyint(4) DEFAULT NULL COMMENT '宝典分类id',
  `detail` text COMMENT '内容',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='法律宝典表';

-- ----------------------------
-- Records of jyfb_legal_book
-- ----------------------------
INSERT INTO `jyfb_legal_book` VALUES ('1', '养老', '2', '<p></p><p>1515151</p>', '1', '0', '2019-09-03 18:39:53', '2019-10-11 14:45:47');

-- ----------------------------
-- Table structure for jyfb_legal_book_category
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_legal_book_category`;
CREATE TABLE `jyfb_legal_book_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '主题',
  `parent_id` tinyint(4) DEFAULT NULL COMMENT '宝典分类id',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `order` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detail` text COMMENT '内容详情',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COMMENT='宝典分类表';

-- ----------------------------
-- Records of jyfb_legal_book_category
-- ----------------------------
INSERT INTO `jyfb_legal_book_category` VALUES ('1', '婚姻', '0', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:48:55', '2019-09-02 15:48:55');
INSERT INTO `jyfb_legal_book_category` VALUES ('2', '养老', '0', 'articles/legals/categorys', '0', '', '<p></p><p>1515151</p>', '1', '0', '2019-09-02 15:49:24', '2019-09-02 15:49:24');
INSERT INTO `jyfb_legal_book_category` VALUES ('3', '医疗', '0', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:01:33', '2019-09-02 16:01:33');
INSERT INTO `jyfb_legal_book_category` VALUES ('4', '就业和创业', '0', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:49:48', '2019-09-02 15:49:48');
INSERT INTO `jyfb_legal_book_category` VALUES ('5', '教育', '0', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:50:08', '2019-09-02 15:50:08');
INSERT INTO `jyfb_legal_book_category` VALUES ('6', '投资', '0', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:50:21', '2019-09-02 15:50:21');
INSERT INTO `jyfb_legal_book_category` VALUES ('7', '婚前财产', '1', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:50:46', '2019-09-02 15:50:46');
INSERT INTO `jyfb_legal_book_category` VALUES ('8', '婚内财产', '1', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:51:14', '2019-09-02 15:51:14');
INSERT INTO `jyfb_legal_book_category` VALUES ('9', '离婚', '1', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:51:31', '2019-09-02 15:51:31');
INSERT INTO `jyfb_legal_book_category` VALUES ('10', '继承', '1', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:51:45', '2019-09-02 15:51:45');
INSERT INTO `jyfb_legal_book_category` VALUES ('11', '遗赠抚养', '2', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:52:20', '2019-09-02 15:52:20');
INSERT INTO `jyfb_legal_book_category` VALUES ('12', '意定监护', '2', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:52:54', '2019-09-02 15:52:54');
INSERT INTO `jyfb_legal_book_category` VALUES ('13', '遗嘱', '2', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:53:09', '2019-09-02 15:53:09');
INSERT INTO `jyfb_legal_book_category` VALUES ('14', '虐待老人问题', '2', 'articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:53:25', '2019-09-02 15:53:25');
INSERT INTO `jyfb_legal_book_category` VALUES ('15', '医疗保险', '3', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:53:43', '2019-09-02 15:53:43');
INSERT INTO `jyfb_legal_book_category` VALUES ('16', '医疗事故', '3', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:54:00', '2019-09-02 15:54:00');
INSERT INTO `jyfb_legal_book_category` VALUES ('17', '交通事故', '3', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:54:12', '2019-09-02 15:54:12');
INSERT INTO `jyfb_legal_book_category` VALUES ('18', '招人', '4', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:54:29', '2019-09-02 15:54:29');
INSERT INTO `jyfb_legal_book_category` VALUES ('19', '找工作', '4', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:54:46', '2019-09-02 15:54:46');
INSERT INTO `jyfb_legal_book_category` VALUES ('20', '劳动合同', '4', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:55:00', '2019-09-02 15:55:00');
INSERT INTO `jyfb_legal_book_category` VALUES ('21', '劳动纠纷', '4', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:55:14', '2019-09-02 15:55:14');
INSERT INTO `jyfb_legal_book_category` VALUES ('22', '学校监护责任', '5', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:55:36', '2019-09-02 15:55:36');
INSERT INTO `jyfb_legal_book_category` VALUES ('23', '人身伤害', '5', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:55:52', '2019-09-02 15:55:52');
INSERT INTO `jyfb_legal_book_category` VALUES ('24', '法制教育', '5', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:56:07', '2019-09-02 15:56:07');
INSERT INTO `jyfb_legal_book_category` VALUES ('25', '房子', '6', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:56:21', '2019-09-02 15:56:21');
INSERT INTO `jyfb_legal_book_category` VALUES ('26', '车子', '6', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:56:36', '2019-09-02 15:56:36');
INSERT INTO `jyfb_legal_book_category` VALUES ('27', '股票', '6', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:56:50', '2019-09-02 15:56:50');
INSERT INTO `jyfb_legal_book_category` VALUES ('28', '民间借贷', '6', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 15:57:19', '2019-09-02 15:57:19');
INSERT INTO `jyfb_legal_book_category` VALUES ('30', '债权', '9', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:05:39', '2019-09-02 16:05:39');
INSERT INTO `jyfb_legal_book_category` VALUES ('31', '债务', '9', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:05:52', '2019-09-02 16:05:52');
INSERT INTO `jyfb_legal_book_category` VALUES ('32', '子女抚养', '9', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:06:05', '2019-09-02 16:06:05');
INSERT INTO `jyfb_legal_book_category` VALUES ('33', '买房', '25', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:06:48', '2019-09-02 16:06:48');
INSERT INTO `jyfb_legal_book_category` VALUES ('34', '卖方', '25', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:07:01', '2019-09-02 16:07:01');
INSERT INTO `jyfb_legal_book_category` VALUES ('35', '租房', '25', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:07:13', '2019-09-02 16:07:13');
INSERT INTO `jyfb_legal_book_category` VALUES ('36', '买车', '26', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:07:54', '2019-09-02 16:07:54');
INSERT INTO `jyfb_legal_book_category` VALUES ('37', '卖车', '26', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:08:09', '2019-09-02 16:08:09');
INSERT INTO `jyfb_legal_book_category` VALUES ('38', '租车', '26', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:08:23', '2019-09-02 16:08:23');
INSERT INTO `jyfb_legal_book_category` VALUES ('39', '股票转让', '27', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:08:56', '2019-09-02 16:08:56');
INSERT INTO `jyfb_legal_book_category` VALUES ('40', '股票继承', '27', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:09:11', '2019-09-02 16:09:11');
INSERT INTO `jyfb_legal_book_category` VALUES ('41', '出借人', '28', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:10:00', '2019-09-02 16:10:00');
INSERT INTO `jyfb_legal_book_category` VALUES ('42', '借款人', '28', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:10:13', '2019-09-02 16:10:13');
INSERT INTO `jyfb_legal_book_category` VALUES ('43', '出租方', '35', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:11:03', '2019-09-02 16:11:03');
INSERT INTO `jyfb_legal_book_category` VALUES ('44', '承租方', '35', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:11:16', '2019-09-02 16:11:16');
INSERT INTO `jyfb_legal_book_category` VALUES ('45', '出租人', '38', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:11:50', '2019-09-02 16:11:50');
INSERT INTO `jyfb_legal_book_category` VALUES ('46', '租车人', '38', 'admin/articles/legals/categorys', '0', '', null, '1', '0', '2019-09-02 16:12:26', '2019-09-02 16:12:26');

-- ----------------------------
-- Table structure for jyfb_member
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_member`;
CREATE TABLE `jyfb_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `cost` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '消费法宝',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `member-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='vip通道使用记录表';

-- ----------------------------
-- Records of jyfb_member
-- ----------------------------
INSERT INTO `jyfb_member` VALUES ('1', '1', '20.00', '1', '0', '2019-09-11 09:21:04', '2019-09-11 09:21:06');
INSERT INTO `jyfb_member` VALUES ('2', '4', '5.00', '1', '0', '2019-09-30 15:28:19', '2019-09-30 15:28:19');
INSERT INTO `jyfb_member` VALUES ('3', '4', '5.00', '1', '0', '2019-09-30 15:49:33', '2019-09-30 15:49:33');

-- ----------------------------
-- Table structure for jyfb_message
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_message`;
CREATE TABLE `jyfb_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(15) NOT NULL COMMENT '手机号码',
  `content` text COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `message-username` (`username`) USING BTREE,
  KEY `message-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='留言表';

-- ----------------------------
-- Records of jyfb_message
-- ----------------------------
INSERT INTO `jyfb_message` VALUES ('1', null, 'jack', '13354881555', '111', '1', '0', '2019-09-05 07:07:06', '2019-09-05 07:07:09');
INSERT INTO `jyfb_message` VALUES ('2', '1', 'joey', '15687455686', '测试留言功能666666', '1', '0', '2019-09-17 08:17:40', '2019-09-17 08:17:40');
INSERT INTO `jyfb_message` VALUES ('3', '3', 'jack4', '13568445574', '811561af1wf1efefegr', '1', '0', '2019-09-18 03:33:56', '2019-09-18 03:33:56');
INSERT INTO `jyfb_message` VALUES ('4', '3', 'jack4', '13568445574', '811561af1wf1efefegr', '1', '0', '2019-09-18 03:36:16', '2019-09-18 03:36:16');

-- ----------------------------
-- Table structure for jyfb_notary_office
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_notary_office`;
CREATE TABLE `jyfb_notary_office` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(15) DEFAULT NULL COMMENT '固定电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `wechat` varchar(30) DEFAULT NULL COMMENT '微信号码',
  `summary` varchar(200) DEFAULT NULL COMMENT '简介',
  `comments_count` int(11) DEFAULT NULL COMMENT '评论总数',
  `score` decimal(10,2) DEFAULT NULL COMMENT '服务分',
  `province_code` varchar(20) DEFAULT NULL COMMENT '省份',
  `city_code` varchar(20) DEFAULT NULL COMMENT '城市',
  `district_code` varchar(20) DEFAULT NULL COMMENT '区县',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `lng` decimal(10,4) DEFAULT NULL COMMENT '经度',
  `lat` decimal(10,4) DEFAULT NULL COMMENT '纬度',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `notary-name-mobile` (`name`(191),`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='公证处表';

-- ----------------------------
-- Records of jyfb_notary_office
-- ----------------------------
INSERT INTO `jyfb_notary_office` VALUES ('1', '南宁市贵南公证处', '13548629599', '07711515155', 'gxlclizongjun@163.com', 'weakfnei', '测试', '1', '5.00', '450000', '450100', '450102', '广西南宁市济南路23-5号', '105.1241', '203.5241', '1', '0', '2019-09-09 09:21:10', '2019-10-11 16:15:19');

-- ----------------------------
-- Table structure for jyfb_notary_office_comment
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_notary_office_comment`;
CREATE TABLE `jyfb_notary_office_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `office_id` int(11) DEFAULT NULL COMMENT '公证处id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `score` tinyint(4) DEFAULT NULL COMMENT '评分',
  `content` text COMMENT '评论内容',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `office-user_id` (`user_id`),
  KEY `office-office_id` (`office_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='公证处评论表';

-- ----------------------------
-- Records of jyfb_notary_office_comment
-- ----------------------------
INSERT INTO `jyfb_notary_office_comment` VALUES ('2', '1', '3', '1', '4', '2019-09-24 02:17:45', '2019-09-24 02:17:48');

-- ----------------------------
-- Table structure for jyfb_notice
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_notice`;
CREATE TABLE `jyfb_notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '消息分类id：0系统消息，1站内信',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0未读1已读',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `notice-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='消息表';

-- ----------------------------
-- Records of jyfb_notice
-- ----------------------------
INSERT INTO `jyfb_notice` VALUES ('1', '3', '1', 'desc', '555888', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('2', '3', '1', 'desc', '888', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('3', '1', '1', 'desc', 'o', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('4', '3', '1', 'desc', 'll', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('5', '1', '1', 'desc', 'ff', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('6', '3', '1', 'desc', 'qqq', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('7', '1', '1', 'desc', 'qqs', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('8', '3', '1', 'desc', 'ss', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('9', '3', '1', 'desc', 'dd', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('10', '3', '1', 'desc', 'tt', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('11', '3', '1', 'desc', 'vv', '0', '2019-09-09 03:07:16', '2019-09-09 03:07:19');
INSERT INTO `jyfb_notice` VALUES ('12', '4', '0', '签到成功', '今日签到共获得{\"id\":7,\"key\":\"sign\",\"value\":\"5\",\"description\":\"\\u6bcf\\u65e5\\u7b7e\\u5230\",\"limitation\":1,\"icon\":null}个法宝', '0', '2019-09-30 15:09:00', '2019-09-30 15:09:00');
INSERT INTO `jyfb_notice` VALUES ('13', '4', '0', '咨询专家', '使用VIP通道咨询专家消耗5个法宝', '0', '2019-09-30 15:28:19', '2019-09-30 15:28:19');
INSERT INTO `jyfb_notice` VALUES ('14', '4', '0', '咨询专家', '使用VIP通道咨询专家消耗5个法宝', '0', '2019-09-30 15:49:33', '2019-09-30 15:49:33');
INSERT INTO `jyfb_notice` VALUES ('15', '4', '0', '每日答题', '游戏闯关每日答题获得10个法宝', '0', '2019-09-30 16:14:22', '2019-09-30 16:14:22');
INSERT INTO `jyfb_notice` VALUES ('16', '4', '0', '好文分享', '好文分享获得10个法宝', '0', '2019-09-30 16:20:17', '2019-09-30 16:20:17');
INSERT INTO `jyfb_notice` VALUES ('17', '4', '0', '法宝兑换', '使用20个法宝兑换1件商品,该商品为衣服', '0', '2019-09-30 17:04:21', '2019-09-30 17:04:21');
INSERT INTO `jyfb_notice` VALUES ('18', '4', '1', '问题回复通知', '<br>您的提问：<br><p></p><p>解决一下生活问题</p><br>回复如下：<br><p></p><p>自行处理</p><p>我测试</p><p><br>在测试</p>', '0', '2019-10-10 15:44:17', '2019-10-10 15:44:17');

-- ----------------------------
-- Table structure for jyfb_service_reservation
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_service_reservation`;
CREATE TABLE `jyfb_service_reservation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_name` varchar(30) DEFAULT NULL COMMENT '客户姓名',
  `u_mobile` varchar(15) DEFAULT NULL COMMENT '客户手机号码',
  `spec_name` varchar(30) DEFAULT NULL COMMENT '预约专家姓名',
  `spec_mobile` varchar(15) DEFAULT NULL COMMENT '预约专家手机',
  `content` varchar(255) DEFAULT NULL COMMENT '预约内容',
  `appointment` timestamp NULL DEFAULT NULL COMMENT '约定时间',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='服务预约表';

-- ----------------------------
-- Records of jyfb_service_reservation
-- ----------------------------
INSERT INTO `jyfb_service_reservation` VALUES ('1', '李科', '13854468498', '樊城', '15685184815', '房产过户', '2019-09-15 07:00:00', null, '1', '0', '2019-09-10 09:32:26', '2019-09-10 09:35:37');

-- ----------------------------
-- Table structure for jyfb_specialist
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_specialist`;
CREATE TABLE `jyfb_specialist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `level` tinyint(4) DEFAULT NULL COMMENT '等级',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职务、头衔',
  `expertise` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '擅长业务',
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '固定电话',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位名称',
  `comments_count` int(11) DEFAULT NULL COMMENT '评论总数',
  `score` decimal(10,0) DEFAULT NULL COMMENT '服务平均分',
  `summary` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='专家表';

-- ----------------------------
-- Records of jyfb_specialist
-- ----------------------------
INSERT INTO `jyfb_specialist` VALUES ('1', 'jone', '2', 'speew', '婚姻家庭', '15678837703', '07711515155', '江城律师事务所', '1', '5', '地产，婚姻家庭，医药行业', '1', '0', '2019-09-02 19:19:18', '2019-09-09 09:05:03');

-- ----------------------------
-- Table structure for jyfb_specialist_advice
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_specialist_advice`;
CREATE TABLE `jyfb_specialist_advice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `spec_id` int(11) NOT NULL COMMENT '专家id',
  `cate_id` int(11) DEFAULT NULL COMMENT '专家分类id：1房地产2公司诉讼3婚姻家庭4医药行业5劳动关系6民事纠纷7刑事纠纷8其他',
  `question` text COMMENT '问题描述',
  `measures` text COMMENT '措施',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `advice-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='专家咨询表';

-- ----------------------------
-- Records of jyfb_specialist_advice
-- ----------------------------
INSERT INTO `jyfb_specialist_advice` VALUES ('1', '4', '1', '1', '<p></p><p>解决一下生活问题</p>', '<p></p><p>自行处理</p><p>我测试</p><p><br>在测试</p>', '1', '0', '2019-09-10 08:18:07', '2019-10-10 15:34:29');

-- ----------------------------
-- Table structure for jyfb_specialist_comment
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_specialist_comment`;
CREATE TABLE `jyfb_specialist_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spec_id` int(11) DEFAULT NULL COMMENT '专家id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `score` tinyint(4) DEFAULT NULL COMMENT '评分',
  `content` text COMMENT '评论内容',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `specialist-user_id` (`user_id`) USING BTREE,
  KEY `specialist-spec_id` (`spec_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='专家评论表';

-- ----------------------------
-- Records of jyfb_specialist_comment
-- ----------------------------
INSERT INTO `jyfb_specialist_comment` VALUES ('1', '1', '1', '5', '55', '2019-09-10 01:26:17', '2019-09-10 01:26:19');

-- ----------------------------
-- Table structure for jyfb_system_config
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_system_config`;
CREATE TABLE `jyfb_system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='系统配置表';

-- ----------------------------
-- Records of jyfb_system_config
-- ----------------------------
INSERT INTO `jyfb_system_config` VALUES ('12', 'website_title', '家有法宝');
INSERT INTO `jyfb_system_config` VALUES ('13', 'website_desc', '法律咨询，专家答疑');
INSERT INTO `jyfb_system_config` VALUES ('14', 'website_copyright', 'My Company 2019');
INSERT INTO `jyfb_system_config` VALUES ('15', 'website_icp', '桂icp20191009');
INSERT INTO `jyfb_system_config` VALUES ('16', 'website_statistics', '888');
INSERT INTO `jyfb_system_config` VALUES ('17', 'website_logo', 'C:\\Users\\Administrator\\AppData\\Local\\Temp\\php99B0.tmp');
INSERT INTO `jyfb_system_config` VALUES ('19', 'telephone', '07718562543');
INSERT INTO `jyfb_system_config` VALUES ('20', 'address', '1049 Sycamore Street');
INSERT INTO `jyfb_system_config` VALUES ('21', 'summary', '公证律师');

-- ----------------------------
-- Table structure for jyfb_user
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_user`;
CREATE TABLE `jyfb_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `gender` varchar(10) DEFAULT NULL COMMENT '性别',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `openid` varchar(100) DEFAULT NULL COMMENT 'openid',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '手机号码',
  `inviter_id` int(11) DEFAULT NULL COMMENT '邀请人id',
  `descr` varchar(200) DEFAULT NULL COMMENT '描述',
  `login_num` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `reg_ip` varchar(20) DEFAULT NULL COMMENT '注册ip',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '上次登录ip',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',
  `is_verified` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否认证：0否1是',
  `balance` decimal(10,0) DEFAULT NULL COMMENT '账号钱包余额',
  `remember_token` varchar(100) DEFAULT NULL COMMENT '记住我',
  `ingots` int(11) DEFAULT NULL COMMENT '法宝数量',
  `invitation_code` varchar(20) DEFAULT NULL COMMENT '邀请码',
  `last_token` text COMMENT '上次登录token',
  `is_vip` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否vip会员：0否1是',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of jyfb_user
-- ----------------------------
INSERT INTO `jyfb_user` VALUES ('1', 'admin0', '$2y$10$u8sYmc1tqDO8/hfkNsncruswlaQ19A6zUn2rdeqmK3QDUjTrNbWP.', 'j4', null, null, null, null, '15678837701', '0', null, '0', null, null, null, '1', null, null, null, null, null, '0', '1', '0', '2019-09-06 06:27:32', '2019-10-11 09:59:42');
INSERT INTO `jyfb_user` VALUES ('3', 'admin1', '$2y$10$JR/rR6Scoe1OhnV4MHVwre1NG4fLtqukxiiMcMm11ZElXCkl3nm3.', 'l5', null, null, null, null, '15678837702', '1', null, '0', null, null, null, '0', null, 'jsuCs1fd8WSsXxnVBLMYD62X2kCLMh4Cahv5QthOF9vy63KhfWpRP7xjIlQ7', null, '8aa35d', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9kZXYubGFyYXZlbC5jb21cL2FwaVwvdjFcL2xvZ2luIiwiaWF0IjoxNTY4OTcyMzU5LCJleHAiOjE1Njg5NzU5NTksIm5iZiI6MTU2ODk3MjM1OSwianRpIjoibTNVVnRUT2xPa09aNFZlSiIsInN1YiI6MywicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.nissz1wUEbuNmijkcHFPptDnko926w4zXRc7m6PuaeA', '0', '1', '0', '2019-09-06 06:32:40', '2019-09-20 09:39:19');
INSERT INTO `jyfb_user` VALUES ('4', 'admin3', '$2y$10$IHwgmSqoUBRF8Ju8NjN4zOjvdzoA42urM6sdfz.Mg7TGCAcg0GFt2', 'k3', null, null, null, null, '15678837703', '1', null, '6', null, '127.0.0.1', '2019-10-14 11:30:20', '0', null, 'VIic78TXC3BHW5oqNbB61pkREfhy8D8P6zAQSDMXYhCftc1zN4rxovJsZZiL', '235', '86b27a', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9kZXYubGFyYXZlbC5jb21cL2FwaVwvdjFcL2xvZ2luIiwiaWF0IjoxNTcxMDIzODIwLCJleHAiOjE1NzEwMjc0MjAsIm5iZiI6MTU3MTAyMzgyMCwianRpIjoiclplc2twaWpNSDgyZ2ZxSyIsInN1YiI6NCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.cQbTQ5_NPXq7ql2CH100m8PQxsxOp752e4mV2nreLoc', '0', '1', '0', '2019-09-06 06:50:00', '2019-10-14 11:30:20');
INSERT INTO `jyfb_user` VALUES ('5', 'admin4', '$2y$10$rzDQc8Ni09SEwtFPnzKkQudYuyZv4qoP1EnB4EVWa2aiJEldDo09C', 'm2', null, null, null, null, '15678837704', '1', null, '1', '', '127.0.0.1', '2019-09-06 07:43:02', '0', null, 'J3QTjrc9xB9ZEKHhASfYDO50fZfTEuj1Gkz9Fe2OhhWfEKWIb2xNegxUrF7k', null, 'b09493', null, '0', '1', '0', '2019-09-06 06:51:39', '2019-09-06 07:43:02');
INSERT INTO `jyfb_user` VALUES ('6', 'admin5', '$2y$10$WxZiza3M/K3IdnJZExheBu6m//eahbX6JV1FsrKZvkTrDyb3Ucze6', 'n1', null, null, null, null, '15678837705', '1', null, '0', '127.0.0.1', null, null, '0', null, null, null, 'ce2010', null, '0', '1', '0', '2019-09-06 06:53:32', '2019-09-06 06:53:32');

-- ----------------------------
-- Table structure for jyfb_user_address
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_user_address`;
CREATE TABLE `jyfb_user_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `receiver` varchar(30) DEFAULT NULL COMMENT '收货人',
  `receiver_mobile` varchar(15) DEFAULT NULL COMMENT '收货人手机号码',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `district` varchar(100) DEFAULT NULL COMMENT '区县',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0禁用1正常',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `address-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户地址表';

-- ----------------------------
-- Records of jyfb_user_address
-- ----------------------------
INSERT INTO `jyfb_user_address` VALUES ('1', '4', '123456', '14625465655', '广西', '南宁', '江南区', '五一路中', '1', '2019-09-24 05:53:11', '2019-09-24 06:23:28');
INSERT INTO `jyfb_user_address` VALUES ('2', '3', 'test', '13645484152', '福建省', '泉州市', '荔湾区', '宦西溪路2号', '1', '2019-09-24 05:53:11', '2019-09-24 05:53:14');
INSERT INTO `jyfb_user_address` VALUES ('4', '4', 'dddddd', '15896558940', '广西', '南宁', '江南', '五一路中', null, '2019-09-24 06:33:58', '2019-09-24 06:33:58');

-- ----------------------------
-- Table structure for jyfb_user_authentication
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_user_authentication`;
CREATE TABLE `jyfb_user_authentication` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `realname` varchar(20) NOT NULL COMMENT '真实姓名',
  `mobile` varchar(15) NOT NULL COMMENT '手机号码',
  `email` varchar(50) DEFAULT '' COMMENT '电子邮箱',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `district` varchar(50) DEFAULT NULL COMMENT '区县',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `identity_card` varchar(20) DEFAULT NULL COMMENT '身份证号码',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别：0男1女2未知',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq号',
  `birthday` varchar(10) DEFAULT NULL COMMENT '生日',
  `front_photo` varchar(50) DEFAULT NULL COMMENT '身份证正面照',
  `back_photo` varchar(50) DEFAULT NULL COMMENT '身份证反面照',
  `hand_photo` varchar(50) DEFAULT NULL COMMENT '手持身份证照',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0待审核，1审核通过，2审核不通过，3资料不全',
  `review_at` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `veritied_at` timestamp NULL DEFAULT NULL COMMENT '认证通过时间',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '提交申请时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `identity-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='实名认证表';

-- ----------------------------
-- Records of jyfb_user_authentication
-- ----------------------------
INSERT INTO `jyfb_user_authentication` VALUES ('1', '1', '马克龙', '13565856550', '', null, null, null, null, '412565199705068974', null, null, null, null, null, 'images/4.jpg', null, '1', '2019-10-11 09:59:42', '2019-10-11 09:59:42', null, '2019-10-11 09:59:42');

-- ----------------------------
-- Table structure for jyfb_user_sign
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_user_sign`;
CREATE TABLE `jyfb_user_sign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `successive_sign_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '连续签到次数',
  `count` int(11) DEFAULT NULL COMMENT '签到总次数',
  `last_sign_time` timestamp NULL DEFAULT NULL COMMENT '上次签到时间',
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '计算签到开始日期',
  `week_count` tinyint(4) DEFAULT NULL COMMENT '本周签到次数',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '首次签到时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `sign-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户签到表';

-- ----------------------------
-- Records of jyfb_user_sign
-- ----------------------------
INSERT INTO `jyfb_user_sign` VALUES ('1', '3', '7', '7', '2019-09-19 01:43:03', null, '6', '2019-09-09 02:31:45', '2019-09-19 01:43:03');
INSERT INTO `jyfb_user_sign` VALUES ('4', '4', '1', '1', '2019-09-30 15:08:59', '2019-09-30 15:05:26', '1', '2019-09-30 15:05:26', '2019-09-30 15:08:59');

-- ----------------------------
-- Table structure for jyfb_wechat_attention
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_wechat_attention`;
CREATE TABLE `jyfb_wechat_attention` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `wxid` varchar(50) DEFAULT NULL COMMENT '微信id',
  `avatar` varchar(100) DEFAULT NULL COMMENT '微信头像',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `wechat-user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信公众号关注表';

-- ----------------------------
-- Records of jyfb_wechat_attention
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_09_02_011305_create_member_table', '2');
INSERT INTO `migrations` VALUES ('5', '2019_09_02_012346_create_jsyfb_member_table', '3');
INSERT INTO `migrations` VALUES ('6', '2019_09_02_013426_create_jsyfb_acticle_comment_table', '4');
INSERT INTO `migrations` VALUES ('7', '2019_09_02_014724_create_jsyfb_acticle_like_table', '5');
INSERT INTO `migrations` VALUES ('8', '2019_09_02_015428_create_jsyfb_acticle_comment_table', '6');
INSERT INTO `migrations` VALUES ('9', '2019_09_02_020913_create_jsyfb_answer_list_table', '7');
INSERT INTO `migrations` VALUES ('10', '2019_09_02_021636_create_jsyfb_attention_table', '8');
INSERT INTO `migrations` VALUES ('11', '2019_09_02_051822_create_jsyfb_laywer_table', '9');
INSERT INTO `migrations` VALUES ('12', '2019_09_02_065424_create_jsyfb_attention_table', '10');
INSERT INTO `migrations` VALUES ('13', '2019_09_02_070941_create_jsyfb_balance_table', '11');
INSERT INTO `migrations` VALUES ('14', '2019_09_02_082648_create_jsyfb_ingots_table', '12');
INSERT INTO `migrations` VALUES ('15', '2019_09_03_025013_create_jsyfb_specialist_table', '13');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'joey', '12345678@qq.com', null, '$2y$10$5up94BvllFwWSQ3TQzDrdOj87Do5jq30gHj6jtBfFPiqSG40rTxt.', null, '2019-09-06 04:33:46', '2019-09-06 04:33:46');
