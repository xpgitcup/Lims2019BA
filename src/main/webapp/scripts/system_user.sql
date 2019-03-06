/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : lims2018bdb

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-02-24 17:13:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_attribute_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `append_attribute` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_204b9ercidw1baj3s3m9lnr33` (`user_name`),
  KEY `FKaiybevf5q198uok4va3p7b6wb` (`role_attribute_id`),
  CONSTRAINT `FKaiybevf5q198uok4va3p7b6wb` FOREIGN KEY (`role_attribute_id`) REFERENCES `system_attribute` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('1', '0', '641d77dd5271fca28764612a028d9c8e', '1', '李晓平', '');
INSERT INTO `system_user` VALUES ('2', '0', 'ee26fc66b1369c7625333bedafbfcaf6', '1', '宫敬', '');
INSERT INTO `system_user` VALUES ('3', '0', 'f4aa0dd960521e045ae2f20621fb4ee9', '1', '吴海浩', '');
INSERT INTO `system_user` VALUES ('4', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2014314014', 'Student=石国赟');
INSERT INTO `system_user` VALUES ('5', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2014314013', 'Student=丁麟');
INSERT INTO `system_user` VALUES ('6', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2014011043', 'Student=冯志强');
INSERT INTO `system_user` VALUES ('7', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010667', 'Student=沈倩');
INSERT INTO `system_user` VALUES ('8', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010743', 'Student=王铁淞');
INSERT INTO `system_user` VALUES ('9', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010854', 'Student=德吉曲珍');
INSERT INTO `system_user` VALUES ('10', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010855', 'Student=胡瑾');
INSERT INTO `system_user` VALUES ('11', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010856', 'Student=贾羽茜');
INSERT INTO `system_user` VALUES ('12', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010857', 'Student=康雅倩');
INSERT INTO `system_user` VALUES ('13', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010858', 'Student=兰敏');
INSERT INTO `system_user` VALUES ('14', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010859', 'Student=李露露');
INSERT INTO `system_user` VALUES ('15', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010860', 'Student=李玥洁');
INSERT INTO `system_user` VALUES ('16', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010861', 'Student=柳佳丽');
INSERT INTO `system_user` VALUES ('17', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010862', 'Student=史安丁');
INSERT INTO `system_user` VALUES ('18', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010863', 'Student=张怡铭');
INSERT INTO `system_user` VALUES ('19', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010864', 'Student=艾斯卡尔·坎买尔');
INSERT INTO `system_user` VALUES ('20', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010865', 'Student=白宗翰');
INSERT INTO `system_user` VALUES ('21', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010866', 'Student=董佳鑫');
INSERT INTO `system_user` VALUES ('22', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010867', 'Student=付顺康');
INSERT INTO `system_user` VALUES ('23', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010868', 'Student=高经华');
INSERT INTO `system_user` VALUES ('24', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010869', 'Student=顾鹏程');
INSERT INTO `system_user` VALUES ('25', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010870', 'Student=贺国晏');
INSERT INTO `system_user` VALUES ('26', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010871', 'Student=侯富恒');
INSERT INTO `system_user` VALUES ('27', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010872', 'Student=姜铖');
INSERT INTO `system_user` VALUES ('28', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010873', 'Student=李致远');
INSERT INTO `system_user` VALUES ('29', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010875', 'Student=刘禹良');
INSERT INTO `system_user` VALUES ('30', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010876', 'Student=骆新斗');
INSERT INTO `system_user` VALUES ('31', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010877', 'Student=马克');
INSERT INTO `system_user` VALUES ('32', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010878', 'Student=马有财');
INSERT INTO `system_user` VALUES ('33', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010879', 'Student=邵文宏');
INSERT INTO `system_user` VALUES ('34', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010880', 'Student=王饕');
INSERT INTO `system_user` VALUES ('35', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010881', 'Student=伍彦松');
INSERT INTO `system_user` VALUES ('36', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010882', 'Student=熊泽华');
INSERT INTO `system_user` VALUES ('37', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010883', 'Student=严腾飞');
INSERT INTO `system_user` VALUES ('38', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010884', 'Student=杨宏慧');
INSERT INTO `system_user` VALUES ('39', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010885', 'Student=殷雄');
INSERT INTO `system_user` VALUES ('40', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010886', 'Student=张猛');
INSERT INTO `system_user` VALUES ('41', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015010887', 'Student=张雄凯');
INSERT INTO `system_user` VALUES ('42', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015011149', 'Student=张悦');
INSERT INTO `system_user` VALUES ('43', '0', '25d55ad283aa400af464c76d713c07ad', '8', '1552', 'Teacher=宫敬');
INSERT INTO `system_user` VALUES ('44', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2151', 'Teacher=李晓平');
INSERT INTO `system_user` VALUES ('45', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2152', 'Teacher=邓道明');
INSERT INTO `system_user` VALUES ('46', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2333', 'Teacher=左丽丽');
INSERT INTO `system_user` VALUES ('47', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2013880073', 'Teacher=史博会');
INSERT INTO `system_user` VALUES ('48', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2012880012', 'Teacher=温凯');
INSERT INTO `system_user` VALUES ('49', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2161', 'Teacher=邢晓凯');
INSERT INTO `system_user` VALUES ('50', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2166', 'Teacher=侯磊');
INSERT INTO `system_user` VALUES ('51', '0', '25d55ad283aa400af464c76d713c07ad', '8', '2005', 'Teacher=李兆慈');
INSERT INTO `system_user` VALUES ('52', '0', '25d55ad283aa400af464c76d713c07ad', '8', '1670', 'Teacher=黄启玉');
INSERT INTO `system_user` VALUES ('53', '0', '25d55ad283aa400af464c76d713c07ad', '8', '1815', 'Teacher=李鸿英');
INSERT INTO `system_user` VALUES ('54', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015314019', 'Student=虞维超');
INSERT INTO `system_user` VALUES ('55', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015314016', 'Student=马千里');
INSERT INTO `system_user` VALUES ('56', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015314022', 'Student=靳航');
INSERT INTO `system_user` VALUES ('57', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015314023', 'Student=柳扬');
INSERT INTO `system_user` VALUES ('58', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015314017', 'Student=宋尚飞');
INSERT INTO `system_user` VALUES ('59', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015214549', 'Student=金浩');
INSERT INTO `system_user` VALUES ('60', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015214571', 'Student=马晓旭');
INSERT INTO `system_user` VALUES ('61', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015214557', 'Student=朱梦琪');
INSERT INTO `system_user` VALUES ('62', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016314026', 'Student=康琦');
INSERT INTO `system_user` VALUES ('63', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016314018', 'Student=洪炳沅');
INSERT INTO `system_user` VALUES ('64', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016314025', 'Student=黄辉荣');
INSERT INTO `system_user` VALUES ('65', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016314019', 'Student=王丹');
INSERT INTO `system_user` VALUES ('66', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016314017', 'Student=李昂');
INSERT INTO `system_user` VALUES ('67', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214568', 'Student=陈新果');
INSERT INTO `system_user` VALUES ('68', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214090', 'Student=陈怡鸣');
INSERT INTO `system_user` VALUES ('69', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214554', 'Student=陈影');
INSERT INTO `system_user` VALUES ('70', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214555', 'Student=崔可心');
INSERT INTO `system_user` VALUES ('71', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214536', 'Student=丁凯');
INSERT INTO `system_user` VALUES ('72', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214091', 'Student=甘东英');
INSERT INTO `system_user` VALUES ('73', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214537', 'Student=高航');
INSERT INTO `system_user` VALUES ('74', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214541', 'Student=韩庆龙');
INSERT INTO `system_user` VALUES ('75', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214538', 'Student=黄璞');
INSERT INTO `system_user` VALUES ('76', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214539', 'Student=李梦瑶');
INSERT INTO `system_user` VALUES ('77', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214086', 'Student=李莎');
INSERT INTO `system_user` VALUES ('78', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214556', 'Student=李愚');
INSERT INTO `system_user` VALUES ('79', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214544', 'Student=王传硕');
INSERT INTO `system_user` VALUES ('80', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214543', 'Student=任亮');
INSERT INTO `system_user` VALUES ('81', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214060', 'Student=沈伟伟');
INSERT INTO `system_user` VALUES ('82', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214092', 'Student=沈允');
INSERT INTO `system_user` VALUES ('83', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214076', 'Student=苏越');
INSERT INTO `system_user` VALUES ('84', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214557', 'Student=万洋洋');
INSERT INTO `system_user` VALUES ('85', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214558', 'Student=王茀玺');
INSERT INTO `system_user` VALUES ('86', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214057', 'Student=王君傲');
INSERT INTO `system_user` VALUES ('87', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214093', 'Student=吴停');
INSERT INTO `system_user` VALUES ('88', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214096', 'Student=夏子杰');
INSERT INTO `system_user` VALUES ('89', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015214064', 'Student=许洁');
INSERT INTO `system_user` VALUES ('90', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214063', 'Student=张若晨');
INSERT INTO `system_user` VALUES ('91', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214065', 'Student=赵云鹏');
INSERT INTO `system_user` VALUES ('92', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2016214560', 'Student=周艳红');
INSERT INTO `system_user` VALUES ('93', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017314026', 'Student=樊迪');
INSERT INTO `system_user` VALUES ('94', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017314015', 'Student=齐雪宇');
INSERT INTO `system_user` VALUES ('95', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017314023', 'Student=于志鹏');
INSERT INTO `system_user` VALUES ('96', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017314013', 'Student=陈玉川');
INSERT INTO `system_user` VALUES ('97', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017314014', 'Student=李熠辰');
INSERT INTO `system_user` VALUES ('98', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017314024', 'Student=张盛楠');
INSERT INTO `system_user` VALUES ('99', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214552', 'Student=邓坤');
INSERT INTO `system_user` VALUES ('100', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214564', 'Student=高晶晶');
INSERT INTO `system_user` VALUES ('101', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214553', 'Student=高振宇');
INSERT INTO `system_user` VALUES ('102', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214565', 'Student=何卓');
INSERT INTO `system_user` VALUES ('103', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214554', 'Student=胡杰');
INSERT INTO `system_user` VALUES ('104', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214558', 'Student=兰文萍');
INSERT INTO `system_user` VALUES ('105', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214584', 'Student=李根');
INSERT INTO `system_user` VALUES ('106', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214050', 'Student=李金潮');
INSERT INTO `system_user` VALUES ('107', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214052', 'Student=李立');
INSERT INTO `system_user` VALUES ('108', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214555', 'Student=林聿明');
INSERT INTO `system_user` VALUES ('109', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214053', 'Student=吕鹏飞');
INSERT INTO `system_user` VALUES ('110', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214054', 'Student=孙小喆');
INSERT INTO `system_user` VALUES ('111', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214081', 'Student=王振威');
INSERT INTO `system_user` VALUES ('112', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214078', 'Student=肖亚琪');
INSERT INTO `system_user` VALUES ('113', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214070', 'Student=谢平');
INSERT INTO `system_user` VALUES ('114', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214082', 'Student=薛一菡');
INSERT INTO `system_user` VALUES ('115', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214570', 'Student=杨克');
INSERT INTO `system_user` VALUES ('116', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214566', 'Student=禹亚峰');
INSERT INTO `system_user` VALUES ('117', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214556', 'Student=张昊');
INSERT INTO `system_user` VALUES ('118', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214055', 'Student=张杰');
INSERT INTO `system_user` VALUES ('119', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214557', 'Student=张蒙丽');
INSERT INTO `system_user` VALUES ('120', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214056', 'Student=张佩颖');
INSERT INTO `system_user` VALUES ('121', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214069', 'Student=狄国佳');
INSERT INTO `system_user` VALUES ('122', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018314016', 'Student=段旭');
INSERT INTO `system_user` VALUES ('123', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018314015', 'Student=陈思杭');
INSERT INTO `system_user` VALUES ('124', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018314026', 'Student=彭泽恒');
INSERT INTO `system_user` VALUES ('125', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018314025', 'Student=李楷');
INSERT INTO `system_user` VALUES ('126', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214052', 'Student=丁陈陈');
INSERT INTO `system_user` VALUES ('127', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214053', 'Student=纪晨秋');
INSERT INTO `system_user` VALUES ('128', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214054', 'Student=廖清云');
INSERT INTO `system_user` VALUES ('129', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214055', 'Student=刘鹏');
INSERT INTO `system_user` VALUES ('130', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214056', 'Student=刘轩章');
INSERT INTO `system_user` VALUES ('131', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214051', 'Student=李国豪');
INSERT INTO `system_user` VALUES ('132', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214075', 'Student=林德才');
INSERT INTO `system_user` VALUES ('133', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214078', 'Student=葛运通');
INSERT INTO `system_user` VALUES ('134', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214079', 'Student=杨晓鹏');
INSERT INTO `system_user` VALUES ('135', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214544', 'Student=冯兴');
INSERT INTO `system_user` VALUES ('136', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214545', 'Student=王昕楚');
INSERT INTO `system_user` VALUES ('137', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214546', 'Student=王靖怡');
INSERT INTO `system_user` VALUES ('138', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214553', 'Student=崔雪萌');
INSERT INTO `system_user` VALUES ('139', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214554', 'Student=都兆楠');
INSERT INTO `system_user` VALUES ('140', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214555', 'Student=谭遥');
INSERT INTO `system_user` VALUES ('141', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214084', 'Student=周建伟');
INSERT INTO `system_user` VALUES ('142', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214068', 'Student=刘胜男');
INSERT INTO `system_user` VALUES ('143', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214080', 'Student=喻伟婕');
INSERT INTO `system_user` VALUES ('144', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214081', 'Student=张璐瑶');
INSERT INTO `system_user` VALUES ('145', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2015214576', 'Student=卜铎');
INSERT INTO `system_user` VALUES ('146', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2017214588', 'Student=孙成威');
INSERT INTO `system_user` VALUES ('147', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214547', 'Student=李雨');
INSERT INTO `system_user` VALUES ('148', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214548', 'Student=王昕');
INSERT INTO `system_user` VALUES ('149', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214549', 'Student=朱振宇');
INSERT INTO `system_user` VALUES ('150', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214550', 'Student=单锦旭');
INSERT INTO `system_user` VALUES ('151', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214556', 'Student=董小钰');
INSERT INTO `system_user` VALUES ('152', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214557', 'Student=陶冰星');
INSERT INTO `system_user` VALUES ('153', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214558', 'Student=王扬超');
INSERT INTO `system_user` VALUES ('154', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214559', 'Student=杨哲任');
INSERT INTO `system_user` VALUES ('155', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214560', 'Student=张静宇');
INSERT INTO `system_user` VALUES ('156', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214564', 'Student=谭宝亮');
INSERT INTO `system_user` VALUES ('157', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214565', 'Student=赵恭宇');
INSERT INTO `system_user` VALUES ('158', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214566', 'Student=葛旭');
INSERT INTO `system_user` VALUES ('159', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214567', 'Student=李栋');
INSERT INTO `system_user` VALUES ('160', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214568', 'Student=王帅');
INSERT INTO `system_user` VALUES ('161', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214569', 'Student=武壮');
INSERT INTO `system_user` VALUES ('162', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214570', 'Student=朱云鹏');
INSERT INTO `system_user` VALUES ('163', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214573', 'Student=钟思源');
INSERT INTO `system_user` VALUES ('164', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214574', 'Student=周冰');
INSERT INTO `system_user` VALUES ('165', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214575', 'Student=曾亚男');
INSERT INTO `system_user` VALUES ('166', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214576', 'Student=刘壮');
INSERT INTO `system_user` VALUES ('167', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214577', 'Student=倪平');
INSERT INTO `system_user` VALUES ('168', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214578', 'Student=张湘玮');
INSERT INTO `system_user` VALUES ('169', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018214579', 'Student=赵留康');
INSERT INTO `system_user` VALUES ('170', '0', '25d55ad283aa400af464c76d713c07ad', '9', '2018244505', 'Student=王玮健');