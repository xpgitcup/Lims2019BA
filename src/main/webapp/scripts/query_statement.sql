/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : lims2018bdb

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-11 11:11:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `query_statement`
-- ----------------------------
DROP TABLE IF EXISTS `query_statement`;
CREATE TABLE `query_statement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `params_list` varchar(255) DEFAULT NULL,
  `hql` varchar(255) DEFAULT NULL,
  `issql` bit(1) DEFAULT NULL,
  `need_to_query` bit(1) NOT NULL,
  `key_string` varchar(255) NOT NULL,
  `view_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_iejb2adhrl11w1nanxv8r9hql` (`key_string`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of query_statement
-- ----------------------------
INSERT INTO `query_statement` VALUES ('55', '0', null, 'select count(*) from QueryStatement queryStatement', '\0', '', 'count.operation4QueryStatement.查询配置', null);
INSERT INTO `query_statement` VALUES ('56', '0', null, 'from QueryStatement queryStatement order by keyString', '\0', '', 'list.operation4QueryStatement.查询配置', 'listQueryStatement');
INSERT INTO `query_statement` VALUES ('57', '0', null, 'select count(*) from SystemAttribute systemAttribute where upAttribute is null', '\0', '', 'count.operation4SystemAttribute.系统属性', null);
INSERT INTO `query_statement` VALUES ('58', '0', null, 'from SystemAttribute systemAttribute where upAttribute is null', '\0', '', 'list.operation4SystemAttribute.系统属性', 'listSystemAttribute');
INSERT INTO `query_statement` VALUES ('59', '0', null, 'select count(*) from SystemUser systemUser', '\0', '', 'count.operation4SystemUser.系统用户', null);
INSERT INTO `query_statement` VALUES ('60', '0', null, 'from SystemUser systemUser', '\0', '', 'list.operation4SystemUser.系统用户', 'listSystemUser');
INSERT INTO `query_statement` VALUES ('61', '0', null, 'select count(*) from SystemMenu systemMenu where upMenuItem is null', '\0', '', 'count.operation4SystemMenu.系统菜单', null);
INSERT INTO `query_statement` VALUES ('62', '0', null, 'from SystemMenu systemMenu where upMenuItem is null', '\0', '', 'list.operation4SystemMenu.系统菜单', 'listSystemMenu');
INSERT INTO `query_statement` VALUES ('63', '0', null, 'select count(*) from SystemLog systemLog', '\0', '', 'count.operation4SystemLog.系统日志', null);
INSERT INTO `query_statement` VALUES ('64', '0', null, 'from SystemLog systemLog', '\0', '', 'list.operation4SystemLog.系统日志', 'listSystemLog');
INSERT INTO `query_statement` VALUES ('65', '0', null, 'from Teacher teacher', '\0', '', 'list.operation4Person.教师', 'listTeacher');
INSERT INTO `query_statement` VALUES ('66', '0', null, 'from Student student order by personTitle, supervisor, gradeName,  major, code', '\0', '', 'list.operation4Person.学生', 'listStudent');
INSERT INTO `query_statement` VALUES ('67', '0', null, 'from Major major order by name', '\0', '', 'list.operation4Person.专业', 'listMajor');
INSERT INTO `query_statement` VALUES ('68', '0', null, 'select count(*) from Teacher teacher', '\0', '', 'count.operation4Person.教师', null);
INSERT INTO `query_statement` VALUES ('69', '0', null, 'select count(*) from Student student', '\0', '', 'count.operation4Person.学生', null);
INSERT INTO `query_statement` VALUES ('70', '0', null, 'select count(*) from Major major', '\0', '', 'count.operation4Person.专业', null);
INSERT INTO `query_statement` VALUES ('71', '0', null, 'select count(*) from ThingType thingType where upType is null', '\0', '', 'count.operation4ThingType.项目类型', null);
INSERT INTO `query_statement` VALUES ('72', '0', null, 'select count(*) from PersonTitle personTitle where upTitle is null', '\0', '', 'count.operation4PersonTitle.人员类型', null);
INSERT INTO `query_statement` VALUES ('73', '0', null, 'from Project project order by name', '\0', '', 'list.operation4Thing.科研', 'listProject');
INSERT INTO `query_statement` VALUES ('74', '0', null, 'select count(*) from Project project', '\0', '', 'count.operation4Thing.科研', null);
INSERT INTO `query_statement` VALUES ('75', '0', null, 'from Course course order by name', '\0', '', 'list.operation4Thing.教学', 'listCourse');
INSERT INTO `query_statement` VALUES ('76', '0', null, 'select count(*) from Course course', '\0', '', 'count.operation4Thing.教学', null);
INSERT INTO `query_statement` VALUES ('77', '0', null, 'select count(*) from ThingTypeCircle thingTypeCircle', '\0', '', 'count.operation4ThingTypeCircle.任务分配', null);
INSERT INTO `query_statement` VALUES ('78', '0', null, 'from ThingTypeCircle thingTypeCircle order by thingType', '\0', '', 'list.operation4ThingTypeCircle.任务分配', 'listThingTypeCircle');
INSERT INTO `query_statement` VALUES ('79', '0', 'thingTypeList', 'from Thing thing where thing.thingType in :thingTypeList', '\0', '', 'list.operation4Team.可选题目.thingTypeList', 'listThing');
INSERT INTO `query_statement` VALUES ('80', '0', 'thingTypeList', 'select count(*) from Thing thing where thing.thingType in :thingTypeList', '\0', '', 'count.operation4Team.可选题目.thingTypeList', null);
INSERT INTO `query_statement` VALUES ('81', '0', null, 'select count(*) from QueryStatement queryStatement where queryStatement.hql is null', '\0', '', 'count.operation4QueryStatement.filter.查询配置', null);
INSERT INTO `query_statement` VALUES ('82', '0', null, 'from QueryStatement queryStatement where queryStatement.hql is null  order by keyString', '\0', '', 'list.operation4QueryStatement.filter.查询配置', 'listQueryStatement');
INSERT INTO `query_statement` VALUES ('83', '0', 'currentThing', 'from Team team where team.thing=:currentThing', '\0', '', 'list.operation4Team.currentThing.相关团队', 'listTeam');
INSERT INTO `query_statement` VALUES ('84', '0', 'currentThing', 'select count(*) from Team team where team.thing=:currentThing', '\0', '', 'count.operation4Team.currentThing.相关团队', null);
INSERT INTO `query_statement` VALUES ('85', '0', 'myself', 'from Team team where team.leader=:myself', '\0', '', 'list.operation4Progress.我领导的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES ('86', '0', 'myself', 'select count(*) from Team team where team.leader=:myself', '\0', '', 'count.operation4Progress.我领导的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES ('87', '0', 'myself', 'select team_members_id  from team_person where person_id=:myself', '', '', 'list.operation4Progress.我参与的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES ('88', '0', 'myself', 'select count(*) from team_person where person_id=:myself', '', '', 'count.operation4Progress.我参与的.myself', null);
INSERT INTO `query_statement` VALUES ('89', '0', 'currentTeam', 'from Progress progress where progress.team=:currentTeam order by progress.regDate desc', '\0', '', 'list.operation4Progress.currentTeam.进度查看', 'listProgress');
INSERT INTO `query_statement` VALUES ('90', '0', 'currentTeam', 'select count(*) from Progress progress where progress.team=:currentTeam', '\0', '', 'count.operation4Progress.currentTeam.进度查看', 'listProgress');
INSERT INTO `query_statement` VALUES ('91', '0', 'currentProgress', 'from Evaluate evaluate where evaluate.progress=:currentProgress', '\0', '', 'list.operation4Progress.currentProgress.反馈信息', 'listEvaluate');
INSERT INTO `query_statement` VALUES ('92', '0', 'currentProgress', 'select count(*) from Evaluate evaluate where evaluate.progress=:currentProgress', '\0', '', 'count.operation4Progress.currentProgress.反馈信息', null);
INSERT INTO `query_statement` VALUES ('93', '0', null, 'SELECT Count(DISTINCT person.grade_name) FROM person WHERE person.grade_name IS NOT NULL', '', '', 'count.operation4Person.年级', null);
INSERT INTO `query_statement` VALUES ('94', '0', null, 'SELECT DISTINCT person.grade_name FROM person WHERE person.grade_name IS NOT NULL limit %d,%d', '', '', 'list.operation4Person.年级', 'listGradeName');
INSERT INTO `query_statement` VALUES ('95', '0', null, null, '\0', '', 'list.operation4Progress.进度查看', null);
INSERT INTO `query_statement` VALUES ('96', '0', null, null, '\0', '', 'count.operation4Progress.进度查看', null);
INSERT INTO `query_statement` VALUES ('99', '0', 'thingTypeList', 'from Team team where team.thing in :thingTypeList order by team.thing', '\0', '', 'list.operation4Progress.我管理的.thingTypeList', 'listTeam');
INSERT INTO `query_statement` VALUES ('100', '0', 'thingTypeList', 'select count(*) from Team team where team.thing in :thingTypeList', '\0', '', 'count.operation4Progress.我管理的.thingTypeList', null);
INSERT INTO `query_statement` VALUES ('101', '0', null, null, '\0', '\0', 'list.operation4Team.队员列表', null);
INSERT INTO `query_statement` VALUES ('102', '0', null, null, '\0', '', 'count.operation4Team.队员列表', null);
INSERT INTO `query_statement` VALUES ('103', '0', null, null, '\0', '\0', 'list.operation4Team.currentTeam.队员列表', null);
INSERT INTO `query_statement` VALUES ('104', '0', null, null, '\0', '', 'count.operation4Team.currentTeam.队员列表', null);
INSERT INTO `query_statement` VALUES ('105', '1', 'keyString', 'select count(*) from QueryStatement queryStatement where queryStatement.keyString like :keyString', '\0', '', 'count.operation4QueryStatement.查询配置.keyString', null);
INSERT INTO `query_statement` VALUES ('106', '1', 'keyString', 'from QueryStatement queryStatement where queryStatement.keyString like :keyString', '\0', '', 'list.operation4QueryStatement.查询配置.keyString', 'listQueryStatement');
