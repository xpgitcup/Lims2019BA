/*
 Navicat Premium Data Transfer

 Source Server         : sample
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : lims2018bdb

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 10/03/2019 23:51:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for query_statement
-- ----------------------------
DROP TABLE IF EXISTS `query_statement`;
CREATE TABLE `query_statement`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `params_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hql` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `issql` bit(1) DEFAULT NULL,
  `need_to_query` bit(1) NOT NULL,
  `key_string` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_iejb2adhrl11w1nanxv8r9hql`(`key_string`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of query_statement
-- ----------------------------
INSERT INTO `query_statement` VALUES (55, 0, NULL, 'select count(*) from QueryStatement queryStatement', b'0', b'1', 'count.operation4QueryStatement.查询配置', NULL);
INSERT INTO `query_statement` VALUES (56, 0, NULL, 'from QueryStatement queryStatement order by keyString', b'0', b'1', 'list.operation4QueryStatement.查询配置', 'listQueryStatement');
INSERT INTO `query_statement` VALUES (57, 0, NULL, 'select count(*) from SystemAttribute systemAttribute where upAttribute is null', b'0', b'1', 'count.operation4SystemAttribute.系统属性', NULL);
INSERT INTO `query_statement` VALUES (58, 0, NULL, 'from SystemAttribute systemAttribute where upAttribute is null', b'0', b'1', 'list.operation4SystemAttribute.系统属性', 'listSystemAttribute');
INSERT INTO `query_statement` VALUES (59, 0, NULL, 'select count(*) from SystemUser systemUser', b'0', b'1', 'count.operation4SystemUser.系统用户', NULL);
INSERT INTO `query_statement` VALUES (60, 0, NULL, 'from SystemUser systemUser', b'0', b'1', 'list.operation4SystemUser.系统用户', 'listSystemUser');
INSERT INTO `query_statement` VALUES (61, 0, NULL, 'select count(*) from SystemMenu systemMenu where upMenuItem is null', b'0', b'1', 'count.operation4SystemMenu.系统菜单', NULL);
INSERT INTO `query_statement` VALUES (62, 0, NULL, 'from SystemMenu systemMenu where upMenuItem is null', b'0', b'1', 'list.operation4SystemMenu.系统菜单', 'listSystemMenu');
INSERT INTO `query_statement` VALUES (63, 0, NULL, 'select count(*) from SystemLog systemLog', b'0', b'1', 'count.operation4SystemLog.系统日志', NULL);
INSERT INTO `query_statement` VALUES (64, 0, NULL, 'from SystemLog systemLog', b'0', b'1', 'list.operation4SystemLog.系统日志', 'listSystemLog');
INSERT INTO `query_statement` VALUES (65, 0, NULL, 'from Teacher teacher', b'0', b'1', 'list.operation4Person.教师', 'listTeacher');
INSERT INTO `query_statement` VALUES (66, 0, NULL, 'from Student student order by personTitle, supervisor, gradeName,  major, code', b'0', b'1', 'list.operation4Person.学生', 'listStudent');
INSERT INTO `query_statement` VALUES (67, 0, NULL, 'from Major major order by name', b'0', b'1', 'list.operation4Person.专业', 'listMajor');
INSERT INTO `query_statement` VALUES (68, 0, NULL, 'select count(*) from Teacher teacher', b'0', b'1', 'count.operation4Person.教师', NULL);
INSERT INTO `query_statement` VALUES (69, 0, NULL, 'select count(*) from Student student', b'0', b'1', 'count.operation4Person.学生', NULL);
INSERT INTO `query_statement` VALUES (70, 0, NULL, 'select count(*) from Major major', b'0', b'1', 'count.operation4Person.专业', NULL);
INSERT INTO `query_statement` VALUES (71, 0, NULL, 'select count(*) from ThingType thingType where upType is null', b'0', b'1', 'count.operation4ThingType.项目类型', NULL);
INSERT INTO `query_statement` VALUES (72, 0, NULL, 'select count(*) from PersonTitle personTitle where upTitle is null', b'0', b'1', 'count.operation4PersonTitle.人员类型', NULL);
INSERT INTO `query_statement` VALUES (73, 0, NULL, 'from Project project order by name', b'0', b'1', 'list.operation4Thing.科研', 'listProject');
INSERT INTO `query_statement` VALUES (74, 0, NULL, 'select count(*) from Project project', b'0', b'1', 'count.operation4Thing.科研', NULL);
INSERT INTO `query_statement` VALUES (75, 0, NULL, 'from Course course order by name', b'0', b'1', 'list.operation4Thing.教学', 'listCourse');
INSERT INTO `query_statement` VALUES (76, 0, NULL, 'select count(*) from Course course', b'0', b'1', 'count.operation4Thing.教学', NULL);
INSERT INTO `query_statement` VALUES (77, 0, NULL, 'select count(*) from ThingTypeCircle thingTypeCircle', b'0', b'1', 'count.operation4ThingTypeCircle.任务分配', NULL);
INSERT INTO `query_statement` VALUES (78, 0, NULL, 'from ThingTypeCircle thingTypeCircle order by thingType', b'0', b'1', 'list.operation4ThingTypeCircle.任务分配', 'listThingTypeCircle');
INSERT INTO `query_statement` VALUES (79, 0, 'thingTypeList', 'from Thing thing where thing.thingType in :thingTypeList', b'0', b'1', 'list.operation4Team.可选题目.thingTypeList', 'listThing');
INSERT INTO `query_statement` VALUES (80, 0, 'thingTypeList', 'select count(*) from Thing thing where thing.thingType in :thingTypeList', b'0', b'1', 'count.operation4Team.可选题目.thingTypeList', NULL);
INSERT INTO `query_statement` VALUES (81, 0, NULL, 'select count(*) from QueryStatement queryStatement where queryStatement.hql is null', b'0', b'1', 'count.operation4QueryStatement.filter.查询配置', NULL);
INSERT INTO `query_statement` VALUES (82, 0, NULL, 'from QueryStatement queryStatement where queryStatement.hql is null  order by keyString', b'0', b'1', 'list.operation4QueryStatement.filter.查询配置', 'listQueryStatement');
INSERT INTO `query_statement` VALUES (83, 0, 'currentThing', 'from Team team where team.thing=:currentThing', b'0', b'1', 'list.operation4Team.currentThing.相关团队', 'listTeam');
INSERT INTO `query_statement` VALUES (84, 0, 'currentThing', 'select count(*) from Team team where team.thing=:currentThing', b'0', b'1', 'count.operation4Team.currentThing.相关团队', NULL);
INSERT INTO `query_statement` VALUES (85, 0, 'myself', 'from Team team where team.leader=:myself', b'0', b'1', 'list.operation4Progress.我领导的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES (86, 0, 'myself', 'select count(*) from Team team where team.leader=:myself', b'0', b'1', 'count.operation4Progress.我领导的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES (87, 0, 'myself', 'select team_members_id  from team_person where person_id=:myself', b'1', b'1', 'list.operation4Progress.我参与的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES (88, 0, 'myself', 'select count(*) from team_person where person_id=:myself', b'1', b'1', 'count.operation4Progress.我参与的.myself', NULL);
INSERT INTO `query_statement` VALUES (89, 0, 'currentTeam', 'from Progress progress where progress.team=:currentTeam order by progress.regDate desc', b'0', b'1', 'list.operation4Progress.currentTeam.进度查看', 'listProgress');
INSERT INTO `query_statement` VALUES (90, 0, 'currentTeam', 'select count(*) from Progress progress where progress.team=:currentTeam', b'0', b'1', 'count.operation4Progress.currentTeam.进度查看', 'listProgress');
INSERT INTO `query_statement` VALUES (91, 0, 'currentProgress', 'from Evaluate evaluate where evaluate.progress=:currentProgress', b'0', b'1', 'list.operation4Progress.currentProgress.反馈信息', 'listEvaluate');
INSERT INTO `query_statement` VALUES (92, 0, 'currentProgress', 'select count(*) from Evaluate evaluate where evaluate.progress=:currentProgress', b'0', b'1', 'count.operation4Progress.currentProgress.反馈信息', NULL);
INSERT INTO `query_statement` VALUES (93, 0, NULL, 'SELECT Count(DISTINCT person.grade_name) FROM person WHERE person.grade_name IS NOT NULL', b'1', b'1', 'count.operation4Person.年级', NULL);
INSERT INTO `query_statement` VALUES (94, 0, NULL, 'SELECT DISTINCT person.grade_name FROM person WHERE person.grade_name IS NOT NULL limit %d,%d', b'1', b'1', 'list.operation4Person.年级', 'listGradeName');
INSERT INTO `query_statement` VALUES (95, 0, NULL, NULL, b'0', b'1', 'list.operation4Progress.进度查看', NULL);
INSERT INTO `query_statement` VALUES (96, 0, NULL, NULL, b'0', b'1', 'count.operation4Progress.进度查看', NULL);
INSERT INTO `query_statement` VALUES (97, 0, NULL, NULL, b'0', b'1', 'list.operation4Progress.反馈信息', NULL);
INSERT INTO `query_statement` VALUES (98, 0, NULL, NULL, b'0', b'1', 'count.operation4Progress.反馈信息', NULL);
INSERT INTO `query_statement` VALUES (99, 0, 'thingTypeList', 'from Team team where team.thing in :thingTypeList order by team.thing', b'0', b'1', 'list.operation4Progress.我管理的.thingTypeList', 'listTeam');
INSERT INTO `query_statement` VALUES (100, 0, 'thingTypeList', 'select count(*) from Team team where team.thing in :thingTypeList', b'0', b'1', 'count.operation4Progress.我管理的.thingTypeList', NULL);
INSERT INTO `query_statement` VALUES (101, 0, NULL, NULL, b'0', b'0', 'list.operation4Team.队员列表', NULL);
INSERT INTO `query_statement` VALUES (102, 0, NULL, NULL, b'0', b'1', 'count.operation4Team.队员列表', NULL);
INSERT INTO `query_statement` VALUES (103, 0, NULL, NULL, b'0', b'0', 'list.operation4Team.currentTeam.队员列表', NULL);
INSERT INTO `query_statement` VALUES (104, 0, NULL, NULL, b'0', b'1', 'count.operation4Team.currentTeam.队员列表', NULL);
INSERT INTO `query_statement` VALUES (105, 1, 'keyString', 'select count(*) from QueryStatement queryStatement where queryStatement.keyString like :keyString', b'0', b'1', 'count.operation4QueryStatement.查询配置.keyString', NULL);
INSERT INTO `query_statement` VALUES (106, 1, 'keyString', 'from QueryStatement queryStatement where queryStatement.keyString like :keyString', b'0', b'1', 'list.operation4QueryStatement.查询配置.keyString', 'listQueryStatement');

SET FOREIGN_KEY_CHECKS = 1;
