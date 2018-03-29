/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : leecx

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2018-03-28 11:05:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(76) NOT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名，登录名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` int(11) DEFAULT NULL COMMENT '性别，0男，1女',
  `job` int(11) DEFAULT NULL COMMENT '职业类型： 1：Java开发 2：前端开发 3：大数据开发 4：ios开发 5：Android开发 6：Linux系统工程师 7：PHP开发 8：.net开发 9：C/C++ 10：学生 11：其它',
  `face_image` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `district` varchar(255) DEFAULT NULL COMMENT '区',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `auth_salt` varchar(255) DEFAULT NULL COMMENT '用于权限的“盐”',
  `last_login_ip` varchar(255) DEFAULT NULL COMMENT '最后一次登录IP',
  `last_login_time` date DEFAULT NULL COMMENT '最后一次登录时间',
  `is_delete` int(11) DEFAULT NULL,
  `regist_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('180326A9GCMHPSFW', 'imoocMon Mar 26 14:29:22 CST 2018', 'abc123', 'imoocMon Mar 26 14:29:22 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326AAB5PGXH28', 'imoocMon Mar 26 14:31:55 CST 2018', 'abc123', 'imoocMon Mar 26 14:31:55 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326AAC50P0940', 'imoocMon Mar 26 14:32:01 CST 2018', 'abc123', 'imoocMon Mar 26 14:32:01 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326AADY8T91P0', 'imoocMon Mar 26 14:32:13 CST 2018', 'abc123', 'imoocMon Mar 26 14:32:13 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326AAFC9SPN7C', 'imoocMon Mar 26 14:32:16 CST 2018', 'abc123', 'imoocMon Mar 26 14:32:16 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326AFSPXC1B54', 'imoocMon Mar 26 14:45:10 CST 2018', 'abc123', 'imoocMon Mar 26 14:45:10 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326ARTM132KD4', 'imoocMon Mar 26 15:06:17 CST 2018', 'abc123', 'imoocMon Mar 26 15:06:17 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326BAYK834754', 'imoocMon Mar 26 15:57:38 CST 2018', 'abc123', 'imoocMon Mar 26 15:57:38 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326BYYSWKR214', 'imoocMon Mar 26 16:45:42 CST 2018', 'abc123', 'imoocMon Mar 26 16:45:42 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('180326C2BBDTH5GC', 'imoocMon Mar 26 16:56:04 CST 2018', 'abc123', 'imoocMon Mar 26 16:56:04 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
INSERT INTO `sys_user` VALUES ('1803286MP2002K40', 'imoocWed Mar 28 09:20:37 CST 2018', 'abc123', 'imoocWed Mar 28 09:20:37 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-28');
INSERT INTO `sys_user` VALUES ('1803286NG5DSGCZC', 'imoocWed Mar 28 09:23:05 CST 2018', 'abc123', 'imoocWed Mar 28 09:23:05 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-28');
INSERT INTO `sys_user` VALUES ('3490eaff-478c-41bf-adc9-567f78cced31', 'imoocMon Mar 26 15:41:27 CST 2018', 'abc123', 'imoocMon Mar 26 15:41:27 CST 2018', null, null, null, null, null, null, null, null, null, null, null, '0', '2018-03-26');
