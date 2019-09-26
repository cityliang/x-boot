/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : xboot-opensource

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 29/04/2019 09:57:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `title` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `parent_id` varchar(255) DEFAULT NULL COMMENT '父id',
  `is_parent` bit(1) DEFAULT NULL COMMENT '是否为父节点(含子节点) 默认false',
  `sort_order` decimal(10,2) DEFAULT NULL COMMENT '排序值',
  `status` int(11) DEFAULT NULL COMMENT '是否启用 0启用 -1禁用',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '部门表';

-- ----------------------------
-- Records of t_department
-- ----------------------------
BEGIN;
INSERT INTO `t_department` VALUES ('技术部', '40322777781112832', b'1', 1.00, 0, '40322811096469504', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('研发中心', '40322811096469504', NULL, 1.00, 0, '40322852833988608', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('大数据', '40322811096469504', NULL, 2.00, 0, '40327204755738624', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('人工智障', '40322811096469504', NULL, 3.00, -1, '40327253309001728', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('成都分部', '0', b'1', 2.00, 0, '40343262766043136', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('Vue', '40343262766043136', NULL, 2.00, 0, '40344005342400512', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('JAVA', '40343262766043136', b'0', 1.00, 0, '40389030113710080', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('人事部', '0', b'1', '3.00', 0, '40652270295060480', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('游客', '40652270295060480', b'0', 1.00, 0, '40652338142121984', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_department` VALUES ('VIP', '40652270295060480', b'0', 2.00, 0, '40681289119961088', 'admin', NOW(), 'admin', NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_department_header
-- ----------------------------
DROP TABLE IF EXISTS `t_department_header`;
CREATE TABLE `t_department_header` (
  `department_id` varchar(255) DEFAULT NULL COMMENT '关联部门id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '关联部门负责人',
  `type` int(11) DEFAULT NULL COMMENT '负责人类型 默认0主要 1副职',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '部门负责人表';

-- ----------------------------
-- Records of t_department_header
-- ----------------------------
BEGIN;
INSERT INTO `t_department_header` VALUES ('40322777781112832', '682265633886209', 0, '118575966346809344', NULL, NOW(), NULL, NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `title` varchar(255) DEFAULT NULL COMMENT '字典名称',
  `type` varchar(255) DEFAULT NULL COMMENT '字典类型',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort_order` decimal(10,2) DEFAULT NULL COMMENT '排序值',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '字典表';

-- ----------------------------
-- Records of t_dict
-- ----------------------------
BEGIN;
INSERT INTO `t_dict`  VALUES ('性别', 'sex', '', 0.00, '75135930788220928', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict`  VALUES ('按钮权限类型', 'permission_type', '', 3.00, '75388696739713024', 'admin', NOW(), 'admin', NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_data`;
CREATE TABLE `t_dict_data` (
  `title` varchar(255) DEFAULT NULL COMMENT '数据名称',
  `value` varchar(255) DEFAULT NULL COMMENT '数据值',
  `sort_order` decimal(10,2) DEFAULT NULL COMMENT '排序值',
  `status` int(11) DEFAULT NULL COMMENT '是否启用 0启用 -1禁用',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',
  `dict_id` varchar(255) DEFAULT NULL COMMENT '所属字典',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '字典数据表';

-- ----------------------------
-- Records of t_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `t_dict_data` VALUES ('男', '男', 0.00, 0, '', '75135930788220928', '75158227712479232', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('女', '女', 1.00, 0, '', '75135930788220928', '75159254272577536', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('保密', '保密', 2.00, -1, '', '75135930788220928', '75159898425397248', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('查看操作(view)', 'view', 0.00, 0, '', '75388696739713024', '75390787835138048', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('添加操作(add)', 'add', 1.00, 0, '', '75388696739713024', '75390886501945344', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('编辑操作(edit)', 'edit', 2.00, 0, '', '75388696739713024', '75390993939042304', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('删除操作(delete)', 'delete', 3.00, 0, '', '75388696739713024', '75391067532300288', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('清空操作(clear)', 'clear', 4.00, 0, '', '75388696739713024', '75391126902673408', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('启用操作(enable)', 'enable', 5.00, 0, '', '75388696739713024', '75391192883269632', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('禁用操作(disable)', 'disable', 6.00, 0, '', '75388696739713024', '75391251024711680', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('搜索操作(search)', 'search', 7.00, 0, '', '75388696739713024', '75391297124306944', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('上传文件(upload)', 'upload', 8.00, 0, '', '75388696739713024', '75391343379091456', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('导出操作(output)', 'output', 9.00, 0, '', '75388696739713024', '75391407526776832', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('导入操作(input)', 'input', 10.00, 0, '', '75388696739713024', '75391475042488320', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('分配权限(editPerm)', 'editPerm', 11.00, 0, '', '75388696739713024', '75391522182270976', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('设为默认(setDefault)', 'setDefault', 12.00, 0, '', '75388696739713024', '75391576364290048', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_dict_data` VALUES ('其他操作(other)', 'other', 13.00, 0, '', '75388696739713024', '75391798033256448', 'admin', NOW(), 'admin', NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_file
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `url` varchar(255) DEFAULT NULL COMMENT '文件地址',
  `f_key` varchar(255) DEFAULT NULL COMMENT '',
  `location` int(11) DEFAULT NULL COMMENT '',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '文件上传表';

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `name` varchar(255) DEFAULT NULL COMMENT '方法操作名称',
  `log_type` int(11) DEFAULT NULL COMMENT '日志类型 0登陆日志 1操作日志',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_type` varchar(255) DEFAULT NULL COMMENT '请求类型',
  `request_param` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `username` varchar(255) DEFAULT NULL COMMENT '请求用户',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip',
  `ip_info` varchar(255) DEFAULT NULL COMMENT 'ip信息',
  `cost_time` int(11) DEFAULT NULL COMMENT '花费时间',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '日志表';

-- ----------------------------
-- Table structure for t_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `t_quartz_job`;
CREATE TABLE `t_quartz_job` (
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT NULL COMMENT '状态 0正常 -1停止',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '定时任务表';

-- ----------------------------
-- Records of t_quartz_job
-- ----------------------------
BEGIN;
INSERT INTO `t_quartz_job` VALUES ('cn.exrick.xboot.quartz.jobs.SampleJob', '0/1 * * * * ? ', '', '无参测试 后台将每隔1秒执行输出日志', -1, '41060689401352192', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_quartz_job` VALUES ('cn.exrick.xboot.quartz.jobs.SampleParamJob', '0/1 * * * * ? ', 'World', '带参测试 后台将每隔1秒执行输出日志', -1, '41065738420621312', 'admin', NOW(), 'admin', NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `name` varchar(255) DEFAULT NULL COMMENT '角色名 以ROLE_开头',
  `default_role` bit(1) DEFAULT NULL COMMENT '是否为注册默认角色',
  `data_type` int(11) DEFAULT NULL COMMENT '数据权限类型 0全部默认 1自定义',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES ('ROLE_TEST', NULL, 1, '测试权限按钮显示', '16457350655250432', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role` VALUES ('ROLE_ADMIN', NULL, 0, '超级管理员 拥有所有权限', '496138616573952', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role` VALUES ('ROLE_USER', b'1', 0, '普通注册用户 路过看看', '496138616573953', 'admin', NOW(), 'admin', NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_role_department
-- ----------------------------
DROP TABLE IF EXISTS `t_role_department`;
CREATE TABLE `t_role_department` (
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  `department_id` varchar(255) DEFAULT NULL COMMENT '部门id',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '角色部门表';

-- ----------------------------
-- Records of t_role_department
-- ----------------------------
BEGIN;
INSERT INTO `t_role_department` VALUES ('16457350655250432', '40322777781112832', '70763874256687105', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_department` VALUES ('16457350655250432', '40322811096469504', '70763874265075712', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_department` VALUES ('16457350655250432', '40322852833988608', '70763874277658624', 'admin', NOW(), 'admin', NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `name` varchar(255) DEFAULT NULL COMMENT '菜单/权限名称',
  `show_always` bit(1) DEFAULT NULL COMMENT '始终显示 默认是',
  `level` int(11) DEFAULT NULL COMMENT '层级',
  `type` int(11) DEFAULT NULL COMMENT '类型 0页面 1具体操作',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `path` varchar(255) DEFAULT NULL COMMENT '页面路径/资源链接url',
  `component` varchar(255) DEFAULT NULL COMMENT '前端组件',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `button_type` varchar(255) DEFAULT NULL COMMENT '按钮权限类型',
  `parent_id` varchar(255) DEFAULT NULL COMMENT '父id',
  `description` varchar(255) DEFAULT NULL COMMENT '说明备注',
  `sort_order` decimal(10,2) DEFAULT NULL COMMENT '排序值',
  `status` int(11) DEFAULT NULL COMMENT '是否启用 0启用 -1禁用',
  `url` varchar(255) DEFAULT NULL COMMENT '网页链接',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '菜单权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_permission` VALUES ('vue-generator', b'1', '1', '0', 'Vue代码生成', '/vue-generator', 'Main', 'md-send', NULL, '125909152017944576', '', '3.10', '0', NULL, '102235632889237504', 'admin', '2019-01-28 17:00:15', 'admin', '2019-01-28 17:00:15', '0');
INSERT INTO `t_permission` VALUES ('table-generator', b'1', '2', '0', '增删改表格生成[付费]', 'table', 'xboot-vue-generator/tableGenerator', 'md-grid', '', '102235632889237504', '', '0.00', '0', '', '102237605176807424', 'admin', '2019-01-28 17:08:06', 'admin', '2019-02-01 20:41:31', '0');
INSERT INTO `t_permission` VALUES ('tree-generator', b'1', '2', '0', '树形结构生成[付费]', 'tree', 'xboot-vue-generator/treeGenerator', 'md-git-branch', '', '102235632889237504', '', '1.00', '0', '', '102240052523831296', 'admin', '2019-01-28 17:17:49', 'admin', '2019-02-01 20:41:38', '0');
INSERT INTO `t_permission` VALUES ('test', b'1', '2', '0', '代码生成测试页', 'test', 'xboot-vue-generator/test', 'ios-bug', '', '102235632889237504', '', '3.00', '0', '', '103658022701633536', 'admin', '2019-02-01 15:12:20', 'admin', '2019-02-01 18:38:29', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '审批驳回至发起人', '/xboot/actTask/backAll/**', '', '', 'disable', '81716172680073216', '', '2.00', '0', NULL, '113601631450304512', 'admin', '2019-03-01 01:44:41', 'admin', '2019-03-01 01:44:41', '0');
INSERT INTO `t_permission` VALUES ('components', b'0', '1', '0', 'XBoot业务组件', '/components', 'Main', 'md-cube', '', '125909152017944576', '', '5.00', '0', '', '113602149589454848', 'admin', '2019-03-01 01:46:44', 'admin', '2019-06-26 20:38:55', '0');
INSERT INTO `t_permission` VALUES ('components', b'1', '2', '0', 'XBoot业务组件', 'components', 'xboot-components/xboot-components', 'md-cube', '', '113602149589454848', '', '0.00', '0', '', '113602342657462272', 'admin', '2019-03-01 01:47:30', 'admin', '2019-03-01 02:03:26', '0');
INSERT INTO `t_permission` VALUES ('library', b'0', '1', '0', '第三方依赖工具/组件', '/library', 'Main', 'ios-link', '', '125909152017944576', '', '6.00', '0', '', '113603512293658624', 'admin', '2019-03-01 01:52:09', 'admin', '2019-06-26 20:38:47', '0');
INSERT INTO `t_permission` VALUES ('library', b'1', '2', '0', '第三方依赖工具/组件', 'library', 'xboot-library/xboot-library', 'ios-link', '', '113603512293658624', '', '0.00', '0', '', '113603617897844736', 'admin', '2019-03-01 01:52:34', 'admin', '2019-03-01 02:03:15', '0');
INSERT INTO `t_permission` VALUES ('process-finish-manage', b'1', '2', '0', '结束的流程[付费]', 'process-finish-manage', 'activiti/process-finish-manage/processFinishManage', 'md-power', '', '76606430504816640', '', '0.80', '0', NULL, '117806106536841216', 'admin', '2019-03-12 16:11:46', 'admin', '2019-03-12 16:11:46', '0');
INSERT INTO `t_permission` VALUES ('redis', b'1', '2', '0', 'Redis缓存管理', 'redis', 'sys/redis/redis', 'md-barcode', '', '39915540965232640', '', '2.21', '0', '', '121426317022334976', 'admin', '2019-03-22 15:57:11', 'admin', '2019-03-22 15:57:11', '0');
INSERT INTO `t_permission` VALUES ('xboot', b'1', '0', '-1', 'XBoot管理系统', '', '', 'md-home', '', '', '', '0.00', '0', '', '125909152017944576', 'admin', '2019-04-04 00:50:22', 'admin', '2019-07-31 20:24:57', '0');
INSERT INTO `t_permission` VALUES ('doc', b'1', '0', '-1', 'XBoot开发文档', '', '', 'md-document', '', '', '', '1.00', '0', '', '127995258721013760', 'admin', '2019-04-09 18:59:49', 'admin', '2019-04-09 19:03:32', '0');
INSERT INTO `t_permission` VALUES ('app', b'1', '0', '-1', '小程序与Flutter App', '', '', 'md-phone-portrait', '', '', '', '2.00', '0', '', '127996320085446656', 'admin', '2019-04-09 19:04:02', 'admin', '2019-07-08 12:06:33', '0');
INSERT INTO `t_permission` VALUES ('xpay', b'1', '0', '-1', 'XPay支付系统', NULL, NULL, 'md-cash', NULL, NULL, '', '3.00', '0', NULL, '127996726786134016', 'admin', '2019-04-09 19:05:39', 'admin', '2019-04-09 19:05:39', '0');
INSERT INTO `t_permission` VALUES ('xmall', b'1', '0', '-1', 'XMall商城', NULL, NULL, 'md-cart', NULL, NULL, '', '4.00', '0', NULL, '127997001756315648', 'admin', '2019-04-09 19:06:44', 'admin', '2019-04-09 19:06:44', '0');
INSERT INTO `t_permission` VALUES ('xboot-show', b'1', '0', '-1', 'XBoot宣传官网', '', '', 'md-paper-plane', '', '', '', '2.10', '0', '', '128364633437245440', 'admin', '2019-04-10 19:27:35', 'admin', '2019-04-10 19:27:44', '0');
INSERT INTO `t_permission` VALUES ('flutter', b'0', '1', '0', 'XBoot Flutter App', '/flutter', 'Main', 'md-phone-portrait', '', '127996320085446656', '', '1.00', '0', '', '128366789653434368', 'admin', '2019-04-10 19:36:09', 'admin', '2019-07-08 12:20:51', '0');
INSERT INTO `t_permission` VALUES ('flutter', b'1', '2', '0', 'XBoot Flutter App', 'flutter', 'flutter/flutter', 'md-phone-portrait', '', '128366789653434368', '', '0.00', '0', NULL, '128368112335589376', 'admin', '2019-04-10 19:41:24', 'admin', '2019-04-10 19:41:24', '0');
INSERT INTO `t_permission` VALUES ('single-window', b'1', '2', '0', '动态组件单页操作', 'single-window', 'xboot-vue-template/single-window/singleWindow', 'md-easel', '', '41373430515240960', '', '3.20', '0', '', '129033675403694080', 'admin', '2019-04-12 15:46:07', 'admin', '2019-04-12 15:49:08', '0');
INSERT INTO `t_permission` VALUES ('admin', b'1', '2', '0', 'Admin监控', '/admin', 'sys/monitor/monitor', 'md-speedometer', '', '39915540965232640', '', '2.29', '0', 'http://127.0.0.1:8888/xboot/admin', '149452775095275520', 'admin', '2019-06-08 00:04:19', 'admin', '2019-06-08 00:04:19', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '重置密码', '/xboot/user/resetPass', '', '', 'other', '5129710648430593', '', '1.18', '0', NULL, '156365156580855808', 'admin', '2019-06-27 01:51:39', 'admin', '2019-06-27 01:51:39', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加用户', '/xboot/user/admin/add*', '', '', 'add', '5129710648430593', '', '1.11', '0', '', '15701400130424832', 'admin', '2018-06-03 22:04:06', 'admin', '2018-09-19 22:16:44', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '禁用用户', '/xboot/user/admin/disable/**', '', '', 'disable', '5129710648430593', '', '1.13', '0', NULL, '15701915807518720', 'admin', '2018-06-03 22:06:09', 'admin', '2018-06-06 14:46:51', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '启用用户', '/xboot/user/admin/enable/**', '', '', 'enable', '5129710648430593', '', '1.14', '0', NULL, '15708892205944832', 'admin', '2018-06-03 22:33:52', 'admin', '2018-06-28 16:44:48', '0');
INSERT INTO `t_permission` VALUES ('weapp', b'0', '1', '0', '微信小程序', '/weapp', 'Main', 'ios-appstore', '', '127996320085446656', '', '0.00', '0', '', '160509731956330496', 'admin', '2019-07-08 12:20:43', 'admin', '2019-07-08 12:22:13', '0');
INSERT INTO `t_permission` VALUES ('weapp', b'1', '2', '0', '微信小程序', 'weapp', 'weapp/weapp', 'ios-apps', '', '160509731956330496', '', '0.00', '0', NULL, '160509918166650881', 'admin', '2019-07-08 12:21:28', 'admin', '2019-07-08 12:21:28', '0');
INSERT INTO `t_permission` VALUES ('access', b'0', '1', '0', '权限按钮测试页', '/access', 'Main', 'md-lock', '', '125909152017944576', '', '7.00', '0', '', '16392452747300864', 'admin', '2018-06-05 19:50:06', 'admin', '2019-06-26 20:38:41', '0');
INSERT INTO `t_permission` VALUES ('access_index', b'1', '2', '0', '权限按钮测试页', 'index', 'access/access', 'md-lock', '', '16392452747300864', '', '5.10', '0', '', '16392767785668608', 'admin', '2018-06-05 19:51:21', 'admin', '2018-10-23 12:34:38', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加按钮测试', 'test-add', '', '', 'add', '16392767785668608', '', '5.11', '0', '', '16438800255291392', 'admin', '2018-06-05 22:54:18', 'admin', '2018-10-23 12:34:51', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑按钮测试', 'test-edit', '', '', 'edit', '16392767785668608', '', '5.12', '0', '', '16438962738434048', 'admin', '2018-06-05 22:54:55', 'admin', '2018-10-23 12:35:05', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除按钮测试', 'test-delete', '', '', 'delete', '16392767785668608', '', '5.13', '0', '', '16439068543946752', 'admin', '2018-06-05 22:55:20', 'admin', '2018-10-23 12:34:54', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑用户', '/xboot/user/admin/edit*', '', '', 'edit', '5129710648430593', '', '1.12', '0', '', '16678126574637056', 'admin', '2018-06-06 14:45:16', 'admin', '2018-09-19 22:16:48', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除用户', '/xboot/user/delByIds/**', '', '', 'delete', '5129710648430593', '', '1.15', '0', '', '16678447719911424', 'admin', '2018-06-06 14:46:32', 'admin', '2018-08-10 21:41:16', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加角色', '/xboot/role/save*', '', '', 'add', '5129710648430594', '', '1.21', '0', '', '16687383932047360', 'admin', '2018-06-06 15:22:03', 'admin', '2018-09-19 22:07:34', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑角色', '/xboot/role/edit*', '', '', 'edit', '5129710648430594', '', '1.22', '0', '', '16689632049631232', 'admin', '2018-06-06 15:30:59', 'admin', '2018-09-19 22:07:37', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除角色', '/xboot/role/delAllByIds/**', '', '', 'delete', '5129710648430594', '', '1.23', '0', '', '16689745006432256', 'admin', '2018-06-06 15:31:26', 'admin', '2018-08-10 21:41:23', '0');
INSERT INTO `t_permission` VALUES (NULL, b'1', '3', '1', '分配权限', '/xboot/role/editRolePerm**', NULL, NULL, 'editPerm', '5129710648430594', '', '1.24', '0', NULL, '16689883993083904', 'admin', '2018-06-06 15:31:59', 'admin', '2018-06-06 15:31:59', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '设为默认角色', '/xboot/role/setDefault*', '', '', 'setDefault', '5129710648430594', '', '1.25', '0', '', '16690313745666048', 'admin', '2018-06-06 15:33:41', 'admin', '2018-09-19 22:07:46', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加菜单', '/xboot/permission/add*', '', '', 'add', '5129710648430595', '', '1.31', '0', '', '16694861252005888', 'admin', '2018-06-06 15:51:46', 'admin', '2018-09-19 22:07:52', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑菜单', '/xboot/permission/edit*', '', '', 'edit', '5129710648430595', '', '1.32', '0', '', '16695107491205120', 'admin', '2018-06-06 15:52:44', 'admin', '2018-09-19 22:07:57', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除菜单', '/xboot/permission/delByIds/**', '', '', 'delete', '5129710648430595', '', '1.33', '0', '', '16695243126607872', 'admin', '2018-06-06 15:53:17', 'admin', '2018-08-10 21:41:33', '0');
INSERT INTO `t_permission` VALUES ('sso', b'0', '1', '0', '单点登录测试站', '/sso', 'Main', 'md-log-in', '', '125909152017944576', '', '8.00', '0', '', '175808753877127169', 'admin', '2019-08-19 17:33:34', 'admin', '2019-08-19 17:34:41', '0');
INSERT INTO `t_permission` VALUES ('sso', b'1', '2', '0', '单点登录测试站', 'sso', 'sso/sso', 'md-log-in', '', '175808753877127169', '', '0.00', '0', NULL, '175808922710446081', 'admin', '2019-08-19 17:34:15', 'admin', '2019-08-19 17:34:15', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '上传图片', '无', '', '', 'upload', '5129710648430593', '', '1.16', '0', '', '25014528525733888', 'admin', '2018-06-29 14:51:09', 'admin', '2018-10-08 11:13:27', '0');
INSERT INTO `t_permission` VALUES ('monitor', b'1', '1', '0', '系统监控', '/monitor', 'Main', 'ios-analytics', NULL, '125909152017944576', '', '2.00', '0', NULL, '39915540965232640', 'admin', '2018-08-09 17:42:28', 'admin', '2018-08-09 17:42:28', '0');
INSERT INTO `t_permission` VALUES ('druid', b'1', '2', '0', 'SQL监控', 'druid', 'sys/monitor/monitor', 'md-analytics', '', '39915540965232640', '', '2.40', '0', 'http://127.0.0.1:8888/druid/login.html', '39916171171991552', 'admin', '2018-08-09 17:44:57', 'admin', '2019-01-20 00:37:29', '0');
INSERT INTO `t_permission` VALUES ('swagger', b'1', '2', '0', '接口文档', 'swagger', 'sys/monitor/monitor', 'md-document', '', '39915540965232640', '', '2.50', '0', 'http://127.0.0.1:8888/swagger-ui.html', '39918482854252544', 'admin', '2018-08-09 17:54:08', 'admin', '2019-01-20 00:37:41', '0');
INSERT INTO `t_permission` VALUES ('department-manage', b'1', '2', '0', '部门管理', 'department-manage', 'sys/department-manage/departmentManage', 'md-git-branch', '', '5129710648430592', '', '1.20', '0', NULL, '40238597734928384', 'admin', '2018-08-10 15:06:10', 'admin', '2018-08-10 15:06:10', '0');
INSERT INTO `t_permission` VALUES ('log-manage', b'1', '2', '0', '操作日志管理', 'log-manage', 'sys/log-manage/logManage', 'md-list-box', '', '39915540965232640', '', '2.20', '0', '', '41363147411427328', 'admin', '2018-08-13 17:34:43', 'admin', '2018-08-20 20:05:21', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除日志', '/xboot/log/delByIds/**', '', '', 'delete', '41363147411427328', '', '2.11', '0', '', '41363537456533504', 'admin', '2018-08-13 17:36:16', 'admin', '2018-08-13 17:56:11', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '清空日志', '/xboot/log/delAll*', '', '', 'undefined', '41363147411427328', '', '2.12', '0', '', '41364927394353152', 'admin', '2018-08-13 17:41:48', 'admin', '2018-09-19 22:08:57', '0');
INSERT INTO `t_permission` VALUES ('quartz-job', b'1', '2', '0', '定时任务', 'quartz-job', 'sys/quartz-manage/quartzManage', 'md-time', '', '39915540965232640', '', '2.10', '0', NULL, '41370251991977984', 'admin', '2018-08-13 18:02:57', 'admin', '2018-08-13 18:02:57', '0');
INSERT INTO `t_permission` VALUES ('actuator', b'1', '2', '0', 'Actuator监控', 'actuator', 'sys/actuator/actuator', 'logo-angular', '', '39915540965232640', '', '2.30', '0', '', '41371711400054784', 'admin', '2018-08-13 18:08:45', 'admin', '2019-07-07 21:24:26', '0');
INSERT INTO `t_permission` VALUES ('vue-template', b'1', '1', '0', '后台Vue模版', '/vue-template', 'Main', 'ios-albums', '', '125909152017944576', '', '3.00', '0', '', '41373430515240960', 'admin', '2018-08-13 18:15:35', 'admin', '2018-11-17 11:41:44', '0');
INSERT INTO `t_permission` VALUES ('simple-table', b'1', '2', '0', '简单表格', 'simple-table', 'xboot-vue-template/simple-table/simpleTable', 'ios-grid-outline', '', '41373430515240960', '', '3.10', '0', '', '41375330996326400', 'admin', '2018-08-13 18:23:08', 'admin', '2018-10-20 22:47:07', '0');
INSERT INTO `t_permission` VALUES ('search-table', b'1', '2', '0', '搜索表格[付费]', 'search-table', 'xboot-vue-template/search-table/searchTable', 'md-grid', '', '41373430515240960', '', '3.40', '0', '', '41376192166629376', 'admin', '2018-08-13 18:26:33', 'admin', '2018-10-20 22:47:26', '0');
INSERT INTO `t_permission` VALUES ('complex-table', b'1', '2', '0', '复杂表格[付费]', 'complex-table', 'xboot-vue-template/complex-table/complexTable', 'ios-grid', '', '41373430515240960', '', '3.50', '0', '', '41377034236071936', 'admin', '2018-08-13 18:29:54', 'admin', '2018-10-20 22:47:33', '0');
INSERT INTO `t_permission` VALUES ('tree', b'1', '2', '0', '树形结构', 'tree', 'xboot-vue-template/tree/tree', 'ios-git-network', '', '41373430515240960', '', '3.22', '0', '', '41378916912336896', 'admin', '2018-08-13 18:37:23', 'admin', '2019-04-12 15:38:08', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '查看数据', '无', '', '', 'view', '41371711400054784', '', '2.31', '0', NULL, '41469219249852416', 'admin', '2018-08-14 00:36:13', 'admin', '2018-08-14 00:36:13', '0');
INSERT INTO `t_permission` VALUES ('new-window', b'1', '2', '0', '新窗口操作', 'new-window', 'xboot-vue-template/new-window/newWindow', 'ios-browsers', '', '41373430515240960', '', '3.21', '0', '', '42082442672082944', 'admin', '2018-08-15 17:12:57', 'admin', '2019-04-12 15:48:50', '0');
INSERT INTO `t_permission` VALUES ('html-edit', b'1', '2', '0', '富文本编辑[付费]', 'html-edit', 'xboot-vue-template/html-edit/htmlEdit', 'ios-create', '', '41373430515240960', '', '3.92', '0', '', '42087054753927168', 'admin', '2018-08-15 17:31:16', 'admin', '2019-06-03 13:07:48', '0');
INSERT INTO `t_permission` VALUES ('message-manage', b'1', '2', '0', '消息管理[付费]', 'message-manage', 'sys/message-manage/messageManage', 'md-mail', '', '5129710648430592', '', '1.30', '0', '', '43117268627886080', 'admin', '2018-08-18 13:44:58', 'admin', '2018-08-18 20:55:04', '0');
INSERT INTO `t_permission` VALUES ('social-manage', b'1', '2', '0', '社交账号绑定[付费]', 'social-manage', 'sys/social-manage/socialManage', 'md-share', '', '5129710648430592', '', '1.50', '0', '', '44986029924421632', 'admin', '2018-08-23 17:30:46', 'admin', '2018-09-23 23:26:53', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '查看社交账号数据', '无', '', '', 'view', '44986029924421632', '', '1.42', '0', '', '45069342940860416', 'admin', '2018-08-23 23:01:49', 'admin', '2018-08-24 10:01:09', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除解绑', '/xboot/relate/delByIds*', '', '', 'delete', '44986029924421632', '', '1.41', '0', '', '45235228800716800', 'admin', '2018-08-24 10:01:00', 'admin', '2018-09-19 22:07:23', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加部门', '/xboot/department/add*', '', '', 'add', '40238597734928384', '', '1.21', '0', '', '45235621697949696', 'admin', '2018-08-24 10:02:33', 'admin', '2018-09-19 22:06:57', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑部门', '/xboot/department/edit*', '', '', 'edit', '40238597734928384', '', '1.22', '0', '', '45235787867885568', 'admin', '2018-08-24 10:03:13', 'admin', '2018-09-19 22:07:02', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除部门', '/xboot/department/delByIds/*', '', '', 'delete', '40238597734928384', '', '1.23', '0', NULL, '45235939278065664', 'admin', '2018-08-24 10:03:49', 'admin', '2018-08-24 10:03:49', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加消息', '/xboot/message/add*', '', '', 'add', '43117268627886080', '', '1.31', '0', '', '45236734832676864', 'admin', '2018-08-24 10:06:59', 'admin', '2018-09-19 22:07:07', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑消息', '/xboot/message/edit*', '', '', 'edit', '43117268627886080', '', '1.32', '0', '', '45237010692050944', 'admin', '2018-08-24 10:08:04', 'admin', '2018-09-19 22:07:12', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除消息', '/xboot/message/delByIds/*', '', '', 'delete', '43117268627886080', '', '1.33', '0', NULL, '45237170029465600', 'admin', '2018-08-24 10:08:42', 'admin', '2018-08-24 10:08:42', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加定时任务', '/xboot/quartzJob/add*', '', '', 'add', '41370251991977984', '', '2.11', '0', '', '45264987354042368', 'admin', '2018-08-24 11:59:14', 'admin', '2018-09-19 22:08:11', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑定时任务', '/xboot/quartzJob/edit*', '', '', 'edit', '41370251991977984', '', '2.12', '0', '', '45265487029866496', 'admin', '2018-08-24 12:01:14', 'admin', '2018-09-19 22:08:17', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '暂停定时任务', '/xboot/quartzJob/pause*', '', '', 'disable', '41370251991977984', '', '2.13', '0', '', '45265762415284224', 'admin', '2018-08-24 12:02:19', 'admin', '2018-09-19 22:08:24', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '恢复定时任务', '/xboot/quartzJob/resume*', '', '', 'enable', '41370251991977984', '', '2.14', '0', '', '45265886315024384', 'admin', '2018-08-24 12:02:49', 'admin', '2018-09-19 22:09:13', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除定时任务', '/xboot/quartzJob/delByIds/*', '', '', 'delete', '41370251991977984', '', '2.15', '0', NULL, '45266070000373760', 'admin', '2018-08-24 12:03:33', 'admin', '2018-08-24 12:03:33', '0');
INSERT INTO `t_permission` VALUES ('sys', b'1', '1', '0', '系统管理', '/sys', 'Main', 'ios-settings', '', '125909152017944576', '', '1.00', '0', '', '5129710648430592', 'admin', '2018-06-04 19:02:29', 'admin', '2018-09-29 23:11:56', '0');
INSERT INTO `t_permission` VALUES ('user-manage', b'1', '2', '0', '用户管理', 'user-manage', 'sys/user-manage/userManage', 'md-person', '', '5129710648430592', '', '1.10', '0', '', '5129710648430593', 'admin', '2018-06-04 19:02:32', 'admin', '2018-08-13 15:15:33', '0');
INSERT INTO `t_permission` VALUES ('role-manage', b'1', '2', '0', '角色权限管理', 'role-manage', 'sys/role-manage/roleManage', 'md-contacts', '', '5129710648430592', '', '1.60', '0', '', '5129710648430594', 'admin', '2018-06-04 19:02:35', 'admin', '2018-10-13 13:51:36', '0');
INSERT INTO `t_permission` VALUES ('menu-manage', b'1', '2', '0', '菜单权限管理', 'menu-manage', 'sys/menu-manage/menuManage', 'md-menu', '', '5129710648430592', '', '1.70', '0', '', '5129710648430595', 'admin', '2018-06-04 19:02:37', 'admin', '2018-09-23 23:32:02', '0');
INSERT INTO `t_permission` VALUES ('oss-manage', b'1', '2', '0', '文件对象存储[付费]', 'oss-manage', 'sys/oss-manage/ossManage', 'ios-folder', '', '5129710648430592', '', '1.40', '0', '', '56309618086776832', 'admin', '2018-09-23 23:26:40', 'admin', '2018-11-15 15:17:43', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '导入用户', '/xboot/user/importData*', '', '', 'input', '5129710648430593', '', '1.17', '0', '', '56898976661639168', 'admin', '2018-09-25 14:28:34', 'admin', '2018-09-25 15:12:46', '0');
INSERT INTO `t_permission` VALUES ('excel', b'1', '2', '0', 'Excel导入导出[付费]', 'excel', 'xboot-vue-template/excel/excel', 'md-exit', '', '41373430515240960', '', '3.60', '0', '', '56911328312299520', 'admin', '2018-09-25 15:17:39', 'admin', '2018-10-20 22:47:36', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加已发送消息', '/xboot/messageSend/save*', '', '', 'add', '43117268627886080', '', '1.40', '0', NULL, '57009544286441472', 'admin', '2018-09-25 21:47:55', 'admin', '2018-09-25 21:47:55', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑已发送消息', '/xboot/messageSend/update*', '', '', 'edit', '43117268627886080', '', '1.50', '0', NULL, '57009744761589760', 'admin', '2018-09-25 21:48:43', 'admin', '2018-09-25 21:48:43', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除已发送消息', '/xboot/messageSend/delByIds/*', '', '', 'delete', '43117268627886080', '', '1.60', '0', NULL, '57009981228060672', 'admin', '2018-09-25 21:49:39', 'admin', '2018-09-25 21:49:39', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '上传文件', '无', '', '', 'upload', '56309618086776832', '', '1.41', '0', '', '57212882168844288', 'admin', '2018-09-26 11:15:55', 'admin', '2018-10-08 11:10:05', '0');
INSERT INTO `t_permission` VALUES ('setting', b'1', '2', '0', '系统配置[付费]', 'setting', 'sys/setting-manage/settingManage', 'ios-settings-outline', '', '5129710648430592', '', '1.90', '0', '', '58480609315524608', 'admin', '2018-09-29 23:13:24', 'admin', '2018-11-14 13:24:26', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '查看私密配置', '/xboot/setting/seeSecret/**', '', '', 'view', '58480609315524608', '', '1.81', '0', NULL, '61394706252173312', 'admin', '2018-10-08 00:12:59', 'admin', '2018-10-08 00:12:59', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑配置', '/xboot/setting/*/set*', '', '', 'edit', '58480609315524608', '', '1.82', '0', '', '61417744146370560', 'admin', '2018-10-08 01:44:32', 'admin', '2018-10-08 01:50:03', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '重命名文件', '/xboot/file/rename*', '', '', 'edit', '56309618086776832', '', '1.42', '0', NULL, '61560041605435392', 'admin', '2018-10-08 11:09:58', 'admin', '2018-10-08 11:09:58', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '复制文件', '/xboot/file/copy*', '', '', 'edit', '56309618086776832', '', '1.43', '0', NULL, '61560275261722624', 'admin', '2018-10-08 11:10:54', 'admin', '2018-10-08 11:10:54', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除文件', '/xboot/file/delete/*', '', '', 'delete', '56309618086776832', '', '1.44', '0', NULL, '61560480518377472', 'admin', '2018-10-08 11:11:43', 'admin', '2018-10-08 11:11:43', '0');
INSERT INTO `t_permission` VALUES ('custom-tree', b'1', '2', '0', '自定义树[付费]', 'custom-tree', 'xboot-vue-template/custom-tree/customTree', 'md-git-network', '', '41373430515240960', '', '3.80', '0', '', '63482475359244288', 'admin', '2018-10-13 18:29:02', 'admin', '2018-10-20 22:47:45', '0');
INSERT INTO `t_permission` VALUES ('render', b'1', '2', '0', 'Render函数示例[付费]', 'render', 'xboot-vue-template/render/render', 'md-aperture', '', '41373430515240960', '', '3.30', '0', '', '63741744973352960', 'admin', '2018-10-14 11:39:17', 'admin', '2019-02-04 17:03:07', '0');
INSERT INTO `t_permission` VALUES ('tree&table', b'1', '2', '0', '树+表格[付费]', 'tree&table', 'xboot-vue-template/tree&table/tree&table', 'md-list', '', '41373430515240960', '', '3.90', '0', '', '64290663792906240', 'admin', '2018-10-16 00:00:29', 'admin', '2018-10-20 22:47:49', '0');
INSERT INTO `t_permission` VALUES ('card-list', b'1', '2', '0', '卡片列表[付费]', 'card-list', 'xboot-vue-template/card-list/cardList', 'md-card', '', '41373430515240960', '', '3.91', '0', '', '66790433014943744', 'admin', '2018-10-22 21:33:42', 'admin', '2018-10-22 21:37:12', '0');
INSERT INTO `t_permission` VALUES ('product-template', b'1', '1', '0', '前台产品级组件', '/product-template', 'Main', 'md-ribbon', '', '125909152017944576', '', '4.00', '0', '', '67027338952445952', 'admin', '2018-10-23 13:15:03', 'admin', '2018-10-23 14:57:38', '0');
INSERT INTO `t_permission` VALUES ('banner', b'1', '2', '0', '轮播组件[付费]', 'banner', 'product-template/banner/Banner', 'md-book', '', '67027338952445952', '', '4.10', '0', '', '67027909637836800', 'admin', '2018-10-23 13:17:19', 'admin', '2018-10-23 14:57:46', '0');
INSERT INTO `t_permission` VALUES ('product', b'1', '2', '0', '产品组件[付费]', 'product', 'product-template/product/Product', 'md-pricetags', '', '67027338952445952', '', '4.20', '0', '', '67042515441684480', 'admin', '2018-10-23 14:15:22', 'admin', '2018-10-23 14:57:51', '0');
INSERT INTO `t_permission` VALUES ('category', b'1', '2', '0', '分类栏组件[付费]', 'category', 'product-template/category/Category', 'md-apps', '', '67027338952445952', '', '4.30', '0', NULL, '67082402312228864', 'admin', '2018-10-23 16:53:53', 'admin', '2018-10-23 16:53:53', '0');
INSERT INTO `t_permission` VALUES ('dict', b'1', '2', '0', '数据字典管理', 'dict', 'sys/dict-manage/dictManage', 'md-bookmarks', '', '5129710648430592', '', '1.80', '0', '', '75002207560273920', 'admin', '2018-11-14 13:24:21', 'admin', '2018-11-20 20:06:22', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加字典', '/xboot/dict/add*', '', '', 'add', '75002207560273920', '', '1.81', '0', '', '76215889006956544', 'admin', '2018-11-17 21:47:05', 'admin', '2018-11-17 21:47:53', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑字典', '/xboot/dict/edit*', '', '', 'edit', '75002207560273920', '', '1.82', '0', NULL, '76216071333351424', 'admin', '2018-11-17 21:47:48', 'admin', '2018-11-17 21:47:48', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除字典', '/xboot/dict/delByIds/**', '', '', 'delete', '75002207560273920', '', '1.83', '0', NULL, '76216264070008832', 'admin', '2018-11-17 21:48:34', 'admin', '2018-11-17 21:48:34', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加字典数据', '/xboot/dictData/add*', '', '', 'add', '75002207560273920', '', '1.84', '0', NULL, '76216459709124608', 'admin', '2018-11-17 21:49:21', 'admin', '2018-11-17 21:49:21', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑字典数据', '/xboot/dictData/edit*', '', '', 'edit', '75002207560273920', '', '1.85', '0', NULL, '76216594207870976', 'admin', '2018-11-17 21:49:53', 'admin', '2018-11-17 21:49:53', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除字典数据', '/xboot/dictData/delByIds/**', '', '', 'delete', '75002207560273920', '', '1.86', '0', NULL, '76216702639017984', 'admin', '2018-11-17 21:50:18', 'admin', '2018-11-17 21:50:18', '0');
INSERT INTO `t_permission` VALUES ('activiti', b'1', '1', '0', '工作流程', '/activiti', 'Main', 'md-git-compare', '', '125909152017944576', '', '1.10', '0', '', '76606430504816640', 'admin', '2018-11-18 23:38:57', 'admin', '2018-11-18 23:39:12', '0');
INSERT INTO `t_permission` VALUES ('model-manage', b'1', '2', '0', '模型管理[付费]', 'model-manage', 'activiti/model-manage/modelManage', 'md-cube', '', '76606430504816640', '', '1.00', '0', '', '76607201262702592', 'admin', '2018-11-18 23:42:01', 'admin', '2018-11-20 19:41:58', '0');
INSERT INTO `t_permission` VALUES ('process-manage', b'1', '2', '0', '流程管理[付费]', 'process-manage', 'activiti/process-manage/processManage', 'md-calendar', '', '76606430504816640', '', '0.90', '0', '', '76914082455752704', 'admin', '2018-11-19 20:01:28', 'admin', '2018-11-20 19:41:50', '0');
INSERT INTO `t_permission` VALUES ('category-manage', b'1', '2', '0', '流程分类管理[付费]', 'category-manage', 'activiti/category-manage/categoryManage', 'md-bookmark', '', '76606430504816640', '', '2.00', '0', '', '80539147005071360', 'admin', '2018-11-29 20:06:10', 'admin', '2018-12-04 14:14:41', '0');
INSERT INTO `t_permission` VALUES ('process-ins-manage', b'1', '2', '0', '运行中的流程[付费]', 'process-ins-manage', 'activiti/process-ins-manage/processInsManage', 'md-fastforward', '', '76606430504816640', '', '0.70', '0', '', '81319435670917120', 'admin', '2018-12-01 23:46:45', 'admin', '2018-12-02 15:37:03', '0');
INSERT INTO `t_permission` VALUES ('apply-manage', b'1', '2', '0', '我的申请[付费]', 'apply-manage', 'activiti/apply-manage/applyManage', 'md-clipboard', '', '76606430504816640', '', '0.00', '0', '', '81558529864896512', 'admin', '2018-12-02 15:36:50', 'admin', '2018-12-08 14:50:38', '0');
INSERT INTO `t_permission` VALUES ('todo-manage', b'1', '2', '0', '我的待办[付费]', 'todo-manage', 'activiti/todo-manage/todoManage', 'ios-pricetag', '', '76606430504816640', '', '0.10', '0', NULL, '81716172680073216', 'admin', '2018-12-03 02:03:15', 'admin', '2018-12-03 02:03:15', '0');
INSERT INTO `t_permission` VALUES ('done-manage', b'1', '2', '0', '我的已办[付费]', 'done-manage', 'activiti/done-manage/doneManage', 'ios-pricetag-outline', '', '76606430504816640', '', '0.20', '0', NULL, '82269650301227008', 'admin', '2018-12-04 14:42:34', 'admin', '2018-12-04 14:42:34', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加请假申请', '/xboot/leave/add*', '', '', 'add', '81558529864896512', '', '0.00', '0', '', '84082369492946944', 'admin', '2018-12-09 14:45:40', 'admin', '2018-12-09 14:46:59', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除草稿申请', '/xboot/actBusiness/delByIds/**', '', '', 'delete', '81558529864896512', '', '1.00', '0', NULL, '84082920431554560', 'admin', '2018-12-09 14:47:51', 'admin', '2018-12-09 14:47:51', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '审批通过', '/xboot/actTask/pass**', '', '', 'enable', '81716172680073216', '', '0.00', '0', NULL, '84083562503999488', 'admin', '2018-12-09 14:50:25', 'admin', '2018-12-09 14:50:25', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '审批驳回', '/xboot/actTask/back**', '', '', 'disable', '81716172680073216', '', '1.00', '0', NULL, '84083641302388736', 'admin', '2018-12-09 14:50:43', 'admin', '2018-12-09 14:50:43', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '委托代办', '/xboot/actTask/delegate**', '', '', 'other', '81716172680073216', '', '3.00', '0', NULL, '84084404707659776', 'admin', '2018-12-09 14:53:45', 'admin', '2018-12-09 14:53:45', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除已办任务', '/xboot/actTask/deleteHistoric/**', '', '', 'delete', '82269650301227008', '', '0.00', '0', NULL, '84084724590448640', 'admin', '2018-12-09 14:55:02', 'admin', '2018-12-09 14:55:02', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除运行流程', '/xboot/actProcess/delInsByIds/**', '', '', 'delete', '81319435670917120', '', '0.00', '0', NULL, '84084965817454592', 'admin', '2018-12-09 14:55:59', 'admin', '2018-12-09 14:55:59', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑流程信息', '/xboot/actProcess/updateInfo/**', '', '', 'edit', '76914082455752704', '', '0.00', '0', NULL, '84085542324539392', 'admin', '2018-12-09 14:58:17', 'admin', '2018-12-09 14:58:17', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '流程节点设置', '/xboot/actProcess/editNodeUser**', '', '', 'edit', '76914082455752704', '', '1.00', '0', NULL, '84085810797744128', 'admin', '2018-12-09 14:59:21', 'admin', '2018-12-09 14:59:21', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '流程转模型', '/xboot/actProcess/convertToModel/**', '', '', 'other', '76914082455752704', '', '2.00', '0', NULL, '84085980943880192', 'admin', '2018-12-09 15:00:01', 'admin', '2018-12-09 15:00:01', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除流程定义', '/xboot/actProcess/delByIds/**', '', '', 'delete', '76914082455752704', '', '3.00', '0', '', '84086163001839616', 'admin', '2018-12-09 15:00:45', 'admin', '2018-12-09 15:01:37', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '文件部署流程', '/xboot/actModel/deployByFile**', '', '', 'other', '76914082455752704', '', '4.00', '0', NULL, '84086362248056832', 'admin', '2018-12-09 15:01:32', 'admin', '2018-12-09 15:01:32', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加模型', '/xboot/actModel/add**', '', '', 'add', '76607201262702592', '', '0.00', '0', NULL, '84086882907983872', 'admin', '2018-12-09 15:03:36', 'admin', '2018-12-09 15:03:36', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除模型', '/xboot/actModel/delByIds/**', '', '', 'delete', '76607201262702592', '', '1.00', '0', NULL, '84087009940869120', 'admin', '2018-12-09 15:04:06', 'admin', '2018-12-09 15:04:06', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '部署模型', '/xboot/actModel/deploy/**', '', '', 'other', '76607201262702592', '', '2.00', '0', NULL, '84087154040377344', 'admin', '2018-12-09 15:04:41', 'admin', '2018-12-09 15:04:41', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '添加流程分类', '/xboot/actCategory/add**', '', '', 'add', '80539147005071360', '', '0.00', '0', '', '84087344352727040', 'admin', '2018-12-09 15:05:26', 'admin', '2018-12-09 15:05:33', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '编辑流程分类', '/xboot/actCategory/edit**', '', '', 'edit', '80539147005071360', '', '1.00', '0', NULL, '84087480852156416', 'admin', '2018-12-09 15:05:59', 'admin', '2018-12-09 15:05:59', '0');
INSERT INTO `t_permission` VALUES ('', b'1', '3', '1', '删除流程分类', '/xboot/actCategory/delByIds/**', '', '', 'delete', '80539147005071360', '', '2.00', '0', NULL, '84087593041399808', 'admin', '2018-12-09 15:06:25', 'admin', '2018-12-09 15:06:25', '0');

COMMIT;

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(255) DEFAULT NULL COMMENT '权限id',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '角色权限表';

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_role_permission` VALUES ('496138616573952', '125909152017944576', '175808979732008960', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '5129710648430592', '175808979736203264', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '5129710648430593', '175808979740397568', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '15701400130424832', '175808979744591872', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16678126574637056', '175808979748786176', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '15701915807518720', '175808979752980480', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '15708892205944832', '175808979757174784', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16678447719911424', '175808979761369088', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '25014528525733888', '175808979765563392', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '56898976661639168', '175808979765563394', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '156365156580855808', '175808979769757697', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '40238597734928384', '175808979773952001', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45235621697949696', '175808979782340608', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45235787867885568', '175808979786534912', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45235939278065664', '175808979790729217', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '43117268627886080', '175808979794923521', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45236734832676864', '175808979799117824', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45237010692050944', '175808979803312128', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45237170029465600', '175808979807506432', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '57009544286441472', '175808979811700736', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '57009744761589760', '175808979811700738', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '57009981228060672', '175808979815895041', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '56309618086776832', '175808979820089345', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '57212882168844288', '175808979824283649', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '61560041605435392', '175808979828477952', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '61560275261722624', '175808979832672256', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '61560480518377472', '175808979836866560', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '44986029924421632', '175808979841060864', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45235228800716800', '175808979845255168', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45069342940860416', '175808979849449473', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '5129710648430594', '175808979853643777', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16687383932047360', '175808979862032384', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16689632049631232', '175808979866226688', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16689745006432256', '175808979870420992', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16689883993083904', '175808979874615296', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16690313745666048', '175808979878809600', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '5129710648430595', '175808979883003904', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16694861252005888', '175808979887198208', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16695107491205120', '175808979887198210', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16695243126607872', '175808979891392513', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '75002207560273920', '175808979895586817', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76215889006956544', '175808979899781120', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76216071333351424', '175808979903975424', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76216264070008832', '175808979908169728', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76216459709124608', '175808979912364032', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76216594207870976', '175808979912364034', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76216702639017984', '175808979920752640', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '58480609315524608', '175808979924946944', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '61394706252173312', '175808979929141248', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '61417744146370560', '175808979933335552', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76606430504816640', '175808979937529857', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '81558529864896512', '175808979941724161', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84082369492946944', '175808979945918465', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84082920431554560', '175808979950112769', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '81716172680073216', '175808979954307073', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84083562503999488', '175808979958501376', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84083641302388736', '175808979962695680', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '113601631450304512', '175808979966889984', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84084404707659776', '175808979971084288', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '82269650301227008', '175808979975278592', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84084724590448640', '175808979975278594', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '81319435670917120', '175808979979472897', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84084965817454592', '175808979983667201', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '117806106536841216', '175808979987861505', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76914082455752704', '175808979996250112', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84085542324539392', '175808980000444416', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84085810797744128', '175808980004638720', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84085980943880192', '175808980008833024', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84086163001839616', '175808980013027329', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84086362248056832', '175808980017221633', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '76607201262702592', '175808980021415937', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84086882907983872', '175808980025610240', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84087009940869120', '175808980029804544', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84087154040377344', '175808980033998848', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '80539147005071360', '175808980038193152', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84087344352727040', '175808980042387456', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84087480852156416', '175808980042387458', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '84087593041399808', '175808980046581761', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '39915540965232640', '175808980050776065', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41370251991977984', '175808980054970369', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45264987354042368', '175808980063358976', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45265487029866496', '175808980067553280', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45265762415284224', '175808980071747584', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45265886315024384', '175808980075941888', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '45266070000373760', '175808980080136193', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41363147411427328', '175808980084330497', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41363537456533504', '175808980088524801', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41364927394353152', '175808980092719105', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '121426317022334976', '175808980096913409', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '149452775095275520', '175808980101107713', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41371711400054784', '175808980105302016', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41469219249852416', '175808980109496320', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '39916171171991552', '175808980113690624', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '39918482854252544', '175808980117884928', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41373430515240960', '175808980117884930', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41375330996326400', '175808980122079233', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '129033675403694080', '175808980126273537', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '42082442672082944', '175808980134662144', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41378916912336896', '175808980138856448', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '63741744973352960', '175808980138856450', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41376192166629376', '175808980143050753', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '41377034236071936', '175808980147245057', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '56911328312299520', '175808980155633664', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '63482475359244288', '175808980159827968', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '64290663792906240', '175808980164022272', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '66790433014943744', '175808980168216576', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '42087054753927168', '175808980168216578', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '102235632889237504', '175808980172410881', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '102237605176807424', '175808980176605185', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '102240052523831296', '175808980180799489', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '103658022701633536', '175808980184993793', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '67027338952445952', '175808980189188096', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '67027909637836800', '175808980193382400', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '67042515441684480', '175808980197576704', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '67082402312228864', '175808980201771009', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '113602149589454848', '175808980205965313', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '113602342657462272', '175808980214353920', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '113603512293658624', '175808980218548224', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '113603617897844736', '175808980222742528', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16392452747300864', '175808980226936832', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16392767785668608', '175808980231131136', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16438800255291392', '175808980235325440', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16438962738434048', '175808980239519744', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '16439068543946752', '175808980239519746', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '175808753877127169', '175808980243714049', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '175808922710446081', '175808980247908353', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '127995258721013760', '175808980252102657', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '127996320085446656', '175808980256296960', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '160509731956330496', '175808980260491264', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '160509918166650881', '175808980260491266', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '128366789653434368', '175808980264685569', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '128368112335589376', '175808980273074176', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '128364633437245440', '175808980273074178', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '127996726786134016', '175808980277268481', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573952', '127997001756315648', '175808980281462785', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '125909152017944576', '175877407536844800', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '5129710648430592', '175877407541039104', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '5129710648430593', '175877407549427712', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '40238597734928384', '175877407553622016', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '43117268627886080', '175877407557816321', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '57009744761589760', '175877407566204928', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '56309618086776832', '175877407570399232', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '44986029924421632', '175877407574593537', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '5129710648430594', '175877407582982144', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '5129710648430595', '175877407591370752', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '75002207560273920', '175877407595565056', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '58480609315524608', '175877407603953664', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '76606430504816640', '175877407608147968', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '81558529864896512', '175877407612342273', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '81716172680073216', '175877407620730880', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '82269650301227008', '175877407624925185', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '81319435670917120', '175877407633313792', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '117806106536841216', '175877407637508096', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '76914082455752704', '175877407645896704', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '76607201262702592', '175877407654285312', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '80539147005071360', '175877407658479616', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '39915540965232640', '175877407666868224', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41370251991977984', '175877407671062529', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41363147411427328', '175877407675256833', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41371711400054784', '175877407683645440', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '39916171171991552', '175877407687839744', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '39918482854252544', '175877407692034049', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41373430515240960', '175877407700422656', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41375330996326400', '175877407704616961', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '42082442672082944', '175877407713005568', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41378916912336896', '175877407721394176', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '63741744973352960', '175877407725588480', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41376192166629376', '175877407729782785', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '41377034236071936', '175877407738171392', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '56911328312299520', '175877407742365696', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '63482475359244288', '175877407746560001', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '64290663792906240', '175877407750754305', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '66790433014943744', '175877407759142912', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '42087054753927168', '175877407763337217', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '102235632889237504', '175877407771725824', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '102237605176807424', '175877407775920128', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '102240052523831296', '175877407784308736', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '103658022701633536', '175877407788503040', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '67027338952445952', '175877407792697345', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '67027909637836800', '175877407801085952', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '67042515441684480', '175877407805280257', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '67082402312228864', '175877407813668864', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '113602149589454848', '175877407817863168', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '113602342657462272', '175877407826251776', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '113603512293658624', '175877407830446080', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '113603617897844736', '175877407834640385', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '16392452747300864', '175877407843028992', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '16392767785668608', '175877407847223296', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '16438800255291392', '175877407855611904', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '16438962738434048', '175877407859806208', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '16439068543946752', '175877407864000512', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '175808753877127169', '175877407872389120', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '175808922710446081', '175877407876583424', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '127995258721013760', '175877407884972032', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '127996320085446656', '175877407889166336', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '160509731956330496', '175877407893360641', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '160509918166650881', '175877407901749248', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '128366789653434368', '175877407905943552', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '128368112335589376', '175877407910137856', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '128364633437245440', '175877407914332160', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '127996726786134016', '175877407922720768', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('496138616573953', '127997001756315648', '175877407926915072', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '125909152017944576', '175877432572645376', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '5129710648430592', '175877432576839680', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '5129710648430593', '175877432581033985', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '40238597734928384', '175877432585228289', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '57009744761589760', '175877432589422593', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '16392452747300864', '175877432593616897', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '16392767785668608', '175877432602005504', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '16439068543946752', '175877432606199808', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '175808753877127169', '175877432610394113', 'admin', NOW(), 'admin', NOW(), 0);
INSERT INTO `t_role_permission` VALUES ('16457350655250432', '175808922710446081', '175877432614588417', 'admin', NOW(), 'admin', NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮件',
  `address` varchar(255) DEFAULT NULL COMMENT '省市县地址',
  `street` varchar(255) DEFAULT NULL COMMENT '街道地址',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `pass_strength` varchar(2) DEFAULT NULL COMMENT '密码强度',
  `avatar` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `type` int(11) DEFAULT NULL COMMENT '用户类型 0普通用户 1管理员',
  `status` int(11) DEFAULT NULL COMMENT '状态 默认0正常 -1拉黑',
  `description` varchar(255) DEFAULT NULL COMMENT '描述/详情/备注',
  `department_id` varchar(255) DEFAULT NULL COMMENT '所属部门id',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('test2', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '', '18782059033', '1012139570@qq.com', '', '', '男', '弱', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', 0, 0, '', '40652338142121984', '16739222421508096', NULL, NOW(),  NULL, NOW(), 0);
INSERT INTO `t_user` VALUES ('test', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '', '18782059033', '1012139570@qq.com', '[\"510000\",\"510100\",\"510114\"]', '', '男', '弱', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', 0, 0, '', '40652338142121984', '4363087427670016', NULL, NOW(),  NULL, NOW(), 0);
INSERT INTO `t_user` VALUES ('admin', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', 'Exrick', '18782059033', '2549575805@qq.com', '[\"510000\",\"510100\",\"510104\"]', '天府1街', '男', '弱', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', 1, 0, 'test', '40322777781112832', '682265633886208', NULL, NOW(),  NULL, NOW(), 0);
INSERT INTO `t_user` VALUES ('Exrick', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '', '18782059033', '1012@qq.com', '', '', '女', '弱', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', 0, -1, '', '40322777781112832', '682265633886209', NULL, NOW(),  NULL, NOW(), 0);
COMMIT;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户唯一id',
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色唯一id',

  `id` varchar(32) NOT NULL COMMENT '唯一标识',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT 0 COMMENT '删除标志 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '用户角色表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('496138616573953', '682265633886209', '134933785559961600', NULL, NOW(),  NULL, NOW(), 0);
INSERT INTO `t_user_role` VALUES ('496138616573952', '682265633886209', '134933785576738816', NULL, NOW(),  NULL, NOW(), 0);
INSERT INTO `t_user_role` VALUES ('16457350655250432', '16739222421508096', '61392579396112384', NULL, NOW(),  NULL, NOW(), 0);
INSERT INTO `t_user_role` VALUES ('496138616573953', '4363087427670016', '61392637076180992', NULL, NOW(),  NULL, NOW(), 0);
INSERT INTO `t_user_role` VALUES ('496138616573952', '682265633886208', '98931727094779904', NULL, NOW(),  NULL, NOW(), 0);

DROP TABLE IF EXISTS QRTZ_FIRED_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_PAUSED_TRIGGER_GRPS;
DROP TABLE IF EXISTS QRTZ_SCHEDULER_STATE;
DROP TABLE IF EXISTS QRTZ_LOCKS;
DROP TABLE IF EXISTS QRTZ_SIMPLE_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_SIMPROP_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_CRON_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_BLOB_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_JOB_DETAILS;
DROP TABLE IF EXISTS QRTZ_CALENDARS;


CREATE TABLE QRTZ_JOB_DETAILS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    JOB_NAME  VARCHAR(200) NOT NULL,
    JOB_GROUP VARCHAR(200) NOT NULL,
    DESCRIPTION VARCHAR(250) NULL,
    JOB_CLASS_NAME   VARCHAR(250) NOT NULL,
    IS_DURABLE VARCHAR(1) NOT NULL,
    IS_NONCONCURRENT VARCHAR(1) NOT NULL,
    IS_UPDATE_DATA VARCHAR(1) NOT NULL,
    REQUESTS_RECOVERY VARCHAR(1) NOT NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (SCHED_NAME,JOB_NAME,JOB_GROUP)
);

CREATE TABLE QRTZ_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    JOB_NAME  VARCHAR(200) NOT NULL,
    JOB_GROUP VARCHAR(200) NOT NULL,
    DESCRIPTION VARCHAR(250) NULL,
    NEXT_FIRE_TIME BIGINT(13) NULL,
    PREV_FIRE_TIME BIGINT(13) NULL,
    PRIORITY INTEGER NULL,
    TRIGGER_STATE VARCHAR(16) NOT NULL,
    TRIGGER_TYPE VARCHAR(8) NOT NULL,
    START_TIME BIGINT(13) NOT NULL,
    END_TIME BIGINT(13) NULL,
    CALENDAR_NAME VARCHAR(200) NULL,
    MISFIRE_INSTR SMALLINT(2) NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,JOB_NAME,JOB_GROUP)
        REFERENCES QRTZ_JOB_DETAILS(SCHED_NAME,JOB_NAME,JOB_GROUP)
);

CREATE TABLE QRTZ_SIMPLE_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    REPEAT_COUNT BIGINT(7) NOT NULL,
    REPEAT_INTERVAL BIGINT(12) NOT NULL,
    TIMES_TRIGGERED BIGINT(10) NOT NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_CRON_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    CRON_EXPRESSION VARCHAR(200) NOT NULL,
    TIME_ZONE_ID VARCHAR(80),
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_SIMPROP_TRIGGERS
  (          
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    STR_PROP_1 VARCHAR(512) NULL,
    STR_PROP_2 VARCHAR(512) NULL,
    STR_PROP_3 VARCHAR(512) NULL,
    INT_PROP_1 INT NULL,
    INT_PROP_2 INT NULL,
    LONG_PROP_1 BIGINT NULL,
    LONG_PROP_2 BIGINT NULL,
    DEC_PROP_1 NUMERIC(13,4) NULL,
    DEC_PROP_2 NUMERIC(13,4) NULL,
    BOOL_PROP_1 VARCHAR(1) NULL,
    BOOL_PROP_2 VARCHAR(1) NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP) 
    REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_BLOB_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    BLOB_DATA BLOB NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_CALENDARS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    CALENDAR_NAME  VARCHAR(200) NOT NULL,
    CALENDAR BLOB NOT NULL,
    PRIMARY KEY (SCHED_NAME,CALENDAR_NAME)
);

CREATE TABLE QRTZ_PAUSED_TRIGGER_GRPS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_GROUP  VARCHAR(200) NOT NULL, 
    PRIMARY KEY (SCHED_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_FIRED_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    ENTRY_ID VARCHAR(95) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    INSTANCE_NAME VARCHAR(200) NOT NULL,
    FIRED_TIME BIGINT(13) NOT NULL,
    SCHED_TIME BIGINT(13) NOT NULL,
    PRIORITY INTEGER NOT NULL,
    STATE VARCHAR(16) NOT NULL,
    JOB_NAME VARCHAR(200) NULL,
    JOB_GROUP VARCHAR(200) NULL,
    IS_NONCONCURRENT VARCHAR(1) NULL,
    REQUESTS_RECOVERY VARCHAR(1) NULL,
    PRIMARY KEY (SCHED_NAME,ENTRY_ID)
);

CREATE TABLE QRTZ_SCHEDULER_STATE
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    INSTANCE_NAME VARCHAR(200) NOT NULL,
    LAST_CHECKIN_TIME BIGINT(13) NOT NULL,
    CHECKIN_INTERVAL BIGINT(13) NOT NULL,
    PRIMARY KEY (SCHED_NAME,INSTANCE_NAME)
);

CREATE TABLE QRTZ_LOCKS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    LOCK_NAME  VARCHAR(40) NOT NULL, 
    PRIMARY KEY (SCHED_NAME,LOCK_NAME)
);