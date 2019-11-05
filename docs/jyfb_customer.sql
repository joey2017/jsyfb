/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50727
Source Host           : 127.0.0.1:3306
Source Database       : jsfb_com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-23 08:43:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jyfb_customer
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_customer`;
CREATE TABLE `jyfb_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kf_account` varchar(50) DEFAULT NULL COMMENT '客服账号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `kf_id` int(11) DEFAULT NULL COMMENT '客服工号',
  `kf_nick` varchar(30) DEFAULT NULL COMMENT '客服昵称',
  `kf_wx` varchar(64) DEFAULT NULL COMMENT '微信号',
  `kf_headimgurl` varchar(100) DEFAULT NULL COMMENT '头像',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1正常',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='客服表';

-- ----------------------------
-- Records of jyfb_customer
-- ----------------------------
INSERT INTO `jyfb_customer` VALUES ('13', 'kf2002@gh_f2d4ca265559', null, '2002', 'Joey', 'lzjwade_3', 'http://wx.qlogo.cn/mmhead/S87cRhSwZT1F6GmnA2EncXBFv4Tajf8m5c6vNyzqel8/0', '1', '2019-10-22 14:43:09', '2019-10-22 14:43:09');
