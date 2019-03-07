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

 Date: 07/03/2019 21:59:04
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
  `ref_count` int(11) NOT NULL,
  `issql` bit(1) DEFAULT NULL,
  `key_string` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_iejb2adhrl11w1nanxv8r9hql`(`key_string`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of query_statement
-- ----------------------------
INSERT INTO `query_statement` VALUES (29, 0, NULL, 'select count(*) from QueryStatement queryStatement', 0, b'0', 'count.operation4QueryStatement.查询配置', NULL);
INSERT INTO `query_statement` VALUES (30, 0, NULL, 'from QueryStatement queryStatement order by keyString', 0, b'0', 'list.operation4QueryStatement.查询配置', 'listQueryStatement');
INSERT INTO `query_statement` VALUES (31, 0, NULL, 'select count(*) from SystemAttribute systemAttribute where upAttribute is null', 0, b'0', 'count.operation4SystemAttribute.系统属性', NULL);
INSERT INTO `query_statement` VALUES (32, 0, NULL, 'from SystemAttribute systemAttribute where upAttribute is null', 0, b'0', 'list.operation4SystemAttribute.系统属性', 'listSystemAttribute');
INSERT INTO `query_statement` VALUES (33, 0, NULL, 'select count(*) from SystemUser systemUser', 0, b'0', 'count.operation4SystemUser.系统用户', NULL);
INSERT INTO `query_statement` VALUES (34, 0, NULL, 'from SystemUser systemUser', 0, b'0', 'list.operation4SystemUser.系统用户', 'listSystemUser');
INSERT INTO `query_statement` VALUES (35, 0, NULL, 'select count(*) from SystemMenu systemMenu where upMenuItem is null', 0, b'0', 'count.operation4SystemMenu.系统菜单', NULL);
INSERT INTO `query_statement` VALUES (36, 0, NULL, 'from SystemMenu systemMenu where upMenuItem is null', 0, b'0', 'list.operation4SystemMenu.系统菜单', 'listSystemMenu');
INSERT INTO `query_statement` VALUES (37, 0, NULL, 'select count(*) from SystemLog systemLog', 0, b'0', 'count.operation4SystemLog.系统日志', NULL);
INSERT INTO `query_statement` VALUES (38, 0, NULL, 'from SystemLog systemLog', 0, b'0', 'list.operation4SystemLog.系统日志', 'listSystemLog');
INSERT INTO `query_statement` VALUES (39, 0, NULL, 'from Teacher teacher', 0, b'0', 'list.operation4Person.教师', 'listTeacher');
INSERT INTO `query_statement` VALUES (40, 0, NULL, 'from Student student order by major', 0, b'0', 'list.operation4Person.学生', 'listStudent');
INSERT INTO `query_statement` VALUES (41, 0, NULL, 'from Major major order by name', 0, b'0', 'list.operation4Person.专业', 'listMajor');
INSERT INTO `query_statement` VALUES (42, 0, NULL, 'select count(*) from Teacher teacher', 0, b'0', 'count.operation4Person.教师', NULL);
INSERT INTO `query_statement` VALUES (43, 0, NULL, 'select count(*) from Student student', 0, b'0', 'count.operation4Person.学生', NULL);
INSERT INTO `query_statement` VALUES (44, 0, NULL, 'select count(*) from Major major', 0, b'0', 'count.operation4Person.专业', NULL);
INSERT INTO `query_statement` VALUES (45, 0, NULL, 'select count(*) from ThingType thingType where upType is null', 0, b'0', 'count.operation4ThingType.项目类型', NULL);
INSERT INTO `query_statement` VALUES (46, 0, NULL, 'select count(*) from PersonTitle personTitle where upTitle is null', 0, b'0', 'count.operation4PersonTitle.人员类型', NULL);
INSERT INTO `query_statement` VALUES (47, 0, NULL, 'from Project project order by name', 0, b'0', 'list.operation4Thing.科研', 'listProject');
INSERT INTO `query_statement` VALUES (48, 0, NULL, 'select count(*) from Project project', 0, b'0', 'count.operation4Thing.科研', NULL);
INSERT INTO `query_statement` VALUES (49, 0, NULL, 'from Course course order by name', 0, b'0', 'list.operation4Thing.教学', 'listCourse');
INSERT INTO `query_statement` VALUES (50, 0, NULL, 'select count(*) from Course course', 0, b'0', 'count.operation4Thing.教学', NULL);
INSERT INTO `query_statement` VALUES (53, 1, NULL, 'select count(*) from ThingTypeCircle thingTypeCircle', 0, b'0', 'count.operation4ThingTypeCircle.任务分配', NULL);
INSERT INTO `query_statement` VALUES (54, 1, NULL, 'from ThingTypeCircle thingTypeCircle order by thingType', 0, b'0', 'list.operation4ThingTypeCircle.任务分配', 'listThingTypeCircle');
INSERT INTO `query_statement` VALUES (64, 1, 'thingTypeList', 'from Thing thing where thing.thingType in :thingTypeList', 0, b'0', 'list.operation4Team.可选题目.thingTypeList', 'listThing');
INSERT INTO `query_statement` VALUES (65, 1, 'thingTypeList', 'select count(*) from Thing thing where thing.thingType in :thingTypeList', 0, b'0', 'count.operation4Team.可选题目.thingTypeList', NULL);
INSERT INTO `query_statement` VALUES (80, 2, NULL, 'select count(*) from QueryStatement queryStatement where queryStatement.hql is null', 0, b'0', 'count.operation4QueryStatement.filter.查询配置', NULL);
INSERT INTO `query_statement` VALUES (81, 2, NULL, 'from QueryStatement queryStatement where queryStatement.hql is null  order by keyString', 0, b'0', 'list.operation4QueryStatement.filter.查询配置', 'listQueryStatement');
INSERT INTO `query_statement` VALUES (82, 3, 'currentThing', 'from Team team where team.thing=:currentThing', 0, b'0', 'list.operation4Team.currentThing.相关团队', 'listTeam');
INSERT INTO `query_statement` VALUES (83, 3, 'currentThing', 'select count(*) from Team team where team.thing=:currentThing', 0, b'0', 'count.operation4Team.currentThing.相关团队', NULL);
INSERT INTO `query_statement` VALUES (96, 1, 'myself', 'from Team team where team.leader=:myself', 0, b'0', 'list.operation4Progress.我领导的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES (97, 2, 'myself', 'select count(*) from Team team where team.leader=:myself', 0, b'0', 'count.operation4Progress.我领导的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES (98, 3, 'myself', 'select team_members_id  from team_person where person_id=:myself', 0, b'1', 'list.operation4Progress.我参与的.myself', 'listTeam');
INSERT INTO `query_statement` VALUES (104, 3, 'myself', 'select count(*) from team_person where person_id=:myself', 0, b'1', 'count.operation4Progress.我参与的.myself', NULL);
INSERT INTO `query_statement` VALUES (109, 2, 'currentTeam', 'from Progress progress where progress.team=:currentTeam', 0, b'0', 'list.operation4Progress.currentTeam.进度查看', 'listProgress');
INSERT INTO `query_statement` VALUES (110, 2, 'currentTeam', 'select count(*) from Progress progress where progress.team=:currentTeam', 0, b'0', 'count.operation4Progress.currentTeam.进度查看', 'listProgress');
INSERT INTO `query_statement` VALUES (119, 1, 'currentProgress', 'from Evaluate evaluate where evaluate.progress=:currentProgress', 0, b'0', 'list.operation4Progress.currentProgress.反馈信息', 'listEvaluate');
INSERT INTO `query_statement` VALUES (120, 1, 'currentProgress', 'select count(*) from Evaluate evaluate where evaluate.progress=:currentProgress', 0, b'0', 'count.operation4Progress.currentProgress.反馈信息', NULL);
INSERT INTO `query_statement` VALUES (121, 4, NULL, 'SELECT Count(DISTINCT person.grade_name) FROM person WHERE person.grade_name IS NOT NULL', 0, b'1', 'count.operation4Person.年级', NULL);
INSERT INTO `query_statement` VALUES (122, 7, NULL, 'SELECT DISTINCT person.grade_name FROM person WHERE person.grade_name IS NOT NULL  limit %d, %d', 0, b'1', 'list.operation4Person.年级', 'listGradeName');

SET FOREIGN_KEY_CHECKS = 1;
