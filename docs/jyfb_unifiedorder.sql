/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50727
Source Host           : 127.0.0.1:3306
Source Database       : jsfb_com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-28 14:47:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jyfb_unifiedorder
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_unifiedorder`;
CREATE TABLE `jyfb_unifiedorder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '商户订单号',
  `description` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `total_fee` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
  `pay_status` tinyint(4) DEFAULT '0' COMMENT '支付状态：0待支付，1已支付，2已取消',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `unifiedorder-user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='微信支付统一下单支付表';

-- ----------------------------
-- Records of jyfb_unifiedorder
-- ----------------------------
INSERT INTO `jyfb_unifiedorder` VALUES ('1', '4', 'CZ2019102848495457', '使用微信支付充值法宝，支付总金额100分', '100.00', '0', '2019-10-28 14:46:56', '2019-10-28 14:46:56');
