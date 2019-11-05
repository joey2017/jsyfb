/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50727
Source Host           : 127.0.0.1:3306
Source Database       : jsfb_com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-23 14:16:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jyfb_specialist_advice
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_specialist_advice`;
CREATE TABLE `jyfb_specialist_advice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `laywer_id` int(11) NOT NULL COMMENT '律师或专家id',
  `username` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别:1男2女',
  `mobile` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `type` tinyint(4) DEFAULT NULL COMMENT '案件类型：1房地产2公司诉讼3婚姻家庭4医药行业5劳动关系6民事纠纷7刑事纠纷8其他',
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
INSERT INTO `jyfb_specialist_advice` VALUES ('1', '4', '1', '9TDpYgAx', '1', '15645845151', '1', '<p></p><p>解决一下生活问题</p>', '<p></p><p></p><p>自行处理</p><p>我测试</p><p><br></p>', '1', '0', '2019-09-10 08:18:07', '2019-10-15 17:44:09');
