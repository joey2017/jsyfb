/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50727
Source Host           : 127.0.0.1:3306
Source Database       : jsfb_com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-23 16:53:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jyfb_notice
-- ----------------------------
DROP TABLE IF EXISTS `jyfb_notice`;
CREATE TABLE `jyfb_notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '消息分类id：0系统消息，1站内信，2法宝消息',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0未读1已读',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `notice-user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='消息表';

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
INSERT INTO `jyfb_notice` VALUES ('13', '4', '2', '咨询专家', '使用VIP通道咨询专家消耗5个法宝', '0', '2019-09-30 15:28:19', '2019-09-30 15:28:19');
INSERT INTO `jyfb_notice` VALUES ('14', '4', '2', '咨询专家', '使用VIP通道咨询专家消耗5个法宝', '0', '2019-09-30 15:49:33', '2019-09-30 15:49:33');
INSERT INTO `jyfb_notice` VALUES ('15', '4', '2', '每日答题', '游戏闯关每日答题获得10个法宝', '0', '2019-09-30 16:14:22', '2019-09-30 16:14:22');
INSERT INTO `jyfb_notice` VALUES ('16', '4', '2', '好文分享', '好文分享获得10个法宝', '0', '2019-09-30 16:20:17', '2019-09-30 16:20:17');
INSERT INTO `jyfb_notice` VALUES ('17', '4', '2', '法宝兑换', '使用20个法宝兑换1件商品,该商品为衣服', '0', '2019-09-30 17:04:21', '2019-09-30 17:04:21');
INSERT INTO `jyfb_notice` VALUES ('18', '4', '1', '问题回复通知', '<br>您的提问：<br><p></p><p>解决一下生活问题</p><br>回复如下：<br><p></p><p>自行处理</p><p>我测试</p><p><br>在测试</p>', '0', '2019-10-10 15:44:17', '2019-10-10 15:44:17');
INSERT INTO `jyfb_notice` VALUES ('19', '4', '1', '问题回复通知', '<br>您的提问：<br><p></p><p>解决一下生活问题</p><br>回复如下：<br><p></p><p></p><p>自行处理</p><p>我测试</p><p><br></p>', '0', '2019-10-15 17:37:12', '2019-10-15 17:37:12');
INSERT INTO `jyfb_notice` VALUES ('20', '4', '1', '问题回复通知', '<br>您的提问：<br><p></p><p>解决一下生活问题</p><br>回复如下：<br><p></p><p></p><p>自行处理</p><p>我测试</p><p><br></p>', '0', '2019-10-15 17:44:10', '2019-10-15 17:44:10');
INSERT INTO `jyfb_notice` VALUES ('21', '4', '2', '每日答题', '游戏闯关每日答题获得10个法宝', '0', '2019-10-16 14:43:55', '2019-10-16 14:43:55');
INSERT INTO `jyfb_notice` VALUES ('22', '4', '2', '每日答题', '游戏闯关每日答题获得10个法宝', '0', '2019-10-16 14:44:35', '2019-10-16 14:44:35');
INSERT INTO `jyfb_notice` VALUES ('23', '4', '2', '每日答题', '游戏闯关每日答题获得10个法宝', '0', '2019-10-16 14:46:52', '2019-10-16 14:46:52');
INSERT INTO `jyfb_notice` VALUES ('24', '4', '2', '每日答题', '游戏闯关每日答题获得10个法宝', '0', '2019-10-16 15:09:21', '2019-10-16 15:09:21');
INSERT INTO `jyfb_notice` VALUES ('25', '4', '0', '关注律师', '恭喜您关注律师成功', '0', '2019-10-17 12:02:02', '2019-10-17 12:02:02');
INSERT INTO `jyfb_notice` VALUES ('26', '4', '0', '关注律师', '恭喜您关注律师成功', '0', '2019-10-17 12:04:40', '2019-10-17 12:04:40');
INSERT INTO `jyfb_notice` VALUES ('27', '4', '0', '关注律师', '恭喜您关注律师成功', '0', '2019-10-17 12:04:48', '2019-10-17 12:04:48');
INSERT INTO `jyfb_notice` VALUES ('28', '4', '0', '关注律师', '恭喜您关注律师成功', '0', '2019-10-17 12:04:56', '2019-10-17 12:04:56');
INSERT INTO `jyfb_notice` VALUES ('29', '4', '0', '关注律师', '恭喜您关注律师成功', '0', '2019-10-17 12:07:19', '2019-10-17 12:07:19');
INSERT INTO `jyfb_notice` VALUES ('30', '4', '0', '关注律师', '恭喜您关注律师成功', '0', '2019-10-17 12:07:40', '2019-10-17 12:07:40');
INSERT INTO `jyfb_notice` VALUES ('31', '4', '0', '关注律师', '恭喜您关注律师成功', '0', '2019-10-17 14:30:56', '2019-10-17 14:30:56');
INSERT INTO `jyfb_notice` VALUES ('32', '4', '2', '签到成功', '今日签到共获得10个法宝', '0', '2019-10-23 13:08:05', '2019-10-23 13:08:05');
INSERT INTO `jyfb_notice` VALUES ('33', '4', '2', '签到成功', '今日签到共获得10个法宝', '0', '2019-10-23 13:12:20', '2019-10-23 13:12:20');
INSERT INTO `jyfb_notice` VALUES ('34', '4', '2', '每日答题', '游戏闯关每日答题获得10个法宝', '0', '2019-10-23 13:14:14', '2019-10-23 13:14:14');
