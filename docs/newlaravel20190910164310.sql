-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: localhost    Database: newlaravel
-- ------------------------------------------------------
-- Server version	5.7.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'仪表板','fa-bar-chart','/',NULL,NULL,'2019-09-01 16:53:34'),(2,0,2,'后台管理','fa-tasks',NULL,NULL,NULL,'2019-09-01 16:53:59'),(3,2,3,'用户','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'角色','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'权限','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'菜单','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'操作日志','fa-history','auth/logs',NULL,NULL,NULL),(8,0,0,'人员管理','fa-align-right','/personnel','personnel','2019-09-01 18:25:46','2019-09-04 07:59:04'),(9,0,0,'文章管理','fa-align-left','/hotacticles',NULL,'2019-09-01 18:46:17','2019-09-01 19:07:39'),(10,0,0,'资金管理','fa-rmb','/funds','balance','2019-09-01 23:23:14','2019-09-01 23:49:17'),(11,10,0,'余额管理','fa-cny','/funds/balances','balance','2019-09-01 23:30:55','2019-09-01 23:50:26'),(12,10,0,'元宝管理','fa-skype','/funds/ingots',NULL,'2019-09-02 00:24:35','2019-09-02 00:41:14'),(13,8,0,'专家管理','fa-align-center','/personnel/specialists','personnel','2019-09-02 19:12:07','2019-09-04 08:00:17'),(14,0,0,'日志查看器','fa-database','logs',NULL,'2019-09-02 19:38:08','2019-09-02 19:38:08'),(15,0,0,'用户管理','fa-user-md','/usercenter','usercenter','2019-09-02 21:24:08','2019-09-04 09:32:08'),(16,15,0,'收藏','fa-btc','/usercenter/collects','usercenter','2019-09-02 21:29:57','2019-09-02 21:31:38'),(17,15,0,'关注','fa-amazon','/usercenter/attentions','usercenter','2019-09-02 22:22:20','2019-09-02 22:22:20'),(18,15,0,'评论','fa-font','/usercenter/comments','usercenter','2019-09-02 22:41:29','2019-09-02 22:41:44'),(19,0,0,'法律宝典','fa-gavel','/legals','Legal','2019-09-02 23:20:58','2019-09-02 23:22:14'),(20,19,0,'分类','fa-sitemap','/legals/categorys','Legal','2019-09-02 23:27:32','2019-09-10 07:55:00'),(21,19,0,'宝典','fa-gg','/legals/books','Legal','2019-09-02 23:29:38','2019-09-02 23:29:38'),(22,9,0,'浏览记录','fa-arrow-left','/acticles/browse-history','acticle','2019-09-04 06:19:51','2019-09-04 06:39:10'),(24,9,0,'点赞','fa-thumbs-up','/acticles/likes','acticle','2019-09-04 06:38:09','2019-09-04 07:14:35'),(25,0,0,'答题管理','fa-gear','/answers','answer','2019-09-04 07:24:02','2019-09-04 07:25:32'),(26,25,0,'题库','fa-barcode','/answers/lists','answer','2019-09-04 07:26:14','2019-09-04 07:26:14'),(27,25,0,'每日答题','fa-bullseye','/answers/records','answer','2019-09-04 07:27:36','2019-09-04 07:27:36'),(28,0,0,'用户留言','fa-envelope-o','/messages','message','2019-09-04 07:39:24','2019-09-04 07:41:16'),(29,8,0,'律师管理','fa-envira','/personnel/laywers','personnel','2019-09-04 08:01:43','2019-09-04 08:02:09'),(30,0,0,'消息管理','fa-bell','/notices','notice','2019-09-04 08:16:17','2019-09-04 08:17:27'),(31,19,0,'已定专栏','fa-link','/legals/columns','Legal','2019-09-04 08:26:45','2019-09-04 09:22:57'),(32,0,0,'会员购买记录','fa-align-center','/members','member','2019-09-04 08:38:43','2019-09-04 08:38:43'),(33,0,0,'轮播图管理','fa-buysellads','/banners','banner','2019-09-04 08:46:48','2019-09-04 08:57:10'),(34,8,0,'业务分类','fa-list-alt','/personnel/categorys','personnel','2019-09-04 09:14:05','2019-09-04 09:14:05'),(35,15,0,'用户','fa-user','/usercenter/lists','usercenter','2019-09-04 09:34:12','2019-09-04 09:35:09'),(36,0,0,'优惠券','fa-shopping-bag','/coupons','coupon','2019-09-05 01:13:01','2019-09-05 01:14:32'),(37,36,0,'发放记录','fa-ioxhost','/coupons/grants','coupon','2019-09-05 01:16:47','2019-09-05 01:29:14'),(38,36,0,'优惠券','fa-btc','/coupons','coupon','2019-09-05 01:35:55','2019-09-05 01:35:55'),(39,9,0,'热门问题','fa-header','/questions',NULL,'2019-09-05 02:47:25','2019-09-05 02:47:25'),(40,9,0,'收藏','fa-heart','/acticles/collects','acticle','2019-09-05 07:55:52','2019-09-05 07:55:52'),(41,9,0,'案例','fa-newspaper-o','/acticles','acticle','2019-09-05 08:08:34','2019-09-05 08:08:34'),(42,15,0,'签到','fa-paint-brush','/usercenter/signs','usercenter','2019-09-09 02:14:21','2019-09-09 02:14:21'),(43,0,0,'工具','fa-key','/tools','tool','2019-09-09 07:14:47','2019-09-09 07:19:57'),(44,43,0,'律师','fa-bars','/tools/laywers','tool','2019-09-09 07:18:35','2019-09-10 07:48:12'),(45,43,0,'公证处','fa-bars','/tools/notarys','tool','2019-09-09 07:19:06','2019-09-09 07:19:06'),(46,45,0,'公证处评论','fa-bars','/tools/notarys/comments','tool','2019-09-10 02:02:22','2019-09-10 02:02:22'),(47,45,0,'顾问列表','fa-bars','/tools/notarys/specialists','tool','2019-09-10 02:53:13','2019-09-10 02:53:13'),(48,39,0,'分类','fa-bars','/questions/categorys','acticle','2019-09-10 06:54:45','2019-09-10 06:56:50'),(49,41,0,'咨询专家','fa-bars','/acticles/specialist/advices','acticle','2019-09-10 07:51:06','2019-09-10 07:51:06');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=1282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2019-08-27 17:11:00','2019-08-27 17:11:00'),(2,1,'admin','GET','127.0.0.1','[]','2019-08-28 17:33:09','2019-08-28 17:33:09'),(3,1,'admin','GET','127.0.0.1','[]','2019-08-28 17:33:18','2019-08-28 17:33:18'),(4,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 17:33:35','2019-08-28 17:33:35'),(5,1,'admin/auth/users','GET','127.0.0.1','[]','2019-08-28 17:37:26','2019-08-28 17:37:26'),(6,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 16:49:19','2019-09-01 16:49:19'),(7,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 16:49:28','2019-09-01 16:49:28'),(8,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 16:49:34','2019-09-01 16:49:34'),(9,1,'admin/auth/users','GET','127.0.0.1','[]','2019-09-01 16:52:57','2019-09-01 16:52:57'),(10,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 16:53:06','2019-09-01 16:53:06'),(11,1,'admin/auth/menu/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 16:53:12','2019-09-01 16:53:12'),(12,1,'admin/auth/menu/1','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4eea\\u8868\\u677f\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 16:53:34','2019-09-01 16:53:34'),(13,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 16:53:36','2019-09-01 16:53:36'),(14,1,'admin/auth/menu/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 16:53:43','2019-09-01 16:53:43'),(15,1,'admin/auth/menu/2','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 16:53:58','2019-09-01 16:53:58'),(16,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 16:54:01','2019-09-01 16:54:01'),(17,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 16:54:07','2019-09-01 16:54:07'),(18,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 17:09:06','2019-09-01 17:09:06'),(19,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 18:24:21','2019-09-01 18:24:21'),(20,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 18:24:26','2019-09-01 18:24:26'),(21,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/laywer\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}','2019-09-01 18:25:46','2019-09-01 18:25:46'),(22,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 18:25:48','2019-09-01 18:25:48'),(23,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:25:53','2019-09-01 18:25:53'),(24,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:25:59','2019-09-01 18:25:59'),(25,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:26:04','2019-09-01 18:26:04'),(26,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:26:16','2019-09-01 18:26:16'),(27,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"laywer\",\"name\":\"laywerManagement\",\"http_method\":[null],\"http_path\":\"\\/laywer*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-01 18:26:39','2019-09-01 18:26:39'),(28,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-01 18:26:42','2019-09-01 18:26:42'),(29,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:26:49','2019-09-01 18:26:49'),(30,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:26:54','2019-09-01 18:26:54'),(31,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/laywer\",\"roles\":[null],\"permission\":\"laywer\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 18:27:02','2019-09-01 18:27:02'),(32,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 18:27:04','2019-09-01 18:27:04'),(33,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 18:27:08','2019-09-01 18:27:08'),(34,1,'admin/laywer','GET','127.0.0.1','[]','2019-09-01 18:28:17','2019-09-01 18:28:17'),(35,1,'admin/laywer','GET','127.0.0.1','[]','2019-09-01 18:28:33','2019-09-01 18:28:33'),(36,1,'admin/laywer','GET','127.0.0.1','[]','2019-09-01 18:29:06','2019-09-01 18:29:06'),(37,1,'admin/laywer','GET','127.0.0.1','[]','2019-09-01 18:33:15','2019-09-01 18:33:15'),(38,1,'admin/laywer','GET','127.0.0.1','[]','2019-09-01 18:34:29','2019-09-01 18:34:29'),(39,1,'admin/laywer','GET','127.0.0.1','[]','2019-09-01 18:39:06','2019-09-01 18:39:06'),(40,1,'admin/laywer/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:39:17','2019-09-01 18:39:17'),(41,1,'admin/laywer/1/edit','GET','127.0.0.1','[]','2019-09-01 18:40:32','2019-09-01 18:40:32'),(42,1,'admin/laywer/1/edit','GET','127.0.0.1','[]','2019-09-01 18:42:15','2019-09-01 18:42:15'),(43,1,'admin/laywer','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:42:52','2019-09-01 18:42:52'),(44,1,'admin/laywer/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:42:59','2019-09-01 18:42:59'),(45,1,'admin/laywer/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:43:03','2019-09-01 18:43:03'),(46,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:43:47','2019-09-01 18:43:47'),(47,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/acticle\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}','2019-09-01 18:46:17','2019-09-01 18:46:17'),(48,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 18:46:19','2019-09-01 18:46:19'),(49,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:46:29','2019-09-01 18:46:29'),(50,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:46:33','2019-09-01 18:46:33'),(51,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/acticle*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-01 18:46:59','2019-09-01 18:46:59'),(52,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-01 18:47:01','2019-09-01 18:47:01'),(53,1,'admin/auth/permissions/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 18:47:08','2019-09-01 18:47:08'),(54,1,'admin/auth/permissions/7','PUT','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/acticle*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-01 18:47:24','2019-09-01 18:47:24'),(55,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-01 18:47:27','2019-09-01 18:47:27'),(56,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-01 19:06:20','2019-09-01 19:06:20'),(57,1,'admin','GET','127.0.0.1','[]','2019-09-01 19:06:48','2019-09-01 19:06:48'),(58,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:06:56','2019-09-01 19:06:56'),(59,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:07:01','2019-09-01 19:07:01'),(60,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/acticles\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 19:07:13','2019-09-01 19:07:13'),(61,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 19:07:15','2019-09-01 19:07:15'),(62,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:07:21','2019-09-01 19:07:21'),(63,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"\\/hotacticles\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 19:07:39','2019-09-01 19:07:39'),(64,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 19:07:41','2019-09-01 19:07:41'),(65,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:07:53','2019-09-01 19:07:53'),(66,1,'admin/auth/permissions/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:07:59','2019-09-01 19:07:59'),(67,1,'admin/auth/permissions/7','PUT','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-01 19:08:07','2019-09-01 19:08:07'),(68,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-01 19:08:09','2019-09-01 19:08:09'),(69,1,'admin','GET','127.0.0.1','[]','2019-09-01 19:08:36','2019-09-01 19:08:36'),(70,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:08:44','2019-09-01 19:08:44'),(71,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:09:09','2019-09-01 19:09:09'),(72,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:14:37','2019-09-01 19:14:37'),(73,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:15:09','2019-09-01 19:15:09'),(74,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:15:15','2019-09-01 19:15:15'),(75,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:15:35','2019-09-01 19:15:35'),(76,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:16:06','2019-09-01 19:16:06'),(77,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:16:39','2019-09-01 19:16:39'),(78,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:16:59','2019-09-01 19:16:59'),(79,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:18:23','2019-09-01 19:18:23'),(80,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 19:18:36','2019-09-01 19:18:36'),(81,1,'admin/hotacticles/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:18:47','2019-09-01 19:18:47'),(82,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:28:42','2019-09-01 19:28:42'),(83,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:30:26','2019-09-01 19:30:26'),(84,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:30:33','2019-09-01 19:30:33'),(85,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:39:07','2019-09-01 19:39:07'),(86,1,'admin/hotacticles/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:39:13','2019-09-01 19:39:13'),(87,1,'admin/hotacticles/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:48:53','2019-09-01 19:48:53'),(88,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:49:46','2019-09-01 19:49:46'),(89,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:50:53','2019-09-01 19:50:53'),(90,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:51:06','2019-09-01 19:51:06'),(91,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:52:44','2019-09-01 19:52:44'),(92,1,'admin/hotacticles/1/edit','GET','127.0.0.1','[]','2019-09-01 19:54:21','2019-09-01 19:54:21'),(93,1,'admin/hotacticles/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:54:40','2019-09-01 19:54:40'),(94,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:55:04','2019-09-01 19:55:04'),(95,1,'admin/hotacticles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 19:55:09','2019-09-01 19:55:09'),(96,1,'admin','GET','127.0.0.1','[]','2019-09-01 20:57:42','2019-09-01 20:57:42'),(97,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 20:57:50','2019-09-01 20:57:50'),(98,1,'admin/hotacticles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 20:57:54','2019-09-01 20:57:54'),(99,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 21:15:22','2019-09-01 21:15:22'),(100,1,'admin/laywers','GET','127.0.0.1','[]','2019-09-01 21:15:41','2019-09-01 21:15:41'),(101,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 21:15:52','2019-09-01 21:15:52'),(102,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 21:16:03','2019-09-01 21:16:03'),(103,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"laywer\",\"name\":\"laywerManagement\",\"http_method\":[null],\"http_path\":\"\\/laywers*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-01 21:16:10','2019-09-01 21:16:10'),(104,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-01 21:16:13','2019-09-01 21:16:13'),(105,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 21:16:18','2019-09-01 21:16:18'),(106,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 21:16:24','2019-09-01 21:16:24'),(107,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/laywers\",\"roles\":[null],\"permission\":\"laywer\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 21:16:32','2019-09-01 21:16:32'),(108,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 21:16:34','2019-09-01 21:16:34'),(109,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 21:16:54','2019-09-01 21:16:54'),(110,1,'admin/laywers','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 21:17:00','2019-09-01 21:17:00'),(111,1,'admin/laywers','GET','127.0.0.1','[]','2019-09-01 21:56:53','2019-09-01 21:56:53'),(112,1,'admin/laywers','GET','127.0.0.1','{\"id\":\"10\",\"_pjax\":\"#pjax-container\"}','2019-09-01 21:58:08','2019-09-01 21:58:08'),(113,1,'admin/laywers','GET','127.0.0.1','{\"id\":\"10\"}','2019-09-01 21:59:51','2019-09-01 21:59:51'),(114,1,'admin/laywers','GET','127.0.0.1','{\"id\":\"10\"}','2019-09-01 21:59:57','2019-09-01 21:59:57'),(115,1,'admin/laywers','GET','127.0.0.1','{\"id\":\"10\"}','2019-09-01 22:00:14','2019-09-01 22:00:14'),(116,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 22:09:20','2019-09-01 22:09:20'),(117,1,'admin/hotacticles/16/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 22:35:21','2019-09-01 22:35:21'),(118,1,'admin/hotacticles/16','PUT','127.0.0.1','{\"title\":\"Hic perferendis explicabo velit numquam repellat et.\",\"keyword\":\"Assumenda voluptas nemo dignissimos quae aliquam.\",\"content\":\"<blockquote><b>Accusantium sed similique qui ut dolore nihil.<\\/b><\\/blockquote><p>\\u200b<br><\\/p>\",\"like_count\":\"831\",\"comments_count\":\"515\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/hotacticles\"}','2019-09-01 22:35:47','2019-09-01 22:35:47'),(119,1,'admin/hotacticles','GET','127.0.0.1','[]','2019-09-01 22:35:49','2019-09-01 22:35:49'),(120,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:21:50','2019-09-01 23:21:50'),(121,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/balances\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}','2019-09-01 23:23:14','2019-09-01 23:23:14'),(122,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:23:16','2019-09-01 23:23:16'),(123,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:23:20','2019-09-01 23:23:20'),(124,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:23:25','2019-09-01 23:23:25'),(125,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"balance\",\"name\":\"balanceManagement\",\"http_method\":[null],\"http_path\":\"\\/balances*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-01 23:24:06','2019-09-01 23:24:06'),(126,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-01 23:24:09','2019-09-01 23:24:09'),(127,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:24:22','2019-09-01 23:24:22'),(128,1,'admin/auth/menu/10/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:24:28','2019-09-01 23:24:28'),(129,1,'admin/auth/menu/10','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/balances\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 23:24:38','2019-09-01 23:24:38'),(130,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:24:41','2019-09-01 23:24:41'),(131,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:28:37','2019-09-01 23:28:37'),(132,1,'admin/balances','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:28:44','2019-09-01 23:28:44'),(133,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:28:53','2019-09-01 23:28:53'),(134,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:28:59','2019-09-01 23:28:59'),(135,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"10\",\"title\":\"\\u4f59\\u989d\\u7ba1\\u7406\",\"icon\":\"fa-cny\",\"uri\":\"\\/balances\\/index\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}','2019-09-01 23:30:54','2019-09-01 23:30:54'),(136,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:30:57','2019-09-01 23:30:57'),(137,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:41:24','2019-09-01 23:41:24'),(138,1,'admin/balances/index','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:41:46','2019-09-01 23:41:46'),(139,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:41:48','2019-09-01 23:41:48'),(140,1,'admin/balances/index','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:42:05','2019-09-01 23:42:05'),(141,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:42:07','2019-09-01 23:42:07'),(142,1,'admin/funds/balances','GET','127.0.0.1','[]','2019-09-01 23:44:15','2019-09-01 23:44:15'),(143,1,'admin/funds/balances','GET','127.0.0.1','[]','2019-09-01 23:47:19','2019-09-01 23:47:19'),(144,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:47:43','2019-09-01 23:47:43'),(145,1,'admin/auth/menu/11/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:47:53','2019-09-01 23:47:53'),(146,1,'admin/auth/menu/11','PUT','127.0.0.1','{\"parent_id\":\"10\",\"title\":\"\\u4f59\\u989d\\u7ba1\\u7406\",\"icon\":\"fa-cny\",\"uri\":\"\\/funds\\/balances\\/index\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 23:48:53','2019-09-01 23:48:53'),(147,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:48:55','2019-09-01 23:48:55'),(148,1,'admin/auth/menu/10/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:49:00','2019-09-01 23:49:00'),(149,1,'admin/auth/menu/10','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/funds\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 23:49:16','2019-09-01 23:49:16'),(150,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:49:19','2019-09-01 23:49:19'),(151,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:49:30','2019-09-01 23:49:30'),(152,1,'admin/auth/menu/11/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:50:19','2019-09-01 23:50:19'),(153,1,'admin/auth/menu/11','PUT','127.0.0.1','{\"parent_id\":\"10\",\"title\":\"\\u4f59\\u989d\\u7ba1\\u7406\",\"icon\":\"fa-cny\",\"uri\":\"\\/funds\\/balances\",\"roles\":[null],\"permission\":\"balance\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-01 23:50:26','2019-09-01 23:50:26'),(154,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:50:28','2019-09-01 23:50:28'),(155,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-01 23:50:32','2019-09-01 23:50:32'),(156,1,'admin/funds/balances','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-01 23:50:37','2019-09-01 23:50:37'),(157,1,'admin/funds/balances','GET','127.0.0.1','[]','2019-09-02 00:19:22','2019-09-02 00:19:22'),(158,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 00:20:06','2019-09-02 00:20:06'),(159,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"10\",\"title\":\"\\u5143\\u5b9d\\u7ba1\\u7406\",\"icon\":\"fa-skype\",\"uri\":\"\\/founds\\/ingots\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\"}','2019-09-02 00:24:35','2019-09-02 00:24:35'),(160,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 00:24:37','2019-09-02 00:24:37'),(161,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 00:24:52','2019-09-02 00:24:52'),(162,1,'admin/auth/permissions/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 00:24:59','2019-09-02 00:24:59'),(163,1,'admin/auth/permissions/8','PUT','127.0.0.1','{\"slug\":\"founds\",\"name\":\"foundsManagement\",\"http_method\":[null],\"http_path\":\"\\/founds*\",\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 00:25:30','2019-09-02 00:25:30'),(164,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 00:25:32','2019-09-02 00:25:32'),(165,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 00:25:47','2019-09-02 00:25:47'),(166,1,'admin/funds/balances','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 00:26:00','2019-09-02 00:26:00'),(167,1,'admin/funds/ingots','GET','127.0.0.1','[]','2019-09-02 00:40:54','2019-09-02 00:40:54'),(168,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 00:41:02','2019-09-02 00:41:02'),(169,1,'admin/auth/menu/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 00:41:07','2019-09-02 00:41:07'),(170,1,'admin/auth/menu/12','PUT','127.0.0.1','{\"parent_id\":\"10\",\"title\":\"\\u5143\\u5b9d\\u7ba1\\u7406\",\"icon\":\"fa-skype\",\"uri\":\"\\/funds\\/ingots\",\"roles\":[null],\"permission\":null,\"_token\":\"Cn5giD37YR0Qpta0t61eaXFkAGYgb7CeiRBVepgW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 00:41:14','2019-09-02 00:41:14'),(171,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 00:41:17','2019-09-02 00:41:17'),(172,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 00:41:21','2019-09-02 00:41:21'),(173,1,'admin/funds/ingots','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 00:41:26','2019-09-02 00:41:26'),(174,1,'admin/funds/ingots','GET','127.0.0.1','[]','2019-09-02 00:42:01','2019-09-02 00:42:01'),(175,1,'admin/funds/ingots','GET','127.0.0.1','[]','2019-09-02 00:44:03','2019-09-02 00:44:03'),(176,1,'admin/funds/ingots','GET','127.0.0.1','[]','2019-09-02 00:52:48','2019-09-02 00:52:48'),(177,1,'admin/funds/ingots','GET','127.0.0.1','[]','2019-09-02 00:56:21','2019-09-02 00:56:21'),(178,1,'admin','GET','127.0.0.1','[]','2019-09-02 18:47:44','2019-09-02 18:47:44'),(179,1,'admin/funds/balances','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 18:48:00','2019-09-02 18:48:00'),(180,1,'admin/funds/balances','GET','127.0.0.1','[]','2019-09-02 19:11:01','2019-09-02 19:11:01'),(181,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:11:13','2019-09-02 19:11:13'),(182,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/specialists\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 19:12:07','2019-09-02 19:12:07'),(183,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 19:12:09','2019-09-02 19:12:09'),(184,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:12:22','2019-09-02 19:12:22'),(185,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:12:30','2019-09-02 19:12:30'),(186,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"specialists\",\"name\":\"specialistsManagement\",\"http_method\":[null],\"http_path\":\"\\/specialists*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 19:13:00','2019-09-02 19:13:00'),(187,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 19:13:02','2019-09-02 19:13:02'),(188,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:13:41','2019-09-02 19:13:41'),(189,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 19:13:51','2019-09-02 19:13:51'),(190,1,'admin/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:13:58','2019-09-02 19:13:58'),(191,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:14:05','2019-09-02 19:14:05'),(192,1,'admin/auth/menu/13/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:14:09','2019-09-02 19:14:09'),(193,1,'admin/auth/menu/13','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/specialists\",\"roles\":[null],\"permission\":\"specialists\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 19:14:21','2019-09-02 19:14:21'),(194,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 19:14:23','2019-09-02 19:14:23'),(195,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:17:00','2019-09-02 19:17:00'),(196,1,'admin/laywers','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:17:07','2019-09-02 19:17:07'),(197,1,'admin/laywers/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:17:12','2019-09-02 19:17:12'),(198,1,'admin/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:17:16','2019-09-02 19:17:16'),(199,1,'admin/specialists/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:17:20','2019-09-02 19:17:20'),(200,1,'admin/specialists/create','GET','127.0.0.1','[]','2019-09-02 19:18:10','2019-09-02 19:18:10'),(201,1,'admin/specialists','POST','127.0.0.1','{\"name\":\"test\",\"class_id\":\"2\",\"level\":\"2\",\"title\":\"spe\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 19:19:18','2019-09-02 19:19:18'),(202,1,'admin/specialists','GET','127.0.0.1','[]','2019-09-02 19:19:20','2019-09-02 19:19:20'),(203,1,'admin/specialists','GET','127.0.0.1','[]','2019-09-02 19:19:47','2019-09-02 19:19:47'),(204,1,'admin/specialists','GET','127.0.0.1','[]','2019-09-02 19:20:03','2019-09-02 19:20:03'),(205,1,'admin/specialists','GET','127.0.0.1','[]','2019-09-02 19:23:22','2019-09-02 19:23:22'),(206,1,'admin/specialists','GET','127.0.0.1','[]','2019-09-02 19:23:52','2019-09-02 19:23:52'),(207,1,'admin/specialists','GET','127.0.0.1','[]','2019-09-02 19:30:03','2019-09-02 19:30:03'),(208,1,'admin/specialists/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:30:13','2019-09-02 19:30:13'),(209,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:36:21','2019-09-02 19:36:21'),(210,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u65e5\\u5fd7\\u67e5\\u770b\\u5668\",\"icon\":\"fa-database\",\"uri\":\"logs\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 19:38:08','2019-09-02 19:38:08'),(211,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 19:38:11','2019-09-02 19:38:11'),(212,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:39:06','2019-09-02 19:39:06'),(213,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 19:39:11','2019-09-02 19:39:11'),(214,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"logs\",\"name\":\"LogsManagement\",\"http_method\":[null],\"http_path\":\"\\/logs*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 19:39:49','2019-09-02 19:39:49'),(215,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 19:39:51','2019-09-02 19:39:51'),(216,1,'admin/logs','GET','127.0.0.1','[]','2019-09-02 20:00:06','2019-09-02 20:00:06'),(217,1,'admin/logs','GET','127.0.0.1','[]','2019-09-02 20:19:46','2019-09-02 20:19:46'),(218,1,'admin/logs','GET','127.0.0.1','[]','2019-09-02 20:22:10','2019-09-02 20:22:10'),(219,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 20:58:44','2019-09-02 20:58:44'),(220,1,'admin/hotacticles/16/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 20:58:52','2019-09-02 20:58:52'),(221,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:12:04','2019-09-02 21:12:04'),(222,1,'admin/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:16:36','2019-09-02 21:16:36'),(223,1,'admin/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:16:40','2019-09-02 21:16:40'),(224,1,'admin/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:16:48','2019-09-02 21:16:48'),(225,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:17:02','2019-09-02 21:17:02'),(226,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 21:24:08','2019-09-02 21:24:08'),(227,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:24:11','2019-09-02 21:24:11'),(228,1,'admin/funds/balances','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:24:27','2019-09-02 21:24:27'),(229,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:24:39','2019-09-02 21:24:39'),(230,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:24:43','2019-09-02 21:24:43'),(231,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"usercenter\",\"name\":\"usercenterManagement\",\"http_method\":[null],\"http_path\":\"\\/usercenter\\/collect*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 21:26:17','2019-09-02 21:26:17'),(232,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 21:26:19','2019-09-02 21:26:19'),(233,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:26:28','2019-09-02 21:26:28'),(234,1,'admin/auth/menu/15/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:26:53','2019-09-02 21:26:53'),(235,1,'admin/auth/menu/15','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 21:27:04','2019-09-02 21:27:04'),(236,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:27:07','2019-09-02 21:27:07'),(237,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:27:36','2019-09-02 21:27:36'),(238,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:28:08','2019-09-02 21:28:08'),(239,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u6536\\u85cf\",\"icon\":\"fa-btc\",\"uri\":\"\\/collects\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 21:29:57','2019-09-02 21:29:57'),(240,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:29:59','2019-09-02 21:29:59'),(241,1,'admin/auth/menu/15/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:30:05','2019-09-02 21:30:05'),(242,1,'admin/auth/menu/15','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenters\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 21:30:14','2019-09-02 21:30:14'),(243,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:30:17','2019-09-02 21:30:17'),(244,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:30:29','2019-09-02 21:30:29'),(245,1,'admin/auth/menu/16/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:31:16','2019-09-02 21:31:16'),(246,1,'admin/auth/menu/16','PUT','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u6536\\u85cf\",\"icon\":\"fa-btc\",\"uri\":\"\\/usercenter\\/collects\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 21:31:38','2019-09-02 21:31:38'),(247,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:31:40','2019-09-02 21:31:40'),(248,1,'admin/auth/menu/15/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 21:31:51','2019-09-02 21:31:51'),(249,1,'admin/auth/menu/15','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u4e2d\\u5fc3\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 21:31:58','2019-09-02 21:31:58'),(250,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:32:02','2019-09-02 21:32:02'),(251,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 21:32:29','2019-09-02 21:32:29'),(252,1,'admin/usercenter/collects','GET','127.0.0.1','[]','2019-09-02 21:33:13','2019-09-02 21:33:13'),(253,1,'admin/usercenter/collects','GET','127.0.0.1','[]','2019-09-02 21:36:42','2019-09-02 21:36:42'),(254,1,'admin/usercenter/collects','GET','127.0.0.1','[]','2019-09-02 22:08:01','2019-09-02 22:08:01'),(255,1,'admin/usercenter/collects','GET','127.0.0.1','[]','2019-09-02 22:10:59','2019-09-02 22:10:59'),(256,1,'admin/usercenter/collects/create','GET','127.0.0.1','[]','2019-09-02 22:12:54','2019-09-02 22:12:54'),(257,1,'admin/usercenter/collects/create','GET','127.0.0.1','[]','2019-09-02 22:13:52','2019-09-02 22:13:52'),(258,1,'admin/usercenter/collects/create','GET','127.0.0.1','[]','2019-09-02 22:14:40','2019-09-02 22:14:40'),(259,1,'admin/usercenter/collects','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:15:02','2019-09-02 22:15:02'),(260,1,'admin/usercenter/collects/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:15:19','2019-09-02 22:15:19'),(261,1,'admin/usercenter/collects','POST','127.0.0.1','{\"user_id\":\"1\",\"article_id\":\"1\",\"status\":\"on\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/usercenter\\/collects\"}','2019-09-02 22:15:29','2019-09-02 22:15:29'),(262,1,'admin/usercenter/collects','GET','127.0.0.1','[]','2019-09-02 22:15:33','2019-09-02 22:15:33'),(263,1,'admin/usercenter/collects/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:15:41','2019-09-02 22:15:41'),(264,1,'admin/usercenter/collects/1','PUT','127.0.0.1','{\"user_id\":\"1\",\"article_id\":\"2\",\"status\":\"on\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/usercenter\\/collects\"}','2019-09-02 22:15:55','2019-09-02 22:15:55'),(265,1,'admin/usercenter/collects','GET','127.0.0.1','[]','2019-09-02 22:15:58','2019-09-02 22:15:58'),(266,1,'admin/hotacticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:16:05','2019-09-02 22:16:05'),(267,1,'admin/usercenter/collects','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:16:38','2019-09-02 22:16:38'),(268,1,'admin/usercenter/collects/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:16:50','2019-09-02 22:16:50'),(269,1,'admin/usercenter/collects','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:16:57','2019-09-02 22:16:57'),(270,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:21:19','2019-09-02 22:21:19'),(271,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u5173\\u6ce8\",\"icon\":\"fa-amazon\",\"uri\":\"\\/usercenter\\/attentions\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 22:22:20','2019-09-02 22:22:20'),(272,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 22:22:22','2019-09-02 22:22:22'),(273,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:22:33','2019-09-02 22:22:33'),(274,1,'admin/auth/permissions/11/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:22:41','2019-09-02 22:22:41'),(275,1,'admin/auth/permissions/11','PUT','127.0.0.1','{\"slug\":\"usercenter\",\"name\":\"usercenterManagement\",\"http_method\":[null],\"http_path\":\"\\/usercenter\\/collects*\\r\\n\\/usercenter\\/attentions*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 22:23:18','2019-09-02 22:23:18'),(276,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 22:23:21','2019-09-02 22:23:21'),(277,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 22:25:15','2019-09-02 22:25:15'),(278,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 22:26:39','2019-09-02 22:26:39'),(279,1,'admin/usercenter/attentions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:27:07','2019-09-02 22:27:07'),(280,1,'admin/usercenter/attentions/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:27:29','2019-09-02 22:27:29'),(281,1,'admin/usercenter/attentions/1/edit','GET','127.0.0.1','[]','2019-09-02 22:28:04','2019-09-02 22:28:04'),(282,1,'admin/usercenter/attentions/1/edit','GET','127.0.0.1','[]','2019-09-02 22:28:25','2019-09-02 22:28:25'),(283,1,'admin/usercenter/attentions/1/edit','GET','127.0.0.1','[]','2019-09-02 22:29:21','2019-09-02 22:29:21'),(284,1,'admin/usercenter/attentions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:31:46','2019-09-02 22:31:46'),(285,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:38:58','2019-09-02 22:38:58'),(286,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u8bc4\\u8bba\",\"icon\":\"fa-font\",\"uri\":\"\\/usercenter\\/comment\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 22:41:29','2019-09-02 22:41:29'),(287,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 22:41:31','2019-09-02 22:41:31'),(288,1,'admin/auth/menu/18/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:41:37','2019-09-02 22:41:37'),(289,1,'admin/auth/menu/18','PUT','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u8bc4\\u8bba\",\"icon\":\"fa-font\",\"uri\":\"\\/usercenter\\/comments\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 22:41:43','2019-09-02 22:41:43'),(290,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 22:41:46','2019-09-02 22:41:46'),(291,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:42:04','2019-09-02 22:42:04'),(292,1,'admin/auth/permissions/11/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:42:13','2019-09-02 22:42:13'),(293,1,'admin/auth/permissions/11','PUT','127.0.0.1','{\"slug\":\"usercenter\",\"name\":\"usercenterManagement\",\"http_method\":[null],\"http_path\":\"\\/usercenter\\/collects*\\r\\n\\/usercenter\\/attentions*\\r\\n\\/usercenter\\/comments*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 22:42:51','2019-09-02 22:42:51'),(294,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 22:42:54','2019-09-02 22:42:54'),(295,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 22:43:55','2019-09-02 22:43:55'),(296,1,'admin/usercenter/comments','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 22:44:07','2019-09-02 22:44:07'),(297,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:12:18','2019-09-02 23:12:18'),(298,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6cd5\\u5f8b\\u5b9d\\u5178\",\"icon\":\"fa-gavel\",\"uri\":\"\\/legals\",\"roles\":[null],\"permission\":null,\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 23:20:57','2019-09-02 23:20:57'),(299,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 23:21:01','2019-09-02 23:21:01'),(300,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:21:09','2019-09-02 23:21:09'),(301,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:21:16','2019-09-02 23:21:16'),(302,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 23:21:46','2019-09-02 23:21:46'),(303,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 23:21:48','2019-09-02 23:21:48'),(304,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:21:56','2019-09-02 23:21:56'),(305,1,'admin/auth/menu/19/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:22:03','2019-09-02 23:22:03'),(306,1,'admin/auth/menu/19','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6cd5\\u5f8b\\u5b9d\\u5178\",\"icon\":\"fa-gavel\",\"uri\":\"\\/legals\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 23:22:14','2019-09-02 23:22:14'),(307,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 23:22:16','2019-09-02 23:22:16'),(308,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 23:22:24','2019-09-02 23:22:24'),(309,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:23:13','2019-09-02 23:23:13'),(310,1,'admin/auth/permissions/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:23:30','2019-09-02 23:23:30'),(311,1,'admin/auth/permissions/12','PUT','127.0.0.1','{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals\\/category\\/*\\r\\n\\/legals\\/books\\/*\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-02 23:25:22','2019-09-02 23:25:22'),(312,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-02 23:25:24','2019-09-02 23:25:24'),(313,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:25:31','2019-09-02 23:25:31'),(314,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"19\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-sitemap\",\"uri\":null,\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 23:27:32','2019-09-02 23:27:32'),(315,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 23:27:34','2019-09-02 23:27:34'),(316,1,'admin/auth/menu/20/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:27:43','2019-09-02 23:27:43'),(317,1,'admin/auth/menu/20','PUT','127.0.0.1','{\"parent_id\":\"19\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-sitemap\",\"uri\":\"\\/legals\\/category\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-02 23:28:03','2019-09-02 23:28:03'),(318,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 23:28:06','2019-09-02 23:28:06'),(319,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"19\",\"title\":\"\\u5b9d\\u5178\",\"icon\":\"fa-gg\",\"uri\":\"\\/legals\\/books\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 23:29:38','2019-09-02 23:29:38'),(320,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 23:29:40','2019-09-02 23:29:40'),(321,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-02 23:29:58','2019-09-02 23:29:58'),(322,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:30:33','2019-09-02 23:30:33'),(323,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:31:12','2019-09-02 23:31:12'),(324,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:32:19','2019-09-02 23:32:19'),(325,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:36:01','2019-09-02 23:36:01'),(326,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:36:35','2019-09-02 23:36:35'),(327,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:36:51','2019-09-02 23:36:51'),(328,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:37:10','2019-09-02 23:37:10'),(329,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5a5a\\u59fb\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 23:48:55','2019-09-02 23:48:55'),(330,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:48:57','2019-09-02 23:48:57'),(331,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:49:11','2019-09-02 23:49:11'),(332,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u517b\\u8001\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-02 23:49:23','2019-09-02 23:49:23'),(333,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:49:26','2019-09-02 23:49:26'),(334,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:49:31','2019-09-02 23:49:31'),(335,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5c31\\u4e1a\\u548c\\u521b\\u4e1a\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-02 23:49:48','2019-09-02 23:49:48'),(336,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:49:50','2019-09-02 23:49:50'),(337,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u6559\\u80b2\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:50:08','2019-09-02 23:50:08'),(338,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:50:10','2019-09-02 23:50:10'),(339,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u6295\\u8d44\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:50:21','2019-09-02 23:50:21'),(340,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:50:23','2019-09-02 23:50:23'),(341,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5a5a\\u524d\\u8d22\\u4ea7\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 23:50:46','2019-09-02 23:50:46'),(342,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:50:48','2019-09-02 23:50:48'),(343,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:50:53','2019-09-02 23:50:53'),(344,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5a5a\\u5185\\u8d22\\u4ea7\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-02 23:51:14','2019-09-02 23:51:14'),(345,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:51:16','2019-09-02 23:51:16'),(346,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u79bb\\u5a5a\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:51:31','2019-09-02 23:51:31'),(347,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:51:34','2019-09-02 23:51:34'),(348,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u7ee7\\u627f\",\"pid\":\"1\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 23:51:45','2019-09-02 23:51:45'),(349,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:51:48','2019-09-02 23:51:48'),(350,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:51:55','2019-09-02 23:51:55'),(351,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u9057\\u8d60\\u629a\\u517b\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-02 23:52:19','2019-09-02 23:52:19'),(352,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:52:22','2019-09-02 23:52:22'),(353,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u610f\\u5b9a\\u76d1\\u62a4\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:52:54','2019-09-02 23:52:54'),(354,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:52:56','2019-09-02 23:52:56'),(355,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u9057\\u5631\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:53:09','2019-09-02 23:53:09'),(356,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:53:11','2019-09-02 23:53:11'),(357,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u8650\\u5f85\\u8001\\u4eba\\u95ee\\u9898\",\"pid\":\"2\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:53:24','2019-09-02 23:53:24'),(358,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:53:27','2019-09-02 23:53:27'),(359,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u533b\\u7597\\u4fdd\\u9669\",\"pid\":\"3\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:53:42','2019-09-02 23:53:42'),(360,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:53:45','2019-09-02 23:53:45'),(361,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u533b\\u7597\\u4e8b\\u6545\",\"pid\":\"3\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:54:00','2019-09-02 23:54:00'),(362,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:54:02','2019-09-02 23:54:02'),(363,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u4ea4\\u901a\\u4e8b\\u6545\",\"pid\":\"3\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:54:12','2019-09-02 23:54:12'),(364,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:54:15','2019-09-02 23:54:15'),(365,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u62db\\u4eba\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:54:29','2019-09-02 23:54:29'),(366,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:54:32','2019-09-02 23:54:32'),(367,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u627e\\u5de5\\u4f5c\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:54:46','2019-09-02 23:54:46'),(368,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:54:49','2019-09-02 23:54:49'),(369,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u52b3\\u52a8\\u5408\\u540c\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:54:59','2019-09-02 23:54:59'),(370,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:55:02','2019-09-02 23:55:02'),(371,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u52b3\\u52a8\\u7ea0\\u7eb7\",\"pid\":\"4\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:55:14','2019-09-02 23:55:14'),(372,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:55:16','2019-09-02 23:55:16'),(373,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5b66\\u6821\\u76d1\\u62a4\\u8d23\\u4efb\",\"pid\":\"5\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:55:36','2019-09-02 23:55:36'),(374,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:55:39','2019-09-02 23:55:39'),(375,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u4eba\\u8eab\\u4f24\\u5bb3\",\"pid\":\"5\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:55:52','2019-09-02 23:55:52'),(376,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:55:55','2019-09-02 23:55:55'),(377,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u6cd5\\u5236\\u6559\\u80b2\",\"pid\":\"5\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:56:07','2019-09-02 23:56:07'),(378,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:56:09','2019-09-02 23:56:09'),(379,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u623f\\u5b50\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:56:21','2019-09-02 23:56:21'),(380,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:56:23','2019-09-02 23:56:23'),(381,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u8f66\\u5b50\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:56:36','2019-09-02 23:56:36'),(382,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:56:38','2019-09-02 23:56:38'),(383,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u80a1\\u7968\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-02 23:56:50','2019-09-02 23:56:50'),(384,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-02 23:56:53','2019-09-02 23:56:53'),(385,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u6c11\\u95f4\\u501f\\u8d37\",\"pid\":\"6\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-02 23:57:19','2019-09-02 23:57:19'),(386,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-02 23:57:21','2019-09-02 23:57:21'),(387,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}','2019-09-02 23:57:30','2019-09-02 23:57:30'),(388,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:58:28','2019-09-02 23:58:28'),(389,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-02 23:58:50','2019-09-02 23:58:50'),(390,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:01:13','2019-09-03 00:01:13'),(391,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u533b\\u7597\",\"pid\":\"0\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-03 00:01:32','2019-09-03 00:01:32'),(392,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:01:35','2019-09-03 00:01:35'),(393,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:01:39','2019-09-03 00:01:39'),(394,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}','2019-09-03 00:01:47','2019-09-03 00:01:47'),(395,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"30\"}','2019-09-03 00:04:02','2019-09-03 00:04:02'),(396,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:05:20','2019-09-03 00:05:20'),(397,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u503a\\u6743\",\"pid\":\"9\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=30\"}','2019-09-03 00:05:39','2019-09-03 00:05:39'),(398,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:05:41','2019-09-03 00:05:41'),(399,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u503a\\u52a1\",\"pid\":\"9\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:05:52','2019-09-03 00:05:52'),(400,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:05:54','2019-09-03 00:05:54'),(401,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5b50\\u5973\\u629a\\u517b\",\"pid\":\"9\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:06:05','2019-09-03 00:06:05'),(402,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:06:07','2019-09-03 00:06:07'),(403,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:06:19','2019-09-03 00:06:19'),(404,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}','2019-09-03 00:06:29','2019-09-03 00:06:29'),(405,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:06:36','2019-09-03 00:06:36'),(406,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u4e70\\u623f\",\"pid\":\"25\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=30\"}','2019-09-03 00:06:48','2019-09-03 00:06:48'),(407,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:06:50','2019-09-03 00:06:50'),(408,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5356\\u65b9\",\"pid\":\"25\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:07:00','2019-09-03 00:07:00'),(409,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:07:03','2019-09-03 00:07:03'),(410,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u79df\\u623f\",\"pid\":\"25\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:07:13','2019-09-03 00:07:13'),(411,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:07:15','2019-09-03 00:07:15'),(412,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:07:21','2019-09-03 00:07:21'),(413,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}','2019-09-03 00:07:32','2019-09-03 00:07:32'),(414,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:07:42','2019-09-03 00:07:42'),(415,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u4e70\\u8f66\",\"pid\":\"26\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=30\"}','2019-09-03 00:07:54','2019-09-03 00:07:54'),(416,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:07:56','2019-09-03 00:07:56'),(417,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u5356\\u8f66\",\"pid\":\"26\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:08:08','2019-09-03 00:08:08'),(418,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:08:11','2019-09-03 00:08:11'),(419,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u79df\\u8f66\",\"pid\":\"26\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:08:23','2019-09-03 00:08:23'),(420,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:08:25','2019-09-03 00:08:25'),(421,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u80a1\\u7968\\u8f6c\\u8ba9\",\"pid\":\"27\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:08:56','2019-09-03 00:08:56'),(422,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:08:58','2019-09-03 00:08:58'),(423,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u80a1\\u7968\\u7ee7\\u627f\",\"pid\":\"27\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:09:11','2019-09-03 00:09:11'),(424,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:09:13','2019-09-03 00:09:13'),(425,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:09:18','2019-09-03 00:09:18'),(426,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}','2019-09-03 00:09:25','2019-09-03 00:09:25'),(427,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:09:46','2019-09-03 00:09:46'),(428,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u51fa\\u501f\\u4eba\",\"pid\":\"28\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=50\"}','2019-09-03 00:10:00','2019-09-03 00:10:00'),(429,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:10:02','2019-09-03 00:10:02'),(430,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u501f\\u6b3e\\u4eba\",\"pid\":\"28\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\"}','2019-09-03 00:10:12','2019-09-03 00:10:12'),(431,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:10:15','2019-09-03 00:10:15'),(432,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:10:25','2019-09-03 00:10:25'),(433,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}','2019-09-03 00:10:32','2019-09-03 00:10:32'),(434,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:10:49','2019-09-03 00:10:49'),(435,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u51fa\\u79df\\u65b9\",\"pid\":\"35\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?&per_page=50\"}','2019-09-03 00:11:03','2019-09-03 00:11:03'),(436,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:11:05','2019-09-03 00:11:05'),(437,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u627f\\u79df\\u65b9\",\"pid\":\"35\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-03 00:11:16','2019-09-03 00:11:16'),(438,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 00:11:18','2019-09-03 00:11:18'),(439,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}','2019-09-03 00:11:26','2019-09-03 00:11:26'),(440,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:11:35','2019-09-03 00:11:35'),(441,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u51fa\\u79df\\u4eba\",\"pid\":\"38\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category?per_page=50\"}','2019-09-03 00:11:50','2019-09-03 00:11:50'),(442,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:11:52','2019-09-03 00:11:52'),(443,1,'admin/legals/category','POST','127.0.0.1','{\"title\":\"\\u79df\\u8f66\\u4eba\",\"pid\":\"38\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-03 00:12:26','2019-09-03 00:12:26'),(444,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 00:12:28','2019-09-03 00:12:28'),(445,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}','2019-09-03 00:12:38','2019-09-03 00:12:38'),(446,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"50\"}','2019-09-03 00:31:36','2019-09-03 00:31:36'),(447,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"50\"}','2019-09-03 00:32:36','2019-09-03 00:32:36'),(448,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"50\"}','2019-09-03 00:34:36','2019-09-03 00:34:36'),(449,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"50\"}','2019-09-03 00:35:51','2019-09-03 00:35:51'),(450,1,'admin/legals/category','GET','127.0.0.1','{\"per_page\":\"50\"}','2019-09-03 00:37:33','2019-09-03 00:37:33'),(451,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:45:16','2019-09-03 00:45:16'),(452,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:47:07','2019-09-03 00:47:07'),(453,1,'admin/legals/category/create','GET','127.0.0.1','[]','2019-09-03 00:48:07','2019-09-03 00:48:07'),(454,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 00:52:30','2019-09-03 00:52:30'),(455,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 00:52:47','2019-09-03 00:52:47'),(456,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 00:56:24','2019-09-03 00:56:24'),(457,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 00:57:50','2019-09-03 00:57:50'),(458,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 00:59:15','2019-09-03 00:59:15'),(459,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:03:25','2019-09-03 01:03:25'),(460,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:11:03','2019-09-03 01:11:03'),(461,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:12:19','2019-09-03 01:12:19'),(462,1,'admin/legals/category','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"test\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-03 01:12:41','2019-09-03 01:12:41'),(463,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:12:43','2019-09-03 01:12:43'),(464,1,'admin/legals/category/47','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\"}','2019-09-03 01:12:54','2019-09-03 01:12:54'),(465,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:13:00','2019-09-03 01:13:00'),(466,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:13:12','2019-09-03 01:13:12'),(467,1,'admin/legals/category','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"test\",\"path\":null,\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-03 01:13:22','2019-09-03 01:13:22'),(468,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:13:24','2019-09-03 01:13:24'),(469,1,'admin/legals/category/48/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:13:33','2019-09-03 01:13:33'),(470,1,'admin/legals/category/48','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"test222\",\"path\":\"\\/\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-03 01:13:49','2019-09-03 01:13:49'),(471,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:13:51','2019-09-03 01:13:51'),(472,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:14:07','2019-09-03 01:14:07'),(473,1,'admin/legals/category','POST','127.0.0.1','{\"parent_id\":\"48\",\"title\":\"test333\",\"path\":\"\\/\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/category\"}','2019-09-03 01:14:28','2019-09-03 01:14:28'),(474,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:14:31','2019-09-03 01:14:31'),(475,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:16:32','2019-09-03 01:16:32'),(476,1,'admin/_handle_action_','POST','127.0.0.1','{\"_token\":\"QsBUAVDE92aRv4qWbht56hcKJB9uRukQcn2h6JNc\",\"_action\":\"App_Admin_Actions_ClearCache\",\"_input\":\"true\"}','2019-09-03 01:18:27','2019-09-03 01:18:27'),(477,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:18:34','2019-09-03 01:18:34'),(478,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 01:29:19','2019-09-03 01:29:19'),(479,1,'admin/legals/category/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:29:57','2019-09-03 01:29:57'),(480,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 01:35:25','2019-09-03 01:35:25'),(481,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 17:20:29','2019-09-03 17:20:29'),(482,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 17:20:59','2019-09-03 17:20:59'),(483,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 17:21:21','2019-09-03 17:21:21'),(484,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 17:23:55','2019-09-03 17:23:55'),(485,1,'admin/legals/category','GET','127.0.0.1','[]','2019-09-03 17:30:02','2019-09-03 17:30:02'),(486,1,'admin/legals/books','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 17:31:50','2019-09-03 17:31:50'),(487,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 17:37:12','2019-09-03 17:37:12'),(488,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 17:40:03','2019-09-03 17:40:03'),(489,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 17:40:46','2019-09-03 17:40:46'),(490,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 17:41:33','2019-09-03 17:41:33'),(491,1,'admin/legals/books/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 17:45:26','2019-09-03 17:45:26'),(492,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 17:45:51','2019-09-03 17:45:51'),(493,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 17:47:00','2019-09-03 17:47:00'),(494,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 17:47:25','2019-09-03 17:47:25'),(495,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 18:05:48','2019-09-03 18:05:48'),(496,1,'admin/legals/books','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 18:06:12','2019-09-03 18:06:12'),(497,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 18:38:38','2019-09-03 18:38:38'),(498,1,'admin/legals/books/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 18:38:59','2019-09-03 18:38:59'),(499,1,'admin/legals/books','POST','127.0.0.1','{\"title\":\"\\u8d44\\u4ea7\",\"cate_id\":\"2\",\"detail\":\"<p><\\/p><p>1515151<\\/p>\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/legals\\/books\"}','2019-09-03 18:39:52','2019-09-03 18:39:52'),(500,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 18:39:56','2019-09-03 18:39:56'),(501,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 18:42:24','2019-09-03 18:42:24'),(502,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 18:43:11','2019-09-03 18:43:11'),(503,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 18:44:33','2019-09-03 18:44:33'),(504,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 18:45:29','2019-09-03 18:45:29'),(505,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 18:47:16','2019-09-03 18:47:16'),(506,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:01:33','2019-09-03 19:01:33'),(507,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:01:56','2019-09-03 19:01:56'),(508,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:02:35','2019-09-03 19:02:35'),(509,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:03:16','2019-09-03 19:03:16'),(510,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:03:25','2019-09-03 19:03:25'),(511,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:06:53','2019-09-03 19:06:53'),(512,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:08:21','2019-09-03 19:08:21'),(513,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:09:54','2019-09-03 19:09:54'),(514,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:10:09','2019-09-03 19:10:09'),(515,1,'admin/legals/books','GET','127.0.0.1','[]','2019-09-03 19:11:01','2019-09-03 19:11:01'),(516,1,'admin/legals/books/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 19:20:51','2019-09-03 19:20:51'),(517,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 19:22:18','2019-09-03 19:22:18'),(518,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 19:23:12','2019-09-03 19:23:12'),(519,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 19:24:09','2019-09-03 19:24:09'),(520,1,'admin/legals/books/create','GET','127.0.0.1','[]','2019-09-03 19:24:56','2019-09-03 19:24:56'),(521,1,'admin/legals/books','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 19:29:10','2019-09-03 19:29:10'),(522,1,'admin/legals/books/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 19:30:01','2019-09-03 19:30:01'),(523,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:38:07','2019-09-03 19:38:07'),(524,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:39:19','2019-09-03 19:39:19'),(525,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:48:54','2019-09-03 19:48:54'),(526,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:51:04','2019-09-03 19:51:04'),(527,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:56:18','2019-09-03 19:56:18'),(528,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:57:29','2019-09-03 19:57:29'),(529,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:58:05','2019-09-03 19:58:05'),(530,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:58:37','2019-09-03 19:58:37'),(531,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:59:02','2019-09-03 19:59:02'),(532,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 19:59:50','2019-09-03 19:59:50'),(533,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 20:00:44','2019-09-03 20:00:44'),(534,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 20:01:27','2019-09-03 20:01:27'),(535,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 20:01:59','2019-09-03 20:01:59'),(536,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 20:02:22','2019-09-03 20:02:22'),(537,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 20:03:03','2019-09-03 20:03:03'),(538,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-03 22:01:29','2019-09-03 22:01:29'),(539,1,'admin','GET','127.0.0.1','[]','2019-09-03 22:01:41','2019-09-03 22:01:41'),(540,1,'admin/legals/books','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 22:02:25','2019-09-03 22:02:25'),(541,1,'admin/legals/books/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-03 22:02:55','2019-09-03 22:02:55'),(542,1,'admin/legals/books/1','GET','127.0.0.1','[]','2019-09-04 06:03:32','2019-09-04 06:03:32'),(543,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:10:46','2019-09-04 06:10:46'),(544,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 06:11:16','2019-09-04 06:11:16'),(545,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u6d4f\\u89c8\\u8bb0\\u5f55\",\"icon\":\"fa-arrow-left\",\"uri\":\"\\/acticles\\/browse-history\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 06:19:50','2019-09-04 06:19:50'),(546,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 06:19:53','2019-09-04 06:19:53'),(547,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:20:34','2019-09-04 06:20:34'),(548,1,'admin/auth/permissions/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:20:47','2019-09-04 06:20:47'),(549,1,'admin/auth/permissions/7','PUT','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/acticles*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 06:21:49','2019-09-04 06:21:49'),(550,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 06:21:54','2019-09-04 06:21:54'),(551,1,'admin/auth/permissions/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:22:29','2019-09-04 06:22:29'),(552,1,'admin/auth/permissions/7','PUT','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\\r\\n\\/acticles*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 06:22:48','2019-09-04 06:22:48'),(553,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 06:22:52','2019-09-04 06:22:52'),(554,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 06:23:33','2019-09-04 06:23:33'),(555,1,'admin/acticles/browse-history','GET','127.0.0.1','[]','2019-09-04 06:26:45','2019-09-04 06:26:45'),(556,1,'admin/acticles/browse-history','GET','127.0.0.1','[]','2019-09-04 06:28:44','2019-09-04 06:28:44'),(557,1,'admin/acticles/browse-history/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:29:00','2019-09-04 06:29:00'),(558,1,'admin/acticles/browse-history','POST','127.0.0.1','{\"user_id\":\"1\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/acticles\\/browse-history\"}','2019-09-04 06:29:21','2019-09-04 06:29:21'),(559,1,'admin/acticles/browse-history','GET','127.0.0.1','[]','2019-09-04 06:29:24','2019-09-04 06:29:24'),(560,1,'admin/acticles/browse-history/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:29:31','2019-09-04 06:29:31'),(561,1,'admin/acticles/browse-history','POST','127.0.0.1','{\"user_id\":\"2\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/acticles\\/browse-history\"}','2019-09-04 06:29:39','2019-09-04 06:29:39'),(562,1,'admin/acticles/browse-history','GET','127.0.0.1','[]','2019-09-04 06:29:42','2019-09-04 06:29:42'),(563,1,'admin/acticles/browse-history/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:29:49','2019-09-04 06:29:49'),(564,1,'admin/acticles/browse-history','POST','127.0.0.1','{\"user_id\":\"3\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/acticles\\/browse-history\"}','2019-09-04 06:29:58','2019-09-04 06:29:58'),(565,1,'admin/acticles/browse-history/create','GET','127.0.0.1','[]','2019-09-04 06:30:01','2019-09-04 06:30:01'),(566,1,'admin/acticles/browse-history','POST','127.0.0.1','{\"user_id\":\"4\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"after-save\":\"2\"}','2019-09-04 06:30:12','2019-09-04 06:30:12'),(567,1,'admin/acticles/browse-history/create','GET','127.0.0.1','[]','2019-09-04 06:30:15','2019-09-04 06:30:15'),(568,1,'admin/acticles/browse-history','POST','127.0.0.1','{\"user_id\":\"5\",\"article_id\":\"1\",\"status\":\"on\",\"is_deleted\":\"off\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 06:30:28','2019-09-04 06:30:28'),(569,1,'admin/acticles/browse-history','GET','127.0.0.1','[]','2019-09-04 06:30:31','2019-09-04 06:30:31'),(570,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:32:16','2019-09-04 06:32:16'),(571,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u6587\\u7ae0\\u8bc4\\u8bba\",\"icon\":\"fa-pencil\",\"uri\":\"\\/acticles\\/comments\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 06:34:43','2019-09-04 06:34:43'),(572,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 06:34:45','2019-09-04 06:34:45'),(573,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u70b9\\u8d5e\",\"icon\":\"fa-thumbs-up\",\"uri\":\"\\/acticles\\/like\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 06:38:09','2019-09-04 06:38:09'),(574,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 06:38:12','2019-09-04 06:38:12'),(575,1,'admin/auth/menu/22/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 06:38:55','2019-09-04 06:38:55'),(576,1,'admin/auth/menu/22','PUT','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u6d4f\\u89c8\\u8bb0\\u5f55\",\"icon\":\"fa-arrow-left\",\"uri\":\"\\/acticles\\/browse-history\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 06:39:09','2019-09-04 06:39:09'),(577,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 06:39:13','2019-09-04 06:39:13'),(578,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 06:56:23','2019-09-04 06:56:23'),(579,1,'admin/acticles/comments','GET','127.0.0.1','[]','2019-09-04 07:01:37','2019-09-04 07:01:37'),(580,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:13:58','2019-09-04 07:13:58'),(581,1,'admin/auth/menu/24/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:14:24','2019-09-04 07:14:24'),(582,1,'admin/auth/menu/24','PUT','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u70b9\\u8d5e\",\"icon\":\"fa-thumbs-up\",\"uri\":\"\\/acticles\\/likes\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 07:14:35','2019-09-04 07:14:35'),(583,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:14:38','2019-09-04 07:14:38'),(584,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:15:48','2019-09-04 07:15:48'),(585,1,'admin/acticles/likes','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:16:41','2019-09-04 07:16:41'),(586,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:21:40','2019-09-04 07:21:40'),(587,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7b54\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-gear\",\"uri\":\"\\/answers\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 07:24:02','2019-09-04 07:24:02'),(588,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:24:04','2019-09-04 07:24:04'),(589,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:24:19','2019-09-04 07:24:19'),(590,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:24:25','2019-09-04 07:24:25'),(591,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"answer\",\"name\":\"answerManagement\",\"http_method\":[null],\"http_path\":\"\\/answers*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 07:24:56','2019-09-04 07:24:56'),(592,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 07:24:58','2019-09-04 07:24:58'),(593,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:25:09','2019-09-04 07:25:09'),(594,1,'admin/auth/menu/25/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:25:25','2019-09-04 07:25:25'),(595,1,'admin/auth/menu/25','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7b54\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-gear\",\"uri\":\"\\/answers\",\"roles\":[null],\"permission\":\"answer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 07:25:32','2019-09-04 07:25:32'),(596,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:25:35','2019-09-04 07:25:35'),(597,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"25\",\"title\":\"\\u9898\\u5e93\",\"icon\":\"fa-barcode\",\"uri\":\"\\/answers\\/lists\",\"roles\":[null],\"permission\":\"answer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 07:26:14','2019-09-04 07:26:14'),(598,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:26:16','2019-09-04 07:26:16'),(599,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"25\",\"title\":\"\\u6bcf\\u65e5\\u7b54\\u9898\",\"icon\":\"fa-bullseye\",\"uri\":\"\\/answers\\/records\",\"roles\":[null],\"permission\":\"answer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 07:27:36','2019-09-04 07:27:36'),(600,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:27:39','2019-09-04 07:27:39'),(601,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:29:55','2019-09-04 07:29:55'),(602,1,'admin/answers/lists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:30:47','2019-09-04 07:30:47'),(603,1,'admin/answers/records','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:31:31','2019-09-04 07:31:31'),(604,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:37:21','2019-09-04 07:37:21'),(605,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7559\\u8a00\",\"icon\":\"fa-envelope-o\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 07:39:24','2019-09-04 07:39:24'),(606,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:39:26','2019-09-04 07:39:26'),(607,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:39:58','2019-09-04 07:39:58'),(608,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:40:03','2019-09-04 07:40:03'),(609,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"message\",\"name\":\"messageManagement\",\"http_method\":[null],\"http_path\":\"\\/messages*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 07:40:39','2019-09-04 07:40:39'),(610,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 07:40:41','2019-09-04 07:40:41'),(611,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:40:49','2019-09-04 07:40:49'),(612,1,'admin/auth/menu/28/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:40:55','2019-09-04 07:40:55'),(613,1,'admin/auth/menu/28','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7559\\u8a00\",\"icon\":\"fa-envelope-o\",\"uri\":\"\\/messages\",\"roles\":[null],\"permission\":\"message\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 07:41:15','2019-09-04 07:41:15'),(614,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:41:18','2019-09-04 07:41:18'),(615,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:41:53','2019-09-04 07:41:53'),(616,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:42:40','2019-09-04 07:42:40'),(617,1,'admin/messages','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:43:15','2019-09-04 07:43:15'),(618,1,'admin/messages','GET','127.0.0.1','[]','2019-09-04 07:50:31','2019-09-04 07:50:31'),(619,1,'admin/messages','GET','127.0.0.1','[]','2019-09-04 07:51:45','2019-09-04 07:51:45'),(620,1,'admin/messages','GET','127.0.0.1','[]','2019-09-04 07:52:57','2019-09-04 07:52:57'),(621,1,'admin/messages','GET','127.0.0.1','[]','2019-09-04 07:54:00','2019-09-04 07:54:00'),(622,1,'admin/messages','GET','127.0.0.1','{\"_columns_\":\"content,created_at,id,mobile,updated_at,username\",\"_pjax\":\"#pjax-container\"}','2019-09-04 07:54:34','2019-09-04 07:54:34'),(623,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:55:29','2019-09-04 07:55:29'),(624,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:55:39','2019-09-04 07:55:39'),(625,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/personnel\\/laywers\",\"roles\":[null],\"permission\":\"laywer\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 07:57:44','2019-09-04 07:57:44'),(626,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:57:46','2019-09-04 07:57:46'),(627,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:57:53','2019-09-04 07:57:53'),(628,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:58:04','2019-09-04 07:58:04'),(629,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"personnel\",\"name\":\"personnelManagement\",\"http_method\":[null],\"http_path\":\"\\/personnel\\/laywers*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 07:58:28','2019-09-04 07:58:28'),(630,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 07:58:30','2019-09-04 07:58:30'),(631,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:58:35','2019-09-04 07:58:35'),(632,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:58:43','2019-09-04 07:58:43'),(633,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4eba\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"\\/personnel\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 07:59:04','2019-09-04 07:59:04'),(634,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:59:06','2019-09-04 07:59:06'),(635,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:59:17','2019-09-04 07:59:17'),(636,1,'admin/auth/menu/13/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:59:28','2019-09-04 07:59:28'),(637,1,'admin/auth/menu/13','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/personnel\\/specialists\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 07:59:49','2019-09-04 07:59:49'),(638,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 07:59:51','2019-09-04 07:59:51'),(639,1,'admin/auth/menu/13/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 07:59:58','2019-09-04 07:59:58'),(640,1,'admin/auth/menu/13','PUT','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"\\u4e13\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"\\/personnel\\/specialists\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 08:00:17','2019-09-04 08:00:17'),(641,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:00:19','2019-09-04 08:00:19'),(642,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-envira\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 08:01:43','2019-09-04 08:01:43'),(643,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:01:45','2019-09-04 08:01:45'),(644,1,'admin/auth/menu/29/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:01:52','2019-09-04 08:01:52'),(645,1,'admin/auth/menu/29','PUT','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"\\u5f8b\\u5e08\\u7ba1\\u7406\",\"icon\":\"fa-envira\",\"uri\":\"\\/personnel\\/laywers\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 08:02:09','2019-09-04 08:02:09'),(646,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:02:12','2019-09-04 08:02:12'),(647,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:02:54','2019-09-04 08:02:54'),(648,1,'admin/personnel/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:07:03','2019-09-04 08:07:03'),(649,1,'admin/personnel/laywers','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:07:09','2019-09-04 08:07:09'),(650,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:15:13','2019-09-04 08:15:13'),(651,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6d88\\u606f\\u7ba1\\u7406\",\"icon\":\"fa-bell\",\"uri\":\"\\/notices\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 08:16:16','2019-09-04 08:16:16'),(652,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:16:19','2019-09-04 08:16:19'),(653,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:16:25','2019-09-04 08:16:25'),(654,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:16:34','2019-09-04 08:16:34'),(655,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"notice\",\"name\":\"noticeManagement\",\"http_method\":[null],\"http_path\":\"\\/notices*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 08:16:57','2019-09-04 08:16:57'),(656,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 08:16:59','2019-09-04 08:16:59'),(657,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:17:04','2019-09-04 08:17:04'),(658,1,'admin/auth/menu/30/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:17:15','2019-09-04 08:17:15'),(659,1,'admin/auth/menu/30','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6d88\\u606f\\u7ba1\\u7406\",\"icon\":\"fa-bell\",\"uri\":\"\\/notices\",\"roles\":[null],\"permission\":\"notice\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 08:17:26','2019-09-04 08:17:26'),(660,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:17:29','2019-09-04 08:17:29'),(661,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:18:32','2019-09-04 08:18:32'),(662,1,'admin/notices','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:18:45','2019-09-04 08:18:45'),(663,1,'admin/notices','GET','127.0.0.1','[]','2019-09-04 08:19:46','2019-09-04 08:19:46'),(664,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:22:49','2019-09-04 08:22:49'),(665,1,'admin/auth/permissions/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:23:04','2019-09-04 08:23:04'),(666,1,'admin/auth/permissions/12','PUT','127.0.0.1','{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals\\/category\\/*\\r\\n\\/legals\\/books\\/*\\r\\n\\/legals\\/column\\/*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 08:23:35','2019-09-04 08:23:35'),(667,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 08:23:37','2019-09-04 08:23:37'),(668,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:23:42','2019-09-04 08:23:42'),(669,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"19\",\"title\":\"\\u5df2\\u5b9a\\u4e13\\u680f\",\"icon\":\"fa-link\",\"uri\":\"\\/legals\\/column\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 08:26:45','2019-09-04 08:26:45'),(670,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:26:47','2019-09-04 08:26:47'),(671,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:26:58','2019-09-04 08:26:58'),(672,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:30:42','2019-09-04 08:30:42'),(673,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:37:22','2019-09-04 08:37:22'),(674,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:37:27','2019-09-04 08:37:27'),(675,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"member\",\"name\":\"memberManagement\",\"http_method\":[null],\"http_path\":\"\\/members*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 08:37:59','2019-09-04 08:37:59'),(676,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 08:38:01','2019-09-04 08:38:01'),(677,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:38:05','2019-09-04 08:38:05'),(678,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4f1a\\u5458\\u8d2d\\u4e70\\u8bb0\\u5f55\",\"icon\":\"fa-align-center\",\"uri\":\"\\/members\",\"roles\":[null],\"permission\":\"member\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 08:38:43','2019-09-04 08:38:43'),(679,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:38:45','2019-09-04 08:38:45'),(680,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:39:32','2019-09-04 08:39:32'),(681,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:44:40','2019-09-04 08:44:40'),(682,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:44:48','2019-09-04 08:44:48'),(683,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"banner\",\"name\":\"bannerManagement\",\"http_method\":[null],\"http_path\":\"\\/banners*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 08:45:14','2019-09-04 08:45:14'),(684,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 08:45:17','2019-09-04 08:45:17'),(685,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:45:25','2019-09-04 08:45:25'),(686,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u64ad\\u56fe\\u7ba1\\u7406\",\"icon\":\"fa-buysellads\",\"uri\":null,\"roles\":[null],\"permission\":\"banner\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 08:46:47','2019-09-04 08:46:47'),(687,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:46:50','2019-09-04 08:46:50'),(688,1,'admin/members','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:55:15','2019-09-04 08:55:15'),(689,1,'admin/members','GET','127.0.0.1','[]','2019-09-04 08:56:06','2019-09-04 08:56:06'),(690,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:56:31','2019-09-04 08:56:31'),(691,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:56:40','2019-09-04 08:56:40'),(692,1,'admin/auth/menu/33/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:56:51','2019-09-04 08:56:51'),(693,1,'admin/auth/menu/33','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u64ad\\u56fe\\u7ba1\\u7406\",\"icon\":\"fa-buysellads\",\"uri\":\"\\/banners\",\"roles\":[null],\"permission\":\"banner\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 08:57:10','2019-09-04 08:57:10'),(694,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:57:13','2019-09-04 08:57:13'),(695,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 08:57:23','2019-09-04 08:57:23'),(696,1,'admin/banners','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 08:57:37','2019-09-04 08:57:37'),(697,1,'admin/banners','GET','127.0.0.1','[]','2019-09-04 09:02:17','2019-09-04 09:02:17'),(698,1,'admin/banners','GET','127.0.0.1','[]','2019-09-04 09:02:43','2019-09-04 09:02:43'),(699,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:07:30','2019-09-04 09:07:30'),(700,1,'admin/auth/permissions/12/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:07:37','2019-09-04 09:07:37'),(701,1,'admin/auth/permissions/12','PUT','127.0.0.1','{\"slug\":\"Legal\",\"name\":\"LegalManagement\",\"http_method\":[null],\"http_path\":\"\\/legals\\/category\\/*\\r\\n\\/legals\\/books\\/*\\r\\n\\/legals\\/columns\\/*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 09:09:13','2019-09-04 09:09:13'),(702,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 09:09:15','2019-09-04 09:09:15'),(703,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:09:30','2019-09-04 09:09:30'),(704,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"\\u4e1a\\u52a1\\u5206\\u7c7b\",\"icon\":\"fa-list-alt\",\"uri\":\"\\/personnel\\/categorys\",\"roles\":[null],\"permission\":\"personnel\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 09:14:04','2019-09-04 09:14:04'),(705,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:14:07','2019-09-04 09:14:07'),(706,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:14:14','2019-09-04 09:14:14'),(707,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:17:24','2019-09-04 09:17:24'),(708,1,'admin/personnel/categorys','GET','127.0.0.1','[]','2019-09-04 09:18:59','2019-09-04 09:18:59'),(709,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:19:42','2019-09-04 09:19:42'),(710,1,'admin/auth/menu/31/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:22:31','2019-09-04 09:22:31'),(711,1,'admin/auth/menu/31','PUT','127.0.0.1','{\"parent_id\":\"19\",\"title\":\"\\u5df2\\u5b9a\\u4e13\\u680f\",\"icon\":\"fa-link\",\"uri\":\"\\/legals\\/columns\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 09:22:57','2019-09-04 09:22:57'),(712,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:23:00','2019-09-04 09:23:00'),(713,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:23:10','2019-09-04 09:23:10'),(714,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:23:48','2019-09-04 09:23:48'),(715,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"personnel\",\"name\":\"personnelManagement\",\"http_method\":[null],\"http_path\":\"\\/personnel\\/laywers*\\r\\n\\/personnel\\/specialists*\\r\\n\\/personnel\\/categorys*\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-04 09:24:13','2019-09-04 09:24:13'),(716,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-04 09:24:17','2019-09-04 09:24:17'),(717,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"9\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2019-09-04 09:25:57','2019-09-04 09:25:57'),(718,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:26:01','2019-09-04 09:26:01'),(719,1,'admin/personnel/categorys','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:26:22','2019-09-04 09:26:22'),(720,1,'admin/personnel/categorys','GET','127.0.0.1','[]','2019-09-04 09:28:29','2019-09-04 09:28:29'),(721,1,'admin/personnel/categorys','GET','127.0.0.1','[]','2019-09-04 09:28:59','2019-09-04 09:28:59'),(722,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:31:23','2019-09-04 09:31:23'),(723,1,'admin/auth/menu/15/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:31:44','2019-09-04 09:31:44'),(724,1,'admin/auth/menu/15','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user-md\",\"uri\":\"\\/usercenter\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 09:32:08','2019-09-04 09:32:08'),(725,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:32:10','2019-09-04 09:32:10'),(726,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-user\",\"uri\":\"\\/userc\",\"roles\":[null],\"permission\":null,\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\"}','2019-09-04 09:34:12','2019-09-04 09:34:12'),(727,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:34:14','2019-09-04 09:34:14'),(728,1,'admin/auth/menu/35/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-04 09:34:23','2019-09-04 09:34:23'),(729,1,'admin/auth/menu/35','PUT','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-user\",\"uri\":\"\\/usercenter\\/lists\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"irrSKAFdiABjspxhbFKIoBxKrzIsGlzyUWIQKyT7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-04 09:35:09','2019-09-04 09:35:09'),(730,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:35:11','2019-09-04 09:35:11'),(731,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-04 09:35:16','2019-09-04 09:35:16'),(732,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:08:45','2019-09-05 01:08:45'),(733,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\",\"icon\":\"fa-shopping-bag\",\"uri\":\"\\/coupons\",\"roles\":[null],\"permission\":null,\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}','2019-09-05 01:13:00','2019-09-05 01:13:00'),(734,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:13:03','2019-09-05 01:13:03'),(735,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:13:07','2019-09-05 01:13:07'),(736,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:13:12','2019-09-05 01:13:12'),(737,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"coupon\",\"name\":\"couponManagement\",\"http_method\":[null],\"http_path\":\"\\/coupons*\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-05 01:13:40','2019-09-05 01:13:40'),(738,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-05 01:13:43','2019-09-05 01:13:43'),(739,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:13:49','2019-09-05 01:13:49'),(740,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:13:58','2019-09-05 01:13:58'),(741,1,'admin/auth/menu/36/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:14:19','2019-09-05 01:14:19'),(742,1,'admin/auth/menu/36','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\",\"icon\":\"fa-shopping-bag\",\"uri\":\"\\/coupons\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-05 01:14:32','2019-09-05 01:14:32'),(743,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:14:35','2019-09-05 01:14:35'),(744,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/cou\",\"roles\":[null],\"permission\":null,\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}','2019-09-05 01:16:46','2019-09-05 01:16:46'),(745,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:16:49','2019-09-05 01:16:49'),(746,1,'admin/auth/menu/37/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:16:55','2019-09-05 01:16:55'),(747,1,'admin/auth/menu/37','PUT','127.0.0.1','{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/coupons\\/record\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-05 01:21:56','2019-09-05 01:21:56'),(748,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:21:58','2019-09-05 01:21:58'),(749,1,'admin/auth/menu/37/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:22:54','2019-09-05 01:22:54'),(750,1,'admin/auth/menu/37','PUT','127.0.0.1','{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/coupons\\/grant\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-05 01:23:22','2019-09-05 01:23:22'),(751,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:23:24','2019-09-05 01:23:24'),(752,1,'admin/auth/menu/37/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:28:57','2019-09-05 01:28:57'),(753,1,'admin/auth/menu/37','PUT','127.0.0.1','{\"parent_id\":\"36\",\"title\":\"\\u53d1\\u653e\\u8bb0\\u5f55\",\"icon\":\"fa-ioxhost\",\"uri\":\"\\/coupons\\/grants\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-05 01:29:13','2019-09-05 01:29:13'),(754,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:29:17','2019-09-05 01:29:17'),(755,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:29:35','2019-09-05 01:29:35'),(756,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-05 01:31:05','2019-09-05 01:31:05'),(757,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 01:33:46','2019-09-05 01:33:46'),(758,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"36\",\"title\":\"\\u4f18\\u60e0\\u5238\",\"icon\":\"fa-btc\",\"uri\":\"\\/coupons\",\"roles\":[null],\"permission\":\"coupon\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}','2019-09-05 01:35:55','2019-09-05 01:35:55'),(759,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:35:57','2019-09-05 01:35:57'),(760,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 01:36:33','2019-09-05 01:36:33'),(761,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 02:15:28','2019-09-05 02:15:28'),(762,1,'admin/coupons/grants','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:17:06','2019-09-05 02:17:06'),(763,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 02:17:08','2019-09-05 02:17:08'),(764,1,'admin/coupons/grants','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:19:31','2019-09-05 02:19:31'),(765,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 02:19:34','2019-09-05 02:19:34'),(766,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 02:22:00','2019-09-05 02:22:00'),(767,1,'admin/coupons/grants','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:22:20','2019-09-05 02:22:20'),(768,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 02:22:25','2019-09-05 02:22:25'),(769,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 02:28:01','2019-09-05 02:28:01'),(770,1,'admin/coupons/grants','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:28:19','2019-09-05 02:28:19'),(771,1,'admin/coupons','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:28:47','2019-09-05 02:28:47'),(772,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:40:40','2019-09-05 02:40:40'),(773,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u70ed\\u95e8\\u95ee\\u9898\",\"icon\":\"fa-header\",\"uri\":\"\\/questions\",\"roles\":[null],\"permission\":null,\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\"}','2019-09-05 02:47:25','2019-09-05 02:47:25'),(774,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 02:47:27','2019-09-05 02:47:27'),(775,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:47:34','2019-09-05 02:47:34'),(776,1,'admin/auth/permissions/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 02:47:48','2019-09-05 02:47:48'),(777,1,'admin/auth/permissions/7','PUT','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\\r\\n\\/acticles*\\r\\n\\/questions*\",\"_token\":\"FeBDxxNLro7TKx8Wu2mzQVKhuBzfXturCLTQzpCI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-05 02:48:05','2019-09-05 02:48:05'),(778,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-05 02:48:07','2019-09-05 02:48:07'),(779,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-05 02:56:46','2019-09-05 02:56:46'),(780,1,'admin/questions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 03:23:03','2019-09-05 03:23:03'),(781,1,'admin/questions','GET','127.0.0.1','[]','2019-09-05 06:20:42','2019-09-05 06:20:42'),(782,1,'admin/questions','GET','127.0.0.1','[]','2019-09-05 06:21:02','2019-09-05 06:21:02'),(783,1,'admin/questions','GET','127.0.0.1','[]','2019-09-05 06:21:08','2019-09-05 06:21:08'),(784,1,'admin/questions','GET','127.0.0.1','[]','2019-09-05 06:21:21','2019-09-05 06:21:21'),(785,1,'admin/questions','GET','127.0.0.1','[]','2019-09-05 06:21:52','2019-09-05 06:21:52'),(786,1,'admin/questions','GET','127.0.0.1','[]','2019-09-05 06:40:27','2019-09-05 06:40:27'),(787,1,'admin/personnel/categorys','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 06:45:29','2019-09-05 06:45:29'),(788,1,'admin/messages','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:01:32','2019-09-05 07:01:32'),(789,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:03:37','2019-09-05 07:03:37'),(790,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:04:09','2019-09-05 07:04:09'),(791,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:04:39','2019-09-05 07:04:39'),(792,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:07:21','2019-09-05 07:07:21'),(793,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:08:43','2019-09-05 07:08:43'),(794,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:09:03','2019-09-05 07:09:03'),(795,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:10:13','2019-09-05 07:10:13'),(796,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:13:05','2019-09-05 07:13:05'),(797,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:16:08','2019-09-05 07:16:08'),(798,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:16:28','2019-09-05 07:16:28'),(799,1,'admin/messages','GET','127.0.0.1','[]','2019-09-05 07:21:19','2019-09-05 07:21:19'),(800,1,'admin/messages/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:21:52','2019-09-05 07:21:52'),(801,1,'admin/messages/1/edit','GET','127.0.0.1','[]','2019-09-05 07:22:20','2019-09-05 07:22:20'),(802,1,'admin/messages/1/edit','GET','127.0.0.1','[]','2019-09-05 07:24:00','2019-09-05 07:24:00'),(803,1,'admin/messages/1/edit','GET','127.0.0.1','[]','2019-09-05 07:25:55','2019-09-05 07:25:55'),(804,1,'admin/messages/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:28:47','2019-09-05 07:28:47'),(805,1,'admin/messages/1','GET','127.0.0.1','[]','2019-09-05 07:29:49','2019-09-05 07:29:49'),(806,1,'admin/notices','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:42:20','2019-09-05 07:42:20'),(807,1,'admin/notices','GET','127.0.0.1','[]','2019-09-05 07:47:00','2019-09-05 07:47:00'),(808,1,'admin/notices','GET','127.0.0.1','[]','2019-09-05 07:48:51','2019-09-05 07:48:51'),(809,1,'admin/notices/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:50:04','2019-09-05 07:50:04'),(810,1,'admin/notices/create','GET','127.0.0.1','[]','2019-09-05 07:50:42','2019-09-05 07:50:42'),(811,1,'admin/notices/create','GET','127.0.0.1','[]','2019-09-05 07:51:07','2019-09-05 07:51:07'),(812,1,'admin/notices/create','GET','127.0.0.1','[]','2019-09-05 07:51:24','2019-09-05 07:51:24'),(813,1,'admin/notices','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:51:49','2019-09-05 07:51:49'),(814,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:54:46','2019-09-05 07:54:46'),(815,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u6536\\u85cf\",\"icon\":\"fa-heart\",\"uri\":\"\\/acticles\\/collects\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"hcgud1NfLPNaX8qggTAsgx88G8PAdAAzKMj5wfWC\"}','2019-09-05 07:55:51','2019-09-05 07:55:51'),(816,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 07:55:54','2019-09-05 07:55:54'),(817,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:56:01','2019-09-05 07:56:01'),(818,1,'admin/auth/permissions/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 07:56:08','2019-09-05 07:56:08'),(819,1,'admin/auth/permissions/7','PUT','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/hotacticles*\\r\\n\\/acticles*\\r\\n\\/questions*\\r\\n\\/collects*\",\"_token\":\"hcgud1NfLPNaX8qggTAsgx88G8PAdAAzKMj5wfWC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-05 07:56:23','2019-09-05 07:56:23'),(820,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-05 07:56:25','2019-09-05 07:56:25'),(821,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-05 08:02:34','2019-09-05 08:02:34'),(822,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-05 08:05:59','2019-09-05 08:05:59'),(823,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"9\",\"title\":\"\\u6848\\u4f8b\",\"icon\":\"fa-newspaper-o\",\"uri\":\"\\/acticles\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"hcgud1NfLPNaX8qggTAsgx88G8PAdAAzKMj5wfWC\"}','2019-09-05 08:08:34','2019-09-05 08:08:34'),(824,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 08:08:36','2019-09-05 08:08:36'),(825,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-05 08:36:32','2019-09-05 08:36:32'),(826,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 08:42:33','2019-09-05 08:42:33'),(827,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 08:47:15','2019-09-05 08:47:15'),(828,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 08:57:37','2019-09-05 08:57:37'),(829,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 08:58:08','2019-09-05 08:58:08'),(830,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:01:01','2019-09-05 09:01:01'),(831,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:02:17','2019-09-05 09:02:17'),(832,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:04:02','2019-09-05 09:04:02'),(833,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:04:08','2019-09-05 09:04:08'),(834,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:09:03','2019-09-05 09:09:03'),(835,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:10:46','2019-09-05 09:10:46'),(836,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:12:10','2019-09-05 09:12:10'),(837,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:12:33','2019-09-05 09:12:33'),(838,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:13:07','2019-09-05 09:13:07'),(839,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:13:23','2019-09-05 09:13:23'),(840,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:14:23','2019-09-05 09:14:23'),(841,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:14:51','2019-09-05 09:14:51'),(842,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:16:05','2019-09-05 09:16:05'),(843,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:16:35','2019-09-05 09:16:35'),(844,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:19:57','2019-09-05 09:19:57'),(845,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:21:40','2019-09-05 09:21:40'),(846,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:25:09','2019-09-05 09:25:09'),(847,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:26:47','2019-09-05 09:26:47'),(848,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:31:51','2019-09-05 09:31:51'),(849,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:32:26','2019-09-05 09:32:26'),(850,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:36:34','2019-09-05 09:36:34'),(851,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:39:09','2019-09-05 09:39:09'),(852,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-05 09:42:08','2019-09-05 09:42:08'),(853,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 00:51:19','2019-09-06 00:51:19'),(854,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 00:51:42','2019-09-06 00:51:42'),(855,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-06 00:52:31','2019-09-06 00:52:31'),(856,1,'admin/acticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-06 00:53:06','2019-09-06 00:53:06'),(857,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:35:53','2019-09-06 02:35:53'),(858,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:37:09','2019-09-06 02:37:09'),(859,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:39:41','2019-09-06 02:39:41'),(860,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:39:59','2019-09-06 02:39:59'),(861,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:45:52','2019-09-06 02:45:52'),(862,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:46:41','2019-09-06 02:46:41'),(863,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:52:02','2019-09-06 02:52:02'),(864,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 02:53:24','2019-09-06 02:53:24'),(865,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:04:36','2019-09-06 03:04:36'),(866,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:05:53','2019-09-06 03:05:53'),(867,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:08:10','2019-09-06 03:08:10'),(868,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:12:34','2019-09-06 03:12:34'),(869,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:13:06','2019-09-06 03:13:06'),(870,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:14:47','2019-09-06 03:14:47'),(871,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:16:03','2019-09-06 03:16:03'),(872,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:16:54','2019-09-06 03:16:54'),(873,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:17:24','2019-09-06 03:17:24'),(874,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:18:15','2019-09-06 03:18:15'),(875,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:18:58','2019-09-06 03:18:58'),(876,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:19:46','2019-09-06 03:19:46'),(877,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:22:05','2019-09-06 03:22:05'),(878,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:22:41','2019-09-06 03:22:41'),(879,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:23:18','2019-09-06 03:23:18'),(880,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:25:52','2019-09-06 03:25:52'),(881,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-06 03:26:42','2019-09-06 03:26:42'),(882,1,'admin/acticles/browse-history','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-06 03:28:00','2019-09-06 03:28:00'),(883,1,'admin','GET','127.0.0.1','[]','2019-09-09 01:08:49','2019-09-09 01:08:49'),(884,1,'admin','GET','127.0.0.1','[]','2019-09-09 01:08:54','2019-09-09 01:08:54'),(885,1,'admin/personnel/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 01:13:03','2019-09-09 01:13:03'),(886,1,'admin/personnel/categorys','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 01:13:06','2019-09-09 01:13:06'),(887,1,'admin/messages','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 01:31:34','2019-09-09 01:31:34'),(888,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 02:12:43','2019-09-09 02:12:43'),(889,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"15\",\"title\":\"\\u7b7e\\u5230\",\"icon\":\"fa-paint-brush\",\"uri\":\"\\/usercenter\\/signs\",\"roles\":[null],\"permission\":\"usercenter\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}','2019-09-09 02:14:21','2019-09-09 02:14:21'),(890,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-09 02:14:22','2019-09-09 02:14:22'),(891,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-09 02:14:29','2019-09-09 02:14:29'),(892,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:17:53','2019-09-09 02:17:53'),(893,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:23:16','2019-09-09 02:23:16'),(894,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:26:02','2019-09-09 02:26:02'),(895,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:29:07','2019-09-09 02:29:07'),(896,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:29:32','2019-09-09 02:29:32'),(897,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:29:58','2019-09-09 02:29:58'),(898,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:30:22','2019-09-09 02:30:22'),(899,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:31:06','2019-09-09 02:31:06'),(900,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:32:02','2019-09-09 02:32:02'),(901,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:35:06','2019-09-09 02:35:06'),(902,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:36:48','2019-09-09 02:36:48'),(903,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:39:05','2019-09-09 02:39:05'),(904,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:39:27','2019-09-09 02:39:27'),(905,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:39:57','2019-09-09 02:39:57'),(906,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:43:01','2019-09-09 02:43:01'),(907,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:43:17','2019-09-09 02:43:17'),(908,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:44:47','2019-09-09 02:44:47'),(909,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:48:49','2019-09-09 02:48:49'),(910,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:49:45','2019-09-09 02:49:45'),(911,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:50:54','2019-09-09 02:50:54'),(912,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:51:32','2019-09-09 02:51:32'),(913,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:51:40','2019-09-09 02:51:40'),(914,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:52:02','2019-09-09 02:52:02'),(915,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:53:15','2019-09-09 02:53:15'),(916,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 02:59:52','2019-09-09 02:59:52'),(917,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 03:01:22','2019-09-09 03:01:22'),(918,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 03:01:52','2019-09-09 03:01:52'),(919,1,'admin/personnel/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 03:02:31','2019-09-09 03:02:31'),(920,1,'admin/notices','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 03:03:15','2019-09-09 03:03:15'),(921,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:07:01','2019-09-09 03:07:01'),(922,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:07:27','2019-09-09 03:07:27'),(923,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:13:48','2019-09-09 03:13:48'),(924,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:14:57','2019-09-09 03:14:57'),(925,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:25:57','2019-09-09 03:25:57'),(926,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:26:31','2019-09-09 03:26:31'),(927,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:28:32','2019-09-09 03:28:32'),(928,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:28:59','2019-09-09 03:28:59'),(929,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:37:03','2019-09-09 03:37:03'),(930,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:43:12','2019-09-09 03:43:12'),(931,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:47:27','2019-09-09 03:47:27'),(932,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:47:58','2019-09-09 03:47:58'),(933,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:48:33','2019-09-09 03:48:33'),(934,1,'admin/notices','GET','127.0.0.1','[]','2019-09-09 03:48:53','2019-09-09 03:48:53'),(935,1,'admin/messages','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 03:56:37','2019-09-09 03:56:37'),(936,1,'admin/notices','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 03:56:45','2019-09-09 03:56:45'),(937,1,'admin/usercenter/signs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 03:56:56','2019-09-09 03:56:56'),(938,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 03:57:51','2019-09-09 03:57:51'),(939,1,'admin/usercenter/signs','GET','127.0.0.1','[]','2019-09-09 03:59:06','2019-09-09 03:59:06'),(940,1,'admin/acticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 04:00:04','2019-09-09 04:00:04'),(941,1,'admin/questions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 04:00:33','2019-09-09 04:00:33'),(942,1,'admin/acticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 04:00:38','2019-09-09 04:00:38'),(943,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:02:08','2019-09-09 04:02:08'),(944,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:06:20','2019-09-09 04:06:20'),(945,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:07:18','2019-09-09 04:07:18'),(946,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:07:42','2019-09-09 04:07:42'),(947,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:08:11','2019-09-09 04:08:11'),(948,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:08:45','2019-09-09 04:08:45'),(949,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:09:25','2019-09-09 04:09:25'),(950,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:10:44','2019-09-09 04:10:44'),(951,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:11:28','2019-09-09 04:11:28'),(952,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:12:42','2019-09-09 04:12:42'),(953,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:13:27','2019-09-09 04:13:27'),(954,1,'admin/acticles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 04:14:45','2019-09-09 04:14:45'),(955,1,'admin/acticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 04:22:51','2019-09-09 04:22:51'),(956,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:24:24','2019-09-09 04:24:24'),(957,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:25:16','2019-09-09 04:25:16'),(958,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:27:05','2019-09-09 04:27:05'),(959,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:27:56','2019-09-09 04:27:56'),(960,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 04:28:37','2019-09-09 04:28:37'),(961,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 06:07:24','2019-09-09 06:07:24'),(962,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 06:08:33','2019-09-09 06:08:33'),(963,1,'admin/acticles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 06:12:18','2019-09-09 06:12:18'),(964,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:14:14','2019-09-09 06:14:14'),(965,1,'admin/acticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 06:16:51','2019-09-09 06:16:51'),(966,1,'admin/acticles/16','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 06:17:00','2019-09-09 06:17:00'),(967,1,'admin/acticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 06:17:41','2019-09-09 06:17:41'),(968,1,'admin/acticles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 06:19:13','2019-09-09 06:19:13'),(969,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:24:28','2019-09-09 06:24:28'),(970,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:24:54','2019-09-09 06:24:54'),(971,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:26:12','2019-09-09 06:26:12'),(972,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:26:55','2019-09-09 06:26:55'),(973,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:27:21','2019-09-09 06:27:21'),(974,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:28:36','2019-09-09 06:28:36'),(975,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:28:49','2019-09-09 06:28:49'),(976,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:29:02','2019-09-09 06:29:02'),(977,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:29:28','2019-09-09 06:29:28'),(978,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:29:57','2019-09-09 06:29:57'),(979,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:30:33','2019-09-09 06:30:33'),(980,1,'admin/acticles/create','GET','127.0.0.1','[]','2019-09-09 06:33:50','2019-09-09 06:33:50'),(981,1,'admin/acticles','POST','127.0.0.1','{\"spec_id\":\"1\",\"content\":\"\\u62a2\\u52ab\\u7f6a\\u4e00\\u822c\\u5224\\u591a\\u5c11\\u5e74\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}','2019-09-09 06:34:49','2019-09-09 06:34:49'),(982,1,'admin/acticles','GET','127.0.0.1','[]','2019-09-09 06:34:50','2019-09-09 06:34:50'),(983,1,'admin/acticles','GET','127.0.0.1','{\"page\":\"6\",\"_pjax\":\"#pjax-container\"}','2019-09-09 06:35:00','2019-09-09 06:35:00'),(984,1,'admin/acticles','GET','127.0.0.1','{\"page\":\"6\"}','2019-09-09 06:36:26','2019-09-09 06:36:26'),(985,1,'admin/acticles','GET','127.0.0.1','{\"page\":\"6\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}','2019-09-09 06:36:40','2019-09-09 06:36:40'),(986,1,'admin/acticles','GET','127.0.0.1','{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"page\":\"1\"}','2019-09-09 06:36:49','2019-09-09 06:36:49'),(987,1,'admin/questions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 06:42:31','2019-09-09 06:42:31'),(988,1,'admin/questions','GET','127.0.0.1','[]','2019-09-09 06:51:41','2019-09-09 06:51:41'),(989,1,'admin/questions','GET','127.0.0.1','[]','2019-09-09 06:56:11','2019-09-09 06:56:11'),(990,1,'admin/questions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:04:54','2019-09-09 07:04:54'),(991,1,'admin/questions/create','GET','127.0.0.1','[]','2019-09-09 07:05:46','2019-09-09 07:05:46'),(992,1,'admin/questions','POST','127.0.0.1','{\"title\":\"\\u5e38\\u89c11\",\"question\":\"\\u4e3a\\u4ec0\\u4e48\\u603b\\u662f\\u8fd9\\u6837\",\"answer\":\"\\u6211\\u4e5f\\u4e0d\\u77e5\\u9053\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\"}','2019-09-09 07:06:59','2019-09-09 07:06:59'),(993,1,'admin/questions','GET','127.0.0.1','[]','2019-09-09 07:07:01','2019-09-09 07:07:01'),(994,1,'admin/questions','GET','127.0.0.1','[]','2019-09-09 07:09:27','2019-09-09 07:09:27'),(995,1,'admin/questions','GET','127.0.0.1','[]','2019-09-09 07:09:54','2019-09-09 07:09:54'),(996,1,'admin/questions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:10:26','2019-09-09 07:10:26'),(997,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:12:53','2019-09-09 07:12:53'),(998,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u5177\",\"icon\":\"fa-key\",\"uri\":\"\\/tools\",\"roles\":[null],\"permission\":null,\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}','2019-09-09 07:14:47','2019-09-09 07:14:47'),(999,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-09 07:14:48','2019-09-09 07:14:48'),(1000,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:15:02','2019-09-09 07:15:02'),(1001,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:15:08','2019-09-09 07:15:08'),(1002,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-09 07:16:36','2019-09-09 07:16:36'),(1003,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-09 07:16:37','2019-09-09 07:16:37'),(1004,1,'admin/auth/permissions/19/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:16:44','2019-09-09 07:16:44'),(1005,1,'admin/auth/permissions/19','PUT','127.0.0.1','{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers*\\r\\n\\/tools\\/notarys*\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-09 07:17:33','2019-09-09 07:17:33'),(1006,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-09 07:17:35','2019-09-09 07:17:35'),(1007,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:17:40','2019-09-09 07:17:40'),(1008,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"43\",\"title\":\"\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/laywers\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}','2019-09-09 07:18:35','2019-09-09 07:18:35'),(1009,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-09 07:18:36','2019-09-09 07:18:36'),(1010,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"43\",\"title\":\"\\u516c\\u8bc1\\u5904\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/notarys\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}','2019-09-09 07:19:06','2019-09-09 07:19:06'),(1011,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-09 07:19:07','2019-09-09 07:19:07'),(1012,1,'admin/auth/menu/43/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 07:19:51','2019-09-09 07:19:51'),(1013,1,'admin/auth/menu/43','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5de5\\u5177\",\"icon\":\"fa-key\",\"uri\":\"\\/tools\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-09 07:19:57','2019-09-09 07:19:57'),(1014,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-09 07:19:59','2019-09-09 07:19:59'),(1015,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-09 07:20:07','2019-09-09 07:20:07'),(1016,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 07:24:50','2019-09-09 07:24:50'),(1017,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 07:28:57','2019-09-09 07:28:57'),(1018,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 07:30:24','2019-09-09 07:30:24'),(1019,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 07:32:17','2019-09-09 07:32:17'),(1020,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 07:32:45','2019-09-09 07:32:45'),(1021,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 07:56:33','2019-09-09 07:56:33'),(1022,1,'admin/tools/laywers/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 08:02:44','2019-09-09 08:02:44'),(1023,1,'admin/tools/laywers/create','GET','127.0.0.1','[]','2019-09-09 08:04:45','2019-09-09 08:04:45'),(1024,1,'admin/tools/laywers/create','GET','127.0.0.1','[]','2019-09-09 08:09:30','2019-09-09 08:09:30'),(1025,1,'admin/tools/laywers','POST','127.0.0.1','{\"name\":\"\\u5f8b\\u5e08\\u7532\",\"title\":\"\\u6267\\u4e1a\\u5f8b\\u5e08\",\"mobile\":\"13655454556\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"cate_id\":\"1\",\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\\uff0c\\u533b\\u836f\\u884c\\u4e1a\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}','2019-09-09 08:11:37','2019-09-09 08:11:37'),(1026,1,'admin/tools/laywers/create','GET','127.0.0.1','[]','2019-09-09 08:11:41','2019-09-09 08:11:41'),(1027,1,'admin/tools/laywers','POST','127.0.0.1','{\"name\":\"\\u5f8b\\u5e08\\u7532\",\"title\":\"\\u6267\\u4e1a\\u5f8b\\u5e08\",\"mobile\":\"13655454556\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"cate_id\":\"1\",\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\\uff0c\\u533b\\u836f\\u884c\\u4e1a\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\"}','2019-09-09 08:14:00','2019-09-09 08:14:00'),(1028,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 08:14:01','2019-09-09 08:14:01'),(1029,1,'admin/tools/laywers/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 08:20:37','2019-09-09 08:20:37'),(1030,1,'admin/tools/laywers','POST','127.0.0.1','{\"name\":\"\\u5f8b\\u5e08\\u4e59\",\"title\":\"\\u6267\\u4e1a\\u5f8b\\u5e08\",\"mobile\":\"17788486595\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"cate_id\":null,\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/tools\\/laywers\"}','2019-09-09 08:21:41','2019-09-09 08:21:41'),(1031,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 08:21:42','2019-09-09 08:21:42'),(1032,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 08:51:55','2019-09-09 08:51:55'),(1033,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 08:55:45','2019-09-09 08:55:45'),(1034,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 08:58:35','2019-09-09 08:58:35'),(1035,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 08:58:59','2019-09-09 08:58:59'),(1036,1,'admin/tools/laywers/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 08:59:47','2019-09-09 08:59:47'),(1037,1,'admin/tools/laywers/1/edit','GET','127.0.0.1','[]','2019-09-09 09:00:23','2019-09-09 09:00:23'),(1038,1,'admin/tools/laywers/1/edit','GET','127.0.0.1','[]','2019-09-09 09:01:26','2019-09-09 09:01:26'),(1039,1,'admin/tools/laywers/1/edit','GET','127.0.0.1','[]','2019-09-09 09:03:33','2019-09-09 09:03:33'),(1040,1,'admin/tools/laywers/1','PUT','127.0.0.1','{\"name\":\"test5515\",\"level\":\"2\",\"title\":\"speew\",\"expertise\":\"\\u5a5a\\u59fb\\u5bb6\\u5ead\",\"mobile\":\"15678837703\",\"telephone\":\"07711515155\",\"company\":\"\\u6c5f\\u57ce\\u5f8b\\u5e08\\u4e8b\\u52a1\\u6240\",\"descr\":\"\\u5730\\u4ea7\\uff0c\\u5a5a\\u59fb\\u5bb6\\u5ead\\uff0c\\u533b\\u836f\\u884c\\u4e1a\",\"status\":\"on\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\"}','2019-09-09 09:05:03','2019-09-09 09:05:03'),(1041,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-09 09:05:06','2019-09-09 09:05:06'),(1042,1,'admin/tools/notarys','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 09:12:27','2019-09-09 09:12:27'),(1043,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-09 09:15:52','2019-09-09 09:15:52'),(1044,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-09 09:17:42','2019-09-09 09:17:42'),(1045,1,'admin/tools/notarys/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 09:19:04','2019-09-09 09:19:04'),(1046,1,'admin/tools/notarys','POST','127.0.0.1','{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"qq\":\"151518723\",\"wechat\":\"weakfnei\",\"lng\":\"102125\",\"lat\":\"202\",\"status\":\"on\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/tools\\/notarys\"}','2019-09-09 09:21:10','2019-09-09 09:21:10'),(1047,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-09 09:21:14','2019-09-09 09:21:14'),(1048,1,'admin/tools/notarys/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-09 09:21:47','2019-09-09 09:21:47'),(1049,1,'admin/tools/notarys/1','PUT','127.0.0.1','{\"name\":\"\\u5357\\u5b81\\u5e02\\u8d35\\u5357\\u516c\\u8bc1\\u5904\",\"mobile\":\"13548629599\",\"telephone\":\"07711515155\",\"email\":\"gxlclizongjun@163.com\",\"qq\":\"151518723\",\"wechat\":\"weakfnei\",\"lng\":\"105.1532\",\"lat\":\"202.5624\",\"status\":\"on\",\"_token\":\"oLAW6ZiJz19B63CkH6D7DNFNcyliKLfxDCJLqUsp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/tools\\/notarys\"}','2019-09-09 09:22:12','2019-09-09 09:22:12'),(1050,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-09 09:22:17','2019-09-09 09:22:17'),(1051,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-09 09:25:07','2019-09-09 09:25:07'),(1052,1,'admin','GET','127.0.0.1','[]','2019-09-10 00:46:19','2019-09-10 00:46:19'),(1053,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 00:47:16','2019-09-10 00:47:16'),(1054,1,'admin/tools/notarys','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 00:52:50','2019-09-10 00:52:50'),(1055,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:26:28','2019-09-10 01:26:28'),(1056,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:28:11','2019-09-10 01:28:11'),(1057,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:29:44','2019-09-10 01:29:44'),(1058,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:30:34','2019-09-10 01:30:34'),(1059,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:32:24','2019-09-10 01:32:24'),(1060,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:36:30','2019-09-10 01:36:30'),(1061,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:37:18','2019-09-10 01:37:18'),(1062,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:37:59','2019-09-10 01:37:59'),(1063,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:39:48','2019-09-10 01:39:48'),(1064,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:56:16','2019-09-10 01:56:16'),(1065,1,'admin/tools/notarys','GET','127.0.0.1','[]','2019-09-10 01:59:47','2019-09-10 01:59:47'),(1066,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:01:21','2019-09-10 02:01:21'),(1067,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"45\",\"title\":\"\\u516c\\u8bc1\\u5904\\u8bc4\\u8bba\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/notarys\\/comments\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 02:02:21','2019-09-10 02:02:21'),(1068,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 02:02:25','2019-09-10 02:02:25'),(1069,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 02:04:56','2019-09-10 02:04:56'),(1070,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:05:06','2019-09-10 02:05:06'),(1071,1,'admin/tools/notarys/comments','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:05:26','2019-09-10 02:05:26'),(1072,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-10 02:05:27','2019-09-10 02:05:27'),(1073,1,'admin/tools/notarys/comments','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:07:01','2019-09-10 02:07:01'),(1074,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-10 02:07:04','2019-09-10 02:07:04'),(1075,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-10 02:07:15','2019-09-10 02:07:15'),(1076,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:09:51','2019-09-10 02:09:51'),(1077,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:11:42','2019-09-10 02:11:42'),(1078,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:12:37','2019-09-10 02:12:37'),(1079,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:14:09','2019-09-10 02:14:09'),(1080,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:14:54','2019-09-10 02:14:54'),(1081,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:15:20','2019-09-10 02:15:20'),(1082,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:16:16','2019-09-10 02:16:16'),(1083,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:17:03','2019-09-10 02:17:03'),(1084,1,'admin/tools/notarys/comments','GET','127.0.0.1','[]','2019-09-10 02:24:57','2019-09-10 02:24:57'),(1085,1,'admin/tools/notarys/comments/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:25:07','2019-09-10 02:25:07'),(1086,1,'admin/tools/notarys/comments/1','GET','127.0.0.1','[]','2019-09-10 02:29:21','2019-09-10 02:29:21'),(1087,1,'admin/tools/notarys/comments/1','GET','127.0.0.1','[]','2019-09-10 02:30:21','2019-09-10 02:30:21'),(1088,1,'admin/tools/notarys/comments/1','GET','127.0.0.1','[]','2019-09-10 02:35:50','2019-09-10 02:35:50'),(1089,1,'admin/tools/notarys/comments','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:36:40','2019-09-10 02:36:40'),(1090,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:36:49','2019-09-10 02:36:49'),(1091,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','[]','2019-09-10 02:38:40','2019-09-10 02:38:40'),(1092,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','[]','2019-09-10 02:38:56','2019-09-10 02:38:56'),(1093,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','[]','2019-09-10 02:39:12','2019-09-10 02:39:12'),(1094,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','[]','2019-09-10 02:40:55','2019-09-10 02:40:55'),(1095,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','[]','2019-09-10 02:41:41','2019-09-10 02:41:41'),(1096,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','[]','2019-09-10 02:42:49','2019-09-10 02:42:49'),(1097,1,'admin/tools/notarys/comments/1/edit','GET','127.0.0.1','[]','2019-09-10 02:49:57','2019-09-10 02:49:57'),(1098,1,'admin/tools/notarys/comments','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:51:00','2019-09-10 02:51:00'),(1099,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 02:52:34','2019-09-10 02:52:34'),(1100,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"45\",\"title\":\"\\u987e\\u95ee\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/notarys\\/specialists\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 02:53:13','2019-09-10 02:53:13'),(1101,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 02:53:15','2019-09-10 02:53:15'),(1102,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 02:53:58','2019-09-10 02:53:58'),(1103,1,'admin/tools/notarys/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:04:54','2019-09-10 03:04:54'),(1104,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 03:04:56','2019-09-10 03:04:56'),(1105,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 03:06:00','2019-09-10 03:06:00'),(1106,1,'admin/tools/notarys/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:06:21','2019-09-10 03:06:21'),(1107,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 03:06:23','2019-09-10 03:06:23'),(1108,1,'admin/tools/notarys/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:07:39','2019-09-10 03:07:39'),(1109,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 03:07:42','2019-09-10 03:07:42'),(1110,1,'admin/tools/notarys/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:08:10','2019-09-10 03:08:10'),(1111,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 03:08:13','2019-09-10 03:08:13'),(1112,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:09:29','2019-09-10 03:09:29'),(1113,1,'admin/auth/permissions/19/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:09:50','2019-09-10 03:09:50'),(1114,1,'admin/auth/permissions/19','PUT','127.0.0.1','{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers*\\r\\n\\/tools\\/notarys\\/specialist*\\r\\n\\/tools\\/notarys\\/comments*\\r\\n\\/tools\\/notarys*\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-10 03:10:27','2019-09-10 03:10:27'),(1115,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-10 03:10:31','2019-09-10 03:10:31'),(1116,1,'admin/tools/notarys/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:10:54','2019-09-10 03:10:54'),(1117,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-10 03:10:58','2019-09-10 03:10:58'),(1118,1,'admin/tools/notarys/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:11:14','2019-09-10 03:11:14'),(1119,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:11:28','2019-09-10 03:11:28'),(1120,1,'admin/auth/permissions/19/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:11:49','2019-09-10 03:11:49'),(1121,1,'admin/auth/permissions/19','PUT','127.0.0.1','{\"slug\":\"tool\",\"name\":\"toolManagement\",\"http_method\":[null],\"http_path\":\"\\/tools\\/laywers*\\r\\n\\/tools\\/notarys*\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-10 03:12:00','2019-09-10 03:12:00'),(1122,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-10 03:12:03','2019-09-10 03:12:03'),(1123,1,'admin/tools/notarys/specialists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:17:05','2019-09-10 03:17:05'),(1124,1,'admin/tools/notarys/specialists','GET','127.0.0.1','[]','2019-09-10 03:18:53','2019-09-10 03:18:53'),(1125,1,'admin/tools/notarys/specialists','GET','127.0.0.1','[]','2019-09-10 03:19:23','2019-09-10 03:19:23'),(1126,1,'admin/tools/notarys/specialists','GET','127.0.0.1','[]','2019-09-10 03:21:54','2019-09-10 03:21:54'),(1127,1,'admin/tools/notarys/specialists','GET','127.0.0.1','[]','2019-09-10 03:22:53','2019-09-10 03:22:53'),(1128,1,'admin/tools/notarys/specialists','GET','127.0.0.1','[]','2019-09-10 03:23:17','2019-09-10 03:23:17'),(1129,1,'admin/tools/notarys/specialists','GET','127.0.0.1','[]','2019-09-10 03:25:13','2019-09-10 03:25:13'),(1130,1,'admin/tools/laywers','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:27:22','2019-09-10 03:27:22'),(1131,1,'admin/tools/laywers','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:27:45','2019-09-10 03:27:45'),(1132,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-10 03:30:35','2019-09-10 03:30:35'),(1133,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-10 03:33:12','2019-09-10 03:33:12'),(1134,1,'admin/tools/laywers','GET','127.0.0.1','[]','2019-09-10 03:34:52','2019-09-10 03:34:52'),(1135,1,'admin/legals/books','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:46:48','2019-09-10 03:46:48'),(1136,1,'admin/legals/category','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:48:55','2019-09-10 03:48:55'),(1137,1,'admin/legals/books','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:49:27','2019-09-10 03:49:27'),(1138,1,'admin/legals/columns','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 03:49:42','2019-09-10 03:49:42'),(1139,1,'admin/legals/columns','GET','127.0.0.1','[]','2019-09-10 03:52:59','2019-09-10 03:52:59'),(1140,1,'admin/legals/columns','GET','127.0.0.1','[]','2019-09-10 03:56:16','2019-09-10 03:56:16'),(1141,1,'admin/legals/columns','GET','127.0.0.1','[]','2019-09-10 03:57:50','2019-09-10 03:57:50'),(1142,1,'admin/legals/columns','GET','127.0.0.1','[]','2019-09-10 03:58:12','2019-09-10 03:58:12'),(1143,1,'admin/legals/columns','GET','127.0.0.1','[]','2019-09-10 03:59:42','2019-09-10 03:59:42'),(1144,1,'admin/legals/columns','GET','127.0.0.1','[]','2019-09-10 04:01:08','2019-09-10 04:01:08'),(1145,1,'admin/answers/lists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 04:01:53','2019-09-10 04:01:53'),(1146,1,'admin/answers/lists','GET','127.0.0.1','[]','2019-09-10 04:11:39','2019-09-10 04:11:39'),(1147,1,'admin/answers/lists','GET','127.0.0.1','[]','2019-09-10 04:12:43','2019-09-10 04:12:43'),(1148,1,'admin/answers/lists','GET','127.0.0.1','[]','2019-09-10 04:13:11','2019-09-10 04:13:11'),(1149,1,'admin/answers/lists/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 04:14:25','2019-09-10 04:14:25'),(1150,1,'admin/answers/lists/create','GET','127.0.0.1','[]','2019-09-10 04:14:44','2019-09-10 04:14:44'),(1151,1,'admin/answers/lists','POST','127.0.0.1','{\"title\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\",\"option1\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"option2\":\"\\u4f4f\\u623f\\u8865\\u8d34\",\"option3\":null,\"option4\":null,\"correct\":\"A\",\"status\":\"on\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 04:15:59','2019-09-10 04:15:59'),(1152,1,'admin/answers/lists','GET','127.0.0.1','[]','2019-09-10 04:16:03','2019-09-10 04:16:03'),(1153,1,'admin/answers/lists','GET','127.0.0.1','[]','2019-09-10 04:17:06','2019-09-10 04:17:06'),(1154,1,'admin/answers/lists','GET','127.0.0.1','[]','2019-09-10 04:17:26','2019-09-10 04:17:26'),(1155,1,'admin/answers/lists','GET','127.0.0.1','[]','2019-09-10 04:19:03','2019-09-10 04:19:03'),(1156,1,'admin/answers/lists','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 05:59:33','2019-09-10 05:59:33'),(1157,1,'admin/answers/records','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 05:59:39','2019-09-10 05:59:39'),(1158,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:13:29','2019-09-10 06:13:29'),(1159,1,'admin/answers/records/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:13:50','2019-09-10 06:13:50'),(1160,1,'admin/answers/records/create','GET','127.0.0.1','[]','2019-09-10 06:14:11','2019-09-10 06:14:11'),(1161,1,'admin/answers/records','POST','127.0.0.1','{\"user_id\":\"1\",\"answerList\":{\"title\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\"},\"date\":\"2019-09-10 14:14:12\",\"question\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\",\"answer\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 06:16:08','2019-09-10 06:16:08'),(1162,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:16:13','2019-09-10 06:16:13'),(1163,1,'admin/answers/records/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:21:08','2019-09-10 06:21:08'),(1164,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:21:12','2019-09-10 06:21:12'),(1165,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:22:12','2019-09-10 06:22:12'),(1166,1,'admin/answers/records/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:22:28','2019-09-10 06:22:28'),(1167,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:22:33','2019-09-10 06:22:33'),(1168,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:24:59','2019-09-10 06:24:59'),(1169,1,'admin/answers/records/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:25:13','2019-09-10 06:25:13'),(1170,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:25:17','2019-09-10 06:25:17'),(1171,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:26:21','2019-09-10 06:26:21'),(1172,1,'admin/answers/records/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:26:39','2019-09-10 06:26:39'),(1173,1,'admin/answers/records/create','GET','127.0.0.1','[]','2019-09-10 06:31:19','2019-09-10 06:31:19'),(1174,1,'admin/answers/records/create','GET','127.0.0.1','[]','2019-09-10 06:31:47','2019-09-10 06:31:47'),(1175,1,'admin/answers/records','POST','127.0.0.1','{\"user_id\":\"3\",\"answer_list_id\":\"1\",\"date\":\"2019-09-10 14:31:48\",\"question\":null,\"answer\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 06:32:12','2019-09-10 06:32:12'),(1176,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:32:16','2019-09-10 06:32:16'),(1177,1,'admin/answers/records/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:34:09','2019-09-10 06:34:09'),(1178,1,'admin/answers/records','POST','127.0.0.1','{\"user_id\":\"4\",\"answer_list_id\":\"1\",\"date\":\"2019-09-10 14:34:09\",\"question\":\"\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u4f01\\u4e1a\\u5fc5\\u987b\\u7ed9\\u804c\\u5de5\\u7f34\\u8db3\",\"answer\":\"\\u4e94\\u9669\\u4e00\\u91d1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/answers\\/records\"}','2019-09-10 06:34:48','2019-09-10 06:34:48'),(1179,1,'admin/answers/records','GET','127.0.0.1','[]','2019-09-10 06:34:50','2019-09-10 06:34:50'),(1180,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"2\",\"_model\":\"App_AnswerRecord\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2019-09-10 06:35:11','2019-09-10 06:35:11'),(1181,1,'admin/answers/records','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:35:15','2019-09-10 06:35:15'),(1182,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"1\",\"_model\":\"App_AnswerRecord\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2019-09-10 06:35:21','2019-09-10 06:35:21'),(1183,1,'admin/answers/records','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:35:26','2019-09-10 06:35:26'),(1184,1,'admin/questions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:37:52','2019-09-10 06:37:52'),(1185,1,'admin/questions/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:38:07','2019-09-10 06:38:07'),(1186,1,'admin/questions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:38:17','2019-09-10 06:38:17'),(1187,1,'admin/questions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:39:54','2019-09-10 06:39:54'),(1188,1,'admin/questions','POST','127.0.0.1','{\"title\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"question\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"answer\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\"}','2019-09-10 06:40:28','2019-09-10 06:40:28'),(1189,1,'admin/questions','GET','127.0.0.1','[]','2019-09-10 06:40:30','2019-09-10 06:40:30'),(1190,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:54:14','2019-09-10 06:54:14'),(1191,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"39\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"\\/q\",\"roles\":[null],\"permission\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 06:54:45','2019-09-10 06:54:45'),(1192,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 06:54:48','2019-09-10 06:54:48'),(1193,1,'admin/auth/menu/48/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 06:54:57','2019-09-10 06:54:57'),(1194,1,'admin/auth/menu/48','PUT','127.0.0.1','{\"parent_id\":\"39\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"\\/questions\\/categorys\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-10 06:56:50','2019-09-10 06:56:50'),(1195,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 06:56:53','2019-09-10 06:56:53'),(1196,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 06:57:25','2019-09-10 06:57:25'),(1197,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:03:17','2019-09-10 07:03:17'),(1198,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:05:03','2019-09-10 07:05:03'),(1199,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:05:41','2019-09-10 07:05:41'),(1200,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:06:12','2019-09-10 07:06:12'),(1201,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:07:47','2019-09-10 07:07:47'),(1202,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:11:45','2019-09-10 07:11:45'),(1203,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:13:23','2019-09-10 07:13:23'),(1204,1,'admin/questions/categorys/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:13:54','2019-09-10 07:13:54'),(1205,1,'admin/questions/categorys/create','GET','127.0.0.1','[]','2019-09-10 07:16:21','2019-09-10 07:16:21'),(1206,1,'admin/questions/categorys/create','GET','127.0.0.1','[]','2019-09-10 07:16:40','2019-09-10 07:16:40'),(1207,1,'admin/questions/categorys/create','GET','127.0.0.1','[]','2019-09-10 07:17:44','2019-09-10 07:17:44'),(1208,1,'admin/questions/categorys/create','GET','127.0.0.1','[]','2019-09-10 07:18:07','2019-09-10 07:18:07'),(1209,1,'admin/questions/categorys','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8d37\\u6b3e\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 07:19:11','2019-09-10 07:19:11'),(1210,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:19:14','2019-09-10 07:19:14'),(1211,1,'admin/questions/categorys/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:19:23','2019-09-10 07:19:23'),(1212,1,'admin/questions/categorys','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u623f\\u5c4b\\u8fc7\\u6237\\u4ecb\\u7ecd\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}','2019-09-10 07:19:35','2019-09-10 07:19:35'),(1213,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:19:39','2019-09-10 07:19:39'),(1214,1,'admin/questions/categorys/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:19:48','2019-09-10 07:19:48'),(1215,1,'admin/questions/categorys','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u529f\\u80fd\\u4f7f\\u7528\\u6307\\u5357\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}','2019-09-10 07:20:01','2019-09-10 07:20:01'),(1216,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:20:05','2019-09-10 07:20:05'),(1217,1,'admin/questions/categorys/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:20:21','2019-09-10 07:20:21'),(1218,1,'admin/questions/categorys','POST','127.0.0.1','{\"parent_id\":\"50\",\"title\":\"\\u6309\\u63ed\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}','2019-09-10 07:20:37','2019-09-10 07:20:37'),(1219,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:20:40','2019-09-10 07:20:40'),(1220,1,'admin/questions/categorys/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:20:49','2019-09-10 07:20:49'),(1221,1,'admin/questions/categorys','POST','127.0.0.1','{\"parent_id\":\"50\",\"title\":\"\\u8f66\\u8f86\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/questions\\/categorys\"}','2019-09-10 07:21:12','2019-09-10 07:21:12'),(1222,1,'admin/questions/categorys/create','GET','127.0.0.1','[]','2019-09-10 07:21:15','2019-09-10 07:21:15'),(1223,1,'admin/questions/categorys','POST','127.0.0.1','{\"parent_id\":\"50\",\"title\":\"\\u6d88\\u8d39\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\"}','2019-09-10 07:21:34','2019-09-10 07:21:34'),(1224,1,'admin/questions/categorys/create','GET','127.0.0.1','[]','2019-09-10 07:21:37','2019-09-10 07:21:37'),(1225,1,'admin/questions/categorys','POST','127.0.0.1','{\"parent_id\":\"50\",\"title\":\"\\u4fe1\\u7528\\u8d37\\u6b3e\",\"path\":null,\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 07:21:50','2019-09-10 07:21:50'),(1226,1,'admin/questions/categorys','GET','127.0.0.1','[]','2019-09-10 07:21:53','2019-09-10 07:21:53'),(1227,1,'admin/banners','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:24:20','2019-09-10 07:24:20'),(1228,1,'admin/banners/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:24:27','2019-09-10 07:24:27'),(1229,1,'admin/banners/create','GET','127.0.0.1','[]','2019-09-10 07:25:36','2019-09-10 07:25:36'),(1230,1,'admin/banners/create','GET','127.0.0.1','[]','2019-09-10 07:25:57','2019-09-10 07:25:57'),(1231,1,'admin/banners','POST','127.0.0.1','{\"picname\":\"\\u8f6e\\u64ad1\",\"sort\":\"1\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 07:26:37','2019-09-10 07:26:37'),(1232,1,'admin/banners','GET','127.0.0.1','[]','2019-09-10 07:26:40','2019-09-10 07:26:40'),(1233,1,'admin/banners/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:26:54','2019-09-10 07:26:54'),(1234,1,'admin/banners','POST','127.0.0.1','{\"picname\":\"\\u8f6e\\u64ad2\",\"sort\":\"2\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/banners\"}','2019-09-10 07:27:20','2019-09-10 07:27:20'),(1235,1,'admin/banners/create','GET','127.0.0.1','[]','2019-09-10 07:27:23','2019-09-10 07:27:23'),(1236,1,'admin/banners','POST','127.0.0.1','{\"picname\":\"\\u8f6e\\u64ad3\",\"sort\":\"3\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"after-save\":\"2\"}','2019-09-10 07:27:47','2019-09-10 07:27:47'),(1237,1,'admin/banners/create','GET','127.0.0.1','[]','2019-09-10 07:27:51','2019-09-10 07:27:51'),(1238,1,'admin/banners','POST','127.0.0.1','{\"picname\":\"\\u8f6e\\u64ad4\",\"sort\":\"4\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 07:28:18','2019-09-10 07:28:18'),(1239,1,'admin/banners','GET','127.0.0.1','[]','2019-09-10 07:28:22','2019-09-10 07:28:22'),(1240,1,'admin/banners','GET','127.0.0.1','[]','2019-09-10 07:30:27','2019-09-10 07:30:27'),(1241,1,'admin/acticles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:41:19','2019-09-10 07:41:19'),(1242,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:47:53','2019-09-10 07:47:53'),(1243,1,'admin/auth/menu/44/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:48:05','2019-09-10 07:48:05'),(1244,1,'admin/auth/menu/44','PUT','127.0.0.1','{\"parent_id\":\"43\",\"title\":\"\\u5f8b\\u5e08\",\"icon\":\"fa-bars\",\"uri\":\"\\/tools\\/laywers\",\"roles\":[null],\"permission\":\"tool\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-10 07:48:12','2019-09-10 07:48:12'),(1245,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 07:48:14','2019-09-10 07:48:14'),(1246,1,'admin/personnel/categorys','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:48:24','2019-09-10 07:48:24'),(1247,1,'admin/personnel/categorys','GET','127.0.0.1','[]','2019-09-10 07:48:45','2019-09-10 07:48:45'),(1248,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:49:52','2019-09-10 07:49:52'),(1249,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"41\",\"title\":\"\\u54a8\\u8be2\\u4e13\\u5bb6\",\"icon\":\"fa-bars\",\"uri\":\"\\/acticles\\/specialist\\/advices\",\"roles\":[null],\"permission\":\"acticle\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 07:51:06','2019-09-10 07:51:06'),(1250,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 07:51:09','2019-09-10 07:51:09'),(1251,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 07:52:02','2019-09-10 07:52:02'),(1252,1,'admin/acticles/specialist/advices','GET','127.0.0.1','[]','2019-09-10 07:53:14','2019-09-10 07:53:14'),(1253,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:54:04','2019-09-10 07:54:04'),(1254,1,'admin/auth/menu/20/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:54:28','2019-09-10 07:54:28'),(1255,1,'admin/auth/menu/20','PUT','127.0.0.1','{\"parent_id\":\"19\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-sitemap\",\"uri\":\"\\/legals\\/categorys\",\"roles\":[null],\"permission\":\"Legal\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/menu\"}','2019-09-10 07:55:00','2019-09-10 07:55:00'),(1256,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-09-10 07:55:03','2019-09-10 07:55:03'),(1257,1,'admin/acticles/specialist/advices','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 07:55:35','2019-09-10 07:55:35'),(1258,1,'admin/acticles/specialist/advices','GET','127.0.0.1','[]','2019-09-10 08:03:43','2019-09-10 08:03:43'),(1259,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:04:03','2019-09-10 08:04:03'),(1260,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:07:34','2019-09-10 08:07:34'),(1261,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:11:34','2019-09-10 08:11:34'),(1262,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:12:21','2019-09-10 08:12:21'),(1263,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:13:12','2019-09-10 08:13:12'),(1264,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:13:45','2019-09-10 08:13:45'),(1265,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:14:50','2019-09-10 08:14:50'),(1266,1,'admin/acticles/specialist/advices','POST','127.0.0.1','{\"user_id\":\"4\",\"spec_id\":\"1\",\"question\":\"<p><\\/p><p>\\u89e3\\u51b3\\u4e00\\u4e0b\\u751f\\u6d3b\\u95ee\\u9898<\\/p>\",\"interpretation\":\"\\u6ca1\\u529e\\u6cd5\",\"measures\":\"\\u81ea\\u884c\\u5904\\u7406\",\"like_count\":\"1\",\"comments_count\":\"1\",\"status\":\"on\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 08:16:53','2019-09-10 08:16:53'),(1267,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:16:59','2019-09-10 08:16:59'),(1268,1,'admin/acticles/specialist/advices/create','GET','127.0.0.1','[]','2019-09-10 08:17:28','2019-09-10 08:17:28'),(1269,1,'admin/acticles/specialist/advices','POST','127.0.0.1','{\"user_id\":\"4\",\"spec_id\":\"1\",\"question\":\"<p><\\/p><p>\\u89e3\\u51b3\\u4e00\\u4e0b\\u751f\\u6d3b\\u95ee\\u9898<\\/p>\",\"interpretation\":\"\\u6ca1\\u529e\\u6cd5\",\"measures\":\"\\u81ea\\u884c\\u5904\\u7406\",\"like_count\":\"1\",\"comments_count\":\"1\",\"status\":\"on\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 08:18:07','2019-09-10 08:18:07'),(1270,1,'admin/acticles/specialist/advices','GET','127.0.0.1','[]','2019-09-10 08:18:10','2019-09-10 08:18:10'),(1271,1,'admin/acticles/specialist/advices/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:18:33','2019-09-10 08:18:33'),(1272,1,'admin/acticles/specialist/advices/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:18:49','2019-09-10 08:18:49'),(1273,1,'admin/acticles/specialist/advices/1','GET','127.0.0.1','[]','2019-09-10 08:19:31','2019-09-10 08:19:31'),(1274,1,'admin/acticles/comments','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:26:09','2019-09-10 08:26:09'),(1275,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:41:21','2019-09-10 08:41:21'),(1276,1,'admin/auth/menu/23','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\"}','2019-09-10 08:41:29','2019-09-10 08:41:29'),(1277,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:41:35','2019-09-10 08:41:35'),(1278,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:41:38','2019-09-10 08:41:38'),(1279,1,'admin/auth/permissions/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-09-10 08:42:05','2019-09-10 08:42:05'),(1280,1,'admin/auth/permissions/7','PUT','127.0.0.1','{\"slug\":\"acticle\",\"name\":\"acticleManagement\",\"http_method\":[null],\"http_path\":\"\\/acticles*\\r\\n\\/questions*\\r\\n\\/collects*\",\"_token\":\"E1ylQHS2MeHJhionhnFfxEkQWnz6kLZ5R9LtRJva\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.laravel.com\\/admin\\/auth\\/permissions\"}','2019-09-10 08:42:16','2019-09-10 08:42:16'),(1281,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-09-10 08:42:18','2019-09-10 08:42:18');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'personnelManagement','personnel','','/personnel/laywers*\r\n/personnel/specialists*\r\n/personnel/categorys*','2019-09-01 18:26:39','2019-09-04 09:24:14'),(7,'acticleManagement','acticle','','/acticles*\r\n/questions*\r\n/collects*','2019-09-01 18:46:59','2019-09-10 08:42:16'),(8,'foundsManagement','founds','','/founds*','2019-09-01 23:24:07','2019-09-02 00:25:30'),(18,'couponManagement','coupon','','/coupons*','2019-09-05 01:13:41','2019-09-05 01:13:41'),(10,'LogsManagement','logs','','/logs*','2019-09-02 19:39:49','2019-09-02 19:39:49'),(11,'usercenterManagement','usercenter','','/usercenter/collects*\r\n/usercenter/attentions*\r\n/usercenter/comments*','2019-09-02 21:26:17','2019-09-02 22:42:52'),(12,'LegalManagement','Legal','','/legals/category/*\r\n/legals/books/*\r\n/legals/columns/*','2019-09-02 23:21:46','2019-09-04 09:09:13'),(13,'answerManagement','answer','','/answers*','2019-09-04 07:24:56','2019-09-04 07:24:56'),(14,'messageManagement','message','','/messages*','2019-09-04 07:40:39','2019-09-04 07:40:39'),(15,'noticeManagement','notice','','/notices*','2019-09-04 08:16:57','2019-09-04 08:16:57'),(16,'memberManagement','member','','/members*','2019-09-04 08:37:59','2019-09-04 08:37:59'),(17,'bannerManagement','banner','','/banners*','2019-09-04 08:45:14','2019-09-04 08:45:14'),(19,'toolManagement','tool','','/tools/laywers*\r\n/tools/notarys*','2019-09-09 07:16:36','2019-09-10 03:12:00');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-08-27 17:09:44','2019-08-27 17:09:44');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$nMtu4X/fCP//eyKC3Yli4O/zhK6xXo1Vsc4btyLBtjb6JW6j5lvSO','Administrator',NULL,'yuD21nYr1izxjYJBcqMXmEw9B0gbR5vTPEXQPhJ9xgbXUvcVKUiNCMFxnfq1','2019-08-27 17:09:44','2019-08-27 17:09:44');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_acticle_comment`
--

DROP TABLE IF EXISTS `jsyfb_acticle_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_acticle_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `acticle_id` int(11) DEFAULT NULL COMMENT '文章id',
  `interpretation` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '解读',
  `measures` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '措施',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '评论内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment-user-acticle` (`user_id`,`acticle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_acticle_comment`
--

LOCK TABLES `jsyfb_acticle_comment` WRITE;
/*!40000 ALTER TABLE `jsyfb_acticle_comment` DISABLE KEYS */;
INSERT INTO `jsyfb_acticle_comment` VALUES (1,118,16,'Ullam quia voluptatum voluptatem occaecati.','Ipsum magnam itaque reprehenderit quia quaerat harum maiores laboriosam.','a','2019-09-01 22:50:20','2019-09-01 22:50:20'),(2,262,16,'Doloribus nemo voluptates et nostrum.','Minus blanditiis blanditiis reiciendis quisquam quos dicta.','b','2019-09-01 22:50:20','2019-09-01 22:50:20'),(3,357,16,'Et ut debitis quae sequi quis.','Autem et molestias tempore eum modi.','c','2019-09-01 22:50:20','2019-09-01 22:50:20'),(4,57,67,'Commodi quasi perferendis qui molestias.','Neque et est recusandae.','d','2019-09-01 22:50:20','2019-09-01 22:50:20'),(5,61,23,'Aut facilis aliquam dolores.','Aut ut adipisci laborum rerum rem quia cum.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(6,244,40,'Fugiat dolor enim facilis cum est.','Nam assumenda dolorem iure doloribus deserunt.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(7,234,11,'Eos tempore sed necessitatibus ut autem impedit.','Ratione aut sequi minus nihil.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(8,8,17,'Praesentium necessitatibus quidem error neque molestiae qui dolorum.','Repellendus nihil sunt vel sed et vitae excepturi.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(9,463,73,'Rerum possimus voluptatem dolorum dicta.','Voluptas et praesentium vel dolores dolor.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(10,348,23,'Qui qui saepe ad vero error.','Velit sed quia suscipit qui quia laborum fuga.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(11,126,69,'Accusamus aut et dignissimos quisquam laudantium.','Magni maxime consequatur ut et quidem fugit adipisci.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(12,328,20,'Sapiente quaerat ut perferendis beatae qui.','Dolores et et quia ut nihil.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(13,176,73,'Sit eos voluptas nihil alias voluptate exercitationem ex.','Quod vel et deleniti dignissimos quam eos.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(14,310,75,'Optio ea placeat sapiente dolorum ipsum autem sed perferendis.','Quia fugit in sit et aut ipsum nostrum.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(15,304,36,'Exercitationem aut harum eligendi soluta.','Maxime repellat voluptatem autem velit illum adipisci.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(16,110,41,'Assumenda sed voluptatem maiores saepe quasi nobis expedita ipsum.','Est id iste dolore est modi.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(17,265,50,'Id dolor qui quisquam nemo facere eum accusamus.','Sed dolor provident placeat at cumque ut quidem.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(18,145,53,'Dolore odio ab fugiat voluptates magnam nesciunt.','Amet et non non autem minima dolor.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(19,304,33,'Nam tempore est minima distinctio suscipit et.','Sunt esse molestiae unde non voluptatibus quia impedit.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(20,404,94,'Adipisci et sint omnis cum culpa eaque.','Et et repellendus recusandae et sint quidem.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(21,187,71,'Qui esse ipsum quibusdam corporis inventore.','Laudantium autem ea iure voluptate et dignissimos.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(22,218,95,'Voluptatibus iste architecto mollitia.','Aspernatur ut molestiae fuga.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(23,271,10,'Ipsa ea laboriosam modi debitis nemo similique.','Voluptas qui et et cumque mollitia ipsum.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(24,58,95,'A delectus inventore repudiandae repellat debitis dicta.','Repellendus suscipit non eos harum in alias.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(25,404,31,'Aut pariatur mollitia dolores ex.','Sed ipsa quod eveniet id repudiandae hic.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(26,99,9,'Debitis illo incidunt a dolorem maiores.','Delectus vel blanditiis aperiam eaque pariatur dolores non.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(27,19,72,'Id doloremque voluptatem nihil accusantium.','Voluptate doloribus dolorem quia ut enim excepturi dignissimos ut.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(28,368,50,'Ea et illo autem quas.','Error amet odit saepe architecto aut.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(29,471,27,'Eligendi quos eius cumque in eum ipsam.','Numquam ipsa animi aut consequatur quia blanditiis magni.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(30,281,81,'Eos qui aut eos omnis tempore nulla.','Animi reprehenderit magni in repellendus molestias.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(31,306,48,'Magnam error aliquid aperiam qui.','Nulla rerum tenetur sed ipsam qui dolores consequuntur.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(32,447,94,'Quis iste quas rerum omnis alias corporis.','Numquam ipsum rerum et error et.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(33,180,19,'Rerum dolorum modi dolorem praesentium.','Dolores voluptatem beatae est assumenda.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(34,352,20,'Pariatur beatae eum veritatis esse saepe.','Sit porro ducimus ipsum et occaecati aut.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(35,337,4,'Ut ad dolor labore dicta voluptas voluptatem modi.','Doloribus adipisci dolore nemo aliquam nam delectus ipsam.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(36,359,96,'Reiciendis excepturi repellendus cum tenetur.','Dolor impedit sunt quis molestiae deserunt.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(37,456,40,'Incidunt aut expedita numquam dolor occaecati ad velit.','Suscipit aspernatur voluptatem eius nobis voluptatem fugiat repellat.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(38,137,47,'Dolorum perspiciatis velit fuga atque nihil ipsa voluptatem.','Illo velit illo et eos aut exercitationem ab.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(39,57,8,'Esse amet sed ullam dolor.','Laudantium itaque alias labore quos est quia consequatur voluptate.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(40,357,75,'Voluptatum inventore in cupiditate veniam animi assumenda.','Voluptatem natus voluptatem nobis labore cumque placeat.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(41,408,25,'Officia laborum dolor voluptas neque ipsam.','Magni dolores facere sit et.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(42,9,6,'Odit aut deleniti est quibusdam et.','Est deserunt magnam quibusdam accusantium doloribus assumenda.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(43,56,86,'Molestiae ab explicabo cum odit et.','Aliquam corrupti tempora iste.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(44,194,96,'Officia esse ut distinctio reprehenderit provident.','Sed error qui voluptatem suscipit dolor odio.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(45,79,33,'Ut molestiae porro hic in.','Iusto voluptatibus suscipit sed ullam doloremque quibusdam vitae.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(46,495,72,'Dolorem quam doloremque modi consectetur quo.','Asperiores unde nesciunt a fuga consequatur.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(47,196,85,'A repellendus ipsum consequuntur voluptate ut.','Sunt odit et aliquid ratione iusto sit ab.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(48,345,67,'Vel harum ea et consequatur odit est.','Unde voluptate nostrum ea et dolorum quia doloribus dolorem.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(49,16,28,'Sint officia voluptatem sit sint qui omnis.','Accusamus hic dolore inventore praesentium qui.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(50,142,34,'Amet enim voluptatibus error.','Est temporibus nesciunt incidunt quibusdam.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(51,111,19,'Ut repellendus et eaque provident.','Et aut odio et autem voluptatum iusto vero quos.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(52,3,33,'Ipsa excepturi officiis voluptas qui dolores recusandae et.','A vel voluptas consectetur temporibus perferendis.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(53,417,85,'Et rerum aut amet et quisquam.','Nihil ut amet qui soluta.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(54,361,12,'Pariatur vel voluptas omnis non sunt rem enim saepe.','Molestiae nulla et quas repudiandae rerum doloremque numquam.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(55,106,33,'Commodi nesciunt asperiores quae et nemo occaecati fugit.','Cum vel illum voluptatibus inventore asperiores maiores et.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(56,415,57,'Ipsum excepturi voluptatum et aliquid accusantium assumenda.','Sunt quis et voluptas minus incidunt eos maxime.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(57,479,15,'Consectetur nihil repellendus nesciunt mollitia aut quis minus.','Laborum est voluptas nam quia in.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(58,371,3,'Hic et rerum quos omnis occaecati.','Ut hic tenetur mollitia sequi laudantium ea asperiores placeat.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(59,197,1,'Suscipit repellendus ad itaque reprehenderit deserunt omnis.','Numquam dolore ullam aut ab velit voluptate.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(60,91,22,'Iure quod ipsa quaerat assumenda dignissimos.','Ut consequuntur ut voluptates aliquid.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(61,338,60,'Et omnis id animi harum.','Inventore nam ut soluta et sit.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(62,395,35,'Ut aut a aut iusto pariatur placeat in.','Nesciunt itaque libero eaque qui deleniti.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(63,225,74,'Rerum eum similique cumque eos tempore saepe possimus.','Sunt perspiciatis eum consequatur distinctio atque.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(64,482,91,'Et necessitatibus voluptates velit.','Modi debitis rerum a quia.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(65,55,45,'Nam quibusdam vero aperiam ipsa sint.','Sequi laudantium ut excepturi dicta.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(66,471,14,'Autem officia voluptatem commodi ducimus.','Harum voluptatem placeat quia fugiat iusto aliquam.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(67,306,92,'Atque consectetur eligendi exercitationem in consequatur molestiae.','Tempora possimus et rerum.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(68,420,65,'Eligendi qui minima error quis molestiae et inventore.','Quisquam iusto voluptatem culpa voluptatem officia dolores voluptatem.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(69,421,25,'Quo magni eligendi dicta velit est.','Eum ratione dolor et et est pariatur.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(70,110,59,'Neque voluptatem est perspiciatis sit ipsa facere voluptas.','Qui et possimus architecto laudantium quidem consequatur qui.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(71,14,33,'Eos maxime quia aliquam sunt sed.','Quia maiores neque eos alias earum saepe ab.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(72,280,16,'Ex voluptatibus qui esse est molestiae ipsam.','Dolor quod est harum.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(73,331,100,'Aperiam et blanditiis unde temporibus est voluptatum nisi.','Atque alias vero et sed eum laudantium sequi.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(74,479,20,'Modi sunt et aut quis voluptatibus officia magni.','Nihil consectetur deserunt vero et consequatur repellat placeat saepe.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(75,103,74,'Temporibus quia animi voluptate assumenda ut.','Est inventore porro aut nesciunt similique dolores ut.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(76,151,60,'Ducimus hic qui et officia atque.','Accusamus ipsam laborum possimus provident excepturi et.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(77,103,21,'Dolorem nemo iusto at.','Accusamus delectus nihil at sint voluptatibus ex.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(78,364,94,'Dolores nemo quidem delectus ea architecto voluptatem nihil a.','Quod omnis maxime quisquam ut.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(79,478,69,'Est omnis fugiat exercitationem nam quis ipsam voluptate.','Quia dolores dolorem qui aperiam dolor.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(80,463,69,'Laudantium qui distinctio at est quisquam repudiandae amet.','Et voluptatum autem voluptas repellendus a quisquam numquam et.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(81,93,53,'Aspernatur recusandae sapiente ex sapiente.','Et aliquid esse porro quo.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(82,177,47,'Mollitia reiciendis eveniet est facere ducimus pariatur ut.','Nihil est consequatur aut rem.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(83,336,45,'Eos quo animi aut recusandae non numquam.','Eveniet commodi tempore quasi aliquam qui et rerum ipsa.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(84,342,12,'Doloremque perferendis ea tenetur rem quibusdam quo harum.','Nihil voluptatibus tempore doloribus tempore hic.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(85,367,89,'Eius aut incidunt voluptas nihil illo quisquam.','Ducimus harum consequatur ab dicta incidunt alias in impedit.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(86,485,44,'Nesciunt sit quo recusandae repellendus ratione.','Consequuntur ipsa numquam et beatae ipsam est molestiae natus.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(87,142,22,'Tempore delectus qui laboriosam veniam voluptatem et et asperiores.','Quisquam est laborum officiis voluptates dolor laudantium blanditiis adipisci.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(88,495,72,'Molestiae rem dolor dolores quod rerum architecto.','Eveniet facilis enim vero aut modi adipisci impedit.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(89,68,55,'Odit qui perspiciatis quia quasi et provident quos aut.','Rerum inventore magni est hic.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(90,346,90,'Quia iusto quia doloribus perspiciatis vel.','Ipsam magnam corrupti dolor.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(91,304,35,'Quidem est nulla ut qui magni vel dolor.','Error voluptatem maxime est voluptas molestias quisquam autem.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(92,63,4,'Et blanditiis et est quia corrupti.','Sunt doloribus corrupti vero voluptas.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(93,216,10,'Aperiam et autem et.','Et rem atque est.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(94,148,9,'Inventore fugiat dolores totam aliquid nemo occaecati voluptas.','Placeat id et voluptatem.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(95,290,12,'Ut et iste laborum alias deserunt.','Pariatur est dolor vel odio amet.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(96,460,73,'Eos quo optio doloribus quam aut recusandae explicabo.','Inventore animi enim corrupti omnis.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(97,247,84,'Et sed ullam voluptatem qui.','Est ad minima rem fugit repudiandae.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(98,485,59,'Eveniet eum veniam sunt temporibus.','Qui occaecati doloremque possimus qui non est incidunt voluptatum.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(99,392,13,'Est quia voluptatem laborum beatae odio.','Alias natus consequuntur quos illo.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20'),(100,435,76,'Et qui omnis neque rerum eos asperiores et.','Voluptatem laboriosam adipisci vitae placeat.',NULL,'2019-09-01 22:50:20','2019-09-01 22:50:20');
/*!40000 ALTER TABLE `jsyfb_acticle_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_acticle_like`
--

DROP TABLE IF EXISTS `jsyfb_acticle_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_acticle_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `acticle_id` int(11) NOT NULL COMMENT '文章id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_acticle_like`
--

LOCK TABLES `jsyfb_acticle_like` WRITE;
/*!40000 ALTER TABLE `jsyfb_acticle_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_acticle_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_answer_list`
--

DROP TABLE IF EXISTS `jsyfb_answer_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_answer_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '题目',
  `option1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '选项A',
  `option2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项B',
  `option3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项C',
  `option4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选项D',
  `correct` enum('A','B','C','D') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '正确答案',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否删除：0否1是',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='答题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_answer_list`
--

LOCK TABLES `jsyfb_answer_list` WRITE;
/*!40000 ALTER TABLE `jsyfb_answer_list` DISABLE KEYS */;
INSERT INTO `jsyfb_answer_list` VALUES (1,'法律规定，企业必须给职工缴足','五险一金','住房补贴',NULL,NULL,'A',1,0,'2019-09-10 04:16:00','2019-09-10 04:16:00');
/*!40000 ALTER TABLE `jsyfb_answer_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_attention`
--

DROP TABLE IF EXISTS `jsyfb_attention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_attention` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `role_id` tinyint(4) DEFAULT NULL COMMENT '角色id',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='我的关注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_attention`
--

LOCK TABLES `jsyfb_attention` WRITE;
/*!40000 ALTER TABLE `jsyfb_attention` DISABLE KEYS */;
INSERT INTO `jsyfb_attention` VALUES (1,357,10,'m',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(2,282,15,'r',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(3,80,13,'x',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(4,233,5,'m',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(5,86,20,'r',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(6,241,5,'c',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(7,450,5,'w',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(8,413,6,'v',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(9,322,17,'h',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(10,496,16,'g',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(11,86,15,'f',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(12,89,19,'q',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(13,294,11,'d',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(14,116,3,'y',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(15,482,18,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(16,101,8,'h',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(17,318,8,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(18,225,12,'h',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(19,393,10,'w',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(20,171,14,'c',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(21,349,5,'z',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(22,31,7,'o',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(23,187,1,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(24,54,15,'b',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(25,235,12,'f',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(26,348,8,'u',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(27,214,4,'i',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(28,92,10,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(29,280,6,'c',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(30,142,12,'f',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(31,193,2,'x',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(32,96,5,'v',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(33,396,19,'r',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(34,42,6,'h',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(35,7,17,'m',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(36,145,6,'b',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(37,459,16,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(38,78,15,'i',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(39,460,6,'u',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(40,159,19,'e',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(41,205,19,'k',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(42,429,8,'g',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(43,497,1,'b',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(44,267,4,'p',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(45,399,3,'m',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(46,254,11,'g',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(47,475,10,'z',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(48,148,1,'e',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(49,182,4,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(50,470,3,'d',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(51,82,16,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(52,358,18,'r',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(53,30,18,'g',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(54,302,7,'i',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(55,129,7,'x',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(56,459,5,'w',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(57,452,12,'c',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(58,462,17,'n',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(59,426,3,'j',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(60,403,19,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(61,186,2,'u',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(62,183,12,'b',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(63,363,16,'e',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(64,67,19,'m',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(65,325,7,'z',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(66,332,14,'d',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(67,181,7,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(68,22,7,'c',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(69,425,3,'l',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(70,141,8,'z',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(71,62,11,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(72,84,5,'e',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(73,156,15,'j',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(74,460,17,'b',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(75,456,19,'e',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(76,216,13,'g',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(77,71,10,'n',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(78,398,17,'b',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(79,11,14,'q',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(80,318,8,'k',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(81,310,6,'k',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(82,492,10,'m',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(83,216,4,'z',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(84,460,5,'u',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(85,445,15,'j',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(86,51,9,'e',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(87,101,17,'l',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(88,374,20,'k',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(89,2,17,'r',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(90,381,16,'y',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(91,174,1,'z',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(92,409,10,'d',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(93,76,14,'w',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(94,52,8,'t',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(95,486,20,'w',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(96,458,2,'s',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(97,363,2,'p',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(98,325,5,'v',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(99,31,6,'p',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13'),(100,282,15,'p',1,0,'2019-09-01 23:08:13','2019-09-01 23:08:13');
/*!40000 ALTER TABLE `jsyfb_attention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_balance`
--

DROP TABLE IF EXISTS `jsyfb_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_balance` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(4) DEFAULT NULL COMMENT '用户id',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '金额大小',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `balance-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='余额表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_balance`
--

LOCK TABLES `jsyfb_balance` WRITE;
/*!40000 ALTER TABLE `jsyfb_balance` DISABLE KEYS */;
INSERT INTO `jsyfb_balance` VALUES (1,14,4411.53,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(2,486,2204.89,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(3,50,1013.22,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(4,407,4237.48,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(5,185,532.77,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(6,54,626.24,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(7,342,3673.16,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(8,490,2836.27,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(9,29,3598.95,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(10,13,4620.14,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(11,157,710.24,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(12,461,3339.32,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(13,284,2299.18,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(14,363,1070.81,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(15,40,4125.71,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(16,326,2722.71,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(17,346,1531.48,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(18,229,3577.59,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(19,430,3191.40,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(20,422,2785.29,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(21,485,4966.51,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(22,484,3181.74,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(23,8,1640.88,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(24,348,2312.42,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(25,292,4181.48,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(26,453,4555.86,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(27,86,529.08,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(28,421,600.11,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(29,456,3218.53,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(30,234,1152.99,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(31,469,2480.07,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(32,335,1197.23,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(33,173,1977.40,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(34,480,1284.01,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(35,277,1131.05,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(36,64,1128.31,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(37,258,4129.80,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(38,249,1565.17,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(39,360,1217.27,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(40,355,1240.80,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(41,457,3059.18,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(42,361,3698.73,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(43,443,1624.23,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(44,1,1916.24,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(45,8,2106.87,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(46,393,873.44,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(47,376,3081.31,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(48,105,2532.39,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(49,472,2120.29,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(50,237,4604.09,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(51,344,1890.10,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(52,375,1779.62,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(53,73,721.00,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(54,160,1443.47,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(55,293,3859.93,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(56,14,3413.22,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(57,152,631.64,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(58,359,562.24,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(59,83,323.73,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(60,82,2455.36,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(61,486,3670.41,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(62,6,3034.67,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(63,486,682.50,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(64,368,3163.44,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(65,456,4005.14,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(66,329,1440.73,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(67,95,3321.95,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(68,161,3742.59,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(69,365,1384.27,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(70,65,2096.57,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(71,277,4059.59,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(72,393,3036.27,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(73,65,3680.21,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(74,308,1365.52,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(75,221,1534.73,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(76,427,1955.98,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(77,470,762.34,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(78,397,538.68,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(79,256,4404.94,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(80,357,530.28,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(81,40,3247.49,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(82,61,1147.63,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(83,35,710.31,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(84,105,2955.06,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(85,242,4842.14,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(86,407,4697.45,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(87,307,4175.68,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(88,305,944.04,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(89,496,2386.90,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(90,162,3004.47,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(91,1,3727.13,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(92,31,1293.03,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(93,362,4148.76,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(94,152,2134.42,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(95,466,2240.00,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(96,193,4740.32,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(97,236,3659.02,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(98,446,2137.69,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(99,219,2226.00,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47'),(100,357,1621.02,1,0,'2019-09-02 00:18:47','2019-09-02 00:18:47');
/*!40000 ALTER TABLE `jsyfb_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_balance_log`
--

DROP TABLE IF EXISTS `jsyfb_balance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_balance_log` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='钱包余额流水记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_balance_log`
--

LOCK TABLES `jsyfb_balance_log` WRITE;
/*!40000 ALTER TABLE `jsyfb_balance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_balance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_banner`
--

DROP TABLE IF EXISTS `jsyfb_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picname` varchar(50) DEFAULT NULL COMMENT '图片名称',
  `image_path` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_banner`
--

LOCK TABLES `jsyfb_banner` WRITE;
/*!40000 ALTER TABLE `jsyfb_banner` DISABLE KEYS */;
INSERT INTO `jsyfb_banner` VALUES (1,'轮播1','images/5969cf244ae9075d662b5b5d38754dac.jpg',1,1,0,'2019-09-10 07:26:37','2019-09-10 07:26:37'),(2,'轮播2','images/20181115212521.png',2,1,0,'2019-09-10 07:27:20','2019-09-10 07:27:20'),(3,'轮播3','images/20181115212611.png',3,1,0,'2019-09-10 07:27:47','2019-09-10 07:27:47'),(4,'轮播4','images/201811152124488.jpg',4,1,0,'2019-09-10 07:28:18','2019-09-10 07:28:18');
/*!40000 ALTER TABLE `jsyfb_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_browse_history`
--

DROP TABLE IF EXISTS `jsyfb_browse_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_browse_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `article_id` int(11) DEFAULT NULL COMMENT '文章id',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `history-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='浏览记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_browse_history`
--

LOCK TABLES `jsyfb_browse_history` WRITE;
/*!40000 ALTER TABLE `jsyfb_browse_history` DISABLE KEYS */;
INSERT INTO `jsyfb_browse_history` VALUES (1,1,1,1,0,'2019-09-04 06:29:21','2019-09-04 06:29:21'),(2,2,1,1,0,'2019-09-04 06:29:39','2019-09-04 06:29:39'),(3,3,1,1,0,'2019-09-04 06:29:58','2019-09-04 06:29:58'),(4,4,1,1,0,'2019-09-04 06:30:12','2019-09-04 06:30:12'),(5,5,1,1,0,'2019-09-04 06:30:28','2019-09-04 06:30:28');
/*!40000 ALTER TABLE `jsyfb_browse_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_business_category`
--

DROP TABLE IF EXISTS `jsyfb_business_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_business_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `descr` varchar(200) DEFAULT NULL COMMENT '内容描述',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='业务分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_business_category`
--

LOCK TABLES `jsyfb_business_category` WRITE;
/*!40000 ALTER TABLE `jsyfb_business_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_business_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_collection`
--

DROP TABLE IF EXISTS `jsyfb_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_collection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `article_id` int(11) DEFAULT NULL COMMENT '文章id',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `collection-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_collection`
--

LOCK TABLES `jsyfb_collection` WRITE;
/*!40000 ALTER TABLE `jsyfb_collection` DISABLE KEYS */;
INSERT INTO `jsyfb_collection` VALUES (1,1,2,1,0,'2019-09-02 22:15:29','2019-09-02 22:15:56');
/*!40000 ALTER TABLE `jsyfb_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_column`
--

DROP TABLE IF EXISTS `jsyfb_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `book_cate_id` smallint(11) DEFAULT NULL COMMENT '宝典分类id',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `column-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='已定专栏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_column`
--

LOCK TABLES `jsyfb_column` WRITE;
/*!40000 ALTER TABLE `jsyfb_column` DISABLE KEYS */;
INSERT INTO `jsyfb_column` VALUES (1,1,2,1,0,'2019-09-02 22:15:29','2019-09-02 22:15:56');
/*!40000 ALTER TABLE `jsyfb_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_coupon`
--

DROP TABLE IF EXISTS `jsyfb_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '优惠券名称',
  `total_num` int(11) DEFAULT NULL COMMENT '优惠券发放总数量',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='优惠券表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_coupon`
--

LOCK TABLES `jsyfb_coupon` WRITE;
/*!40000 ALTER TABLE `jsyfb_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_coupon_grant`
--

DROP TABLE IF EXISTS `jsyfb_coupon_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_coupon_grant` (
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
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0禁用1正常',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `grant-user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='优惠券发放/领取记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_coupon_grant`
--

LOCK TABLES `jsyfb_coupon_grant` WRITE;
/*!40000 ALTER TABLE `jsyfb_coupon_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_coupon_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_everyday_answer_record`
--

DROP TABLE IF EXISTS `jsyfb_everyday_answer_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_everyday_answer_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `answer_list_id` int(11) DEFAULT NULL COMMENT '问题id',
  `date` timestamp NULL DEFAULT NULL COMMENT '日期',
  `question` varchar(255) DEFAULT NULL COMMENT '问题',
  `answer` varchar(255) DEFAULT NULL COMMENT '答案',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `answer-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='每日答题记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_everyday_answer_record`
--

LOCK TABLES `jsyfb_everyday_answer_record` WRITE;
/*!40000 ALTER TABLE `jsyfb_everyday_answer_record` DISABLE KEYS */;
INSERT INTO `jsyfb_everyday_answer_record` VALUES (3,4,1,'2019-09-10 06:34:09','法律规定，企业必须给职工缴足','五险一金','2019-09-10 06:34:48','2019-09-10 06:34:48');
/*!40000 ALTER TABLE `jsyfb_everyday_answer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_exchange`
--

DROP TABLE IF EXISTS `jsyfb_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `code` varchar(255) DEFAULT NULL COMMENT '兑换码',
  `is_used` tinyint(4) DEFAULT NULL COMMENT '是否使用：0否1是',
  `used_time` timestamp NULL DEFAULT NULL COMMENT '使用时间',
  `expire_time` timestamp NULL DEFAULT NULL COMMENT '有效时间',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `

exchange` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='兑换码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_exchange`
--

LOCK TABLES `jsyfb_exchange` WRITE;
/*!40000 ALTER TABLE `jsyfb_exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_exclusive_legal_advice`
--

DROP TABLE IF EXISTS `jsyfb_exclusive_legal_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_exclusive_legal_advice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `customer_id` int(11) DEFAULT NULL COMMENT '法顾id',
  `content` text COMMENT '咨询内容',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='专属法顾咨询表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_exclusive_legal_advice`
--

LOCK TABLES `jsyfb_exclusive_legal_advice` WRITE;
/*!40000 ALTER TABLE `jsyfb_exclusive_legal_advice` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_exclusive_legal_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_hot_acticle`
--

DROP TABLE IF EXISTS `jsyfb_hot_acticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_hot_acticle` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '发布者id',
  `spec_id` int(11) DEFAULT NULL COMMENT '专家id',
  `content` text COMMENT '内容',
  `interpretation` text COMMENT '解读',
  `measures` text COMMENT '措施',
  `like_count` int(11) DEFAULT NULL COMMENT '点赞数',
  `sahre_count` int(11) DEFAULT NULL COMMENT '分享次数',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COMMENT='热门内容表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_hot_acticle`
--

LOCK TABLES `jsyfb_hot_acticle` WRITE;
/*!40000 ALTER TABLE `jsyfb_hot_acticle` DISABLE KEYS */;
INSERT INTO `jsyfb_hot_acticle` VALUES (16,NULL,1,'<blockquote><b>Accusantium sed similique qui ut dolore nihil.</b></blockquote><p>​<br></p>',NULL,NULL,831,NULL,0,0,'2019-09-01 21:15:06','2019-09-01 22:35:47'),(17,NULL,1,'Consequuntur voluptatem dolorum quia laudantium consequatur deleniti deleniti modi.',NULL,NULL,619,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(18,NULL,1,'Optio harum dignissimos minima est sapiente est omnis.',NULL,NULL,228,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(19,NULL,1,'Mollitia nesciunt autem debitis aspernatur reiciendis dolorum.',NULL,NULL,305,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(20,NULL,1,'Et et explicabo quaerat laborum laborum ipsa consequuntur.',NULL,NULL,297,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(21,NULL,NULL,'Aliquam quibusdam blanditiis commodi commodi non occaecati.',NULL,NULL,670,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(22,NULL,NULL,'Quae non voluptatum non dolor voluptatibus earum.',NULL,NULL,209,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(23,NULL,NULL,'Voluptate tempora provident quod vel reiciendis voluptatem amet.',NULL,NULL,710,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(24,NULL,NULL,'Quibusdam sint quae quisquam incidunt quidem est est beatae.',NULL,NULL,758,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(25,NULL,NULL,'Fugit quos eveniet dolorem blanditiis sint iure dolores.',NULL,NULL,876,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(26,NULL,NULL,'Suscipit voluptate veniam voluptatem sapiente dolores.',NULL,NULL,578,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(27,NULL,NULL,'Libero quam porro natus labore vitae amet iusto.',NULL,NULL,484,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(28,NULL,NULL,'Sint voluptate et sint dolorum.',NULL,NULL,475,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(29,NULL,NULL,'Asperiores vitae libero facere aut.',NULL,NULL,533,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(30,NULL,NULL,'Alias autem mollitia totam fuga aut.',NULL,NULL,288,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(31,NULL,NULL,'Natus mollitia qui quis dolore magnam temporibus ex.',NULL,NULL,963,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(32,NULL,NULL,'Beatae minus beatae consectetur voluptatem mollitia.',NULL,NULL,531,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(33,NULL,NULL,'Accusamus velit sint qui dolore.',NULL,NULL,943,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(34,NULL,NULL,'Animi ullam eos amet perspiciatis atque laborum.',NULL,NULL,432,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(35,NULL,NULL,'Molestias incidunt et molestiae nisi distinctio.',NULL,NULL,787,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(36,NULL,NULL,'Culpa illum aut et velit consequuntur.',NULL,NULL,623,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(37,NULL,NULL,'Est quos qui asperiores nemo.',NULL,NULL,323,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(38,NULL,NULL,'Possimus pariatur porro accusamus et.',NULL,NULL,814,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(39,NULL,NULL,'Qui quod impedit fugit ea est ullam.',NULL,NULL,352,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(40,NULL,NULL,'Quam accusamus ad accusantium quia ullam et.',NULL,NULL,569,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(41,NULL,NULL,'Aliquam ut odit non.',NULL,NULL,861,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(42,NULL,NULL,'Deleniti quaerat odio laboriosam ut qui aut dolores.',NULL,NULL,284,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(43,NULL,NULL,'Quod sequi ipsum delectus corporis consequuntur eaque.',NULL,NULL,997,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(44,NULL,NULL,'Consequatur et et odit sit possimus aut sint est.',NULL,NULL,331,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(45,NULL,NULL,'Quo dicta et cupiditate iure vitae.',NULL,NULL,363,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(46,NULL,NULL,'Laborum saepe laboriosam et asperiores labore ullam est.',NULL,NULL,626,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(47,NULL,NULL,'Expedita optio saepe voluptas nostrum.',NULL,NULL,555,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(48,NULL,NULL,'Blanditiis qui fugiat in aut.',NULL,NULL,864,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(49,NULL,NULL,'Aut beatae repellat ex dolorum in et voluptatem.',NULL,NULL,987,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(50,NULL,NULL,'Voluptas eos vel voluptas ipsa sed.',NULL,NULL,846,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(51,NULL,NULL,'Veritatis voluptate atque odio perferendis et esse harum.',NULL,NULL,472,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(52,NULL,NULL,'Voluptatibus eum sit qui ad sunt nostrum in.',NULL,NULL,515,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(53,NULL,NULL,'Illo iure quam laudantium ut rerum et.',NULL,NULL,371,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(54,NULL,NULL,'Provident non molestias animi.',NULL,NULL,443,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(55,NULL,NULL,'Cum rerum error nemo id debitis sed quia.',NULL,NULL,376,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(56,NULL,NULL,'Autem doloremque et asperiores reprehenderit velit mollitia quia.',NULL,NULL,229,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(57,NULL,NULL,'Molestiae corrupti ipsam vel quo voluptate.',NULL,NULL,346,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(58,NULL,NULL,'Sed facere tenetur odio qui repudiandae.',NULL,NULL,438,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(59,NULL,NULL,'Aut dolorem vel eligendi ut voluptatum.',NULL,NULL,752,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(60,NULL,NULL,'Sit laboriosam ea qui sit ratione rem.',NULL,NULL,687,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(61,NULL,NULL,'Nobis non excepturi distinctio eos.',NULL,NULL,601,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(62,NULL,NULL,'Quia necessitatibus dolores non corporis.',NULL,NULL,278,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(63,NULL,NULL,'Praesentium dignissimos sequi atque labore consequatur in.',NULL,NULL,868,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(64,NULL,NULL,'Eaque reprehenderit aut nisi molestiae ut consequuntur.',NULL,NULL,513,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(65,NULL,NULL,'Architecto corporis officia corporis dolor ut rerum.',NULL,NULL,681,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(66,NULL,NULL,'Deserunt porro temporibus laboriosam eum in.',NULL,NULL,806,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(67,NULL,NULL,'Minima quis aspernatur aut alias minima.',NULL,NULL,271,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(68,NULL,NULL,'Voluptatibus atque possimus ex nihil qui velit.',NULL,NULL,907,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(69,NULL,NULL,'Quaerat cum sed eveniet nulla sint quidem distinctio.',NULL,NULL,826,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(70,NULL,NULL,'Debitis vel et voluptatem a.',NULL,NULL,229,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(71,NULL,NULL,'Amet ratione consequatur blanditiis illum.',NULL,NULL,810,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(72,NULL,NULL,'Sed totam consequuntur ea.',NULL,NULL,440,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(73,NULL,NULL,'Saepe labore fuga occaecati.',NULL,NULL,229,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(74,NULL,NULL,'Qui sit accusamus ea at pariatur magnam et.',NULL,NULL,518,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(75,NULL,NULL,'Necessitatibus eveniet laboriosam sit aperiam id qui itaque.',NULL,NULL,395,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(76,NULL,NULL,'Odio nulla quia qui.',NULL,NULL,214,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(77,NULL,NULL,'Laudantium aliquid sunt et nam in incidunt est.',NULL,NULL,398,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(78,NULL,NULL,'Ut nobis dolore ut.',NULL,NULL,992,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(79,NULL,NULL,'Est quos vero consequatur ea alias nostrum similique.',NULL,NULL,905,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(80,NULL,NULL,'Consequatur eius in qui optio dolores possimus.',NULL,NULL,340,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(81,NULL,NULL,'Sint reiciendis laborum adipisci nihil corporis necessitatibus.',NULL,NULL,683,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(82,NULL,NULL,'Eius ipsum consequatur accusamus ullam modi.',NULL,NULL,642,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(83,NULL,NULL,'Voluptatem a in nemo.',NULL,NULL,402,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(84,NULL,NULL,'Pariatur iste et molestias ut officia numquam.',NULL,NULL,273,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(85,NULL,NULL,'Iste velit placeat magnam.',NULL,NULL,521,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(86,NULL,NULL,'Voluptatum omnis quis asperiores consequatur.',NULL,NULL,923,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(87,NULL,NULL,'Sequi autem et explicabo.',NULL,NULL,750,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(88,NULL,NULL,'Dolor veritatis veritatis est voluptas.',NULL,NULL,219,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(89,NULL,NULL,'Accusamus quibusdam harum rerum voluptas doloribus.',NULL,NULL,714,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(90,NULL,NULL,'Sunt reprehenderit sed et perferendis.',NULL,NULL,257,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(91,NULL,NULL,'Et fugiat quo reprehenderit quas voluptas ut rerum.',NULL,NULL,865,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(92,NULL,NULL,'Aperiam rerum quas suscipit ut quis et.',NULL,NULL,815,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(93,NULL,NULL,'Velit sed voluptatem laudantium voluptatem.',NULL,NULL,833,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(94,NULL,NULL,'Tempora architecto quod voluptas et.',NULL,NULL,796,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(95,NULL,NULL,'Quia sed delectus molestiae.',NULL,NULL,417,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(96,NULL,NULL,'Voluptatem adipisci vel consequatur ut ut.',NULL,NULL,327,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(97,NULL,NULL,'Ad pariatur a voluptatem eaque quia facilis tenetur atque.',NULL,NULL,956,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(98,NULL,NULL,'Ratione quaerat ratione ullam consectetur eum.',NULL,NULL,503,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(99,NULL,NULL,'Labore doloribus nisi molestias mollitia nam.',NULL,NULL,336,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(100,NULL,NULL,'Ab corporis minus ipsa alias velit autem.',NULL,NULL,395,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(101,NULL,NULL,'Atque sed libero voluptatum eum et voluptatum qui.',NULL,NULL,905,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(102,NULL,NULL,'Delectus saepe aut quis repellendus possimus quos non.',NULL,NULL,517,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(103,NULL,NULL,'Cupiditate quisquam quidem quibusdam.',NULL,NULL,1000,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(104,NULL,NULL,'Adipisci eligendi consequuntur eligendi error.',NULL,NULL,527,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(105,NULL,NULL,'Et error amet sunt possimus ut.',NULL,NULL,698,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(106,NULL,NULL,'Id rerum et voluptates beatae ex totam maxime.',NULL,NULL,348,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(107,NULL,NULL,'Aut necessitatibus consequatur sequi nihil voluptatibus.',NULL,NULL,350,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(108,NULL,NULL,'Rerum quia dolorum suscipit velit in.',NULL,NULL,906,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(109,NULL,NULL,'Ratione doloremque cum sed ducimus autem suscipit aperiam magni.',NULL,NULL,281,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(110,NULL,NULL,'Voluptatem enim earum labore soluta ex et.',NULL,NULL,716,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(111,NULL,NULL,'Sit earum autem quisquam est vel.',NULL,NULL,444,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(112,NULL,NULL,'Nihil commodi doloremque ea.',NULL,NULL,355,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(113,NULL,NULL,'Aut impedit molestias in minus et sint.',NULL,NULL,372,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(114,NULL,NULL,'Blanditiis dolorum ducimus quaerat necessitatibus in et explicabo culpa.',NULL,NULL,816,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(115,NULL,NULL,'Est earum qui autem sequi est et atque.',NULL,NULL,573,NULL,1,0,'2019-09-01 21:15:06','2019-09-01 21:15:06'),(116,NULL,1,'抢劫罪一般判多少年',NULL,NULL,0,NULL,1,0,'2019-09-09 06:34:49','2019-09-09 06:34:49');
/*!40000 ALTER TABLE `jsyfb_hot_acticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_hot_question`
--

DROP TABLE IF EXISTS `jsyfb_hot_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_hot_question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `cate_id` int(11) DEFAULT NULL COMMENT '分类id',
  `question` text COMMENT '问题',
  `answer` text COMMENT '答案',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='热门问题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_hot_question`
--

LOCK TABLES `jsyfb_hot_question` WRITE;
/*!40000 ALTER TABLE `jsyfb_hot_question` DISABLE KEYS */;
INSERT INTO `jsyfb_hot_question` VALUES (1,'常见1',NULL,'为什么总是这样','我也不知道',1,0,'2019-09-09 07:06:59','2019-09-09 07:06:59'),(2,'贷款产品介绍',NULL,'贷款产品介绍','贷款产品介绍',1,0,'2019-09-10 06:40:28','2019-09-10 06:40:28');
/*!40000 ALTER TABLE `jsyfb_hot_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_hot_question_category`
--

DROP TABLE IF EXISTS `jsyfb_hot_question_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_hot_question_category` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_hot_question_category`
--

LOCK TABLES `jsyfb_hot_question_category` WRITE;
/*!40000 ALTER TABLE `jsyfb_hot_question_category` DISABLE KEYS */;
INSERT INTO `jsyfb_hot_question_category` VALUES (50,'贷款产品介绍',0,NULL,0,'',1,0,'2019-09-10 07:19:11','2019-09-10 07:19:11'),(51,'房屋过户介绍',0,NULL,0,'',1,0,'2019-09-10 07:19:36','2019-09-10 07:19:36'),(52,'功能使用指南',0,NULL,0,'',1,0,'2019-09-10 07:20:02','2019-09-10 07:20:02'),(53,'按揭贷款',50,NULL,0,'',1,0,'2019-09-10 07:20:37','2019-09-10 07:20:37'),(54,'车辆贷款',50,NULL,0,'',1,0,'2019-09-10 07:21:12','2019-09-10 07:21:12'),(55,'消费贷款',50,NULL,0,'',1,0,'2019-09-10 07:21:35','2019-09-10 07:21:35'),(56,'信用贷款',50,NULL,0,'',1,0,'2019-09-10 07:21:50','2019-09-10 07:21:50');
/*!40000 ALTER TABLE `jsyfb_hot_question_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_ingots`
--

DROP TABLE IF EXISTS `jsyfb_ingots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_ingots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `expire_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '到期时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ingots-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='元宝表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_ingots`
--

LOCK TABLES `jsyfb_ingots` WRITE;
/*!40000 ALTER TABLE `jsyfb_ingots` DISABLE KEYS */;
INSERT INTO `jsyfb_ingots` VALUES (1,493,31,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(2,248,196,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(3,231,170,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(4,291,159,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(5,251,71,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(6,200,67,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(7,334,56,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(8,451,134,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(9,409,100,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(10,149,85,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(11,128,87,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(12,110,43,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(13,110,160,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(14,454,3,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(15,253,108,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(16,227,162,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(17,155,99,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(18,249,145,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(19,29,152,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(20,469,108,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(21,262,6,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(22,144,47,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(23,194,171,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(24,304,143,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(25,497,138,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(26,406,110,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(27,462,2,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(28,24,156,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(29,155,100,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(30,242,84,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(31,151,175,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(32,86,134,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(33,89,195,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(34,255,105,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(35,6,110,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(36,77,86,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(37,396,101,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(38,115,17,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(39,180,26,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(40,441,14,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(41,47,100,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(42,82,4,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(43,412,46,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(44,370,118,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(45,438,157,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(46,5,191,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(47,414,69,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(48,10,24,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(49,274,126,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(50,16,101,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(51,10,185,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(52,492,13,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(53,166,76,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(54,479,30,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(55,437,145,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(56,369,189,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(57,337,43,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(58,441,199,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(59,72,111,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(60,237,94,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(61,298,194,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(62,296,73,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(63,279,136,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(64,109,173,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(65,301,45,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(66,499,146,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(67,237,167,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(68,312,99,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(69,327,121,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(70,306,138,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(71,34,186,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(72,258,160,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(73,328,115,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(74,185,192,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(75,496,19,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(76,134,161,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(77,341,152,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(78,284,39,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(79,367,182,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(80,40,156,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(81,329,6,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(82,174,152,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(83,80,106,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(84,373,199,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(85,109,195,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(86,413,69,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(87,224,140,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(88,207,90,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(89,128,147,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(90,199,6,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(91,303,41,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(92,456,79,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(93,160,114,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(94,127,49,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(95,74,5,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(96,370,141,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(97,27,13,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(98,343,145,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(99,303,161,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29'),(100,115,14,1,0,'2019-09-02 00:36:29','2019-09-02 00:36:29','2019-09-02 00:36:29');
/*!40000 ALTER TABLE `jsyfb_ingots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_ingots_log`
--

DROP TABLE IF EXISTS `jsyfb_ingots_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_ingots_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `cost` decimal(11,2) DEFAULT NULL COMMENT '数量',
  `descr` varchar(200) DEFAULT NULL COMMENT '描述',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型：1增加2减少',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `remark` varchar(200) DEFAULT NULL COMMENT '到期时间',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ingots-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='元宝流水记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_ingots_log`
--

LOCK TABLES `jsyfb_ingots_log` WRITE;
/*!40000 ALTER TABLE `jsyfb_ingots_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_ingots_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_laywer`
--

DROP TABLE IF EXISTS `jsyfb_laywer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_laywer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `title` varchar(50) DEFAULT NULL COMMENT '头衔',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(15) DEFAULT NULL COMMENT '固定电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `wechat` varchar(30) DEFAULT NULL COMMENT '微信号码',
  `company` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `cate_id` int(10) DEFAULT NULL COMMENT '律师职务分类',
  `summary` text COMMENT '职位描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `laywer-name-mobile` (`name`(191),`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='律师事务所表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_laywer`
--

LOCK TABLES `jsyfb_laywer` WRITE;
/*!40000 ALTER TABLE `jsyfb_laywer` DISABLE KEYS */;
INSERT INTO `jsyfb_laywer` VALUES (1,'律师甲','执业律师','13655454556','07711515155',NULL,NULL,NULL,'江城律师事务所',1,'地产，婚姻家庭，医药行业',1,0,'2019-09-09 08:14:00','2019-09-09 08:14:00'),(2,'律师乙','执业律师','17788486595','07711515155',NULL,NULL,NULL,'江城律师事务所',NULL,'地产，婚姻家庭',1,0,'2019-09-09 08:21:41','2019-09-09 08:21:41');
/*!40000 ALTER TABLE `jsyfb_laywer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_laywer-bak`
--

DROP TABLE IF EXISTS `jsyfb_laywer-bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_laywer-bak` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `class_id` tinyint(4) DEFAULT NULL COMMENT '职务分类id',
  `level` tinyint(4) DEFAULT NULL COMMENT '等级',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔，职务',
  `expertise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '擅长业务',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='律师表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_laywer-bak`
--

LOCK TABLES `jsyfb_laywer-bak` WRITE;
/*!40000 ALTER TABLE `jsyfb_laywer-bak` DISABLE KEYS */;
INSERT INTO `jsyfb_laywer-bak` VALUES (1,'Dr. Kiara Stark',1,2,'Foundry Mold and Coremaker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(2,'Erling Schimmel',1,1,'Floor Finisher',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(3,'Dr. Schuyler Wintheiser DVM',1,5,'Financial Examiner',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(4,'Prof. Keyon Beahan III',2,3,'Precision Mold and Pattern Caster',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(5,'Sanford Dickens',2,2,'Fire Fighter',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(6,'Travis Hirthe II',4,2,'Housekeeping Supervisor',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(7,'Dawn Rath',3,5,'Transit Police OR Railroad Police',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(8,'Erwin Kerluke MD',1,5,'Stock Broker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(9,'Rusty Cronin DVM',1,4,'Horticultural Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(10,'Nigel Collier',3,1,'Marine Architect',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(11,'Jamie Hessel',5,2,'Insulation Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(12,'Gisselle Schiller',2,3,'Petroleum Technician',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(13,'Dr. Ezra Schinner',1,1,'Food Cooking Machine Operators',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(14,'Ashlynn Haley',5,4,'Forest and Conservation Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(15,'Alek Hermann I',2,3,'Multi-Media Artist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(16,'Ms. Gerda Beer',3,4,'Cleaners of Vehicles',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(17,'Constantin Macejkovic',2,1,'Command Control Center Specialist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(18,'Margaretta Aufderhar',5,5,'Tax Examiner',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(19,'Rick Price PhD',1,2,'Illustrator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(20,'Mr. Arvid Bartell V',4,2,'Roustabouts',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(21,'Shana Cremin',4,4,'Mechanical Inspector',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(22,'Coralie Rice',1,4,'Glazier',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(23,'Mitchell Hessel',3,2,'Railroad Conductors',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(24,'Dr. Randy Hansen',4,5,'Coil Winders',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(25,'Delia Casper',2,1,'Staff Psychologist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(26,'Rosemarie Mosciski',5,5,'Podiatrist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(27,'Sierra Friesen',3,3,'Electrical Engineer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(28,'Mr. Kevon Padberg DVM',4,5,'Surveying and Mapping Technician',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(29,'Miss Gudrun Dietrich V',2,4,'Mechanical Door Repairer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(30,'Zena Gleason IV',4,3,'Nursery Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(31,'Gabriella O\'Conner',1,4,'Teacher',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(32,'Arnaldo D\'Amore',2,1,'Sales Manager',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(33,'Willow Baumbach',3,2,'First-Line Supervisor-Manager of Landscaping, Lawn Service, and Groundskeeping Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(34,'Lauren Collier V',2,5,'Marine Cargo Inspector',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(35,'Keagan Powlowski',4,1,'Command Control Center Officer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(36,'Eli Ullrich',3,1,'Aircraft Mechanics OR Aircraft Service Technician',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(37,'Prof. Marvin Rosenbaum',4,2,'Traffic Technician',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(38,'Manuela Prosacco',2,5,'Recreational Therapist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(39,'Mateo Parisian MD',3,2,'Agricultural Crop Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(40,'Ms. Maegan Cassin II',2,5,'Laundry OR Dry-Cleaning Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(41,'Dr. Freddie Bradtke MD',3,3,'Aircraft Engine Specialist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(42,'Chasity Smitham',2,5,'Ambulance Driver',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(43,'Antoinette Trantow',3,1,'Locomotive Firer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(44,'Edyth Hoppe',1,1,'Truck Driver',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(45,'Maymie Lowe',1,2,'Food Scientists and Technologist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(46,'Mr. Tito Schneider',5,1,'Sociologist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(47,'Prof. Kadin Smith',1,2,'Segmental Paver',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(48,'Felipa Rempel',3,1,'Auditor',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(49,'Dr. Jeremy O\'Conner',2,3,'Ship Engineer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(50,'Reagan Davis',4,4,'Securities Sales Agent',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(51,'Rosie Schimmel',4,4,'Computer-Controlled Machine Tool Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(52,'Ewell Bechtelar',2,5,'Roof Bolters Mining',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(53,'Golden Daniel',1,3,'Pastry Chef',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(54,'Dr. Bryce Zemlak',2,4,'Cashier',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(55,'Prof. Roslyn Schaden',4,2,'Gaming Surveillance Officer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(56,'Ms. Breanna Denesik II',4,4,'Railroad Inspector',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(57,'Milo Carroll',1,3,'Courier',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(58,'Prof. Elsie Sauer V',1,4,'Financial Specialist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(59,'Kaylie Monahan',3,4,'Broadcast News Analyst',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(60,'Jayce Kunde',2,1,'Pediatricians',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(61,'Marcella Rippin',1,4,'Camera Repairer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(62,'Lavinia Halvorson',1,2,'Dietetic Technician',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(63,'Austyn Howell',1,4,'Occupational Health Safety Specialist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(64,'Dahlia Mitchell',5,4,'Photographic Restorer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(65,'Leanna Cartwright',2,3,'Explosives Expert',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(66,'Ms. Shyanne Rau DDS',3,2,'Cartoonist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(67,'Estel Stark',4,1,'Loan Counselor',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(68,'Miss Kaela Ondricka',5,2,'Heating Equipment Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(69,'Maia Cremin',2,5,'Physical Scientist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(70,'Dr. Jazmin Torp II',4,1,'Traffic Technician',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(71,'Prof. Nathanael Streich PhD',4,2,'Animal Care Workers',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(72,'Deshaun Bradtke',3,1,'Maid',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(73,'Khalid Sauer',1,1,'System Administrator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(74,'Judge Parker',5,3,'Coroner',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(75,'Jessyca Deckow',2,5,'Recreation Worker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(76,'Zaria Lesch',3,4,'Explosives Expert',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(77,'Mr. Riley Kuhlman PhD',5,5,'Machine Tool Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(78,'Darius Buckridge',1,1,'Crushing Grinding Machine Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(79,'Verla Green DVM',2,3,'Word Processors and Typist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(80,'Tito Kilback Jr.',1,3,'City Planning Aide',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(81,'Ernestine Swaniawski',1,3,'Credit Checker',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(82,'Greta Heaney',5,2,'Central Office',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(83,'Kirk Mayert',5,4,'Architecture Teacher',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(84,'Dr. Rey Roob DVM',2,1,'Marine Architect',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(85,'David Hand',2,5,'Semiconductor Processor',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(86,'Adeline Lowe',5,1,'Stevedore',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(87,'Mandy Lynch',1,4,'Welder',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(88,'Dr. Shanny Mosciski',3,3,'Private Detective and Investigator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(89,'Dawson Waelchi',2,1,'Motorboat Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(90,'Christelle Jacobs',1,5,'Mixing and Blending Machine Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(91,'Prof. Maiya Blick III',4,3,'Etcher',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(92,'Reta Hoeger',1,2,'Fabric Mender',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(93,'Miss Princess Huel I',3,2,'Coaches and Scout',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(94,'Adriana Corwin',5,2,'Mine Cutting Machine Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(95,'Ally Moore',3,5,'Shampooer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(96,'Ms. Annamae Schmidt Sr.',3,2,'Sociologist',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(97,'Mr. Janick Vandervort MD',2,3,'Financial Examiner',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(98,'Oren Wunsch',3,4,'Fence Erector',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(99,'Heath Stamm',4,1,'Eligibility Interviewer',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51'),(100,'Talon Blanda II',2,4,'Plant and System Operator',NULL,1,0,'2019-09-01 21:33:51','2019-09-01 21:33:51');
/*!40000 ALTER TABLE `jsyfb_laywer-bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_legal_book`
--

DROP TABLE IF EXISTS `jsyfb_legal_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_legal_book` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_legal_book`
--

LOCK TABLES `jsyfb_legal_book` WRITE;
/*!40000 ALTER TABLE `jsyfb_legal_book` DISABLE KEYS */;
INSERT INTO `jsyfb_legal_book` VALUES (1,'资产',2,'<p></p><p>1515151</p>',1,0,'2019-09-03 18:39:53','2019-09-03 18:39:53');
/*!40000 ALTER TABLE `jsyfb_legal_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_legal_book_category`
--

DROP TABLE IF EXISTS `jsyfb_legal_book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_legal_book_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '主题',
  `parent_id` tinyint(4) DEFAULT NULL COMMENT '宝典分类id',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `order` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COMMENT='宝典分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_legal_book_category`
--

LOCK TABLES `jsyfb_legal_book_category` WRITE;
/*!40000 ALTER TABLE `jsyfb_legal_book_category` DISABLE KEYS */;
INSERT INTO `jsyfb_legal_book_category` VALUES (1,'婚姻',0,NULL,1,0,'2019-09-02 15:48:55','2019-09-02 15:48:55',0,''),(2,'养老',0,NULL,1,0,'2019-09-02 15:49:24','2019-09-02 15:49:24',0,''),(3,'医疗',0,NULL,1,0,'2019-09-02 16:01:33','2019-09-02 16:01:33',0,''),(4,'就业和创业',0,NULL,1,0,'2019-09-02 15:49:48','2019-09-02 15:49:48',0,''),(5,'教育',0,NULL,1,0,'2019-09-02 15:50:08','2019-09-02 15:50:08',0,''),(6,'投资',0,NULL,1,0,'2019-09-02 15:50:21','2019-09-02 15:50:21',0,''),(7,'婚前财产',1,NULL,1,0,'2019-09-02 15:50:46','2019-09-02 15:50:46',0,''),(8,'婚内财产',1,NULL,1,0,'2019-09-02 15:51:14','2019-09-02 15:51:14',0,''),(9,'离婚',1,NULL,1,0,'2019-09-02 15:51:31','2019-09-02 15:51:31',0,''),(10,'继承',1,NULL,1,0,'2019-09-02 15:51:45','2019-09-02 15:51:45',0,''),(11,'遗赠抚养',2,NULL,1,0,'2019-09-02 15:52:20','2019-09-02 15:52:20',0,''),(12,'意定监护',2,NULL,1,0,'2019-09-02 15:52:54','2019-09-02 15:52:54',0,''),(13,'遗嘱',2,NULL,1,0,'2019-09-02 15:53:09','2019-09-02 15:53:09',0,''),(14,'虐待老人问题',2,NULL,1,0,'2019-09-02 15:53:25','2019-09-02 15:53:25',0,''),(15,'医疗保险',3,NULL,1,0,'2019-09-02 15:53:43','2019-09-02 15:53:43',0,''),(16,'医疗事故',3,NULL,1,0,'2019-09-02 15:54:00','2019-09-02 15:54:00',0,''),(17,'交通事故',3,NULL,1,0,'2019-09-02 15:54:12','2019-09-02 15:54:12',0,''),(18,'招人',4,NULL,1,0,'2019-09-02 15:54:29','2019-09-02 15:54:29',0,''),(19,'找工作',4,NULL,1,0,'2019-09-02 15:54:46','2019-09-02 15:54:46',0,''),(20,'劳动合同',4,NULL,1,0,'2019-09-02 15:55:00','2019-09-02 15:55:00',0,''),(21,'劳动纠纷',4,NULL,1,0,'2019-09-02 15:55:14','2019-09-02 15:55:14',0,''),(22,'学校监护责任',5,NULL,1,0,'2019-09-02 15:55:36','2019-09-02 15:55:36',0,''),(23,'人身伤害',5,NULL,1,0,'2019-09-02 15:55:52','2019-09-02 15:55:52',0,''),(24,'法制教育',5,NULL,1,0,'2019-09-02 15:56:07','2019-09-02 15:56:07',0,''),(25,'房子',6,NULL,1,0,'2019-09-02 15:56:21','2019-09-02 15:56:21',0,''),(26,'车子',6,NULL,1,0,'2019-09-02 15:56:36','2019-09-02 15:56:36',0,''),(27,'股票',6,NULL,1,0,'2019-09-02 15:56:50','2019-09-02 15:56:50',0,''),(28,'民间借贷',6,NULL,1,0,'2019-09-02 15:57:19','2019-09-02 15:57:19',0,''),(30,'债权',9,NULL,1,0,'2019-09-02 16:05:39','2019-09-02 16:05:39',0,''),(31,'债务',9,NULL,1,0,'2019-09-02 16:05:52','2019-09-02 16:05:52',0,''),(32,'子女抚养',9,NULL,1,0,'2019-09-02 16:06:05','2019-09-02 16:06:05',0,''),(33,'买房',25,NULL,1,0,'2019-09-02 16:06:48','2019-09-02 16:06:48',0,''),(34,'卖方',25,NULL,1,0,'2019-09-02 16:07:01','2019-09-02 16:07:01',0,''),(35,'租房',25,NULL,1,0,'2019-09-02 16:07:13','2019-09-02 16:07:13',0,''),(36,'买车',26,NULL,1,0,'2019-09-02 16:07:54','2019-09-02 16:07:54',0,''),(37,'卖车',26,NULL,1,0,'2019-09-02 16:08:09','2019-09-02 16:08:09',0,''),(38,'租车',26,NULL,1,0,'2019-09-02 16:08:23','2019-09-02 16:08:23',0,''),(39,'股票转让',27,NULL,1,0,'2019-09-02 16:08:56','2019-09-02 16:08:56',0,''),(40,'股票继承',27,NULL,1,0,'2019-09-02 16:09:11','2019-09-02 16:09:11',0,''),(41,'出借人',28,NULL,1,0,'2019-09-02 16:10:00','2019-09-02 16:10:00',0,''),(42,'借款人',28,NULL,1,0,'2019-09-02 16:10:13','2019-09-02 16:10:13',0,''),(43,'出租方',35,NULL,1,0,'2019-09-02 16:11:03','2019-09-02 16:11:03',0,''),(44,'承租方',35,NULL,1,0,'2019-09-02 16:11:16','2019-09-02 16:11:16',0,''),(45,'出租人',38,NULL,1,0,'2019-09-02 16:11:50','2019-09-02 16:11:50',0,''),(46,'租车人',38,NULL,1,0,'2019-09-02 16:12:26','2019-09-02 16:12:26',0,''),(48,'test222',0,'/',1,0,'2019-09-02 17:13:22','2019-09-02 17:13:49',0,''),(49,'test333',48,'/',1,0,'2019-09-02 17:14:29','2019-09-02 17:14:29',0,'');
/*!40000 ALTER TABLE `jsyfb_legal_book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_member`
--

DROP TABLE IF EXISTS `jsyfb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `cost` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '消费金额',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `expire_time` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `member-user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='vip会员购买记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_member`
--

LOCK TABLES `jsyfb_member` WRITE;
/*!40000 ALTER TABLE `jsyfb_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_message`
--

DROP TABLE IF EXISTS `jsyfb_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(15) NOT NULL COMMENT '手机号码',
  `content` text COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `message-username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='留言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_message`
--

LOCK TABLES `jsyfb_message` WRITE;
/*!40000 ALTER TABLE `jsyfb_message` DISABLE KEYS */;
INSERT INTO `jsyfb_message` VALUES (1,'jack','13354881555','111',1,0,'2019-09-05 07:07:06','2019-09-05 07:07:09');
/*!40000 ALTER TABLE `jsyfb_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_mortgage`
--

DROP TABLE IF EXISTS `jsyfb_mortgage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_mortgage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mortgage_type` tinyint(4) DEFAULT NULL COMMENT '贷款类型：1商业贷款，2公积金贷款，3组合贷款',
  `total` decimal(10,0) DEFAULT NULL COMMENT '商贷总额',
  `years` tinyint(4) DEFAULT NULL COMMENT '商贷年限',
  `rates` decimal(10,0) DEFAULT NULL COMMENT '商贷利率',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房贷计算表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_mortgage`
--

LOCK TABLES `jsyfb_mortgage` WRITE;
/*!40000 ALTER TABLE `jsyfb_mortgage` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_mortgage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_notary_office`
--

DROP TABLE IF EXISTS `jsyfb_notary_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_notary_office` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(15) DEFAULT NULL COMMENT '固定电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `wechat` varchar(30) DEFAULT NULL COMMENT '微信号码',
  `summary` varchar(200) DEFAULT NULL COMMENT '简介',
  `comments_count` int(11) DEFAULT NULL COMMENT '评论总数',
  `avg_point` decimal(10,2) DEFAULT NULL COMMENT '服务分',
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_notary_office`
--

LOCK TABLES `jsyfb_notary_office` WRITE;
/*!40000 ALTER TABLE `jsyfb_notary_office` DISABLE KEYS */;
INSERT INTO `jsyfb_notary_office` VALUES (1,'南宁市贵南公证处','13548629599','07711515155','gxlclizongjun@163.com','151518723','weakfnei','测试',1,5.00,'广西南宁市济南路23-5号',105.1241,203.5241,1,0,'2019-09-09 09:21:10','2019-09-09 09:22:12');
/*!40000 ALTER TABLE `jsyfb_notary_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_notary_office_comment`
--

DROP TABLE IF EXISTS `jsyfb_notary_office_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_notary_office_comment` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='公证处评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_notary_office_comment`
--

LOCK TABLES `jsyfb_notary_office_comment` WRITE;
/*!40000 ALTER TABLE `jsyfb_notary_office_comment` DISABLE KEYS */;
INSERT INTO `jsyfb_notary_office_comment` VALUES (1,1,1,5,'55','2019-09-10 01:26:17','2019-09-10 01:26:19');
/*!40000 ALTER TABLE `jsyfb_notary_office_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_notice`
--

DROP TABLE IF EXISTS `jsyfb_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `cate_id` int(11) NOT NULL COMMENT '消息分类id',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0未读1已读',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `notice-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_notice`
--

LOCK TABLES `jsyfb_notice` WRITE;
/*!40000 ALTER TABLE `jsyfb_notice` DISABLE KEYS */;
INSERT INTO `jsyfb_notice` VALUES (1,1,1,'desc','555',0,'2019-09-09 03:07:16','2019-09-09 03:07:19');
/*!40000 ALTER TABLE `jsyfb_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_service_reservation`
--

DROP TABLE IF EXISTS `jsyfb_service_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_service_reservation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `service_id` int(11) DEFAULT NULL COMMENT '服务id',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `service-user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='服务预约表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_service_reservation`
--

LOCK TABLES `jsyfb_service_reservation` WRITE;
/*!40000 ALTER TABLE `jsyfb_service_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_service_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_specialist`
--

DROP TABLE IF EXISTS `jsyfb_specialist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_specialist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `class_id` tinyint(4) DEFAULT NULL COMMENT '职务分类id',
  `level` tinyint(4) DEFAULT NULL COMMENT '等级',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职务、头衔',
  `expertise` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '擅长业务',
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '固定电话',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位名称',
  `comments_count` int(11) DEFAULT NULL COMMENT '评论总数',
  `avg_point` decimal(10,0) DEFAULT NULL COMMENT '服务平均分',
  `summary` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='专家表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_specialist`
--

LOCK TABLES `jsyfb_specialist` WRITE;
/*!40000 ALTER TABLE `jsyfb_specialist` DISABLE KEYS */;
INSERT INTO `jsyfb_specialist` VALUES (1,'jone',2,2,'speew','婚姻家庭','15678837703','07711515155','江城律师事务所',1,5,'地产，婚姻家庭，医药行业',1,0,'2019-09-02 19:19:18','2019-09-09 09:05:03');
/*!40000 ALTER TABLE `jsyfb_specialist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_specialist_advice`
--

DROP TABLE IF EXISTS `jsyfb_specialist_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_specialist_advice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `spec_id` int(11) NOT NULL COMMENT '专家id',
  `cate_id` int(11) DEFAULT NULL COMMENT '专家分类id',
  `question` text COMMENT '问题描述',
  `interpretation` text COMMENT '解读',
  `measures` text COMMENT '措施',
  `like_count` int(11) DEFAULT NULL COMMENT '点赞数',
  `share_count` int(11) DEFAULT NULL COMMENT '分享次数',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `advice-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='专家咨询表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_specialist_advice`
--

LOCK TABLES `jsyfb_specialist_advice` WRITE;
/*!40000 ALTER TABLE `jsyfb_specialist_advice` DISABLE KEYS */;
INSERT INTO `jsyfb_specialist_advice` VALUES (1,4,1,NULL,'<p></p><p>解决一下生活问题</p>','没办法','自行处理',1,1,1,0,'2019-09-10 08:18:07','2019-09-10 08:18:07');
/*!40000 ALTER TABLE `jsyfb_specialist_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_specialist_comment`
--

DROP TABLE IF EXISTS `jsyfb_specialist_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_specialist_comment` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_specialist_comment`
--

LOCK TABLES `jsyfb_specialist_comment` WRITE;
/*!40000 ALTER TABLE `jsyfb_specialist_comment` DISABLE KEYS */;
INSERT INTO `jsyfb_specialist_comment` VALUES (1,1,1,5,'55','2019-09-10 01:26:17','2019-09-10 01:26:19');
/*!40000 ALTER TABLE `jsyfb_specialist_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_taxes`
--

DROP TABLE IF EXISTS `jsyfb_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `house_type` tinyint(4) DEFAULT NULL COMMENT '房屋类型：1二手房2新房',
  `house_source` tinyint(4) DEFAULT NULL COMMENT '房屋来源：1买卖2集成3直系赠与4非直系赠与',
  `property_type` tinyint(4) DEFAULT NULL COMMENT '产权类型：1住宅2非住宅',
  `property_years` tinyint(4) DEFAULT NULL COMMENT '产权年限：1=>不满2年，2=>满2年不满5年，3=>满5年',
  `area` decimal(10,0) DEFAULT NULL COMMENT '房屋面积',
  `netprice` decimal(10,0) DEFAULT NULL COMMENT '网签价格',
  `original` decimal(10,0) DEFAULT NULL COMMENT '房屋原价',
  `is_only` tinyint(4) DEFAULT NULL COMMENT '房屋是否唯一：1是2否',
  `house_quantities` tinyint(4) DEFAULT NULL COMMENT '买方家庭套数：1首套，2二套，3三套及以上',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='税费计算表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_taxes`
--

LOCK TABLES `jsyfb_taxes` WRITE;
/*!40000 ALTER TABLE `jsyfb_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_user`
--

DROP TABLE IF EXISTS `jsyfb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '手机号码',
  `inviter_id` int(11) DEFAULT NULL COMMENT '邀请人id',
  `descr` varchar(200) DEFAULT NULL COMMENT '描述',
  `login_num` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `reg_ip` varchar(20) DEFAULT NULL COMMENT '注册ip',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '上次登录ip',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',
  `is_verified` tinyint(4) DEFAULT NULL COMMENT '是否验证：0否1是',
  `balance` decimal(10,0) DEFAULT NULL COMMENT '账号钱包余额',
  `remember_token` varchar(100) DEFAULT NULL COMMENT '记住我',
  `ingots` int(11) DEFAULT NULL COMMENT '法宝数量',
  `invitation_code` varchar(20) DEFAULT NULL COMMENT '邀请码',
  `is_vip` tinyint(4) DEFAULT NULL COMMENT '是否vip会员：0否1是',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用1正常',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_user`
--

LOCK TABLES `jsyfb_user` WRITE;
/*!40000 ALTER TABLE `jsyfb_user` DISABLE KEYS */;
INSERT INTO `jsyfb_user` VALUES (1,'admin0','$2y$10$u8sYmc1tqDO8/hfkNsncruswlaQ19A6zUn2rdeqmK3QDUjTrNbWP.',NULL,NULL,NULL,'15678837701',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2019-09-06 06:27:32','2019-09-06 06:27:32'),(3,'admin1','$2y$10$JR/rR6Scoe1OhnV4MHVwre1NG4fLtqukxiiMcMm11ZElXCkl3nm3.',NULL,NULL,NULL,'15678837702',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'jsuCs1fd8WSsXxnVBLMYD62X2kCLMh4Cahv5QthOF9vy63KhfWpRP7xjIlQ7',NULL,'8aa35d',NULL,1,0,'2019-09-06 06:32:40','2019-09-06 06:32:40'),(4,'admin3','$2y$10$IHwgmSqoUBRF8Ju8NjN4zOjvdzoA42urM6sdfz.Mg7TGCAcg0GFt2',NULL,NULL,NULL,'15678837703',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'VIic78TXC3BHW5oqNbB61pkREfhy8D8P6zAQSDMXYhCftc1zN4rxovJsZZiL',NULL,'86b27a',NULL,1,0,'2019-09-06 06:50:00','2019-09-06 06:50:00'),(5,'admin4','$2y$10$rzDQc8Ni09SEwtFPnzKkQudYuyZv4qoP1EnB4EVWa2aiJEldDo09C',NULL,NULL,NULL,'15678837704',NULL,NULL,1,'','127.0.0.1','2019-09-06 07:43:02',NULL,NULL,'J3QTjrc9xB9ZEKHhASfYDO50fZfTEuj1Gkz9Fe2OhhWfEKWIb2xNegxUrF7k',NULL,'b09493',NULL,1,0,'2019-09-06 06:51:39','2019-09-06 07:43:02'),(6,'admin5','$2y$10$WxZiza3M/K3IdnJZExheBu6m//eahbX6JV1FsrKZvkTrDyb3Ucze6',NULL,NULL,NULL,'15678837705',NULL,NULL,0,'127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,'ce2010',NULL,1,0,'2019-09-06 06:53:32','2019-09-06 06:53:32');
/*!40000 ALTER TABLE `jsyfb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_user_authentication`
--

DROP TABLE IF EXISTS `jsyfb_user_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_user_authentication` (
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
  `review_at` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `veritied_at` timestamp NULL DEFAULT NULL COMMENT '认证通过时间',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '提交申请时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `identity-user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='实名认证表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_user_authentication`
--

LOCK TABLES `jsyfb_user_authentication` WRITE;
/*!40000 ALTER TABLE `jsyfb_user_authentication` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_user_authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_user_sign`
--

DROP TABLE IF EXISTS `jsyfb_user_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_user_sign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `sign_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '连续签到次数',
  `count` int(11) DEFAULT NULL COMMENT '签到总次数',
  `last_sign_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次签到时间',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '首次签到时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `sign-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户签到表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_user_sign`
--

LOCK TABLES `jsyfb_user_sign` WRITE;
/*!40000 ALTER TABLE `jsyfb_user_sign` DISABLE KEYS */;
INSERT INTO `jsyfb_user_sign` VALUES (1,1,1,1,'2019-09-09 03:59:00','2019-09-09 02:31:45','2019-09-09 02:31:48');
/*!40000 ALTER TABLE `jsyfb_user_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jsyfb_wechat_attention`
--

DROP TABLE IF EXISTS `jsyfb_wechat_attention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jsyfb_wechat_attention` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jsyfb_wechat_attention`
--

LOCK TABLES `jsyfb_wechat_attention` WRITE;
/*!40000 ALTER TABLE `jsyfb_wechat_attention` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsyfb_wechat_attention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_09_02_011305_create_member_table',2),(5,'2019_09_02_012346_create_jsyfb_member_table',3),(6,'2019_09_02_013426_create_jsyfb_acticle_comment_table',4),(7,'2019_09_02_014724_create_jsyfb_acticle_like_table',5),(8,'2019_09_02_015428_create_jsyfb_acticle_comment_table',6),(9,'2019_09_02_020913_create_jsyfb_answer_list_table',7),(10,'2019_09_02_021636_create_jsyfb_attention_table',8),(11,'2019_09_02_051822_create_jsyfb_laywer_table',9),(12,'2019_09_02_065424_create_jsyfb_attention_table',10),(13,'2019_09_02_070941_create_jsyfb_balance_table',11),(14,'2019_09_02_082648_create_jsyfb_ingots_table',12),(15,'2019_09_03_025013_create_jsyfb_specialist_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'joey','12345678@qq.com',NULL,'$2y$10$5up94BvllFwWSQ3TQzDrdOj87Do5jq30gHj6jtBfFPiqSG40rTxt.',NULL,'2019-09-06 04:33:46','2019-09-06 04:33:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10 16:43:12
