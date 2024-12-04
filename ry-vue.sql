/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 02/12/2024 09:46:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'wechat', '微信群发', NULL, NULL, 'Wechat', 'crud', '', 'com.ruoyi.system', 'system', 'wechat', '微信群发', 'ruoyi', '0', '/', NULL, 'admin', '2024-11-25 14:55:41', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (2, 1, 'time', '时间', 'int(11)', 'Long', 'time', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (3, 1, 'txt', '文本', 'text', 'String', 'txt', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (4, 1, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (5, 1, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (6, 1, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (7, 1, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (8, 1, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'textarea', '', 10, 'admin', '2024-11-25 14:55:41', '', '2024-11-27 14:31:37');
INSERT INTO `gen_table_column` VALUES (9, 1, 'url', '图片的url', 'varchar(500)', 'String', 'url', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, '', '2024-11-27 14:31:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, 1, 'file_url', '文件的url', 'varchar(500)', 'String', 'fileUrl', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, '', '2024-11-27 14:31:37', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
INSERT INTO `qrtz_blob_triggers` VALUES ('RuoyiScheduler', 'weChatBotTrigger', 'DEFAULT', 0x7B22636F6E74656E74223A2248656C6C6F2066726F6D2057654368617420426F7421227D);

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'weChatBotTrigger', 'DEFAULT', '0 0/1 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'weChatBotJob', 'DEFAULT', 'WeChat Bot Job', 'com.ruoyi.quartz.job.WeChatBotJob', '1', '0', '0', '0', '');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'weChatBotTrigger', 'DEFAULT', 'weChatBotJob', 'DEFAULT', 'WeChat Bot Trigger', 1732514737000, NULL, 5, 'WAITING', 'CRON', 1732514732000, NULL, NULL, 0, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-11-22 09:35:43', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-11-22 09:35:43', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-11-22 09:35:43', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-11-22 09:35:43', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-11-22 09:35:43', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-11-22 09:35:43', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-11-22 09:35:43', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (102, '测试', 'DEFAULT', 'wx.bot(\"1\")', '0 /1 * * * ?', '1', '1', '1', 'admin', '2024-11-27 11:16:55', 'admin', '2024-11-29 14:01:57', '');
INSERT INTO `sys_job` VALUES (103, '放假通知', 'DEFAULT', 'wx.bot(\'2\')', '* * 14 * * ?', '1', '1', '1', 'admin', '2024-11-29 13:49:05', 'admin', '2024-11-29 16:05:49', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 444 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：3毫秒', '0', '', '2024-11-22 10:22:23');
INSERT INTO `sys_job_log` VALUES (2, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:24');
INSERT INTO `sys_job_log` VALUES (3, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:25');
INSERT INTO `sys_job_log` VALUES (4, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:26');
INSERT INTO `sys_job_log` VALUES (5, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:27');
INSERT INTO `sys_job_log` VALUES (6, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:28');
INSERT INTO `sys_job_log` VALUES (7, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:29');
INSERT INTO `sys_job_log` VALUES (8, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:30');
INSERT INTO `sys_job_log` VALUES (9, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:31');
INSERT INTO `sys_job_log` VALUES (10, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:32');
INSERT INTO `sys_job_log` VALUES (11, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:33');
INSERT INTO `sys_job_log` VALUES (12, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：2毫秒', '0', '', '2024-11-22 10:22:34');
INSERT INTO `sys_job_log` VALUES (13, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:35');
INSERT INTO `sys_job_log` VALUES (14, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:36');
INSERT INTO `sys_job_log` VALUES (15, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:37');
INSERT INTO `sys_job_log` VALUES (16, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：1毫秒', '0', '', '2024-11-22 10:22:38');
INSERT INTO `sys_job_log` VALUES (17, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:39');
INSERT INTO `sys_job_log` VALUES (18, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:40');
INSERT INTO `sys_job_log` VALUES (19, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：1毫秒', '0', '', '2024-11-22 10:22:41');
INSERT INTO `sys_job_log` VALUES (20, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:42');
INSERT INTO `sys_job_log` VALUES (21, '群发助手', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:22:43');
INSERT INTO `sys_job_log` VALUES (22, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：1毫秒', '0', '', '2024-11-22 10:27:36');
INSERT INTO `sys_job_log` VALUES (23, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:37');
INSERT INTO `sys_job_log` VALUES (24, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:38');
INSERT INTO `sys_job_log` VALUES (25, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：1毫秒', '0', '', '2024-11-22 10:27:39');
INSERT INTO `sys_job_log` VALUES (26, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:40');
INSERT INTO `sys_job_log` VALUES (27, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:41');
INSERT INTO `sys_job_log` VALUES (28, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:42');
INSERT INTO `sys_job_log` VALUES (29, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:43');
INSERT INTO `sys_job_log` VALUES (30, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:44');
INSERT INTO `sys_job_log` VALUES (31, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:45');
INSERT INTO `sys_job_log` VALUES (32, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:46');
INSERT INTO `sys_job_log` VALUES (33, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:47');
INSERT INTO `sys_job_log` VALUES (34, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:48');
INSERT INTO `sys_job_log` VALUES (35, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:27:49');
INSERT INTO `sys_job_log` VALUES (36, '群发助手', 'DEFAULT', 'ryTask.a', '群发助手 总共耗时：0毫秒', '0', '', '2024-11-22 10:32:00');
INSERT INTO `sys_job_log` VALUES (37, '群发助手', 'DEFAULT', 'IWe.execute', '群发助手 总共耗时：3毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.IWeChatBotJob.execute()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 14:05:00');
INSERT INTO `sys_job_log` VALUES (38, '群发助手', 'DEFAULT', 'IWe.execute', '群发助手 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.IWeChatBotJob.execute()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 14:06:00');
INSERT INTO `sys_job_log` VALUES (39, '群发助手', 'DEFAULT', 'IWe.execute', '群发助手 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.IWeChatBotJob.execute()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 14:07:00');
INSERT INTO `sys_job_log` VALUES (40, '群发助手', 'DEFAULT', 'IWe.execute', '群发助手 总共耗时：3毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.IWeChatBotJob.execute()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 14:09:00');
INSERT INTO `sys_job_log` VALUES (41, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：4毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:06');
INSERT INTO `sys_job_log` VALUES (42, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：2毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:07');
INSERT INTO `sys_job_log` VALUES (43, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:08');
INSERT INTO `sys_job_log` VALUES (44, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:09');
INSERT INTO `sys_job_log` VALUES (45, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:10');
INSERT INTO `sys_job_log` VALUES (46, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:11');
INSERT INTO `sys_job_log` VALUES (47, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:12');
INSERT INTO `sys_job_log` VALUES (48, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:13');
INSERT INTO `sys_job_log` VALUES (49, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:14');
INSERT INTO `sys_job_log` VALUES (50, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:15');
INSERT INTO `sys_job_log` VALUES (51, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:16');
INSERT INTO `sys_job_log` VALUES (52, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:17');
INSERT INTO `sys_job_log` VALUES (53, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:18');
INSERT INTO `sys_job_log` VALUES (54, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:19');
INSERT INTO `sys_job_log` VALUES (55, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:20');
INSERT INTO `sys_job_log` VALUES (56, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:21');
INSERT INTO `sys_job_log` VALUES (57, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:22');
INSERT INTO `sys_job_log` VALUES (58, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:23');
INSERT INTO `sys_job_log` VALUES (59, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:24');
INSERT INTO `sys_job_log` VALUES (60, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：2毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:25');
INSERT INTO `sys_job_log` VALUES (61, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:26');
INSERT INTO `sys_job_log` VALUES (62, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:27');
INSERT INTO `sys_job_log` VALUES (63, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:28');
INSERT INTO `sys_job_log` VALUES (64, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:29');
INSERT INTO `sys_job_log` VALUES (65, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:30');
INSERT INTO `sys_job_log` VALUES (66, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:31');
INSERT INTO `sys_job_log` VALUES (67, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:32');
INSERT INTO `sys_job_log` VALUES (68, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:33');
INSERT INTO `sys_job_log` VALUES (69, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:34');
INSERT INTO `sys_job_log` VALUES (70, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:35');
INSERT INTO `sys_job_log` VALUES (71, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:36');
INSERT INTO `sys_job_log` VALUES (72, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:37');
INSERT INTO `sys_job_log` VALUES (73, '微信任务', 'DEFAULT', 'wx.rw', '微信任务 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 15:25:38');
INSERT INTO `sys_job_log` VALUES (74, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:37');
INSERT INTO `sys_job_log` VALUES (75, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:38');
INSERT INTO `sys_job_log` VALUES (76, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:39');
INSERT INTO `sys_job_log` VALUES (77, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:40');
INSERT INTO `sys_job_log` VALUES (78, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:41');
INSERT INTO `sys_job_log` VALUES (79, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:42');
INSERT INTO `sys_job_log` VALUES (80, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:43');
INSERT INTO `sys_job_log` VALUES (81, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:44');
INSERT INTO `sys_job_log` VALUES (82, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:45');
INSERT INTO `sys_job_log` VALUES (83, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：1毫秒', '0', '', '2024-11-25 15:27:46');
INSERT INTO `sys_job_log` VALUES (84, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:47');
INSERT INTO `sys_job_log` VALUES (85, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:48');
INSERT INTO `sys_job_log` VALUES (86, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:49');
INSERT INTO `sys_job_log` VALUES (87, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:50');
INSERT INTO `sys_job_log` VALUES (88, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:51');
INSERT INTO `sys_job_log` VALUES (89, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:52');
INSERT INTO `sys_job_log` VALUES (90, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:53');
INSERT INTO `sys_job_log` VALUES (91, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：1毫秒', '0', '', '2024-11-25 15:27:54');
INSERT INTO `sys_job_log` VALUES (92, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:55');
INSERT INTO `sys_job_log` VALUES (93, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:56');
INSERT INTO `sys_job_log` VALUES (94, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:57');
INSERT INTO `sys_job_log` VALUES (95, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:58');
INSERT INTO `sys_job_log` VALUES (96, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：0毫秒', '0', '', '2024-11-25 15:27:59');
INSERT INTO `sys_job_log` VALUES (97, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：12毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (98, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：4毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (99, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (100, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：2毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (101, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：2毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (102, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：2毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (103, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：2毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (104, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：2毫秒', '0', '', '2024-11-25 15:30:47');
INSERT INTO `sys_job_log` VALUES (105, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:48');
INSERT INTO `sys_job_log` VALUES (106, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：5毫秒', '0', '', '2024-11-25 15:30:49');
INSERT INTO `sys_job_log` VALUES (107, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:50');
INSERT INTO `sys_job_log` VALUES (108, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:51');
INSERT INTO `sys_job_log` VALUES (109, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：4毫秒', '0', '', '2024-11-25 15:30:52');
INSERT INTO `sys_job_log` VALUES (110, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：2毫秒', '0', '', '2024-11-25 15:30:53');
INSERT INTO `sys_job_log` VALUES (111, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:54');
INSERT INTO `sys_job_log` VALUES (112, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:55');
INSERT INTO `sys_job_log` VALUES (113, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:56');
INSERT INTO `sys_job_log` VALUES (114, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:57');
INSERT INTO `sys_job_log` VALUES (115, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:30:58');
INSERT INTO `sys_job_log` VALUES (116, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：2毫秒', '0', '', '2024-11-25 15:30:59');
INSERT INTO `sys_job_log` VALUES (117, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：4毫秒', '0', '', '2024-11-25 15:31:00');
INSERT INTO `sys_job_log` VALUES (118, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:31:01');
INSERT INTO `sys_job_log` VALUES (119, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：3毫秒', '0', '', '2024-11-25 15:31:02');
INSERT INTO `sys_job_log` VALUES (120, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：531毫秒', '0', '', '2024-11-25 15:33:58');
INSERT INTO `sys_job_log` VALUES (121, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：328毫秒', '0', '', '2024-11-25 15:33:58');
INSERT INTO `sys_job_log` VALUES (122, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：313毫秒', '0', '', '2024-11-25 15:33:58');
INSERT INTO `sys_job_log` VALUES (123, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：274毫秒', '0', '', '2024-11-25 15:33:59');
INSERT INTO `sys_job_log` VALUES (124, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：303毫秒', '0', '', '2024-11-25 15:33:59');
INSERT INTO `sys_job_log` VALUES (125, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：262毫秒', '0', '', '2024-11-25 15:33:59');
INSERT INTO `sys_job_log` VALUES (126, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：316毫秒', '0', '', '2024-11-25 15:34:00');
INSERT INTO `sys_job_log` VALUES (127, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：297毫秒', '0', '', '2024-11-25 15:34:00');
INSERT INTO `sys_job_log` VALUES (128, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：266毫秒', '0', '', '2024-11-25 15:34:00');
INSERT INTO `sys_job_log` VALUES (129, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：257毫秒', '0', '', '2024-11-25 15:34:00');
INSERT INTO `sys_job_log` VALUES (130, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：260毫秒', '0', '', '2024-11-25 15:34:01');
INSERT INTO `sys_job_log` VALUES (131, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：247毫秒', '0', '', '2024-11-25 15:34:01');
INSERT INTO `sys_job_log` VALUES (132, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：272毫秒', '0', '', '2024-11-25 15:34:01');
INSERT INTO `sys_job_log` VALUES (133, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：286毫秒', '0', '', '2024-11-25 15:34:01');
INSERT INTO `sys_job_log` VALUES (134, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：256毫秒', '0', '', '2024-11-25 15:34:02');
INSERT INTO `sys_job_log` VALUES (135, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：260毫秒', '0', '', '2024-11-25 15:34:02');
INSERT INTO `sys_job_log` VALUES (136, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：278毫秒', '0', '', '2024-11-25 15:34:02');
INSERT INTO `sys_job_log` VALUES (137, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：259毫秒', '0', '', '2024-11-25 15:34:03');
INSERT INTO `sys_job_log` VALUES (138, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：277毫秒', '0', '', '2024-11-25 15:34:03');
INSERT INTO `sys_job_log` VALUES (139, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：255毫秒', '0', '', '2024-11-25 15:34:03');
INSERT INTO `sys_job_log` VALUES (140, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：276毫秒', '0', '', '2024-11-25 15:34:03');
INSERT INTO `sys_job_log` VALUES (141, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：290毫秒', '0', '', '2024-11-25 15:34:04');
INSERT INTO `sys_job_log` VALUES (142, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：275毫秒', '0', '', '2024-11-25 15:34:04');
INSERT INTO `sys_job_log` VALUES (143, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：273毫秒', '0', '', '2024-11-25 15:34:04');
INSERT INTO `sys_job_log` VALUES (144, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：263毫秒', '0', '', '2024-11-25 15:34:05');
INSERT INTO `sys_job_log` VALUES (145, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：266毫秒', '0', '', '2024-11-25 15:34:05');
INSERT INTO `sys_job_log` VALUES (146, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：235毫秒', '0', '', '2024-11-25 15:34:05');
INSERT INTO `sys_job_log` VALUES (147, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：229毫秒', '0', '', '2024-11-25 15:34:05');
INSERT INTO `sys_job_log` VALUES (148, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：222毫秒', '0', '', '2024-11-25 15:34:06');
INSERT INTO `sys_job_log` VALUES (149, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：283毫秒', '0', '', '2024-11-25 15:34:06');
INSERT INTO `sys_job_log` VALUES (150, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：253毫秒', '0', '', '2024-11-25 15:34:06');
INSERT INTO `sys_job_log` VALUES (151, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：241毫秒', '0', '', '2024-11-25 15:34:06');
INSERT INTO `sys_job_log` VALUES (152, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：239毫秒', '0', '', '2024-11-25 15:34:07');
INSERT INTO `sys_job_log` VALUES (153, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：341毫秒', '0', '', '2024-11-25 15:34:07');
INSERT INTO `sys_job_log` VALUES (154, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：230毫秒', '0', '', '2024-11-25 15:34:07');
INSERT INTO `sys_job_log` VALUES (155, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：250毫秒', '0', '', '2024-11-25 15:34:07');
INSERT INTO `sys_job_log` VALUES (156, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：232毫秒', '0', '', '2024-11-25 15:34:08');
INSERT INTO `sys_job_log` VALUES (157, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：250毫秒', '0', '', '2024-11-25 15:34:08');
INSERT INTO `sys_job_log` VALUES (158, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：237毫秒', '0', '', '2024-11-25 15:34:08');
INSERT INTO `sys_job_log` VALUES (159, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：228毫秒', '0', '', '2024-11-25 15:34:08');
INSERT INTO `sys_job_log` VALUES (160, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：238毫秒', '0', '', '2024-11-25 15:34:09');
INSERT INTO `sys_job_log` VALUES (161, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：217毫秒', '0', '', '2024-11-25 15:34:09');
INSERT INTO `sys_job_log` VALUES (162, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：224毫秒', '0', '', '2024-11-25 15:34:09');
INSERT INTO `sys_job_log` VALUES (163, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：226毫秒', '0', '', '2024-11-25 15:34:09');
INSERT INTO `sys_job_log` VALUES (164, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：230毫秒', '0', '', '2024-11-25 15:34:10');
INSERT INTO `sys_job_log` VALUES (165, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：216毫秒', '0', '', '2024-11-25 15:34:10');
INSERT INTO `sys_job_log` VALUES (166, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：214毫秒', '0', '', '2024-11-25 15:34:10');
INSERT INTO `sys_job_log` VALUES (167, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：228毫秒', '0', '', '2024-11-25 15:34:11');
INSERT INTO `sys_job_log` VALUES (168, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：210毫秒', '0', '', '2024-11-25 15:34:12');
INSERT INTO `sys_job_log` VALUES (169, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：305毫秒', '0', '', '2024-11-25 15:37:00');
INSERT INTO `sys_job_log` VALUES (170, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：291毫秒', '0', '', '2024-11-25 15:38:00');
INSERT INTO `sys_job_log` VALUES (171, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：407毫秒', '0', '', '2024-11-25 15:50:00');
INSERT INTO `sys_job_log` VALUES (172, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：489毫秒', '0', '', '2024-11-25 16:00:00');
INSERT INTO `sys_job_log` VALUES (173, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：297毫秒', '0', '', '2024-11-25 16:10:00');
INSERT INTO `sys_job_log` VALUES (174, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：624毫秒', '0', '', '2024-11-25 16:20:00');
INSERT INTO `sys_job_log` VALUES (175, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：283毫秒', '0', '', '2024-11-25 16:30:00');
INSERT INTO `sys_job_log` VALUES (176, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：280毫秒', '0', '', '2024-11-25 16:40:00');
INSERT INTO `sys_job_log` VALUES (177, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：6毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.String)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 16:50:00');
INSERT INTO `sys_job_log` VALUES (178, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.String)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:00:00');
INSERT INTO `sys_job_log` VALUES (179, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：2毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.String)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:10:00');
INSERT INTO `sys_job_log` VALUES (180, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：2毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.String)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:11:00');
INSERT INTO `sys_job_log` VALUES (181, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：5毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.String)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:12:00');
INSERT INTO `sys_job_log` VALUES (182, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.String)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:14:00');
INSERT INTO `sys_job_log` VALUES (183, '微信任务', 'DEFAULT', 'wx.rw(1)', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.Integer)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:15:00');
INSERT INTO `sys_job_log` VALUES (184, '微信任务', 'DEFAULT', 'wx.rw(1)', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.Integer)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:16:00');
INSERT INTO `sys_job_log` VALUES (185, '微信任务', 'DEFAULT', 'wx.rw(1)', '微信任务 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.Integer)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:17:00');
INSERT INTO `sys_job_log` VALUES (186, '微信任务', 'DEFAULT', 'wx.rw(1)', '微信任务 总共耗时：7毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.rw(java.lang.Integer)\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-25 17:19:00');
INSERT INTO `sys_job_log` VALUES (187, '微信任务', 'DEFAULT', 'wx.rw(\"17\")', '微信任务 总共耗时：12812毫秒', '0', '', '2024-11-25 17:20:12');
INSERT INTO `sys_job_log` VALUES (188, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：511毫秒', '0', '', '2024-11-25 17:21:00');
INSERT INTO `sys_job_log` VALUES (189, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：311毫秒', '0', '', '2024-11-25 17:22:00');
INSERT INTO `sys_job_log` VALUES (190, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：37毫秒', '0', '', '2024-11-26 12:02:00');
INSERT INTO `sys_job_log` VALUES (191, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：12毫秒', '0', '', '2024-11-26 12:03:00');
INSERT INTO `sys_job_log` VALUES (192, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：10毫秒', '0', '', '2024-11-26 12:05:07');
INSERT INTO `sys_job_log` VALUES (193, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：10毫秒', '0', '', '2024-11-26 13:45:49');
INSERT INTO `sys_job_log` VALUES (194, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：8毫秒', '0', '', '2024-11-26 13:46:00');
INSERT INTO `sys_job_log` VALUES (195, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：180毫秒', '0', '', '2024-11-26 13:47:00');
INSERT INTO `sys_job_log` VALUES (196, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：638毫秒', '0', '', '2024-11-26 13:49:00');
INSERT INTO `sys_job_log` VALUES (197, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：614毫秒', '0', '', '2024-11-26 13:56:02');
INSERT INTO `sys_job_log` VALUES (198, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：480毫秒', '0', '', '2024-11-26 13:58:00');
INSERT INTO `sys_job_log` VALUES (199, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：605毫秒', '0', '', '2024-11-26 14:20:12');
INSERT INTO `sys_job_log` VALUES (200, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：482毫秒', '0', '', '2024-11-26 14:22:00');
INSERT INTO `sys_job_log` VALUES (201, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1334毫秒', '0', '', '2024-11-26 14:24:01');
INSERT INTO `sys_job_log` VALUES (202, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：707毫秒', '0', '', '2024-11-26 14:38:39');
INSERT INTO `sys_job_log` VALUES (203, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：629毫秒', '0', '', '2024-11-26 14:38:39');
INSERT INTO `sys_job_log` VALUES (204, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：624毫秒', '0', '', '2024-11-26 14:38:40');
INSERT INTO `sys_job_log` VALUES (205, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：659毫秒', '0', '', '2024-11-26 14:38:41');
INSERT INTO `sys_job_log` VALUES (206, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：573毫秒', '0', '', '2024-11-26 14:38:41');
INSERT INTO `sys_job_log` VALUES (207, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：687毫秒', '0', '', '2024-11-26 14:38:42');
INSERT INTO `sys_job_log` VALUES (208, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：639毫秒', '0', '', '2024-11-26 14:38:43');
INSERT INTO `sys_job_log` VALUES (209, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：604毫秒', '0', '', '2024-11-26 14:38:43');
INSERT INTO `sys_job_log` VALUES (210, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：596毫秒', '0', '', '2024-11-26 14:38:44');
INSERT INTO `sys_job_log` VALUES (211, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：663毫秒', '0', '', '2024-11-26 14:38:44');
INSERT INTO `sys_job_log` VALUES (212, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：740毫秒', '0', '', '2024-11-26 14:38:45');
INSERT INTO `sys_job_log` VALUES (213, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：569毫秒', '0', '', '2024-11-26 14:38:46');
INSERT INTO `sys_job_log` VALUES (214, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：631毫秒', '0', '', '2024-11-26 14:38:46');
INSERT INTO `sys_job_log` VALUES (215, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：617毫秒', '0', '', '2024-11-26 14:38:47');
INSERT INTO `sys_job_log` VALUES (216, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：666毫秒', '0', '', '2024-11-26 14:48:06');
INSERT INTO `sys_job_log` VALUES (217, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：662毫秒', '0', '', '2024-11-26 14:48:07');
INSERT INTO `sys_job_log` VALUES (218, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：633毫秒', '0', '', '2024-11-26 14:48:08');
INSERT INTO `sys_job_log` VALUES (219, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：700毫秒', '0', '', '2024-11-26 14:48:08');
INSERT INTO `sys_job_log` VALUES (220, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：603毫秒', '0', '', '2024-11-26 14:48:09');
INSERT INTO `sys_job_log` VALUES (221, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：664毫秒', '0', '', '2024-11-26 14:48:10');
INSERT INTO `sys_job_log` VALUES (222, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：649毫秒', '0', '', '2024-11-26 14:48:10');
INSERT INTO `sys_job_log` VALUES (223, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：629毫秒', '0', '', '2024-11-26 14:48:11');
INSERT INTO `sys_job_log` VALUES (224, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：566毫秒', '0', '', '2024-11-26 14:48:12');
INSERT INTO `sys_job_log` VALUES (225, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：575毫秒', '0', '', '2024-11-26 14:48:12');
INSERT INTO `sys_job_log` VALUES (226, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：63633毫秒', '0', '', '2024-11-26 14:50:03');
INSERT INTO `sys_job_log` VALUES (227, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：653毫秒', '0', '', '2024-11-26 14:50:04');
INSERT INTO `sys_job_log` VALUES (228, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：556毫秒', '0', '', '2024-11-26 15:34:00');
INSERT INTO `sys_job_log` VALUES (229, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：531毫秒', '0', '', '2024-11-26 15:36:00');
INSERT INTO `sys_job_log` VALUES (230, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：494毫秒', '0', '', '2024-11-26 15:37:00');
INSERT INTO `sys_job_log` VALUES (231, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：530毫秒', '0', '', '2024-11-26 15:39:00');
INSERT INTO `sys_job_log` VALUES (232, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：831毫秒', '0', '', '2024-11-26 15:42:11');
INSERT INTO `sys_job_log` VALUES (233, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：16175毫秒', '0', '', '2024-11-26 15:44:03');
INSERT INTO `sys_job_log` VALUES (234, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：284毫秒', '0', '', '2024-11-26 15:44:03');
INSERT INTO `sys_job_log` VALUES (235, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：509毫秒', '0', '', '2024-11-26 15:58:00');
INSERT INTO `sys_job_log` VALUES (236, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：11905毫秒', '0', '', '2024-11-26 16:00:11');
INSERT INTO `sys_job_log` VALUES (237, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：299毫秒', '0', '', '2024-11-26 16:01:00');
INSERT INTO `sys_job_log` VALUES (238, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：326毫秒', '0', '', '2024-11-26 16:02:00');
INSERT INTO `sys_job_log` VALUES (239, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：319毫秒', '0', '', '2024-11-26 16:05:11');
INSERT INTO `sys_job_log` VALUES (240, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：24383毫秒', '0', '', '2024-11-26 16:06:24');
INSERT INTO `sys_job_log` VALUES (241, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：3626毫秒', '0', '', '2024-11-26 16:09:03');
INSERT INTO `sys_job_log` VALUES (242, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：587毫秒', '0', '', '2024-11-26 16:11:00');
INSERT INTO `sys_job_log` VALUES (243, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：659毫秒', '0', '', '2024-11-26 16:13:46');
INSERT INTO `sys_job_log` VALUES (244, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：286毫秒', '0', '', '2024-11-26 16:14:00');
INSERT INTO `sys_job_log` VALUES (245, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：582毫秒', '0', '', '2024-11-26 16:16:00');
INSERT INTO `sys_job_log` VALUES (246, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：17毫秒', '0', '', '2024-11-26 16:17:02');
INSERT INTO `sys_job_log` VALUES (247, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：7毫秒', '0', '', '2024-11-26 16:18:00');
INSERT INTO `sys_job_log` VALUES (248, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：12毫秒', '0', '', '2024-11-26 16:19:00');
INSERT INTO `sys_job_log` VALUES (249, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：9毫秒', '0', '', '2024-11-26 16:20:00');
INSERT INTO `sys_job_log` VALUES (250, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：11毫秒', '0', '', '2024-11-26 16:21:00');
INSERT INTO `sys_job_log` VALUES (251, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：7毫秒', '0', '', '2024-11-26 16:22:00');
INSERT INTO `sys_job_log` VALUES (252, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1405毫秒', '0', '', '2024-11-26 16:23:01');
INSERT INTO `sys_job_log` VALUES (253, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：10992毫秒', '0', '', '2024-11-26 16:24:11');
INSERT INTO `sys_job_log` VALUES (254, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1645毫秒', '0', '', '2024-11-26 16:33:01');
INSERT INTO `sys_job_log` VALUES (255, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1431毫秒', '0', '', '2024-11-26 16:43:03');
INSERT INTO `sys_job_log` VALUES (256, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1280毫秒', '0', '', '2024-11-26 16:43:04');
INSERT INTO `sys_job_log` VALUES (257, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1257毫秒', '0', '', '2024-11-26 16:43:05');
INSERT INTO `sys_job_log` VALUES (258, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1223毫秒', '0', '', '2024-11-26 16:43:07');
INSERT INTO `sys_job_log` VALUES (259, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1159毫秒', '0', '', '2024-11-26 16:43:08');
INSERT INTO `sys_job_log` VALUES (260, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1287毫秒', '0', '', '2024-11-26 16:43:09');
INSERT INTO `sys_job_log` VALUES (261, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1069毫秒', '0', '', '2024-11-26 16:43:10');
INSERT INTO `sys_job_log` VALUES (262, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1001毫秒', '0', '', '2024-11-26 16:43:11');
INSERT INTO `sys_job_log` VALUES (263, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1260毫秒', '0', '', '2024-11-26 16:44:01');
INSERT INTO `sys_job_log` VALUES (264, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：552毫秒', '0', '', '2024-11-26 16:45:00');
INSERT INTO `sys_job_log` VALUES (265, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1670毫秒', '0', '', '2024-11-27 09:32:22');
INSERT INTO `sys_job_log` VALUES (266, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：4041毫秒', '0', '', '2024-11-27 09:42:06');
INSERT INTO `sys_job_log` VALUES (267, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：34246毫秒', '0', '', '2024-11-27 09:44:34');
INSERT INTO `sys_job_log` VALUES (268, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：933毫秒', '0', '', '2024-11-27 09:45:00');
INSERT INTO `sys_job_log` VALUES (269, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：752毫秒', '0', '', '2024-11-27 09:46:00');
INSERT INTO `sys_job_log` VALUES (270, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：711毫秒', '0', '', '2024-11-27 09:47:00');
INSERT INTO `sys_job_log` VALUES (271, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：794毫秒', '0', '', '2024-11-27 09:48:00');
INSERT INTO `sys_job_log` VALUES (272, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：684毫秒', '0', '', '2024-11-27 09:49:00');
INSERT INTO `sys_job_log` VALUES (273, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：696毫秒', '0', '', '2024-11-27 09:50:00');
INSERT INTO `sys_job_log` VALUES (274, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：747毫秒', '0', '', '2024-11-27 09:51:00');
INSERT INTO `sys_job_log` VALUES (275, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：761毫秒', '0', '', '2024-11-27 09:52:00');
INSERT INTO `sys_job_log` VALUES (276, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：36366毫秒', '0', '', '2024-11-27 09:53:36');
INSERT INTO `sys_job_log` VALUES (277, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：749毫秒', '0', '', '2024-11-27 09:54:00');
INSERT INTO `sys_job_log` VALUES (278, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：731毫秒', '0', '', '2024-11-27 09:55:00');
INSERT INTO `sys_job_log` VALUES (279, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：782毫秒', '0', '', '2024-11-27 09:56:00');
INSERT INTO `sys_job_log` VALUES (280, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：736毫秒', '0', '', '2024-11-27 09:57:00');
INSERT INTO `sys_job_log` VALUES (281, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：711毫秒', '0', '', '2024-11-27 09:58:00');
INSERT INTO `sys_job_log` VALUES (282, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：746毫秒', '0', '', '2024-11-27 09:59:00');
INSERT INTO `sys_job_log` VALUES (283, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：709毫秒', '0', '', '2024-11-27 10:00:00');
INSERT INTO `sys_job_log` VALUES (284, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：730毫秒', '0', '', '2024-11-27 10:01:00');
INSERT INTO `sys_job_log` VALUES (285, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1935毫秒', '0', '', '2024-11-27 10:02:01');
INSERT INTO `sys_job_log` VALUES (286, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1888毫秒', '0', '', '2024-11-27 10:03:01');
INSERT INTO `sys_job_log` VALUES (287, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：632毫秒', '0', '', '2024-11-27 10:04:00');
INSERT INTO `sys_job_log` VALUES (288, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：836毫秒', '0', '', '2024-11-27 10:05:00');
INSERT INTO `sys_job_log` VALUES (289, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：3563毫秒', '0', '', '2024-11-27 10:06:03');
INSERT INTO `sys_job_log` VALUES (290, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：268毫秒', '0', '', '2024-11-27 10:07:00');
INSERT INTO `sys_job_log` VALUES (291, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：680毫秒', '0', '', '2024-11-27 10:08:00');
INSERT INTO `sys_job_log` VALUES (292, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：102819毫秒', '0', '', '2024-11-27 10:10:42');
INSERT INTO `sys_job_log` VALUES (293, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1416毫秒', '0', '', '2024-11-27 10:10:44');
INSERT INTO `sys_job_log` VALUES (294, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：267毫秒', '0', '', '2024-11-27 10:11:00');
INSERT INTO `sys_job_log` VALUES (295, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：331毫秒', '0', '', '2024-11-27 10:12:00');
INSERT INTO `sys_job_log` VALUES (296, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：21319毫秒', '0', '', '2024-11-27 10:13:21');
INSERT INTO `sys_job_log` VALUES (297, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：281毫秒', '0', '', '2024-11-27 10:14:00');
INSERT INTO `sys_job_log` VALUES (298, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：368毫秒', '0', '', '2024-11-27 10:15:00');
INSERT INTO `sys_job_log` VALUES (299, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：299毫秒', '0', '', '2024-11-27 10:16:00');
INSERT INTO `sys_job_log` VALUES (300, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：251毫秒', '0', '', '2024-11-27 10:17:00');
INSERT INTO `sys_job_log` VALUES (301, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：355毫秒', '0', '', '2024-11-27 10:18:00');
INSERT INTO `sys_job_log` VALUES (302, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：287毫秒', '0', '', '2024-11-27 10:19:00');
INSERT INTO `sys_job_log` VALUES (303, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：344毫秒', '0', '', '2024-11-27 10:20:00');
INSERT INTO `sys_job_log` VALUES (304, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：253毫秒', '0', '', '2024-11-27 10:21:00');
INSERT INTO `sys_job_log` VALUES (305, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：251毫秒', '0', '', '2024-11-27 10:22:00');
INSERT INTO `sys_job_log` VALUES (306, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：267毫秒', '0', '', '2024-11-27 10:23:00');
INSERT INTO `sys_job_log` VALUES (307, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：313毫秒', '0', '', '2024-11-27 10:24:00');
INSERT INTO `sys_job_log` VALUES (308, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：349毫秒', '0', '', '2024-11-27 10:25:00');
INSERT INTO `sys_job_log` VALUES (309, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：312毫秒', '0', '', '2024-11-27 10:26:00');
INSERT INTO `sys_job_log` VALUES (310, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：269毫秒', '0', '', '2024-11-27 10:27:00');
INSERT INTO `sys_job_log` VALUES (311, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：226毫秒', '0', '', '2024-11-27 10:28:00');
INSERT INTO `sys_job_log` VALUES (312, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：304毫秒', '0', '', '2024-11-27 10:29:00');
INSERT INTO `sys_job_log` VALUES (313, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：280毫秒', '0', '', '2024-11-27 10:30:00');
INSERT INTO `sys_job_log` VALUES (314, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：346毫秒', '0', '', '2024-11-27 10:31:00');
INSERT INTO `sys_job_log` VALUES (315, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：247毫秒', '0', '', '2024-11-27 10:32:00');
INSERT INTO `sys_job_log` VALUES (316, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：284毫秒', '0', '', '2024-11-27 10:33:00');
INSERT INTO `sys_job_log` VALUES (317, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：282毫秒', '0', '', '2024-11-27 10:34:00');
INSERT INTO `sys_job_log` VALUES (318, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：285毫秒', '0', '', '2024-11-27 10:35:00');
INSERT INTO `sys_job_log` VALUES (319, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：302毫秒', '0', '', '2024-11-27 10:36:00');
INSERT INTO `sys_job_log` VALUES (320, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：246毫秒', '0', '', '2024-11-27 10:37:00');
INSERT INTO `sys_job_log` VALUES (321, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：297毫秒', '0', '', '2024-11-27 10:38:00');
INSERT INTO `sys_job_log` VALUES (322, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：321毫秒', '0', '', '2024-11-27 10:39:00');
INSERT INTO `sys_job_log` VALUES (323, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：246毫秒', '0', '', '2024-11-27 10:40:00');
INSERT INTO `sys_job_log` VALUES (324, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：258毫秒', '0', '', '2024-11-27 10:41:00');
INSERT INTO `sys_job_log` VALUES (325, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：368毫秒', '0', '', '2024-11-27 10:42:00');
INSERT INTO `sys_job_log` VALUES (326, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：329毫秒', '0', '', '2024-11-27 10:43:00');
INSERT INTO `sys_job_log` VALUES (327, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：347毫秒', '0', '', '2024-11-27 10:44:00');
INSERT INTO `sys_job_log` VALUES (328, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：241毫秒', '0', '', '2024-11-27 10:45:00');
INSERT INTO `sys_job_log` VALUES (329, '微信任务', 'DEFAULT', 'wx.rw(\"1\")', '微信任务 总共耗时：1223毫秒', '0', '', '2024-11-27 10:46:01');
INSERT INTO `sys_job_log` VALUES (330, '天气预报', 'DEFAULT', 'wx.testRobot', '天气预报 总共耗时：833毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.testRobot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:17:01');
INSERT INTO `sys_job_log` VALUES (331, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：951毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:19:00');
INSERT INTO `sys_job_log` VALUES (332, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：42170毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:20:42');
INSERT INTO `sys_job_log` VALUES (333, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：13118毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:21:13');
INSERT INTO `sys_job_log` VALUES (334, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：363毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:22:00');
INSERT INTO `sys_job_log` VALUES (335, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：58246毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:23:58');
INSERT INTO `sys_job_log` VALUES (336, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：192毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:24:00');
INSERT INTO `sys_job_log` VALUES (337, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：227毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:25:00');
INSERT INTO `sys_job_log` VALUES (338, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：195毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:26:00');
INSERT INTO `sys_job_log` VALUES (339, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：202毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:27:00');
INSERT INTO `sys_job_log` VALUES (340, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：245毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:28:00');
INSERT INTO `sys_job_log` VALUES (341, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：210毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:29:00');
INSERT INTO `sys_job_log` VALUES (342, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：254毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:30:00');
INSERT INTO `sys_job_log` VALUES (343, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：370毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:31:00');
INSERT INTO `sys_job_log` VALUES (344, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：194毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:32:00');
INSERT INTO `sys_job_log` VALUES (345, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：203毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:33:00');
INSERT INTO `sys_job_log` VALUES (346, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：188毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:34:00');
INSERT INTO `sys_job_log` VALUES (347, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：253毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:35:00');
INSERT INTO `sys_job_log` VALUES (348, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：65193毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:37:05');
INSERT INTO `sys_job_log` VALUES (349, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：159毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 10 more\r\n', '2024-11-27 11:37:05');
INSERT INTO `sys_job_log` VALUES (350, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：27737毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.GeneratedMethodAccessor73.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 9 more\r\n', '2024-11-27 11:39:37');
INSERT INTO `sys_job_log` VALUES (351, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：198毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.GeneratedMethodAccessor73.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:497)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.IndexOutOfBoundsException: Index: 0, Size: 0\r\n	at java.util.ArrayList.rangeCheck(ArrayList.java:653)\r\n	at java.util.ArrayList.get(ArrayList.java:429)\r\n	at com.ruoyi.quartz.util.MyNoticeUtil.getWeather(MyNoticeUtil.java:152)\r\n	at com.ruoyi.quartz.task.RyTask.bot(RyTask.java:91)\r\n	... 9 more\r\n', '2024-11-27 11:39:38');
INSERT INTO `sys_job_log` VALUES (352, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：6毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (353, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (354, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (355, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (356, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (357, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (358, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (359, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (360, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (361, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (362, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (363, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (364, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (365, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (366, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:39');
INSERT INTO `sys_job_log` VALUES (367, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:40');
INSERT INTO `sys_job_log` VALUES (368, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:41');
INSERT INTO `sys_job_log` VALUES (369, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:42');
INSERT INTO `sys_job_log` VALUES (370, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:43');
INSERT INTO `sys_job_log` VALUES (371, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:44');
INSERT INTO `sys_job_log` VALUES (372, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:45');
INSERT INTO `sys_job_log` VALUES (373, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:46');
INSERT INTO `sys_job_log` VALUES (374, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:47');
INSERT INTO `sys_job_log` VALUES (375, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:48');
INSERT INTO `sys_job_log` VALUES (376, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:49');
INSERT INTO `sys_job_log` VALUES (377, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:50');
INSERT INTO `sys_job_log` VALUES (378, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:51');
INSERT INTO `sys_job_log` VALUES (379, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:52');
INSERT INTO `sys_job_log` VALUES (380, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:53');
INSERT INTO `sys_job_log` VALUES (381, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:54');
INSERT INTO `sys_job_log` VALUES (382, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:55');
INSERT INTO `sys_job_log` VALUES (383, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:56');
INSERT INTO `sys_job_log` VALUES (384, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:57');
INSERT INTO `sys_job_log` VALUES (385, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:58');
INSERT INTO `sys_job_log` VALUES (386, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：1毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:06:59');
INSERT INTO `sys_job_log` VALUES (387, '天气预报', 'DEFAULT', 'wx.bot()', '天气预报 总共耗时：0毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.bot()\r\n	at java.lang.Class.getMethod(Class.java:1786)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2024-11-28 14:07:00');
INSERT INTO `sys_job_log` VALUES (388, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：13656毫秒', '0', '', '2024-11-28 14:07:29');
INSERT INTO `sys_job_log` VALUES (389, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：1342毫秒', '0', '', '2024-11-28 14:07:31');
INSERT INTO `sys_job_log` VALUES (390, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：1361毫秒', '0', '', '2024-11-28 14:07:32');
INSERT INTO `sys_job_log` VALUES (391, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：1162毫秒', '0', '', '2024-11-28 14:07:33');
INSERT INTO `sys_job_log` VALUES (392, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：1229毫秒', '0', '', '2024-11-28 14:07:34');
INSERT INTO `sys_job_log` VALUES (393, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：881毫秒', '0', '', '2024-11-28 14:07:35');
INSERT INTO `sys_job_log` VALUES (394, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：1011毫秒', '0', '', '2024-11-28 14:07:36');
INSERT INTO `sys_job_log` VALUES (395, '天气预报', 'DEFAULT', 'wx.bot(\"1\")', '天气预报 总共耗时：1001毫秒', '0', '', '2024-11-28 14:07:37');
INSERT INTO `sys_job_log` VALUES (396, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：1405毫秒', '0', '', '2024-11-29 13:49:47');
INSERT INTO `sys_job_log` VALUES (397, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：455毫秒', '0', '', '2024-11-29 13:56:17');
INSERT INTO `sys_job_log` VALUES (398, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：325毫秒', '0', '', '2024-11-29 13:56:56');
INSERT INTO `sys_job_log` VALUES (399, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：17510毫秒', '0', '', '2024-11-29 13:57:43');
INSERT INTO `sys_job_log` VALUES (400, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：4076毫秒', '0', '', '2024-11-29 13:58:44');
INSERT INTO `sys_job_log` VALUES (401, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：251毫秒', '0', '', '2024-11-29 14:00:00');
INSERT INTO `sys_job_log` VALUES (402, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：186毫秒', '0', '', '2024-11-29 14:00:01');
INSERT INTO `sys_job_log` VALUES (403, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：147毫秒', '0', '', '2024-11-29 14:00:02');
INSERT INTO `sys_job_log` VALUES (404, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：178毫秒', '0', '', '2024-11-29 14:00:03');
INSERT INTO `sys_job_log` VALUES (405, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：138毫秒', '0', '', '2024-11-29 14:00:04');
INSERT INTO `sys_job_log` VALUES (406, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：150毫秒', '0', '', '2024-11-29 14:00:05');
INSERT INTO `sys_job_log` VALUES (407, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：162毫秒', '0', '', '2024-11-29 14:00:06');
INSERT INTO `sys_job_log` VALUES (408, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：143毫秒', '0', '', '2024-11-29 14:00:07');
INSERT INTO `sys_job_log` VALUES (409, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：178毫秒', '0', '', '2024-11-29 14:00:08');
INSERT INTO `sys_job_log` VALUES (410, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：136毫秒', '0', '', '2024-11-29 14:00:09');
INSERT INTO `sys_job_log` VALUES (411, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：152毫秒', '0', '', '2024-11-29 14:00:10');
INSERT INTO `sys_job_log` VALUES (412, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：792毫秒', '0', '', '2024-11-29 14:00:11');
INSERT INTO `sys_job_log` VALUES (413, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：768毫秒', '0', '', '2024-11-29 14:00:17');
INSERT INTO `sys_job_log` VALUES (414, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：652毫秒', '0', '', '2024-11-29 14:00:17');
INSERT INTO `sys_job_log` VALUES (415, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：648毫秒', '0', '', '2024-11-29 14:00:18');
INSERT INTO `sys_job_log` VALUES (416, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：657毫秒', '0', '', '2024-11-29 14:00:19');
INSERT INTO `sys_job_log` VALUES (417, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：690毫秒', '0', '', '2024-11-29 14:00:19');
INSERT INTO `sys_job_log` VALUES (418, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：642毫秒', '0', '', '2024-11-29 14:00:20');
INSERT INTO `sys_job_log` VALUES (419, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：681毫秒', '0', '', '2024-11-29 14:00:21');
INSERT INTO `sys_job_log` VALUES (420, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：655毫秒', '0', '', '2024-11-29 14:00:21');
INSERT INTO `sys_job_log` VALUES (421, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：670毫秒', '0', '', '2024-11-29 14:00:22');
INSERT INTO `sys_job_log` VALUES (422, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：432毫秒', '0', '', '2024-11-29 14:00:23');
INSERT INTO `sys_job_log` VALUES (423, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：417毫秒', '0', '', '2024-11-29 14:00:24');
INSERT INTO `sys_job_log` VALUES (424, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：434毫秒', '0', '', '2024-11-29 14:00:25');
INSERT INTO `sys_job_log` VALUES (425, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：589毫秒', '0', '', '2024-11-29 14:00:26');
INSERT INTO `sys_job_log` VALUES (426, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：536毫秒', '0', '', '2024-11-29 14:00:27');
INSERT INTO `sys_job_log` VALUES (427, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：391毫秒', '0', '', '2024-11-29 14:00:28');
INSERT INTO `sys_job_log` VALUES (428, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：442毫秒', '0', '', '2024-11-29 14:00:29');
INSERT INTO `sys_job_log` VALUES (429, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：402毫秒', '0', '', '2024-11-29 14:00:30');
INSERT INTO `sys_job_log` VALUES (430, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：452毫秒', '0', '', '2024-11-29 14:00:31');
INSERT INTO `sys_job_log` VALUES (431, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：467毫秒', '0', '', '2024-11-29 14:00:32');
INSERT INTO `sys_job_log` VALUES (432, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：384毫秒', '0', '', '2024-11-29 14:00:33');
INSERT INTO `sys_job_log` VALUES (433, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：410毫秒', '0', '', '2024-11-29 14:00:34');
INSERT INTO `sys_job_log` VALUES (434, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：402毫秒', '0', '', '2024-11-29 14:00:35');
INSERT INTO `sys_job_log` VALUES (435, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：413毫秒', '0', '', '2024-11-29 14:00:36');
INSERT INTO `sys_job_log` VALUES (436, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：395毫秒', '0', '', '2024-11-29 14:00:37');
INSERT INTO `sys_job_log` VALUES (437, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：406毫秒', '0', '', '2024-11-29 14:00:38');
INSERT INTO `sys_job_log` VALUES (438, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：394毫秒', '0', '', '2024-11-29 14:00:39');
INSERT INTO `sys_job_log` VALUES (439, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：418毫秒', '0', '', '2024-11-29 14:00:40');
INSERT INTO `sys_job_log` VALUES (440, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：417毫秒', '0', '', '2024-11-29 14:00:41');
INSERT INTO `sys_job_log` VALUES (441, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：515毫秒', '0', '', '2024-11-29 14:00:42');
INSERT INTO `sys_job_log` VALUES (442, '放假通知', 'DEFAULT', 'wx.bot(\"2\")', '放假通知 总共耗时：383毫秒', '0', '', '2024-11-29 14:00:43');
INSERT INTO `sys_job_log` VALUES (443, '放假通知', 'DEFAULT', 'wx.bot(\'2\')', '放假通知 总共耗时：1156毫秒', '0', '', '2024-11-29 16:05:54');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 09:58:37');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 13:35:43');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 13:52:40');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 15:17:07');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-22 15:49:38');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 15:49:45');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-25 13:51:34');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-25 14:38:47');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-25 14:38:51');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-26 12:02:07');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-26 13:45:38');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-26 13:45:42');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-26 15:33:20');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 09:32:06');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 10:46:21');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 11:16:29');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 13:37:57');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-27 15:11:54');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 15:11:57');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 15:20:56');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-27 15:34:07');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 15:34:11');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 09:49:16');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 10:46:17');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 13:03:24');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-29 11:45:47');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 11:45:52');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 13:44:47');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 16:01:47');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1067 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 5, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-11-22 09:35:42', 'admin', '2024-11-25 15:59:03', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-11-22 09:35:42', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-11-22 09:35:42', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '框架官网', 0, 4, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '0', '1', '', 'guide', 'admin', '2024-11-22 09:35:42', 'admin', '2024-11-22 10:12:17', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-11-22 09:35:42', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-11-22 09:35:42', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-11-22 09:35:42', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-11-22 09:35:42', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-11-22 09:35:42', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-11-22 09:35:42', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-11-22 09:35:42', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-11-22 09:35:42', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-11-22 09:35:42', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-11-22 09:35:42', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 0, 1, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-11-22 09:35:42', 'admin', '2024-11-25 15:58:02', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-11-22 09:35:42', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-11-22 09:35:42', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-11-22 09:35:42', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-11-22 09:35:42', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-11-22 09:35:42', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-11-22 09:35:42', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-11-22 09:35:42', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-11-22 09:35:42', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-11-22 09:35:42', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '群发文案', 0, 1, 'wechat', 'system/wechat/index', NULL, '', 1, 0, 'C', '0', '0', 'system:wechat:list', 'email', 'admin', '2024-11-25 15:02:59', 'admin', '2024-11-28 14:22:11', '微信群发菜单');
INSERT INTO `sys_menu` VALUES (1062, '微信群发查询', 1061, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:wechat:query', '#', 'admin', '2024-11-25 15:02:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1063, '微信群发新增', 1061, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:wechat:add', '#', 'admin', '2024-11-25 15:02:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1064, '微信群发修改', 1061, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:wechat:edit', '#', 'admin', '2024-11-25 15:02:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1065, '微信群发删除', 1061, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:wechat:remove', '#', 'admin', '2024-11-25 15:02:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '微信群发导出', 1061, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:wechat:export', '#', 'admin', '2024-11-25 15:02:59', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-11-22 09:35:43', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-11-22 09:35:43', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 286 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-22 10:11:02', 15);
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-22 10:11:17', 5);
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-11-22 09:35:42\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:11:46', 30);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-22 10:11:49', 9);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-11-22 09:35:42\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"框架官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:12:17', 12);
INSERT INTO `sys_oper_log` VALUES (105, '定时任务', 1, 'com.ruoyi.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"cronExpression\":\"* 1/1 * * * ?\",\"invokeTarget\":\"ryTask.ryParams(\'ry\')\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"2\",\"nextValidTime\":\"2024-11-22 10:22:02\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:22:01', 58);
INSERT INTO `sys_oper_log` VALUES (106, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:22:23', 15);
INSERT INTO `sys_oper_log` VALUES (107, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:22:44', 9);
INSERT INTO `sys_oper_log` VALUES (108, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-22 10:22:01\",\"cronExpression\":\"* 1/1 * * * ?\",\"invokeTarget\":\"ryTask.a\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"2\",\"nextValidTime\":\"2024-11-22 10:27:32\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:27:31', 19);
INSERT INTO `sys_oper_log` VALUES (109, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:27:36', 8);
INSERT INTO `sys_oper_log` VALUES (110, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:27:49', 10);
INSERT INTO `sys_oper_log` VALUES (111, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-22 10:22:01\",\"cronExpression\":\"0 0/1 * * * ? \",\"invokeTarget\":\"ryTask.a\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"2\",\"nextValidTime\":\"2024-11-22 10:32:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:31:05', 10);
INSERT INTO `sys_oper_log` VALUES (112, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:31:08', 11);
INSERT INTO `sys_oper_log` VALUES (113, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 10:32:37', 10);
INSERT INTO `sys_oper_log` VALUES (114, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/11/22/微信图片_20241122154717_20241122154728A001.jpg\",\"code\":200}', 0, NULL, '2024-11-22 15:47:28', 66);
INSERT INTO `sys_oper_log` VALUES (115, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 15:47:32', 15);
INSERT INTO `sys_oper_log` VALUES (116, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-22 10:22:01\",\"cronExpression\":\"0 0/1 * * * ? \",\"invokeTarget\":\"IWe.execute\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"2\",\"nextValidTime\":\"2024-11-25 14:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\"}', NULL, 1, 'No bean named \'IWe\' available', '2024-11-25 13:59:29', 7);
INSERT INTO `sys_oper_log` VALUES (117, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-22 10:22:01\",\"cronExpression\":\"0 0/1 * * * ? \",\"invokeTarget\":\"IWe.execute\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"2\",\"nextValidTime\":\"2024-11-25 14:05:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 14:04:18', 36);
INSERT INTO `sys_oper_log` VALUES (118, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 14:07:09', 11);
INSERT INTO `sys_oper_log` VALUES (119, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-22 10:22:01\",\"cronExpression\":\"0 0/1 * * * ? \",\"invokeTarget\":\"IWe.execute\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 14:09:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 14:08:03', 41);
INSERT INTO `sys_oper_log` VALUES (120, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 14:08:06', 16);
INSERT INTO `sys_oper_log` VALUES (121, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 14:09:18', 11);
INSERT INTO `sys_oper_log` VALUES (122, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-22 10:22:01\",\"cronExpression\":\"0 0/1 * * * ? \",\"invokeTarget\":\"Aa\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 14:40:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\"}', NULL, 1, 'No bean named \'Aa\' available', '2024-11-25 14:39:12', 6);
INSERT INTO `sys_oper_log` VALUES (123, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-22 10:22:01\",\"cronExpression\":\"0 0/1 * * * ? \",\"invokeTarget\":\"Aa\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"群发助手\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 14:40:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\"}', NULL, 1, 'No bean named \'Aa\' available', '2024-11-25 14:39:17', 1);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"wechat\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 14:55:41', 112);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"wechat\"}', NULL, 0, NULL, '2024-11-25 14:55:44', 348);
INSERT INTO `sys_oper_log` VALUES (126, '微信群发', 1, 'com.ruoyi.quartz.controller.WechatController.add()', 'POST', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"time\":12,\"txt\":\"中午好\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:05:32', 33);
INSERT INTO `sys_oper_log` VALUES (127, '定时任务', 3, 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', 1, 'admin', '研发部门', '/monitor/job/100', '127.0.0.1', '内网IP', '[100]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:10:07', 48);
INSERT INTO `sys_oper_log` VALUES (128, '定时任务', 1, 'com.ruoyi.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"cronExpression\":\"0 0 17 * * ?\",\"invokeTarget\":\"wx.rw\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 17:00:00\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:14:23', 63);
INSERT INTO `sys_oper_log` VALUES (129, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":12,\"txt\":\"中午好\",\"updateBy\":\"\",\"updateTime\":\"2024-11-25 15:21:14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:21:14', 15);
INSERT INTO `sys_oper_log` VALUES (130, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 0 17 * * ?\",\"invokeTarget\":\"wx.rw\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 17:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:23:12', 12);
INSERT INTO `sys_oper_log` VALUES (131, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 0 17 * * ?\",\"invokeTarget\":\"wx.rw\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 17:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:24:14', 17);
INSERT INTO `sys_oper_log` VALUES (132, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"* * * * * ?\",\"invokeTarget\":\"wx.rw\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 15:25:07\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:25:06', 10);
INSERT INTO `sys_oper_log` VALUES (133, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:25:38', 8);
INSERT INTO `sys_oper_log` VALUES (134, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"* * * * * ?\",\"invokeTarget\":\"wx.rw(\\\"17\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 15:27:38\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:27:37', 8);
INSERT INTO `sys_oper_log` VALUES (135, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:27:59', 9);
INSERT INTO `sys_oper_log` VALUES (136, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:30:47', 24);
INSERT INTO `sys_oper_log` VALUES (137, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:31:02', 10);
INSERT INTO `sys_oper_log` VALUES (138, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:33:57', 29);
INSERT INTO `sys_oper_log` VALUES (139, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:34:12', 10);
INSERT INTO `sys_oper_log` VALUES (140, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.rw(\\\"17\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 15:36:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:35:34', 10);
INSERT INTO `sys_oper_log` VALUES (141, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:36:48', 18);
INSERT INTO `sys_oper_log` VALUES (142, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:38:36', 9);
INSERT INTO `sys_oper_log` VALUES (143, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /10 * * * ?\",\"invokeTarget\":\"wx.rw(\\\"17\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 15:40:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:38:41', 9);
INSERT INTO `sys_oper_log` VALUES (144, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:40:49', 25);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/job/index\",\"createTime\":\"2024-11-22 09:35:42\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":110,\"menuName\":\"定时任务\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2,\"path\":\"job\",\"perms\":\"monitor:job:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:57:11', 15);
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/job/index\",\"createTime\":\"2024-11-22 09:35:42\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":110,\"menuName\":\"定时任务\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"job\",\"perms\":\"monitor:job:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:58:02', 8);
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/wechat/index\",\"createTime\":\"2024-11-25 15:02:59\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"微信群发\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"wechat\",\"perms\":\"system:wechat:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:58:27', 8);
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-11-22 09:35:42\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:59:03', 7);
INSERT INTO `sys_oper_log` VALUES (149, '定时任务', 3, 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', 1, 'admin', '研发部门', '/monitor/job/1', '127.0.0.1', '内网IP', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:59:36', 11);
INSERT INTO `sys_oper_log` VALUES (150, '定时任务', 3, 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', 1, 'admin', '研发部门', '/monitor/job/2', '127.0.0.1', '内网IP', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:59:38', 8);
INSERT INTO `sys_oper_log` VALUES (151, '定时任务', 3, 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', 1, 'admin', '研发部门', '/monitor/job/3', '127.0.0.1', '内网IP', '[3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 15:59:40', 6);
INSERT INTO `sys_oper_log` VALUES (152, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"中午好\",\"updateBy\":\"\",\"updateTime\":\"2024-11-25 16:01:36\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 16:01:36', 8);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/wechat/index\",\"createTime\":\"2024-11-25 15:02:59\",\"icon\":\"email\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"微信群发\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"wechat\",\"perms\":\"system:wechat:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 16:19:54', 42);
INSERT INTO `sys_oper_log` VALUES (154, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /10 * * * ?\",\"invokeTarget\":\"wx.rw(\\\"1\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 16:50:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 16:40:02', 24);
INSERT INTO `sys_oper_log` VALUES (155, '微信群发', 1, 'com.ruoyi.quartz.controller.WechatController.add()', 'POST', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-25 16:48:09\",\"id\":2,\"params\":{},\"remark\":\"晚上好\",\"time\":17,\"txt\":\"晚上好\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 16:48:09', 36);
INSERT INTO `sys_oper_log` VALUES (156, '定时任务', 1, 'com.ruoyi.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '', '{\"msg\":\"新增任务\'晚上的任务\'失败，Cron表达式不正确\",\"code\":500}', 0, NULL, '2024-11-25 16:48:58', 7);
INSERT INTO `sys_oper_log` VALUES (157, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"小时候，我很调皮，不是动这就是动那，一次自己在家，由于在家实在太闲，便找了几个小伙伴去踢球，天很凉爽，风也不算很大，正好适合踢球，于是我们便找到一块空地，踢了起来。\\n我当时踢球算是不错了，我和同伴们踢来踢去，传来传去，我传给了一个同伴，叫他射门，他大力的一踢，踢的好高哦，我用一个头球，把它顶了出去，但是踢到了附近的一个小屋里的窗，咔嚓，咔嚓的一声，玻璃片从空中掉到了地上，发出了清脆的声音。\\n球弹了回来，我们都很紧张，不知道该怎么办。不一会，小屋的主人出来了，望了望窗，又望了望我们，说：“是不是你们打烂我的玻璃的？”我们的脸憋得通红，不知怎么回答，我大胆的说：“刚才有几个小孩子在这儿玩石头，不小心扔进去的。” 他又看了看玻璃，回屋了。\\n一时间没有了踢球的兴趣，我们便都回家了。回到家妈妈已经回来了，问我去哪了我便只好如实的说了。妈妈听完便和我说：“不是常教你做什么事到要讲诚信，今天怎么说谎了？”她揪着我叫我和同伴们去那个小屋的主人道歉。主人也很和蔼，没怪我们，叫我们以后做什么事要讲诚信！不能再撒谎了。我们听了都受益匪浅！我真的不该丢失的诚信啊！虽然很后悔，但也让我更懂得了诚信的重要性！直到现在我都很诚信！诚信是我们中华民族的传统美德！我们要做得诚实！就要从小做起！\\n虽然这件事我不该丢失的诚信，但让我懂得了不管做什么事都要做到诚信！诚实做人！这件事我不会忘记的！这就是我不该丢失的诚信！\\n\",\"time\":17,\"txt\":\"小时候，我很调皮，不是动这就是动那，一次自己在家，由于在家实在太闲，便找了几个小伙伴去踢球，天很凉爽，风也不算很大，正好适合踢球，于是我们便找到一块空地，踢了起来。\\n我当时踢球算是不错了，我和同伴们踢来踢去，传来传去，我传给了一个同伴，叫他射门，他大力的一踢，踢的好高哦，我用一个头球，把它顶了出去，但是踢到了附近的一个小屋里的窗，咔嚓，咔嚓的一声，玻璃片从空中掉到了地上，发出了清脆的声音。\\n球弹了回来，我们都很紧张，不知道该怎么办。不一会，小屋的主人出来了，望了望窗，又望了望我们，说：“是不是你们打烂我的玻璃的？”我们的脸憋得通红，不知怎么回答，我大胆的说：“刚才有几个小孩子在这儿玩石头，不小心扔进去的。” 他又看了看玻璃，回屋了。\\n一时间没有了踢球的兴趣，我们便都回家了。回到家妈妈已经回来了，问我去哪了我便只好如实的说了。妈妈听完便和我说：“不是常教你做什么事到要讲诚信，今天怎么说谎了？”她揪着我叫我和同伴们去那个小屋的主人道歉。主人也很和蔼，没怪我们，叫我们以后做什么事要讲诚信！不能再撒谎了。我们听了都受益匪浅！我真的不该丢失的诚信啊！虽然很后悔，但也让我更懂得了诚信的重要性！直到现在我都很诚信！诚信是我们中华民族的传统美德！我们要做得诚实！就要从小做起！\\n虽然这件事我不该丢失的诚信，但让我懂得了不管做什么事都要做到诚信！诚实做人！这件事我不会忘记的！这就是我不该丢失的诚信！\\n\",\"updateBy\":\"\",\"updateTime\":\"2024-11-25 16:52:44\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1\r\n### The error may exist in file [D:\\hzx项目\\RuoYi-wx\\ruoyi-quartz\\target\\classes\\mapper\\quartz\\WechatMapper.xml]\r\n### The error may involve com.ruoyi.quartz.mapper.WechatMapper.updateWechat-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update wechat          SET time = ?,             txt = ?,             create_by = ?,             create_time = ?,             update_by = ?,             update_time = ?,             remark = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1\n; Data truncation: Data too long for column \'remark\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1', '2024-11-25 16:52:44', 69);
INSERT INTO `sys_oper_log` VALUES (158, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"小时候，我很调皮，不是动这就是动那，一次自己在家，由于在家实在太闲，便找了几个小伙伴去踢球，天很凉爽，风也不算很大，正好适合踢球，于是我们便找到一块空地，踢了起来。\\n我当时踢球算是不错了，我和同伴们踢来踢去，传来传去，我传给了一个同伴，叫他射门，他大力的一踢，踢的好高哦，我用一个头球，把它顶了出去，但是踢到了附近的一个小屋里的窗，咔嚓，咔嚓的一声，玻璃片从空中掉到了地上，发出了清脆的声音。\\n球弹了回来，我们都很紧张，不知道该怎么办。不一会，小屋的主人出来了，望了望窗，又望了望我们，说：“是不是你们打烂我的玻璃的？”我们的脸憋得通红，不知怎么回答，我大胆的说：“刚才有几个小孩子在这儿玩石头，不小心扔进去的。” 他又看了看玻璃，回屋了。\\n一时间没有了踢球的兴趣，我们便都回家了。回到家妈妈已经回来了，问我去哪了我便只好如实的说了。妈妈听完便和我说：“不是常教你做什么事到要讲诚信，今天怎么说谎了？”她揪着我叫我和同伴们去那个小屋的主人道歉。主人也很和蔼，没怪我们，叫我们以后做什么事要讲诚信！不能再撒谎了。我们听了都受益匪浅！我真的不该丢失的诚信啊！虽然很后悔，但也让我更懂得了诚信的重要性！直到现在我都很诚信！诚信是我们中华民族的传统美德！我们要做得诚实！就要从小做起！\\n虽然这件事我不该丢失的诚信，但让我懂得了不管做什么事都要做到诚信！诚实做人！这件事我不会忘记的！这就是我不该丢失的诚信！\\n\",\"updateBy\":\"\",\"updateTime\":\"2024-11-25 16:52:47\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 16:52:47', 7);
INSERT INTO `sys_oper_log` VALUES (159, '微信群发', 3, 'com.ruoyi.quartz.controller.WechatController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/wechat/2', '127.0.0.1', '内网IP', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 16:53:40', 9);
INSERT INTO `sys_oper_log` VALUES (160, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.rw(\\\"1\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 17:11:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 17:10:40', 19);
INSERT INTO `sys_oper_log` VALUES (161, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.rw(1)\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 17:15:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 17:14:19', 53);
INSERT INTO `sys_oper_log` VALUES (162, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.rw(\\\"17\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 17:20:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 17:19:34', 34);
INSERT INTO `sys_oper_log` VALUES (163, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.rw(\\\"1\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-25 17:21:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-25 17:20:37', 17);
INSERT INTO `sys_oper_log` VALUES (164, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 12:03:37', 24);
INSERT INTO `sys_oper_log` VALUES (165, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 12:05:07', 52);
INSERT INTO `sys_oper_log` VALUES (166, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 12:05:13', 9);
INSERT INTO `sys_oper_log` VALUES (167, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:45:49', 34);
INSERT INTO `sys_oper_log` VALUES (168, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:46:04', 10);
INSERT INTO `sys_oper_log` VALUES (169, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:46:56', 42);
INSERT INTO `sys_oper_log` VALUES (170, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:47:48', 14);
INSERT INTO `sys_oper_log` VALUES (171, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:48:52', 35);
INSERT INTO `sys_oper_log` VALUES (172, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:49:07', 9);
INSERT INTO `sys_oper_log` VALUES (173, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:56:02', 48);
INSERT INTO `sys_oper_log` VALUES (174, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:56:16', 10);
INSERT INTO `sys_oper_log` VALUES (175, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:57:30', 38);
INSERT INTO `sys_oper_log` VALUES (176, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 13:58:08', 9);
INSERT INTO `sys_oper_log` VALUES (177, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:20:11', 49);
INSERT INTO `sys_oper_log` VALUES (178, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:20:22', 0);
INSERT INTO `sys_oper_log` VALUES (179, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:21:52', 49);
INSERT INTO `sys_oper_log` VALUES (180, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:24:11', 35);
INSERT INTO `sys_oper_log` VALUES (181, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-26 14:38:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:38:32', 21);
INSERT INTO `sys_oper_log` VALUES (182, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:38:38', 18);
INSERT INTO `sys_oper_log` VALUES (183, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:38:48', 17);
INSERT INTO `sys_oper_log` VALUES (184, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:48:06', 18);
INSERT INTO `sys_oper_log` VALUES (185, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 14:50:08', 34);
INSERT INTO `sys_oper_log` VALUES (186, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:33:28', 37);
INSERT INTO `sys_oper_log` VALUES (187, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:34:20', 11);
INSERT INTO `sys_oper_log` VALUES (188, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:35:43', 38);
INSERT INTO `sys_oper_log` VALUES (189, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:37:12', 33);
INSERT INTO `sys_oper_log` VALUES (190, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:38:13', 39);
INSERT INTO `sys_oper_log` VALUES (191, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:39:08', 10);
INSERT INTO `sys_oper_log` VALUES (192, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:42:10', 59);
INSERT INTO `sys_oper_log` VALUES (193, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:42:50', 12);
INSERT INTO `sys_oper_log` VALUES (194, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:43:47', 8);
INSERT INTO `sys_oper_log` VALUES (195, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:44:08', 9);
INSERT INTO `sys_oper_log` VALUES (196, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:57:36', 32);
INSERT INTO `sys_oper_log` VALUES (197, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:58:06', 8);
INSERT INTO `sys_oper_log` VALUES (198, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 15:59:57', 25);
INSERT INTO `sys_oper_log` VALUES (199, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:02:15', 8);
INSERT INTO `sys_oper_log` VALUES (200, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:05:11', 31);
INSERT INTO `sys_oper_log` VALUES (201, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:06:49', 9);
INSERT INTO `sys_oper_log` VALUES (202, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:08:36', 60);
INSERT INTO `sys_oper_log` VALUES (203, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:09:16', 9);
INSERT INTO `sys_oper_log` VALUES (204, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:10:35', 39);
INSERT INTO `sys_oper_log` VALUES (205, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:11:11', 9);
INSERT INTO `sys_oper_log` VALUES (206, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:13:46', 43);
INSERT INTO `sys_oper_log` VALUES (207, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:14:10', 10);
INSERT INTO `sys_oper_log` VALUES (208, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:15:12', 40);
INSERT INTO `sys_oper_log` VALUES (209, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:24:10', 32);
INSERT INTO `sys_oper_log` VALUES (210, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:32:30', 41);
INSERT INTO `sys_oper_log` VALUES (211, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:33:34', 9);
INSERT INTO `sys_oper_log` VALUES (212, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:43:01', 12);
INSERT INTO `sys_oper_log` VALUES (213, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:43:11', 15);
INSERT INTO `sys_oper_log` VALUES (214, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:43:51', 200);
INSERT INTO `sys_oper_log` VALUES (215, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-26 16:45:11', 10);
INSERT INTO `sys_oper_log` VALUES (216, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 09:32:20', 37);
INSERT INTO `sys_oper_log` VALUES (217, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 09:32:25', 12);
INSERT INTO `sys_oper_log` VALUES (218, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 09:42:02', 26);
INSERT INTO `sys_oper_log` VALUES (219, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 09:42:13', 10);
INSERT INTO `sys_oper_log` VALUES (220, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 09:43:39', 19);
INSERT INTO `sys_oper_log` VALUES (221, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":101,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 10:46:26', 35);
INSERT INTO `sys_oper_log` VALUES (222, '定时任务', 1, 'com.ruoyi.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.testRobot\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-27 11:17:00\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 11:16:55', 24);
INSERT INTO `sys_oper_log` VALUES (223, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 11:17:00', 11);
INSERT INTO `sys_oper_log` VALUES (224, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.bot()\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-27 11:19:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 11:18:25', 52);
INSERT INTO `sys_oper_log` VALUES (225, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 11:37:55', 37);
INSERT INTO `sys_oper_log` VALUES (226, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 11:39:10', 13);
INSERT INTO `sys_oper_log` VALUES (227, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 11:39:41', 8);
INSERT INTO `sys_oper_log` VALUES (228, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:21:02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:21:02', 24);
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/wechat', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:31:37', 109);
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"wechat\"}', NULL, 0, NULL, '2024-11-27 14:31:39', 252);
INSERT INTO `sys_oper_log` VALUES (231, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:37:52\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:37:52', 33);
INSERT INTO `sys_oper_log` VALUES (232, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:45:56\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:45:56', 6);
INSERT INTO `sys_oper_log` VALUES (233, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:51:23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:51:23', 5);
INSERT INTO `sys_oper_log` VALUES (234, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:52:31\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:52:31', 21);
INSERT INTO `sys_oper_log` VALUES (235, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:53:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:53:32', 6796);
INSERT INTO `sys_oper_log` VALUES (236, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:56:20\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:56:20', 5);
INSERT INTO `sys_oper_log` VALUES (237, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 14:57:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:57:00', 7);
INSERT INTO `sys_oper_log` VALUES (238, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"456\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 16:21:31\",\"url\":\"D:\\\\uploads\\\\20241127161500575.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 16:21:31', 17);
INSERT INTO `sys_oper_log` VALUES (239, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"456\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-27 16:24:49\",\"url\":\"D:\\\\uploads\\\\20241127161500575.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 16:24:49', 7);
INSERT INTO `sys_oper_log` VALUES (240, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 15:14:23\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.rw(\\\"1\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":101,\"jobName\":\"微信任务\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-28 09:50:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 09:49:53', 36);
INSERT INTO `sys_oper_log` VALUES (241, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"0 7 * * * ?\",\"invokeTarget\":\"wx.bot()\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-28 11:07:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 11:03:06', 15);
INSERT INTO `sys_oper_log` VALUES (242, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"0 0 7 * * ?\",\"invokeTarget\":\"wx.bot()\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-29 07:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 11:03:45', 17);
INSERT INTO `sys_oper_log` VALUES (243, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"* * 7 * * ?\",\"invokeTarget\":\"wx.bot()\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-29 07:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 11:04:07', 1);
INSERT INTO `sys_oper_log` VALUES (244, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 11:44:58\",\"url\":\"D:\\\\uploads\\\\20241128114255056.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 11:44:58', 12);
INSERT INTO `sys_oper_log` VALUES (245, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 11:48:12\",\"url\":\"D:\\\\uploads\\\\file\\\\20241128114619012.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 11:48:12', 17);
INSERT INTO `sys_oper_log` VALUES (246, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 11:57:53\",\"url\":\"D:\\\\uploads\\\\file\\\\20241128114619012.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 11:57:53', 14);
INSERT INTO `sys_oper_log` VALUES (247, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 11:58:21\",\"url\":\"D:\\\\uploads\\\\file\\\\20241128114619012.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 11:58:21', 18);
INSERT INTO `sys_oper_log` VALUES (248, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:03:37\",\"url\":\"D:\\\\uploads\\\\file\\\\20241128114619012.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:03:37', 9);
INSERT INTO `sys_oper_log` VALUES (249, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:04:45\",\"url\":\"D:\\\\uploads\\\\file\\\\20241128114619012.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:04:45', 16);
INSERT INTO `sys_oper_log` VALUES (250, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:05:51\",\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:05:52', 18);
INSERT INTO `sys_oper_log` VALUES (251, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:06:49\",\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:06:49', 5);
INSERT INTO `sys_oper_log` VALUES (252, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:08:44\",\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:08:44', 3536);
INSERT INTO `sys_oper_log` VALUES (253, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:10:10\",\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:10:10', 8);
INSERT INTO `sys_oper_log` VALUES (254, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:13:01\",\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:13:01', 6);
INSERT INTO `sys_oper_log` VALUES (255, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":17,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 13:14:33\",\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:14:33', 9);
INSERT INTO `sys_oper_log` VALUES (256, '定时任务', 3, 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', 1, 'admin', '研发部门', '/monitor/job/101', '127.0.0.1', '内网IP', '[101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 13:44:24', 38);
INSERT INTO `sys_oper_log` VALUES (257, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"* /1 * * * ?\",\"invokeTarget\":\"wx.bot()\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-28 14:06:26\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:06:25', 70);
INSERT INTO `sys_oper_log` VALUES (258, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:06:38', 16);
INSERT INTO `sys_oper_log` VALUES (259, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:07:00', 19);
INSERT INTO `sys_oper_log` VALUES (260, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"* /1 * * * ?\",\"invokeTarget\":\"wx.bot(\\\"1\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-28 14:07:14\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:07:13', 10);
INSERT INTO `sys_oper_log` VALUES (261, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:07:27', 7555);
INSERT INTO `sys_oper_log` VALUES (262, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":102,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:07:37', 14);
INSERT INTO `sys_oper_log` VALUES (263, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.bot(\\\"1\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"天气预报\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-28 14:12:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:11:01', 16);
INSERT INTO `sys_oper_log` VALUES (264, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":2024,\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 14:19:28\",\"url\":\"D:\\\\uploads\\\\测试图片20241128131536394.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:19:28', 21);
INSERT INTO `sys_oper_log` VALUES (265, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-25 15:05:32\",\"fileUrl\":\"D:\\\\uploads\\\\20241127162633994.xlsx\",\"id\":1,\"params\":{},\"remark\":\"中午好\",\"time\":\"2024/11/28\",\"txt\":\"测试\",\"updateBy\":\"\",\"updateTime\":\"2024-11-28 14:21:51\",\"url\":\"D:\\\\uploads\\\\测试图片20241128131536394.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:21:51', 32);
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/wechat/index\",\"createTime\":\"2024-11-25 15:02:59\",\"icon\":\"email\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"群发文案\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"wechat\",\"perms\":\"system:wechat:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 14:22:11', 27);
INSERT INTO `sys_oper_log` VALUES (267, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"助手\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 15:05:58', 26);
INSERT INTO `sys_oper_log` VALUES (268, '微信群发', 1, 'com.ruoyi.quartz.controller.WechatController.add()', 'POST', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-29 13:46:44\",\"id\":2,\"params\":{},\"remark\":\"侯旭测试\",\"time\":\"2024/11/29\",\"txt\":\"经党中央、国务院批准，根据2024年11月修订的《全国年节及纪念日放假办法》，自2025年1月1日起，全体公民放假的假日增加2天，其中春节、劳动节各增加1天。据此对放假调休原则作进一步优化完善，除个别特殊情形外，春节自农历除夕起放假调休8天，国庆节自10月1日起放假调休7天，劳动节放假调休5天，元旦、清明节、端午节、中秋节分别放假调休或连休3天（如逢周三则只在当日放假），国庆节放假如逢中秋节则合并放假8天。\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:46:44', 15);
INSERT INTO `sys_oper_log` VALUES (269, '微信群发', 2, 'com.ruoyi.quartz.controller.WechatController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/wechat', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":\"2024-11-29 13:46:45\",\"id\":2,\"params\":{},\"remark\":\"侯旭测试\",\"time\":\"2024/11/29\",\"txt\":\"经党中央、国务院批准，根据2024年11月修订的《全国年节及纪念日放假办法》，自2025年1月1日起，全体公民放假的假日增加2天，其中春节、劳动节各增加1天。据此对放假调休原则作进一步优化完善，除个别特殊情形外，春节自农历除夕起放假调休8天，国庆节自10月1日起放假调休7天，劳动节放假调休5天，元旦、清明节、端午节、中秋节分别放假调休或连休3天（如逢周三则只在当日放假），国庆节放假如逢中秋节则合并放假8天。\",\"updateBy\":\"\",\"updateTime\":\"2024-11-29 13:48:05\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:48:05', 6);
INSERT INTO `sys_oper_log` VALUES (270, '定时任务', 1, 'com.ruoyi.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"cronExpression\":\"* * 7 * * ?\",\"invokeTarget\":\"wx.bot(\\\"2\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"jobName\":\"放假通知\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-30 07:00:00\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:49:05', 32);
INSERT INTO `sys_oper_log` VALUES (271, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-29 13:49:05\",\"cronExpression\":\"* * 14 * * ?\",\"invokeTarget\":\"wx.bot(\\\"2\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"jobName\":\"放假通知\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-29 14:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:49:20', 18);
INSERT INTO `sys_oper_log` VALUES (272, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:49:42', 10);
INSERT INTO `sys_oper_log` VALUES (273, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:49:46', 8);
INSERT INTO `sys_oper_log` VALUES (274, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:56:17', 42);
INSERT INTO `sys_oper_log` VALUES (275, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:56:56', 20);
INSERT INTO `sys_oper_log` VALUES (276, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:57:25', 7);
INSERT INTO `sys_oper_log` VALUES (277, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 13:58:43', 24);
INSERT INTO `sys_oper_log` VALUES (278, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 14:00:43', 21);
INSERT INTO `sys_oper_log` VALUES (279, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-27 11:16:55\",\"cronExpression\":\"0 /1 * * * ?\",\"invokeTarget\":\"wx.bot(\\\"1\\\")\",\"jobGroup\":\"DEFAULT\",\"jobId\":102,\"jobName\":\"测试\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-29 14:02:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 14:01:57', 17);
INSERT INTO `sys_oper_log` VALUES (280, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-29 13:49:05\",\"cronExpression\":\"* * 14 * * ?\",\"invokeTarget\":\"2\",\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"jobName\":\"放假通知\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-30 14:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\"}', NULL, 1, 'No bean named \'2\' available', '2024-11-29 16:02:16', 9);
INSERT INTO `sys_oper_log` VALUES (281, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-29 13:49:05\",\"cronExpression\":\"* * 14 * * ?\",\"invokeTarget\":\"2\",\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"jobName\":\"放假通知\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-30 14:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\"}', NULL, 1, 'No bean named \'2\' available', '2024-11-29 16:02:18', 1);
INSERT INTO `sys_oper_log` VALUES (282, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-29 13:49:05\",\"cronExpression\":\"* * 14 * * ?\",\"invokeTarget\":\"2\",\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"jobName\":\"放假通知\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-30 14:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\"}', NULL, 1, 'No bean named \'2\' available', '2024-11-29 16:02:20', 1);
INSERT INTO `sys_oper_log` VALUES (283, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2024-11-29 13:49:05\",\"cronExpression\":\"* * 14 * * ?\",\"invokeTarget\":\"wx.bot(\'2\')\",\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"jobName\":\"放假通知\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-11-30 14:00:00\",\"params\":{},\"remark\":\"\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 16:05:49', 28);
INSERT INTO `sys_oper_log` VALUES (284, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"jobId\":103,\"misfirePolicy\":\"0\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-29 16:05:53', 10);
INSERT INTO `sys_oper_log` VALUES (285, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/11/29/测试图片_20241129160948A001.jpg\",\"code\":200}', 0, NULL, '2024-11-29 16:09:48', 119);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-11-22 09:35:42', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-11-22 09:35:42', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-11-22 09:35:42', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '助手', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2024/11/29/测试图片_20241129160948A001.jpg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-29 16:01:48', 'admin', '2024-11-22 09:35:42', '', '2024-11-29 16:01:47', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-22 09:35:42', 'admin', '2024-11-22 09:35:42', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for wechat
-- ----------------------------
DROP TABLE IF EXISTS `wechat`;
CREATE TABLE `wechat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文案创建时间',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片的url',
  `file_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件的url',
  `txt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文本',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信群发' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wechat
-- ----------------------------
INSERT INTO `wechat` VALUES (1, '2024/11/28', 'D:\\uploads\\测试图片20241128131536394.jpg', 'D:\\uploads\\20241127162633994.xlsx', '测试', '', '2024-11-25 15:05:32', '', '2024-11-28 14:21:51', '中午好');
INSERT INTO `wechat` VALUES (2, '2024/11/29', 'D:\\uploads\\173285924782320241129134803900.jpg', NULL, '经党中央、国务院批准，根据2024年11月修订的《全国年节及纪念日放假办法》，自2025年1月1日起，全体公民放假的假日增加2天，其中春节、劳动节各增加1天。据此对放假调休原则作进一步优化完善，除个别特殊情形外，春节自农历除夕起放假调休8天，国庆节自10月1日起放假调休7天，劳动节放假调休5天，元旦、清明节、端午节、中秋节分别放假调休或连休3天（如逢周三则只在当日放假），国庆节放假如逢中秋节则合并放假8天。', '', '2024-11-29 13:46:45', '', '2024-11-29 13:48:06', '侯旭测试');

SET FOREIGN_KEY_CHECKS = 1;
