/*
Navicat MySQL Data Transfer

Source Server         : jeecmssp1
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : lib_xjench

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2014-12-10 20:27:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cgform_button
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button`;
CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `button_icon` varchar(20) DEFAULT NULL,
  `BUTTON_NAME` varchar(50) DEFAULT NULL,
  `BUTTON_STATUS` varchar(2) DEFAULT NULL,
  `BUTTON_STYLE` varchar(20) DEFAULT NULL,
  `EXP` varchar(255) DEFAULT NULL,
  `FORM_ID` varchar(32) DEFAULT NULL,
  `OPT_TYPE` varchar(20) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_button_sql
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button_sql`;
CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button_sql
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_enhance_js
-- ----------------------------
DROP TABLE IF EXISTS `cgform_enhance_js`;
CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_enhance_js
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_field
-- ----------------------------
DROP TABLE IF EXISTS `cgform_field`;
CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `dict_field` varchar(100) DEFAULT NULL,
  `dict_table` varchar(100) DEFAULT NULL,
  `dict_text` varchar(100) DEFAULT NULL,
  `field_default` varchar(20) DEFAULT NULL,
  `field_href` varchar(200) DEFAULT NULL,
  `field_length` int(11) DEFAULT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) DEFAULT NULL,
  `is_key` varchar(2) DEFAULT NULL,
  `is_null` varchar(5) DEFAULT NULL,
  `is_query` varchar(5) DEFAULT NULL,
  `is_show` varchar(5) DEFAULT NULL,
  `is_show_list` varchar(5) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) DEFAULT NULL,
  `main_table` varchar(100) DEFAULT NULL,
  `old_field_name` varchar(32) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `point_length` int(11) DEFAULT NULL,
  `query_mode` varchar(10) DEFAULT NULL,
  `show_type` varchar(10) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_field
-- ----------------------------
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b04a012f', '主键', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66afef012a');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0500130', '订单号', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'order_code', null, 'N', 'Y', 'Y', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66afef012a');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0520131', '订单日期', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'order_date', null, 'N', 'Y', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'date', 'Date', null, null, null, '5a43553b4a2d65b4014a2d66afef012a');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0540132', '订单金额', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'order_money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '3', '3', 'single', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66afef012a');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0560133', '备注', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'Y', 'Y', 'Y', 'Y', '255', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66afef012a');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b05e0134', '主键', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0600135', '请假标题', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'title', null, 'N', 'N', 'N', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0620136', '请假人', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'people', null, 'N', 'N', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0640137', '性别', 'admin', '2014-12-09 12:55:12', '管理员', 'sex', '', null, null, null, '0', 'sex', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '3', '0', 'single', 'list', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0650138', '请假开始时间', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'begindate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '4', '0', 'group', 'date', 'Date', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0670139', '请假结束时间', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'enddate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '5', '0', 'group', 'datetime', 'Date', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b08a013a', '所属部门', 'admin', '2014-12-09 12:55:12', '管理员', 'id', 't_s_depart', 'departname', null, null, '0', 'hol_dept', null, 'N', 'N', 'N', 'Y', 'Y', '32', '', '', null, '7', '0', 'single', 'list', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b08c013b', '请假原因', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'hol_reson', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b08d013c', '部门审批人', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'dep_leader', null, 'N', 'N', 'N', 'Y', 'Y', '20', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b08f013d', '部门审批意见', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b090013e', '请假天数', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '120', 'day_num', null, 'N', 'Y', 'N', 'Y', 'Y', '10', '', '', null, '6', '0', 'single', 'text', 'int', null, null, null, '5a43553b4a2d65b4014a2d66aff5012b');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b09a013f', '主键', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff7012c');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b09c0140', '客户名', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'name', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff7012c');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b09d0141', '单价', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66aff7012c');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b09f0142', '外键', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '120', 'fk_id', null, 'N', 'N', 'Y', 'N', 'N', '36', 'id', 'jform_order_main', null, '5', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff7012c');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0a00143', '电话', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '120', 'telphone', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff7012c');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0a20144', '性别', 'admin', '2014-12-09 12:55:12', '管理员', 'sex', '', null, null, null, '120', 'sex', null, 'N', 'Y', 'Y', 'Y', 'Y', '4', '', '', null, '3', '0', 'single', 'radio', 'string', null, null, null, '5a43553b4a2d65b4014a2d66aff7012c');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0a50145', '主键', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '120', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'checkbox', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b017012d');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0a70146', '航班号', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '120', 'ticket_code', null, 'N', 'N', 'Y', 'Y', 'Y', '100', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b017012d');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0a90147', '航班时间', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '120', 'tickect_date', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '2', '0', 'single', 'datetime', 'Date', null, null, null, '5a43553b4a2d65b4014a2d66b017012d');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0ab0148', '外键', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '120', 'fck_id', null, 'N', 'N', 'N', 'N', 'N', '36', 'id', 'jform_order_main', null, '3', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b017012d');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0af0149', '主键', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0b1014a', '机构合计', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'a', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '1', '2', 'group', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0b2014b', '行政小计', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0b4014c', '行政省', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b11', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '3', '0', 'group', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0b6014d', '行政市', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b12', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '4', '0', 'group', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0b7014e', '行政县', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b13', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '5', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0b9014f', '事业合计', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '6', '2', 'single', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0bb0150', '参公小计', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '7', '2', 'single', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0bc0151', '参公省', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b31', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0be0152', '参公市', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b32', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0c00153', '参公县', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'b33', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0c10154', '全额拨款', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'c1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '11', '2', 'single', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0c30155', '差额拨款', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'c2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '12', '2', 'single', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0c50156', '自收自支', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'c3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '13', '2', 'single', 'text', 'double', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0c70157', '经费合计', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'd', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '14', '2', 'single', 'text', 'int', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');
INSERT INTO `cgform_field` VALUES ('5a43553b4a2d65b4014a2d66b0c90158', '机构资质', 'admin', '2014-12-09 12:55:12', '管理员', '', '', null, null, null, '0', 'd1', null, 'N', 'N', 'N', 'Y', 'Y', '1000', '', '', null, '15', '0', 'single', 'text', 'string', null, null, null, '5a43553b4a2d65b4014a2d66b01a012e');

-- ----------------------------
-- Table structure for cgform_ftl
-- ----------------------------
DROP TABLE IF EXISTS `cgform_ftl`;
CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) DEFAULT NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) DEFAULT NULL,
  `UPDATE_BY` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_ftl
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_head
-- ----------------------------
DROP TABLE IF EXISTS `cgform_head`;
CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_pk_sequence` varchar(200) DEFAULT NULL,
  `jform_pk_type` varchar(100) DEFAULT NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) DEFAULT NULL,
  `sub_table_str` longtext,
  `tab_order` int(11) DEFAULT NULL,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_head
-- ----------------------------
INSERT INTO `cgform_head` VALUES ('5a43553b4a2d65b4014a2d66afef012a', '订单主信息', 'admin', '2014-12-09 12:55:12', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '2', '57', 'group', '0', 'jform_order_ticket,jform_order_customer', null, 'jform_order_main', null, null, null);
INSERT INTO `cgform_head` VALUES ('5a43553b4a2d65b4014a2d66aff5012b', '请假单', 'admin', '2014-12-09 12:55:12', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '1', '51', 'group', '0', null, null, 'jform_leave', null, null, null);
INSERT INTO `cgform_head` VALUES ('5a43553b4a2d65b4014a2d66aff7012c', '订单客户信息', 'admin', '2014-12-09 12:55:12', '管理员', 'Y', 'N', 'Y', 'N', null, 'UUID', '3', '16', 'single', '0', null, null, 'jform_order_customer', null, null, null);
INSERT INTO `cgform_head` VALUES ('5a43553b4a2d65b4014a2d66b017012d', '订单机票信息', 'admin', '2014-12-09 12:55:12', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '3', '20', 'single', '0', null, null, 'jform_order_ticket', null, null, null);
INSERT INTO `cgform_head` VALUES ('5a43553b4a2d65b4014a2d66b01a012e', '价格认证机构统计表', 'admin', '2014-12-09 12:55:12', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '1', '3', 'group', '0', null, null, 'jform_price1', null, null, null);

-- ----------------------------
-- Table structure for cgform_uploadfiles
-- ----------------------------
DROP TABLE IF EXISTS `cgform_uploadfiles`;
CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_uploadfiles
-- ----------------------------

-- ----------------------------
-- Table structure for ck_editor
-- ----------------------------
DROP TABLE IF EXISTS `ck_editor`;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_editor
-- ----------------------------
INSERT INTO `ck_editor` VALUES ('5a43553b4a2d65b4014a2d66afed0129', 0x3C68746D6C3E3C686561643E3C7469746C653E3C2F7469746C653E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F64656661756C742F6561737975692E637373272069643D276561737975695468656D65272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F69636F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6163636F7264696F6E2F6373732F6163636F7264696F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7374796C652E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7461626C6566726F6D2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C7374796C6520747970653D27746578742F637373273E626F64797B666F6E742D73697A653A313270783B7D7461626C65207B626F726465723A31707820736F6C696420233030303030303B626F726465722D636F6C6C617073653A20636F6C6C617073653B7D7464207B626F726465723A31707820736F6C696420233030303030303B6261636B67726F756E643A77686974653B666F6E742D73697A653A313270783B666F6E742D66616D696C793A20D0C2CBCECCE53B636F6C6F723A20233333333B3C2F7374796C653E3C2F686561643E3C626F64793E3C6469763E3C703EB8BDBCFE32A3BA3C2F703E3C6831207374796C653D27746578742D616C69676E3A63656E746572273E3C7370616E207374796C653D27666F6E742D73697A653A32347078273E3C7374726F6E673EBCDBB8F1C8CFD6A4C8CBD4B1CDB3BCC6B1ED3C2F7374726F6E673E3C2F7370616E3E3C2F68313E3C703ECCEEB1A8B5A5CEBBA3A8B8C7D5C2A3A9A3BA3C696E707574206E616D653D276F72675F6E616D652720747970653D2774657874272076616C75653D27247B6F72675F6E616D653F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C703EB5A5CEBBB4FAC2EBBAC5A3BA3C696E707574206E616D653D276E756D2720747970653D2774657874272076616C75653D27247B6E756D3F69665F6578697374733F68746D6C7D27202F3E20266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703BB5A5CEBBA3BAC8CBCCEE266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20B1A8C8D5C6DAA3BA266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20C4EA266E6273703B266E6273703B20D4C2266E6273703B266E6273703B20C8D53C2F703E3C666F726D20616374696F6E3D276367466F726D4275696C64436F6E74726F6C6C65722E646F3F736176654F72557064617465272069643D27666F726D6F626A27206D6574686F643D27706F737427206E616D653D27666F726D6F626A273E3C696E707574206E616D653D277461626C654E616D652720747970653D2768696464656E272076616C75653D27247B7461626C654E616D653F69665F6578697374733F68746D6C7D27202F3E203C696E707574206E616D653D2769642720747970653D2768696464656E272076616C75653D27247B69643F69665F6578697374733F68746D6C7D27202F3E237B6A666F726D5F68696464656E5F6669656C647D3C696E70757420747970653D2768696464656E27202F3E3C703E266E6273703B3C2F703E3C7461626C6520626F726465723D2731272063656C6C70616464696E673D2730272063656C6C73706163696E673D273027207374796C653D2777696474683A313031367078273E3C74626F64793E3C74723E3C746420726F777370616E3D2734273E3C703E266E6273703B3C2F703E3C703E266E6273703B3C2F703E3C703EBACFBCC63C2F703E3C703E266E6273703B3C2F703E3C2F74643E3C746420636F6C7370616E3D27362720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8CBCAFD3C2F703E3C2F74643E3C746420636F6C7370616E3D27352720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703ED1A7C0FA3C2F703E3C2F74643E3C746420636F6C7370616E3D27342720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8A1B5C3B5C4A3A8C9CFB8DAA3A9D6B4D2B5D7CAB8F13C2F703E3C2F74643E3C746420636F6C7370616E3D2734273E3C703ED7A8D2B5BCBCCAF5D6B0B3C63C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2734273E3C703EA3A8BEADBCC3CFB5C1D0A1A2B9A4B3CCCFB5C1D0A3A93C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2733273E3C703ED4DAB1E0C8CBD4B13C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6B8D3C3C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC1D9CAB128BDE8D3C329C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFD6D03C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB4F3D7A83C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB1BEBFC63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED1D0BEBFC9FA3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4CAA63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8B4BACB3C2F703E3C703EB2C3B6A8D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB3F5BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED6D0BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFBCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703EB1BEB5A5CEBB3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C74643E3C703EB3A4C6DA3C2F703E3C2F74643E3C74643E3C703EB6CCC6DA3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E41313C2F703E3C2F74643E3C74643E3C703E42313C2F703E3C2F74643E3C74643E3C703E42323C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E42333C2F703E3C2F74643E3C74643E3C703E42343C2F703E3C2F74643E3C74643E3C703E42353C2F703E3C2F74643E3C74643E3C703E43313C2F703E3C2F74643E3C74643E3C703E43323C2F703E3C2F74643E3C74643E3C703E43333C2F703E3C2F74643E3C74643E3C703E43343C2F703E3C2F74643E3C74643E3C703E43353C2F703E3C2F74643E3C74643E3C703E44313C2F703E3C2F74643E3C74643E3C703E44323C2F703E3C2F74643E3C74643E3C703E44333C2F703E3C2F74643E3C74643E3C703E44343C2F703E3C2F74643E3C74643E3C703E45313C2F703E3C2F74643E3C74643E3C703E45323C2F703E3C2F74643E3C74643E3C703E45333C2F703E3C2F74643E3C74643E3C703E45343C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E3C696E707574206E616D653D276131272073697A653D27342720747970653D2774657874272076616C75653D27247B61313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276231272073697A653D27342720747970653D2774657874272076616C75653D27247B62313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276232272073697A653D27342720747970653D2774657874272076616C75653D27247B62323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E3C696E707574206E616D653D276233272073697A653D27342720747970653D2774657874272076616C75653D27247B62333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276234272073697A653D27342720747970653D2774657874272076616C75653D27247B62343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276235272073697A653D27342720747970653D2774657874272076616C75653D27247B62353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276331272073697A653D27342720747970653D2774657874272076616C75653D27247B63313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276332272073697A653D27342720747970653D2774657874272076616C75653D27247B63323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276333272073697A653D27342720747970653D2774657874272076616C75653D27247B63333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276334272073697A653D27342720747970653D2774657874272076616C75653D27247B63343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276335272073697A653D27342720747970653D2774657874272076616C75653D27247B63353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276431272073697A653D27342720747970653D2774657874272076616C75653D27247B64313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276432272073697A653D27342720747970653D2774657874272076616C75653D27247B64323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276433272073697A653D27342720747970653D2774657874272076616C75653D27247B64333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276434272073697A653D27342720747970653D2774657874272076616C75653D27247B64343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276531272073697A653D27342720747970653D2774657874272076616C75653D27247B65313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276532272073697A653D27342720747970653D2774657874272076616C75653D27247B65323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276533272073697A653D27342720747970653D2774657874272076616C75653D27247B65333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276534272073697A653D27342720747970653D2774657874272076616C75653D27247B65343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D273230273E3C703E266E6273703B3C2F703E3C703ECCEEB1A8CBB5C3F7A3BA3C2F703E3C703ED2BBA1A2BACFBCC6A3A841A3A9A3BACCEEB1A8D6C1CDB3BCC6BDD8D6B9C6DAB5C4B1BEBBFAB9B9B5C4C8CBD4B1D7DCCAFDA1A33C2F703E3C703EB6FEA1A2C8CBCAFDA3BA3C2F703E3C703ED4DAB1E0C8CBD4B1A3BAB7D6B1F0B0B4D5D5BCDBB8F1C8CFD6A4BBFAB9B9B1E0D6C6C4DABCB0C6E4CBFCBEDFD3D0BCDBB8F1D6F7B9DCB2BFC3C5B1E0D6C6B5C4CAB5D3D0C8CBCAFDCCEEB1A8D4DA4231A1A24232C0B8C4DAA1A33C2F703E3C703EC6B8D3C3C8CBD4B1A3BAB0B4D5D5BEADBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4B2A2C7A9B6A9C8FDC4EAD2D4C9CFB5C4B9A4D7F7BACFCDACB5C4C8CBD4B1A3A84233A3A9A3BBD2D4BCB0C3BBD3D0BEADB9FDBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4C7A9B6A9BACFCDACC9D9D3DAC8FDC4EAB5C4C8CBD4B1A3A84234A3A9B7D6B1F0C0B4BDF8D0D0CDB3BCC6A1A33C2F703E3C703EC1D9CAB1A3A8BDE8D3C3A3A9C8CBD4B1A3A84235A3A9A3BACCD8D6B8CDE2C6B8B5C4C1D9CAB1B9A4A3ACBBF2D5DFB9A4D7F7B9D8CFB5B2BBD4DAB1BEB5A5CEBBC7D2CEDEB3A4C6DAC6B8D3C3BACFCDACB5C4BDE8B5F7C8CBD4B1B5C8A1A33C2F703E3C703EC8FDA1A2B1EDC4DAB8F7C0B8C4BFB9D8CFB53C2F703E3C703E413D42312B42322B42332B42342B42353D43312B43322B43332B43342B43353D44312B44322B44332B44343D45312B45322B45332B45343C2F703E3C2F74643E3C2F74723E3C2F74626F64793E3C2F7461626C653E3C2F666F726D3E3C2F6469763E3C2F626F64793E3C2F68746D6C3E);

-- ----------------------------
-- Table structure for ck_finder
-- ----------------------------
DROP TABLE IF EXISTS `ck_finder`;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_finder
-- ----------------------------

-- ----------------------------
-- Table structure for dede_archives
-- ----------------------------
DROP TABLE IF EXISTS `dede_archives`;
CREATE TABLE `dede_archives` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '1',
  `title` char(60) NOT NULL DEFAULT '',
  `litpic` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mainindex` (`typeid`,`channel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_archives
-- ----------------------------
INSERT INTO `dede_archives` VALUES ('42', '2', '1', '咱们的骆驼（吐拉牧场）', '/uploads/allimg/141009/1-14100Z25300-lp.jpg');
INSERT INTO `dede_archives` VALUES ('43', '2', '1', '我们的苹果（江格勒萨依）', '/uploads/allimg/141009/1-14100Z25324-lp.jpg');
INSERT INTO `dede_archives` VALUES ('44', '2', '1', '我们的大蒜（江格勒萨依）', '/uploads/allimg/141009/1-14100Z25348-lp.jpg');
INSERT INTO `dede_archives` VALUES ('45', '2', '1', '摘葫芦（托格拉克勒克乡）', '/uploads/allimg/141009/1-14100Z25422-lp.jpg');
INSERT INTO `dede_archives` VALUES ('46', '2', '1', '泉水（吐拉牧场）', '/uploads/allimg/141009/1-14100Z25512-lp.jpg');
INSERT INTO `dede_archives` VALUES ('47', '2', '1', '取羊绒熬（奥依拉克镇）', '/uploads/allimg/141009/1-14100Z25531-lp.jpg');
INSERT INTO `dede_archives` VALUES ('48', '2', '1', '清理泉眼（阿羌乡）', '/uploads/allimg/141009/1-14100Z25550-lp.jpg');
INSERT INTO `dede_archives` VALUES ('49', '2', '1', '采玉回家（阿羌乡）', '/uploads/allimg/141009/1-14100Z25609-lp.jpg');
INSERT INTO `dede_archives` VALUES ('50', '2', '2', '啊都烦豆腐脑奥迪能否', '');
INSERT INTO `dede_archives` VALUES ('51', '2', '2', '阿布都卡地尔·吾甫尔作品', '/uploads/allimg/141012/1-141012101I6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('52', '2', '2', '甫拉提，尼亚孜作品', '/uploads/allimg/141012/1-141012102J1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('53', '2', '2', '高远作品', '/uploads/allimg/141012/1-141012103256-lp.jpg');
INSERT INTO `dede_archives` VALUES ('54', '2', '2', '刘卫东《和谐婆媳》', '/uploads/allimg/141012/1-141012103358-lp.jpg');
INSERT INTO `dede_archives` VALUES ('55', '2', '2', '李忠《晨曦》', '/uploads/allimg/141012/1-141012103526.jpg');
INSERT INTO `dede_archives` VALUES ('56', '2', '2', '王志清：大美西湖', '/uploads/allimg/141012/1-141012103J8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('57', '2', '2', '亦小蕊作品', '/uploads/allimg/141012/1-141012103U5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('58', '2', '2', '周学进《山下的蒙古包》', '/uploads/allimg/141012/1-141012104020-lp.jpg');
INSERT INTO `dede_archives` VALUES ('59', '2', '2', '巴格达尔作品', '/uploads/allimg/141012/1-141012104344-lp.jpg');
INSERT INTO `dede_archives` VALUES ('60', '2', '2', '周勇作品', '/uploads/allimg/141012/1-141012105310-lp.jpg');
INSERT INTO `dede_archives` VALUES ('61', '2', '2', '航拍喀什---王宁摄影', '/uploads/allimg/141012/1-141012105H9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('62', '2', '2', '孙涛参赛作品', '/uploads/allimg/141012/1-141012105945-lp.jpg');
INSERT INTO `dede_archives` VALUES ('63', '3', '1', '那拉提旅游宣传片', '/uploads/allimg/141012/1-1410121121220-L.jpg');
INSERT INTO `dede_archives` VALUES ('64', '3', '1', '青色草原博尔塔拉宣传片', '/uploads/allimg/141012/1-1410121132160-L.jpg');
INSERT INTO `dede_archives` VALUES ('65', '4', '1', '《与爱同行》', '/uploads/allimg/141013/1-1410130115480-L.jpg');
INSERT INTO `dede_archives` VALUES ('66', '2', '2', '甫拉提，尼亚孜作品', '/uploads/allimg/141018/1-14101R24540-lp.jpg');
INSERT INTO `dede_archives` VALUES ('67', '2', '2', '吕震作品', '/uploads/allimg/141018/1-14101R30041-lp.jpg');
INSERT INTO `dede_archives` VALUES ('68', '2', '2', '周学进作品', '/uploads/allimg/141018/1-14101R32348-lp.jpg');
INSERT INTO `dede_archives` VALUES ('69', '2', '2', '张华俊作品', '/uploads/141108/2-14110R1552C62.JPG');
INSERT INTO `dede_archives` VALUES ('227', '2', '2', '周海作品', '/uploads/allimg/141108/2-14110R20059-lp.jpg');
INSERT INTO `dede_archives` VALUES ('70', '2', '2', '田勇作品', '/uploads/141102/2-141102230231610.JPG');
INSERT INTO `dede_archives` VALUES ('71', '2', '2', '巴格达尔作品', '/uploads/allimg/141018/1-14101R33039-lp.jpg');
INSERT INTO `dede_archives` VALUES ('72', '2', '2', '徐涛作品', '/uploads/allimg/141018/1-14101R33423-lp.jpg');
INSERT INTO `dede_archives` VALUES ('73', '2', '2', '刘卫东作品', '/uploads/allimg/141018/1-14101R33544-lp.jpg');
INSERT INTO `dede_archives` VALUES ('74', '2', '2', '孙涛作品', '/uploads/allimg/141018/1-14101R34112-lp.jpg');
INSERT INTO `dede_archives` VALUES ('75', '2', '2', '李忠作品', '/uploads/allimg/141018/1-14101R34552-lp.jpg');
INSERT INTO `dede_archives` VALUES ('76', '2', '2', '阿布都卡地尔•吾甫尔作品', '/uploads/allimg/141018/1-14101R34932-lp.jpg');
INSERT INTO `dede_archives` VALUES ('77', '2', '2', '周勇作品', '/uploads/allimg/141018/1-14101R35Z6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('78', '2', '2', '邓必军作品', '/uploads/allimg/141019/1-14101Z00P1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('79', '2', '2', '航拍喀什---王宁作品', '/uploads/allimg/141019/1-14101Z01421-lp.jpg');
INSERT INTO `dede_archives` VALUES ('80', '2', '2', '郭宝瑞作品', '/uploads/allimg/141019/1-14101Z01628-lp.jpg');
INSERT INTO `dede_archives` VALUES ('81', '2', '2', '贾蕊作品', '/uploads/allimg/141019/1-14101Z01T1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('82', '2', '2', '庞明路作品', '/uploads/allimg/141019/1-14101Z02327-lp.jpg');
INSERT INTO `dede_archives` VALUES ('83', '2', '2', '周文来作品', '/uploads/allimg/141019/1-14101Z02I8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('84', '2', '2', '王建作品', '/uploads/allimg/141019/1-14101Z02T8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('85', '2', '2', '李贺成作品', '/uploads/allimg/141019/1-14101Z03146-lp.jpg');
INSERT INTO `dede_archives` VALUES ('86', '2', '2', '黄玉龙作品', '/uploads/allimg/141019/1-14101Z03505-lp.jpg');
INSERT INTO `dede_archives` VALUES ('87', '2', '2', '刘承作品', '/uploads/allimg/141019/1-14101Z03A7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('88', '2', '2', '张万勇作品', '/uploads/allimg/141019/1-14101Z03P7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('89', '2', '2', '吴业成作品', '/uploads/allimg/141019/1-14101Z04342-lp.jpg');
INSERT INTO `dede_archives` VALUES ('90', '2', '2', '祁军作品', '/uploads/allimg/141019/1-14101Z04K1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('91', '2', '2', '丁军作品', '/uploads/allimg/141019/1-14101Z05019-lp.jpg');
INSERT INTO `dede_archives` VALUES ('92', '2', '2', '王中强作品', '/uploads/allimg/141019/1-14101Z05125-lp.jpg');
INSERT INTO `dede_archives` VALUES ('93', '2', '2', '黄维莉作品', '/uploads/allimg/141019/1-14101Z05510-lp.jpg');
INSERT INTO `dede_archives` VALUES ('94', '2', '2', '董国民作品', '/uploads/allimg/141019/1-14101Z05U4-lp.jpg');
INSERT INTO `dede_archives` VALUES ('95', '2', '2', '蔡川作品', '/uploads/allimg/141019/1-14101Z10104-lp.jpg');
INSERT INTO `dede_archives` VALUES ('96', '2', '2', '吴学军作品', '/uploads/allimg/141019/1-14101Z10345-lp.jpg');
INSERT INTO `dede_archives` VALUES ('97', '2', '2', '张志山作品', '/uploads/allimg/141019/1-14101Z10F1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('98', '3', '1', '哈密旅游宣传片', '/uploads/allimg/141019/1-1410191102350-L.jpg');
INSERT INTO `dede_archives` VALUES ('99', '3', '1', '新疆旅游60秒宣传片', '/uploads/allimg/141019/1-1410191320370-L.jpg');
INSERT INTO `dede_archives` VALUES ('100', '3', '1', '可可托海1分成片', '/uploads/allimg/141019/1-1410191322130-L.jpg');
INSERT INTO `dede_archives` VALUES ('101', '3', '1', '喀什旅游宣传片', '/uploads/allimg/141019/1-1410191323220-L.jpg');
INSERT INTO `dede_archives` VALUES ('102', '3', '1', '塔城地区裕民山花节宣传片', '/uploads/allimg/141019/1-1410191325540-L.jpg');
INSERT INTO `dede_archives` VALUES ('103', '3', '1', '国际文化旅游产业园宣传片', '/uploads/allimg/141019/1-1410191329310-L.jpg');
INSERT INTO `dede_archives` VALUES ('146', '3', '1', '克拉玛依旅游形象宣传片60秒', '/uploads/allimg/141027/2-14102G953480-L.jpg');
INSERT INTO `dede_archives` VALUES ('104', '3', '1', '裕民县旅游宣传片', '/uploads/allimg/141019/1-1410191330450-L.jpg');
INSERT INTO `dede_archives` VALUES ('105', '3', '1', '新疆泽普宣传片', '/uploads/allimg/141019/1-1410191331270-L.jpg');
INSERT INTO `dede_archives` VALUES ('106', '3', '1', '和田旅游宣传片', '/uploads/allimg/141019/1-1410191332250-L.jpg');
INSERT INTO `dede_archives` VALUES ('107', '4', '1', '库木塔格快乐之旅', '/uploads/allimg/141020/1-141020000Q70-L.jpg');
INSERT INTO `dede_archives` VALUES ('108', '4', '1', '照壁山快乐游', '/uploads/allimg/141020/1-1410200009320-L.jpg');
INSERT INTO `dede_archives` VALUES ('109', '4', '1', '新疆登珠峰第一人安少华视频记录', '/uploads/allimg/141020/1-1410200010350-L.jpg');
INSERT INTO `dede_archives` VALUES ('110', '4', '1', '风雪徒步穿越DVD', '/uploads/allimg/141020/1-1410200011520-L.jpg');
INSERT INTO `dede_archives` VALUES ('111', '4', '1', '飞翔喀纳斯', '/uploads/allimg/141020/1-1410200013150-L.jpg');
INSERT INTO `dede_archives` VALUES ('112', '4', '1', '冬季沙沟穿越视频', '/uploads/allimg/141026/1-1410261235100-L.jpg');
INSERT INTO `dede_archives` VALUES ('113', '4', '1', '最后一公里', '/uploads/allimg/141026/1-1410261240010-L.jpg');
INSERT INTO `dede_archives` VALUES ('114', '4', '1', '华山克里阳古道', '/uploads/allimg/141026/1-1410261249180-L.jpg');
INSERT INTO `dede_archives` VALUES ('115', '4', '1', '听风+Touching', '/uploads/allimg/141026/1-1410261251070-L.jpg');
INSERT INTO `dede_archives` VALUES ('116', '4', '1', '哈拉不拉记忆（h264）~1', '/uploads/allimg/141026/1-1410261252240-L.jpg');
INSERT INTO `dede_archives` VALUES ('117', '4', '1', '奶奶街舞队的领头雁', '/uploads/allimg/141026/1-1410261304450-L.jpg');
INSERT INTO `dede_archives` VALUES ('118', '4', '1', '《巴扎边上》', '/uploads/allimg/141026/1-1410261305430-L.jpg');
INSERT INTO `dede_archives` VALUES ('119', '4', '1', '一世情缘22', '/uploads/allimg/141026/1-141026130F40-L.jpg');
INSERT INTO `dede_archives` VALUES ('120', '4', '1', '（生与死的胡杨）木垒胡杨', '/uploads/allimg/141026/1-141026130R20-L.jpg');
INSERT INTO `dede_archives` VALUES ('121', '2', '2', '艾山江.买木提力作品', '/uploads/allimg/141027/1-14102F05451-lp.jpg');
INSERT INTO `dede_archives` VALUES ('122', '2', '2', '何剑玲作品', '/uploads/allimg/141027/1-14102F05Q8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('123', '2', '2', '何良树作品', '/uploads/allimg/141027/1-14102F10Z8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('124', '2', '2', '李承红作品', '/uploads/allimg/141027/1-14102F11F6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('125', '2', '2', '李军作品', '/uploads/allimg/141027/1-14102F11U1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('126', '2', '2', '林錫銘作品', '/uploads/allimg/141027/1-14102F12T8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('127', '2', '2', '刘振华作品', '/uploads/allimg/141027/1-14102F13141-lp.jpg');
INSERT INTO `dede_archives` VALUES ('128', '2', '2', '马文忠作品', '/uploads/allimg/141027/1-14102F14545-lp.jpg');
INSERT INTO `dede_archives` VALUES ('129', '2', '2', '马国芬作品', '/uploads/allimg/141027/1-14102F14S9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('130', '2', '2', '马鑫作品', '/uploads/allimg/141027/1-14102F15122.jpg');
INSERT INTO `dede_archives` VALUES ('131', '2', '2', '毛青春作品', '/uploads/allimg/141027/1-14102F15211-lp.jpg');
INSERT INTO `dede_archives` VALUES ('132', '2', '2', '木合塔尔江•艾买尔作品', '/uploads/allimg/141027/1-14102F15305-lp.jpg');
INSERT INTO `dede_archives` VALUES ('133', '2', '2', '李雷作品', '/uploads/141102/2-141102224U3413.jpg');
INSERT INTO `dede_archives` VALUES ('134', '2', '2', '沈志君作品', '/uploads/allimg/141027/1-14102F15Q0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('135', '2', '2', '徐光勇作品', '/uploads/141116/2-1411161233203J.jpg');
INSERT INTO `dede_archives` VALUES ('136', '2', '2', '魏安作品', '/uploads/allimg/141027/1-14102F20137-lp.jpg');
INSERT INTO `dede_archives` VALUES ('137', '2', '2', '徐永红作品', '/uploads/allimg/141027/1-14102F20446-lp.jpg');
INSERT INTO `dede_archives` VALUES ('138', '2', '2', '杨岚作品', '/uploads/allimg/141027/1-14102F21244-lp.jpg');
INSERT INTO `dede_archives` VALUES ('139', '2', '2', '姚景文作品', '/uploads/allimg/141027/1-14102F21542-lp.jpg');
INSERT INTO `dede_archives` VALUES ('140', '2', '2', '玉送江作品', '/uploads/allimg/141027/1-14102F22156-lp.jpg');
INSERT INTO `dede_archives` VALUES ('141', '2', '2', '赵江涛作品', '/uploads/allimg/141027/1-14102F22G2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('142', '2', '2', '方明江作品', '/uploads/allimg/141027/1-14102F22924-lp.jpg');
INSERT INTO `dede_archives` VALUES ('143', '2', '2', '沈朝晖作品', '/uploads/allimg/141027/1-14102F23145-lp.jpg');
INSERT INTO `dede_archives` VALUES ('144', '2', '2', '宋宏安作品', '/uploads/allimg/141027/1-14102F23247-lp.jpg');
INSERT INTO `dede_archives` VALUES ('145', '3', '1', '世界自然遗产-喀拉峻60秒宣传片', '/uploads/allimg/141027/2-14102GQ3400-L.jpg');
INSERT INTO `dede_archives` VALUES ('149', '3', '1', '“花”开吐鲁番“杏”福第一春', '/uploads/allimg/141028/2-14102Q210010-L.jpg');
INSERT INTO `dede_archives` VALUES ('147', '3', '1', '克拉玛依旅游形象宣传片30秒', '/uploads/allimg/141027/2-14102H001130-L.jpg');
INSERT INTO `dede_archives` VALUES ('148', '3', '1', '世界自然遗产—新疆喀拉峻旅游宣传片', '/uploads/allimg/141027/2-14102H013110-L.jpg');
INSERT INTO `dede_archives` VALUES ('150', '4', '1', '转场的赛里哈孜', '/uploads/allimg/141029/2-1410292149450-L.jpg');
INSERT INTO `dede_archives` VALUES ('151', '2', '2', '包迪作品', '/uploads/allimg/141102/2-1411021G222-lp.jpg');
INSERT INTO `dede_archives` VALUES ('152', '2', '2', '谢冰沁作品', '/uploads/allimg/141102/2-1411021H638-lp.jpg');
INSERT INTO `dede_archives` VALUES ('154', '2', '2', '傅春作品', '/uploads/allimg/141102/2-1411021K104-lp.jpg');
INSERT INTO `dede_archives` VALUES ('153', '2', '2', '党艳萍作品', '/uploads/allimg/141102/2-1411021I125-lp.gif');
INSERT INTO `dede_archives` VALUES ('155', '2', '2', '黄萍萍作品', '/uploads/allimg/141102/2-1411021T014-lp.jpg');
INSERT INTO `dede_archives` VALUES ('156', '2', '2', '屺轩作品', '/uploads/allimg/141102/2-1411021T244-lp.jpg');
INSERT INTO `dede_archives` VALUES ('157', '2', '2', '韩亮作品', '/uploads/allimg/141102/2-1411021T649-lp.jpg');
INSERT INTO `dede_archives` VALUES ('165', '2', '2', '和志伟作品', '/uploads/allimg/141102/2-141102210006-lp.jpg');
INSERT INTO `dede_archives` VALUES ('158', '2', '2', '丁春玲作品', '/uploads/allimg/141102/2-1411021Z104-lp.jpg');
INSERT INTO `dede_archives` VALUES ('159', '2', '2', '余国友作品', '/uploads/allimg/141102/2-141102191S6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('160', '2', '2', '杨亚光作品', '/uploads/allimg/141102/2-141102193S2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('161', '2', '2', '高远作品', '/uploads/allimg/141102/2-141102195026-lp.jpg');
INSERT INTO `dede_archives` VALUES ('162', '2', '2', '罗文炜作品', '/uploads/allimg/141102/2-141102201210-lp.jpg');
INSERT INTO `dede_archives` VALUES ('163', '2', '2', '海拉提•买买提明作品', '/uploads/allimg/141102/2-141102202534-lp.jpg');
INSERT INTO `dede_archives` VALUES ('164', '2', '2', '黄健作品', '/uploads/allimg/141102/2-141102202J5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('166', '2', '2', '高云江作品', '/uploads/allimg/141102/2-141102210537.jpg');
INSERT INTO `dede_archives` VALUES ('167', '2', '2', '黄文溥作品', '/uploads/allimg/141102/2-141102210Q0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('168', '2', '2', '霍旭作品', '/uploads/allimg/141102/2-141102211341.jpg');
INSERT INTO `dede_archives` VALUES ('169', '2', '2', '康京顺作品', '/uploads/allimg/141102/2-141102211P0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('170', '2', '2', '李华作品', '/uploads/allimg/141102/2-141102212424.jpg');
INSERT INTO `dede_archives` VALUES ('171', '2', '2', '刘斌作品', '/uploads/allimg/141102/2-141102212T1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('172', '2', '2', '马学刚作品', '/uploads/allimg/141102/2-141102213T7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('173', '2', '2', '彭建江作品', '/uploads/allimg/141102/2-141102214328-lp.jpg');
INSERT INTO `dede_archives` VALUES ('174', '2', '2', '田明作品', '/uploads/allimg/141102/2-141102214619-lp.jpg');
INSERT INTO `dede_archives` VALUES ('175', '2', '2', '文保东作品', '/uploads/allimg/141102/2-141102214S5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('176', '2', '2', '马庆中作品', '/uploads/141102/2-141102230T3521.jpg');
INSERT INTO `dede_archives` VALUES ('177', '2', '2', '秦泗军作品', '/uploads/141102/2-141102230532M4.JPG');
INSERT INTO `dede_archives` VALUES ('178', '2', '2', '任越作品', '/uploads/allimg/141102/2-141102231302-lp.jpg');
INSERT INTO `dede_archives` VALUES ('179', '2', '2', '盛秋英作品', '/uploads/allimg/141102/2-141102233126-lp.jpg');
INSERT INTO `dede_archives` VALUES ('180', '2', '2', '杜方勤作品', '/uploads/allimg/141103/2-141103000518-lp.jpg');
INSERT INTO `dede_archives` VALUES ('181', '2', '2', '宋长军作品', '/uploads/allimg/141103/2-141103001156-lp.jpg');
INSERT INTO `dede_archives` VALUES ('182', '2', '2', '托列吾•工作别克作品', '/uploads/allimg/141103/2-141103002443-lp.jpg');
INSERT INTO `dede_archives` VALUES ('183', '2', '2', '汪铁锁作品', '/uploads/allimg/141103/2-141103003124-lp.jpg');
INSERT INTO `dede_archives` VALUES ('262', '3', '1', '沙湾旅游宣传片30秒', '/uploads/allimg/141113/2-1411131015490-L.jpg');
INSERT INTO `dede_archives` VALUES ('184', '2', '2', '吴静作品', '/uploads/allimg/141103/2-141103003933-lp.jpg');
INSERT INTO `dede_archives` VALUES ('185', '2', '2', '吴全胜作品', '/uploads/allimg/141103/2-141103005145-lp.jpg');
INSERT INTO `dede_archives` VALUES ('186', '2', '2', '吴勇作品', '/uploads/allimg/141103/2-141103010432-lp.jpg');
INSERT INTO `dede_archives` VALUES ('187', '2', '2', '王志奇作品', '/uploads/allimg/141103/2-141103011326-lp.jpg');
INSERT INTO `dede_archives` VALUES ('188', '2', '2', '颜杰作品', '/uploads/allimg/141103/2-141103012343-lp.jpg');
INSERT INTO `dede_archives` VALUES ('189', '2', '2', '杨硕作品', '/uploads/141103/2-141103022949612.jpg');
INSERT INTO `dede_archives` VALUES ('190', '2', '2', '张已作品', '/uploads/141109/2-14110910040A08.JPG');
INSERT INTO `dede_archives` VALUES ('191', '2', '2', '张延芳作品', '/uploads/allimg/141103/2-141103014020-lp.jpg');
INSERT INTO `dede_archives` VALUES ('192', '2', '2', '张岩作品', '/uploads/allimg/141103/2-141103014H6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('193', '2', '2', '张永革作品', '/uploads/allimg/141103/2-141103015Q4-lp.jpg');
INSERT INTO `dede_archives` VALUES ('194', '2', '2', '赵一铮作品', '/uploads/allimg/141103/2-141103021S9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('195', '3', '1', '碧玉文化旅游节30秒宣传片', '/uploads/allimg/141103/2-1411031001500-L.jpg');
INSERT INTO `dede_archives` VALUES ('196', '3', '1', '乌鲁木齐欢迎您宣传片', '/uploads/allimg/141103/2-1411031005380-L.jpg');
INSERT INTO `dede_archives` VALUES ('229', '2', '2', '陈华林作品', '/uploads/allimg/141109/2-141109105303-lp.jpg');
INSERT INTO `dede_archives` VALUES ('197', '4', '1', '《金园园的幸福生活》', '/uploads/allimg/141103/2-141103235S10-L.jpg');
INSERT INTO `dede_archives` VALUES ('198', '4', '1', '奇石情缘', '/uploads/allimg/141104/2-1411040003370-L.jpg');
INSERT INTO `dede_archives` VALUES ('199', '4', '1', '伊犁薰衣草的传奇', '/uploads/allimg/141104/2-1411040025540-L.jpg');
INSERT INTO `dede_archives` VALUES ('200', '3', '1', '楼兰旅游广告', '/uploads/allimg/141104/2-1411041220510-L.jpg');
INSERT INTO `dede_archives` VALUES ('201', '3', '1', '欧亚风情体验之都（伊宁市1分钟）', '/uploads/141105/2-141105000302441.jpg');
INSERT INTO `dede_archives` VALUES ('202', '3', '1', '天山天池宣传片', '/uploads/allimg/141106/2-1411060933480-L.jpg');
INSERT INTO `dede_archives` VALUES ('204', '3', '1', '阿勒泰旅游局宣传片1', '/uploads/allimg/141108/2-14110QR0160-L.jpg');
INSERT INTO `dede_archives` VALUES ('203', '4', '1', '引力', '/uploads/allimg/141106/2-1411060940050-L.jpg');
INSERT INTO `dede_archives` VALUES ('205', '3', '1', '阿勒泰旅游局宣传片2', '/uploads/allimg/141108/2-14110R003150-L.jpg');
INSERT INTO `dede_archives` VALUES ('206', '3', '1', '巴州旅游宣传片', '/uploads/allimg/141108/2-14110R009140-L.jpg');
INSERT INTO `dede_archives` VALUES ('207', '3', '1', '穿越车师古道重走丝绸之路宣传片', '/uploads/allimg/141108/2-14110R012310-L.jpg');
INSERT INTO `dede_archives` VALUES ('208', '3', '1', '穿越罗布泊探访古楼兰宣传片', '/uploads/allimg/141108/2-14110R016210-L.jpg');
INSERT INTO `dede_archives` VALUES ('219', '4', '1', '爱的守护', '/uploads/allimg/141108/2-14110R055160-L.jpg');
INSERT INTO `dede_archives` VALUES ('209', '3', '1', '楼兰宣传片60秒', '/uploads/allimg/141108/2-14110R01Q70-L.jpg');
INSERT INTO `dede_archives` VALUES ('210', '3', '1', '新疆旅游宣传片60秒', '/uploads/allimg/141108/2-14110R019470-L.jpg');
INSERT INTO `dede_archives` VALUES ('211', '3', '1', '克拉玛依旅博会宣传片', '/uploads/allimg/141108/2-14110R022200-L.jpg');
INSERT INTO `dede_archives` VALUES ('212', '3', '1', '新疆冬博会宣传片', '/uploads/allimg/141108/2-14110R026300-L.jpg');
INSERT INTO `dede_archives` VALUES ('213', '3', '1', '石河子旅游宣传片', '/uploads/allimg/141108/2-14110R030050-L.jpg');
INSERT INTO `dede_archives` VALUES ('214', '3', '1', '伊犁旅游宣传片', '/uploads/allimg/141108/2-14110R032140-L.jpg');
INSERT INTO `dede_archives` VALUES ('215', '3', '1', '奎屯旅游宣传片', '/uploads/allimg/141108/2-14110R034440-L.jpg');
INSERT INTO `dede_archives` VALUES ('216', '3', '1', '沙湾县旅游宣传片', '/uploads/allimg/141108/2-14110R03A50-L.jpg');
INSERT INTO `dede_archives` VALUES ('217', '3', '1', '伊吾县旅游宣传片', '/uploads/allimg/141108/2-14110R040150-L.jpg');
INSERT INTO `dede_archives` VALUES ('218', '3', '1', '额敏旅游宣传片', '/uploads/allimg/141108/2-14110R04A60-L.jpg');
INSERT INTO `dede_archives` VALUES ('220', '4', '1', '根雕人老郑', '/uploads/allimg/141108/2-14110R05K50-L.jpg');
INSERT INTO `dede_archives` VALUES ('221', '4', '1', '时髦的墨奶奶', '/uploads/allimg/141108/2-14110R05Z00-L.jpg');
INSERT INTO `dede_archives` VALUES ('222', '4', '1', '我的快乐老妈', '/uploads/allimg/141108/2-14110R100470-L.jpg');
INSERT INTO `dede_archives` VALUES ('223', '4', '1', '我为机械狂', '/uploads/allimg/141108/2-14110R103470-L.jpg');
INSERT INTO `dede_archives` VALUES ('224', '4', '1', '向阳花', '/uploads/allimg/141108/2-14110R105090-L.jpg');
INSERT INTO `dede_archives` VALUES ('225', '4', '1', '走进大美天山-探寻狼塔之路', '/uploads/allimg/141108/2-14110R10Q00-L.jpg');
INSERT INTO `dede_archives` VALUES ('226', '4', '1', '我在巩留等你', '/uploads/allimg/141108/2-14110R109230-L.jpg');
INSERT INTO `dede_archives` VALUES ('228', '2', '2', '巴合提江', '/uploads/allimg/141108/2-14110R24401-lp.jpg');
INSERT INTO `dede_archives` VALUES ('230', '2', '2', '程永章作品', '/uploads/allimg/141109/2-141109112545-lp.jpg');
INSERT INTO `dede_archives` VALUES ('231', '2', '2', '王琪天作品', '/uploads/141116/2-14111612404b92.jpg');
INSERT INTO `dede_archives` VALUES ('232', '2', '2', '高军作品', '/uploads/allimg/141109/2-141109231354-lp.jpg');
INSERT INTO `dede_archives` VALUES ('233', '2', '2', '顾军作品', '/uploads/allimg/141109/2-141109232221-lp.jpg');
INSERT INTO `dede_archives` VALUES ('234', '2', '2', '韩喜龙作品', '/uploads/allimg/141109/2-141109232F5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('235', '2', '2', '胡杨作品', '/uploads/allimg/141109/2-141109233031-lp.jpg');
INSERT INTO `dede_archives` VALUES ('236', '2', '2', '梁虎林作品', '/uploads/allimg/141109/2-141109234029-lp.jpg');
INSERT INTO `dede_archives` VALUES ('237', '2', '2', '刘成刚作品', '/uploads/allimg/141109/2-141109234P5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('238', '2', '2', '刘世龙作品', '/uploads/allimg/141109/2-141109235248-lp.jpg');
INSERT INTO `dede_archives` VALUES ('239', '2', '2', '刘新民作品', '/uploads/allimg/141110/2-141110000001-lp.jpg');
INSERT INTO `dede_archives` VALUES ('240', '2', '2', '马琳作品', '/uploads/141110/2-141110023442630.JPG');
INSERT INTO `dede_archives` VALUES ('241', '2', '2', '彭磊作品', '/uploads/141110/2-14111002335T53.jpg');
INSERT INTO `dede_archives` VALUES ('242', '2', '2', '哈那提•胡斯木汗作品', '/uploads/allimg/141110/2-141110001F8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('243', '2', '2', '唐新作品', '/uploads/allimg/141110/2-141110001947-lp.jpg');
INSERT INTO `dede_archives` VALUES ('244', '2', '2', '王鑫作品', '/uploads/allimg/141110/2-141110002514-lp.jpg');
INSERT INTO `dede_archives` VALUES ('245', '2', '2', '王志清作品', '/uploads/allimg/141110/2-141110003137-lp.jpg');
INSERT INTO `dede_archives` VALUES ('246', '2', '2', '魏斌作品', '/uploads/allimg/141110/2-141110003H3-lp.jpg');
INSERT INTO `dede_archives` VALUES ('247', '2', '2', '奚佳作品', '/uploads/allimg/141110/2-141110004409-lp.jpg');
INSERT INTO `dede_archives` VALUES ('248', '2', '2', '王立波', '/uploads/allimg/141110/2-141110005042-lp.jpg');
INSERT INTO `dede_archives` VALUES ('249', '2', '2', '赛力克。努尔地巴依作品', '/uploads/allimg/141110/2-141110005244-lp.jpg');
INSERT INTO `dede_archives` VALUES ('250', '2', '2', '刘金成作品', '/uploads/allimg/141110/2-141110005H4-lp.jpg');
INSERT INTO `dede_archives` VALUES ('251', '2', '2', '张思远作品', '/uploads/allimg/141110/2-141110010132-lp.jpg');
INSERT INTO `dede_archives` VALUES ('252', '2', '2', '程本军作品', '/uploads/allimg/141110/2-141110011051-lp.jpg');
INSERT INTO `dede_archives` VALUES ('253', '2', '2', '陈晞作品', '/uploads/allimg/141110/2-141110011I8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('254', '2', '2', '刘伟涛作品', '/uploads/141117/2-14111GI14I24.JPG');
INSERT INTO `dede_archives` VALUES ('255', '2', '2', '李辉作品', '/uploads/allimg/141110/2-141110013H5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('256', '2', '2', '甄新梅作品', '/uploads/allimg/141110/2-141110014054-lp.jpg');
INSERT INTO `dede_archives` VALUES ('257', '2', '2', '申志勇作品', '/uploads/allimg/141110/2-141110014637-lp.jpg');
INSERT INTO `dede_archives` VALUES ('258', '2', '2', '杨新业作品', '/uploads/allimg/141110/2-141110021423-lp.jpg');
INSERT INTO `dede_archives` VALUES ('259', '3', '1', '喀纳斯旅游宣传片', '/uploads/allimg/141110/2-1411101045430-L.jpg');
INSERT INTO `dede_archives` VALUES ('260', '4', '1', '沙湾微电影《故乡的味，回家的路》', '/uploads/allimg/141111/2-141111144R20-L.jpg');
INSERT INTO `dede_archives` VALUES ('261', '4', '1', '塔城微电影', '/uploads/allimg/141112/2-1411121JU70-L.jpg');
INSERT INTO `dede_archives` VALUES ('263', '4', '1', '克拉玛依微电影-兄弟', '/uploads/allimg/141113/2-141113101Z20-L.jpg');
INSERT INTO `dede_archives` VALUES ('264', '3', '1', '库车旅游宣传片', '/uploads/allimg/141115/2-1411151231250-L.jpg');
INSERT INTO `dede_archives` VALUES ('265', '4', '1', '《请假条》参赛版', '/uploads/allimg/141115/2-1411151234200-L.jpg');
INSERT INTO `dede_archives` VALUES ('266', '2', '2', '曹君珠作品', '/uploads/allimg/141117/2-14111FU207-lp.jpg');
INSERT INTO `dede_archives` VALUES ('267', '2', '2', '崔向明作品', '/uploads/allimg/141117/2-14111FZ127-lp.jpg');
INSERT INTO `dede_archives` VALUES ('268', '2', '2', '戴建斌作品', '/uploads/allimg/141117/2-14111F91124-lp.jpg');
INSERT INTO `dede_archives` VALUES ('269', '2', '2', '唐密清作品', '/uploads/141117/2-14111F952305E.jpg');
INSERT INTO `dede_archives` VALUES ('270', '2', '2', '方斌作品', '/uploads/allimg/141117/2-14111F92302-lp.jpg');
INSERT INTO `dede_archives` VALUES ('271', '2', '2', '古清顺作品', '/uploads/allimg/141117/2-14111F93007-lp.jpg');
INSERT INTO `dede_archives` VALUES ('272', '2', '2', '胡新民作品', '/uploads/allimg/141117/2-14111F93541-lp.jpg');
INSERT INTO `dede_archives` VALUES ('273', '2', '2', '贾俊德作品', '/uploads/allimg/141117/2-14111F94042-lp.jpg');
INSERT INTO `dede_archives` VALUES ('274', '2', '2', '景昌霖作品', '/uploads/allimg/141117/2-14111G00R8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('275', '2', '2', '李铭作品', '/uploads/allimg/141117/2-14111G01434-lp.jpg');
INSERT INTO `dede_archives` VALUES ('276', '2', '2', '李正太作品', '/uploads/allimg/141117/2-14111G05123-lp.jpg');
INSERT INTO `dede_archives` VALUES ('277', '2', '2', '林敬民作品', '/uploads/allimg/141117/2-14111G05533-lp.jpg');
INSERT INTO `dede_archives` VALUES ('278', '2', '2', '刘光曦作品', '/uploads/allimg/141117/2-14111G10224-lp.jpg');
INSERT INTO `dede_archives` VALUES ('279', '2', '2', '宫宏伟作品', '/uploads/allimg/141117/2-14111G10K3-lp.jpg');
INSERT INTO `dede_archives` VALUES ('280', '2', '2', '马英作品', '/uploads/141117/2-14111G30310F8.jpg');
INSERT INTO `dede_archives` VALUES ('281', '2', '2', '宋琦作品', '/uploads/allimg/141117/2-14111G11T9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('282', '2', '2', '唐源培作品', '/uploads/allimg/141117/2-14111G12938-lp.jpg');
INSERT INTO `dede_archives` VALUES ('283', '2', '2', '刘新海作品', '/uploads/allimg/141117/2-14111G13516-lp.jpg');
INSERT INTO `dede_archives` VALUES ('284', '2', '2', '刘一亮作品', '/uploads/allimg/141117/2-14111G14144-lp.jpg');
INSERT INTO `dede_archives` VALUES ('285', '2', '2', '陆虹羽作品', '/uploads/allimg/141117/2-14111G20949-lp.jpg');
INSERT INTO `dede_archives` VALUES ('286', '2', '2', '万军作品', '/uploads/allimg/141117/2-14111G21401-lp.jpg');
INSERT INTO `dede_archives` VALUES ('287', '2', '2', '王笛生作品', '/uploads/allimg/141117/2-14111G21913-lp.jpg');
INSERT INTO `dede_archives` VALUES ('288', '2', '2', '王国芬作品', '/uploads/allimg/141117/2-14111G22547-lp.jpg');
INSERT INTO `dede_archives` VALUES ('289', '2', '2', '高龙起作品', '/uploads/allimg/141117/2-14111G23343-lp.jpg');
INSERT INTO `dede_archives` VALUES ('290', '2', '2', '王慧敏作品', '/uploads/allimg/141117/2-14111G23954-lp.jpg');
INSERT INTO `dede_archives` VALUES ('291', '2', '2', '王献新作品', '/uploads/allimg/141117/2-14111G32525-lp.jpg');
INSERT INTO `dede_archives` VALUES ('292', '2', '2', '熊天华作品', '/uploads/allimg/141117/2-14111G34420-lp.jpg');
INSERT INTO `dede_archives` VALUES ('293', '2', '2', '薛辉作品', '/uploads/allimg/141117/2-14111G55K3-lp.jpg');
INSERT INTO `dede_archives` VALUES ('294', '2', '2', '张国林作品', '/uploads/allimg/141117/2-14111G61F0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('295', '2', '2', '张延霞作品', '/uploads/allimg/141117/2-14111G62455-lp.jpg');
INSERT INTO `dede_archives` VALUES ('296', '2', '2', '朱昌华作品', '/uploads/allimg/141117/2-14111G62910-lp.jpg');
INSERT INTO `dede_archives` VALUES ('297', '2', '2', '郭红营作品', '/uploads/141119/2-141119203054328.jpg');
INSERT INTO `dede_archives` VALUES ('298', '2', '2', '闫全红作品', '/uploads/allimg/141117/2-14111G64354-lp.jpg');
INSERT INTO `dede_archives` VALUES ('299', '2', '2', '雷东翔作品', '/uploads/allimg/141117/2-14111GA023-lp.jpg');
INSERT INTO `dede_archives` VALUES ('300', '2', '2', '徐连生作品', '/uploads/allimg/141117/2-14111GA547-lp.jpg');
INSERT INTO `dede_archives` VALUES ('301', '4', '1', '凝聚民族情1穆合木得•尤努斯', '/uploads/allimg/141123/2-141123105G00-L.jpg');
INSERT INTO `dede_archives` VALUES ('302', '4', '1', '凝聚民族情2热先古力•托乎提', '/uploads/allimg/141123/2-1411231106490-L.jpg');
INSERT INTO `dede_archives` VALUES ('303', '4', '1', '凝聚民族情3王子雄', '/uploads/allimg/141123/2-1411231112460-L.jpg');
INSERT INTO `dede_archives` VALUES ('304', '4', '1', '陈合成-中国梦微力量', '/uploads/allimg/141123/2-141123111A10-L.jpg');
INSERT INTO `dede_archives` VALUES ('305', '4', '1', '董娟-中国梦微力量', '/uploads/allimg/141123/2-1411231119300-L.jpg');
INSERT INTO `dede_archives` VALUES ('306', '4', '1', '田智华-中国梦微力量', '/uploads/allimg/141123/2-1411231122420-L.jpg');
INSERT INTO `dede_archives` VALUES ('318', '3', '1', '昭苏宣传片', '/uploads/allimg/141123/2-1411231433210-L.jpg');
INSERT INTO `dede_archives` VALUES ('307', '4', '1', '袁方-中国梦微力量', '/uploads/allimg/141123/2-1411231124370-L.jpg');
INSERT INTO `dede_archives` VALUES ('308', '4', '1', '《一个记者的摄影梦》', '/uploads/allimg/141123/2-141123112H80-L.jpg');
INSERT INTO `dede_archives` VALUES ('309', '4', '1', '怒放的生命', '/uploads/allimg/141123/2-1411231132110-L.jpg');
INSERT INTO `dede_archives` VALUES ('310', '4', '1', '天之界', '/uploads/allimg/141123/2-1411231135310-L.jpg');
INSERT INTO `dede_archives` VALUES ('311', '4', '1', '非遗之光', '/uploads/allimg/141123/2-141123113U80-L.jpg');
INSERT INTO `dede_archives` VALUES ('312', '4', '1', '归途', '/uploads/allimg/141123/2-1411231253360-L.jpg');
INSERT INTO `dede_archives` VALUES ('313', '4', '1', '帕米尔最后一只驼队', '/uploads/allimg/141123/2-1411231255310-L.jpg');
INSERT INTO `dede_archives` VALUES ('314', '4', '1', '《儿子娃娃》', '/uploads/allimg/141123/2-1411231304580-L.jpg');
INSERT INTO `dede_archives` VALUES ('315', '3', '1', '丝路明珠-魅力维泰', '/uploads/141123/2-141123132921328.jpg');
INSERT INTO `dede_archives` VALUES ('316', '3', '1', '克拉玛依旅游宣传片', '/uploads/allimg/141123/2-141123131Q90-L.jpg');
INSERT INTO `dede_archives` VALUES ('317', '3', '1', '塔县宣传片', '/uploads/allimg/141123/2-1411231320190-L.jpg');
INSERT INTO `dede_archives` VALUES ('319', '4', '1', '愤怒的胡杨参赛版', '/uploads/allimg/141123/2-1411231506050-L.jpg');
INSERT INTO `dede_archives` VALUES ('320', '2', '2', '柴志刚作品', '/uploads/allimg/141124/2-1411240T639-lp.jpg');
INSERT INTO `dede_archives` VALUES ('321', '2', '2', '陈博作品', '/uploads/allimg/141124/2-1411240U404-lp.jpg');
INSERT INTO `dede_archives` VALUES ('322', '2', '2', '董进甫作品', '/uploads/allimg/141124/2-1411240UI2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('323', '2', '2', '地力木拉提•托合提作品', '/uploads/allimg/141124/2-1411240Z335-lp.jpg');
INSERT INTO `dede_archives` VALUES ('324', '2', '2', '杜尔斯别克•扎肯作品', '/uploads/allimg/141124/2-141124091S5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('325', '2', '2', '艾拉提作品', '/uploads/allimg/141124/2-141124093911-lp.jpg');
INSERT INTO `dede_archives` VALUES ('326', '2', '2', '陈玉作品', '/uploads/allimg/141124/2-141124095012-lp.jpg');
INSERT INTO `dede_archives` VALUES ('327', '2', '2', '高晨作品', '/uploads/allimg/141124/2-141124095J8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('328', '2', '2', '高力群作品', '/uploads/allimg/141124/2-141124101I7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('329', '2', '2', '何平作品', '/uploads/allimg/141124/2-141124103117-lp.jpg');
INSERT INTO `dede_archives` VALUES ('330', '2', '2', '曹学栋作品', '/uploads/allimg/141124/2-141124104333-lp.jpg');
INSERT INTO `dede_archives` VALUES ('331', '2', '2', '吉向东作品', '/uploads/allimg/141124/2-141124104G5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('332', '2', '2', '焦银辉作品', '/uploads/allimg/141124/2-141124110209-lp.jpg');
INSERT INTO `dede_archives` VALUES ('333', '2', '2', '金剑锋作品', '/uploads/allimg/141124/2-141124110622-lp.jpg');
INSERT INTO `dede_archives` VALUES ('334', '2', '2', '廖兵健作品', '/uploads/allimg/141124/2-141124132H9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('335', '2', '2', '刘国钢作品', '/uploads/allimg/141124/2-141124133234-lp.jpg');
INSERT INTO `dede_archives` VALUES ('336', '2', '2', '刘玉秋作品', '/uploads/allimg/141124/2-141124133436-lp.jpg');
INSERT INTO `dede_archives` VALUES ('337', '2', '2', '买提托乎提.巴拉提作品', '/uploads/allimg/141124/2-141124133644-lp.jpg');
INSERT INTO `dede_archives` VALUES ('338', '2', '2', '神东亚作品', '/uploads/allimg/141124/2-141124134133-lp.jpg');
INSERT INTO `dede_archives` VALUES ('339', '2', '2', '宋丹人作品', '/uploads/allimg/141124/2-141124135334-lp.jpg');
INSERT INTO `dede_archives` VALUES ('340', '2', '2', '孙国富作品', '/uploads/allimg/141124/2-141124140146-lp.jpg');
INSERT INTO `dede_archives` VALUES ('341', '2', '2', '唐向新作品', '/uploads/allimg/141124/2-1411241F944-lp.jpg');
INSERT INTO `dede_archives` VALUES ('342', '2', '2', '艾西丁•托乎提作品', '/uploads/allimg/141124/2-1411241GU6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('343', '2', '2', '金旭作品', '/uploads/allimg/141124/2-1411241HP6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('344', '2', '2', '李大国作品', '/uploads/allimg/141124/2-1411241IH6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('345', '2', '2', '李爱民作品', '/uploads/allimg/141124/2-1411241J554-lp.jpg');
INSERT INTO `dede_archives` VALUES ('346', '2', '2', '李江艳作品', '/uploads/allimg/141124/2-1411241K115-lp.jpg');
INSERT INTO `dede_archives` VALUES ('347', '2', '2', '马建瓴作品', '/uploads/allimg/141124/2-1411241K628-lp.jpg');
INSERT INTO `dede_archives` VALUES ('348', '2', '2', '李勇作品', '/uploads/allimg/141124/2-1411241P142-lp.jpg');
INSERT INTO `dede_archives` VALUES ('349', '2', '2', '刘卫华作品', '/uploads/allimg/141124/2-1411241R645-lp.jpg');
INSERT INTO `dede_archives` VALUES ('350', '2', '2', '刘小瑞作品', '/uploads/allimg/141124/2-1411241S001-lp.jpg');
INSERT INTO `dede_archives` VALUES ('351', '2', '2', '刘耀明作品', '/uploads/allimg/141124/2-1411241SI2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('352', '2', '2', '龙建强作品', '/uploads/allimg/141124/2-141124235414-lp.jpg');
INSERT INTO `dede_archives` VALUES ('353', '2', '2', '晏海军作品', '/uploads/allimg/141124/2-141124235Z7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('354', '2', '2', '王宇飞作品', '/uploads/allimg/141125/2-141125000600-lp.jpg');
INSERT INTO `dede_archives` VALUES ('355', '2', '2', '聂子竣作品', '/uploads/allimg/141125/2-141125001204-lp.jpg');
INSERT INTO `dede_archives` VALUES ('356', '2', '2', '孙洁作品', '/uploads/allimg/141125/2-141125001T1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('357', '2', '2', '田菲作品', '/uploads/allimg/141125/2-141125002545-lp.jpg');
INSERT INTO `dede_archives` VALUES ('358', '2', '2', '田国建作品', '/uploads/allimg/141125/2-141125002911-lp.jpg');
INSERT INTO `dede_archives` VALUES ('359', '2', '2', '王梅作品', '/uploads/allimg/141125/2-141125003157-lp.jpg');
INSERT INTO `dede_archives` VALUES ('360', '2', '2', '王建和作品', '/uploads/allimg/141125/2-141125003505-lp.jpg');
INSERT INTO `dede_archives` VALUES ('361', '2', '2', '韩栓柱作品', '/uploads/allimg/141125/2-141125003J2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('362', '2', '2', '王远来作品', '/uploads/allimg/141125/2-141125004118-lp.jpg');
INSERT INTO `dede_archives` VALUES ('363', '2', '2', '王伟作品', '/uploads/allimg/141126/2-141126013649-lp.jpg');
INSERT INTO `dede_archives` VALUES ('364', '2', '2', '王玉宏作品', '/uploads/allimg/141126/2-141126014341-lp.jpg');
INSERT INTO `dede_archives` VALUES ('365', '2', '2', '王孟伟作品', '/uploads/allimg/141126/2-141126014941-lp.jpg');
INSERT INTO `dede_archives` VALUES ('366', '2', '2', '项阳作品', '/uploads/allimg/141126/2-1411260R048-lp.jpg');
INSERT INTO `dede_archives` VALUES ('367', '2', '2', '许海燕作品', '/uploads/allimg/141126/2-1411260R542-lp.jpg');
INSERT INTO `dede_archives` VALUES ('368', '2', '2', '熊诗作品', '/uploads/allimg/141126/2-1411260RT9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('369', '3', '1', '《世界自然遗产——新疆天山·库尔德宁》巩留县', '/uploads/allimg/141127/2-14112FU0230-L.jpg');
INSERT INTO `dede_archives` VALUES ('370', '3', '1', '新疆胡杨林广告片', '/uploads/allimg/141127/2-14112FU3410-L.jpg');
INSERT INTO `dede_archives` VALUES ('371', '4', '1', '韵动水磨河', '/uploads/141127/2-14112F91413P4.jpg');
INSERT INTO `dede_archives` VALUES ('372', '4', '1', '《天地胡杨》', '/uploads/allimg/141127/2-14112FZ1460-L.jpg');
INSERT INTO `dede_archives` VALUES ('373', '3', '1', '和布克赛尔蒙古自治县旅游形象宣传片', '/uploads/allimg/141127/2-14112FZ6090-L.jpg');
INSERT INTO `dede_archives` VALUES ('374', '3', '1', '阿勒泰冰雪旅游宣传片', '/uploads/allimg/141127/2-14112G350440-L.jpg');
INSERT INTO `dede_archives` VALUES ('375', '2', '2', '杨江泉作品', '/uploads/allimg/141128/2-14112P14S6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('376', '2', '2', '杨英作品', '/uploads/allimg/141128/2-14112P15359-lp.jpg');
INSERT INTO `dede_archives` VALUES ('377', '2', '2', '杨永光作品', '/uploads/allimg/141128/2-14112P15608-lp.jpg');
INSERT INTO `dede_archives` VALUES ('378', '2', '2', '于兴义作品', '/uploads/allimg/141128/2-14112P20A5-lp.jpg');
INSERT INTO `dede_archives` VALUES ('379', '2', '2', '俞有林作品', '/uploads/allimg/141128/2-14112P22336-lp.jpg');
INSERT INTO `dede_archives` VALUES ('380', '2', '2', '王志晶作品', '/uploads/allimg/141128/2-14112P23222-lp.jpg');
INSERT INTO `dede_archives` VALUES ('381', '2', '2', '阿依木汗•沙地克作品', '/uploads/allimg/141128/2-14112P24S1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('382', '2', '2', '秦振廷作品', '/uploads/allimg/141128/2-14112P25629-lp.jpg');
INSERT INTO `dede_archives` VALUES ('383', '2', '2', '朱博亚作品', '/uploads/allimg/141128/1-14112Q22528.jpg');
INSERT INTO `dede_archives` VALUES ('384', '2', '2', '赵志福作品', '/uploads/allimg/141128/2-14112P30F8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('385', '2', '2', '赵彦生作品', '/uploads/allimg/141128/2-14112P31140-lp.jpg');
INSERT INTO `dede_archives` VALUES ('386', '2', '2', '赵守才作品', '/uploads/allimg/141128/2-14112P32106-lp.jpg');
INSERT INTO `dede_archives` VALUES ('387', '2', '2', '张玉和作品', '/uploads/allimg/141128/2-14112P32I4-lp.jpg');
INSERT INTO `dede_archives` VALUES ('388', '2', '2', '金秋胡杨作品', '/uploads/allimg/141128/1-14112Q11610-lp.jpg');
INSERT INTO `dede_archives` VALUES ('389', '2', '2', '张俊豪作品', '/uploads/allimg/141128/2-14112Q30405-lp.jpg');
INSERT INTO `dede_archives` VALUES ('390', '2', '2', '张光清作品', '/uploads/allimg/141128/2-14112Q31159-lp.jpg');
INSERT INTO `dede_archives` VALUES ('391', '2', '2', '雍国作品', '/uploads/allimg/141128/2-14112Q31Q1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('392', '2', '2', '吴恭成作品', '/uploads/allimg/141128/2-14112Q32441-lp.jpg');
INSERT INTO `dede_archives` VALUES ('393', '2', '2', '王斌作品', '/uploads/allimg/141128/2-14112Q32930-lp.jpg');
INSERT INTO `dede_archives` VALUES ('394', '2', '2', '蔡德甫作品', '/uploads/allimg/141128/2-14112Q35015-lp.jpg');
INSERT INTO `dede_archives` VALUES ('395', '2', '2', '崔传世作品', '/uploads/allimg/141129/2-141129120435-lp.jpg');
INSERT INTO `dede_archives` VALUES ('396', '2', '2', '刘顺和作品', '/uploads/allimg/141129/2-141129121228-lp.jpg');
INSERT INTO `dede_archives` VALUES ('397', '2', '2', '尚久龙作品', '/uploads/allimg/141129/2-141129144252-lp.jpg');
INSERT INTO `dede_archives` VALUES ('398', '2', '2', '闫杰作品', '/uploads/allimg/141129/2-141129144536-lp.jpg');
INSERT INTO `dede_archives` VALUES ('399', '2', '2', '杨昌盛作品', '/uploads/allimg/141129/2-141129145427-lp.jpg');
INSERT INTO `dede_archives` VALUES ('400', '2', '2', '杨建发作品', '/uploads/allimg/141129/2-141129150053-lp.jpg');
INSERT INTO `dede_archives` VALUES ('401', '2', '2', '朱军作品', '/uploads/allimg/141129/2-141129151249-lp.jpg');
INSERT INTO `dede_archives` VALUES ('402', '2', '2', '艾力•买合苏木', '/uploads/allimg/141129/2-141129152313-lp.jpg');
INSERT INTO `dede_archives` VALUES ('403', '2', '2', '巴哈提汗.阿赛提作品', '/uploads/allimg/141129/2-141129153144-lp.jpg');
INSERT INTO `dede_archives` VALUES ('404', '2', '2', '巴力生作品', '/uploads/allimg/141129/2-141129153959-lp.jpg');
INSERT INTO `dede_archives` VALUES ('405', '2', '2', '白新建作品', '/uploads/allimg/141129/2-141129154644-lp.jpg');
INSERT INTO `dede_archives` VALUES ('406', '2', '2', '包尔汗.艾木都作品', '/uploads/allimg/141129/2-141129155021-lp.jpg');
INSERT INTO `dede_archives` VALUES ('407', '2', '2', '曹灿作品', '/uploads/allimg/141129/2-141129155Z1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('408', '2', '2', '巴图作品', '/uploads/allimg/141129/2-141129160340-lp.jpg');
INSERT INTO `dede_archives` VALUES ('409', '2', '2', '陈勃作品', '/uploads/allimg/141129/2-141129161003-lp.jpg');
INSERT INTO `dede_archives` VALUES ('410', '3', '1', '伊犁宣传片', '/uploads/allimg/141129/2-1411292114010-L.jpg');
INSERT INTO `dede_archives` VALUES ('411', '3', '1', '和静巴音布鲁克宣化片', '/uploads/allimg/141129/2-1411292116230-L.jpg');
INSERT INTO `dede_archives` VALUES ('412', '3', '1', '新疆尉犁续传片', '/uploads/allimg/141129/2-1411292120080-L.jpg');
INSERT INTO `dede_archives` VALUES ('413', '3', '1', '新疆巴州阿尔金山自然保护区宣传片', '/uploads/allimg/141129/2-1411292122200-L.jpg');
INSERT INTO `dede_archives` VALUES ('414', '3', '1', '《仰望悠远天空-楼兰》宣传片', '/uploads/allimg/141129/2-1411292126150-L.jpg');
INSERT INTO `dede_archives` VALUES ('415', '3', '1', '天山石林宣传片', '/uploads/allimg/141129/2-141129212T20-L.jpg');
INSERT INTO `dede_archives` VALUES ('416', '3', '1', '我们新疆好地方宣传片', '/uploads/allimg/141129/2-1411292130200-L.jpg');
INSERT INTO `dede_archives` VALUES ('417', '3', '1', '新疆尼勒克县宣传片', '/uploads/allimg/141129/2-1411292141570-L.jpg');
INSERT INTO `dede_archives` VALUES ('418', '3', '1', '喀什老城宣传片', '/uploads/allimg/141129/2-1411292143450-L.jpg');
INSERT INTO `dede_archives` VALUES ('419', '3', '1', '大美新疆宣传片', '/uploads/allimg/141129/2-1411292152120-L.jpg');
INSERT INTO `dede_archives` VALUES ('420', '4', '1', '《秋之韵》', '/uploads/allimg/141129/2-1411292242150-L.jpg');
INSERT INTO `dede_archives` VALUES ('421', '4', '1', '《回家味道》', '/uploads/allimg/141129/2-1411292244040-L.jpg');
INSERT INTO `dede_archives` VALUES ('422', '4', '1', '《路上》', '/uploads/allimg/141129/2-1411292246340-L.jpg');
INSERT INTO `dede_archives` VALUES ('423', '4', '1', '【快乐】', '/uploads/allimg/141129/2-141129224S00-L.jpg');
INSERT INTO `dede_archives` VALUES ('424', '4', '1', '达西一家人', '/uploads/allimg/141129/2-1411292250200-L.jpg');
INSERT INTO `dede_archives` VALUES ('425', '3', '1', '江布拉克宣传片', '/uploads/allimg/141130/2-1411300343100-L.jpg');
INSERT INTO `dede_archives` VALUES ('426', '3', '1', '《迷人的赛里木湖》', '/uploads/allimg/141130/2-1411300344180-L.jpg');
INSERT INTO `dede_archives` VALUES ('427', '3', '1', '伊宁县弓月城民俗风情园宣传片', '/uploads/allimg/141130/2-1411300345550-L.jpg');
INSERT INTO `dede_archives` VALUES ('429', '4', '1', '我在楼兰遇见你', '/uploads/allimg/141130/2-1411301043340-L.jpg');
INSERT INTO `dede_archives` VALUES ('428', '3', '1', '伊宁县托乎拉苏宣传片', '/uploads/allimg/141130/2-141130034I30-L.jpg');
INSERT INTO `dede_archives` VALUES ('430', '4', '1', '神华集体婚礼', '/uploads/141130/1-141130114600423.jpg');
INSERT INTO `dede_archives` VALUES ('431', '4', '1', '《彩色的女人》', '/uploads/allimg/141130/2-1411301132010-L.jpg');
INSERT INTO `dede_archives` VALUES ('432', '4', '1', '《搭车》', '/uploads/allimg/141130/2-1411301134170-L.jpg');
INSERT INTO `dede_archives` VALUES ('433', '2', '2', '陈力波作品', '/uploads/allimg/141130/2-141130121215-lp.jpg');
INSERT INTO `dede_archives` VALUES ('434', '2', '2', '陈向阳作品', '/uploads/allimg/141130/2-141130121S7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('435', '2', '2', '穆斯塔怕。木拉地里作品', '/uploads/allimg/141130/2-141130124H2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('436', '2', '2', '蔡朝晖作品', '/uploads/allimg/141130/2-141130125328-lp.jpg');
INSERT INTO `dede_archives` VALUES ('437', '2', '2', '党彤作品', '/uploads/141130/2-14113014191J94.jpg');
INSERT INTO `dede_archives` VALUES ('438', '2', '2', '邓建中作品', '/uploads/allimg/141201/2-141201101936-lp.jpg');
INSERT INTO `dede_archives` VALUES ('439', '2', '2', '丁建斌作品', '/uploads/allimg/141201/2-141201104111-lp.jpg');
INSERT INTO `dede_archives` VALUES ('440', '2', '2', '丁伟作品', '/uploads/allimg/141201/2-141201105341-lp.jpg');
INSERT INTO `dede_archives` VALUES ('441', '2', '2', '董胜富作品', '/uploads/allimg/141201/2-141201105G4-lp.jpg');
INSERT INTO `dede_archives` VALUES ('442', '2', '2', '车静作品', '/uploads/allimg/141202/2-141202024644-lp.jpg');
INSERT INTO `dede_archives` VALUES ('443', '2', '2', '曹希祥作品', '/uploads/allimg/141202/2-141202094A6-lp.jpg');
INSERT INTO `dede_archives` VALUES ('444', '2', '2', '房君作品', '/uploads/allimg/141202/2-141202095308-lp.jpg');
INSERT INTO `dede_archives` VALUES ('445', '2', '2', '邓春花作品', '/uploads/allimg/141202/2-141202095550-lp.jpg');
INSERT INTO `dede_archives` VALUES ('446', '2', '2', '杜维作品', '/uploads/allimg/141202/2-141202100046-lp.jpg');
INSERT INTO `dede_archives` VALUES ('447', '2', '2', '常建军作品', '/uploads/allimg/141202/2-141202100930-lp.jpg');
INSERT INTO `dede_archives` VALUES ('448', '2', '2', '陈瑶作品', '/uploads/allimg/141202/2-141202101326-lp.jpg');
INSERT INTO `dede_archives` VALUES ('449', '2', '2', '邸杰作品', '/uploads/allimg/141202/2-141202101R0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('450', '2', '2', '丁彦明作品', '/uploads/allimg/141202/2-141202102359-lp.jpg');
INSERT INTO `dede_archives` VALUES ('451', '4', '1', '辛勤的抚育', '/uploads/allimg/141203/2-141203110I80-L.jpg');
INSERT INTO `dede_archives` VALUES ('452', '4', '1', '鸟的繁育', '/uploads/allimg/141203/2-1412031109220-L.jpg');
INSERT INTO `dede_archives` VALUES ('455', '3', '1', '世界的可可托海', '/uploads/allimg/141203/2-141203111A10-L.jpg');
INSERT INTO `dede_archives` VALUES ('453', '4', '1', '《石头记》', '/uploads/allimg/141203/2-1412031111050-L.jpg');
INSERT INTO `dede_archives` VALUES ('454', '4', '1', '兄弟', '/uploads/allimg/141203/2-1412031113150-L.jpg');
INSERT INTO `dede_archives` VALUES ('456', '2', '2', '段海军作品', '/uploads/allimg/141203/2-141203124Z4-lp.jpg');
INSERT INTO `dede_archives` VALUES ('457', '2', '2', '段志鑫作品', '/uploads/allimg/141203/2-141203130055-lp.jpg');
INSERT INTO `dede_archives` VALUES ('458', '2', '2', '范江明作品', '/uploads/allimg/141203/2-141203130P1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('459', '2', '2', '范世茂作品', '/uploads/allimg/141203/2-141203131639-lp.jpg');
INSERT INTO `dede_archives` VALUES ('460', '2', '2', '范锡勤作品', '/uploads/allimg/141203/2-141203132603-lp.jpg');
INSERT INTO `dede_archives` VALUES ('461', '2', '2', '房庆伦作品', '/uploads/allimg/141203/2-141203133231-lp.jpg');
INSERT INTO `dede_archives` VALUES ('462', '2', '2', '冯建民作品', '/uploads/allimg/141203/2-141203134057-lp.jpg');
INSERT INTO `dede_archives` VALUES ('463', '2', '2', '冯守卫作品', '/uploads/allimg/141203/2-141203135415-lp.jpg');
INSERT INTO `dede_archives` VALUES ('464', '2', '2', '付进娟作品', '/uploads/allimg/141203/2-141203135943-lp.jpg');
INSERT INTO `dede_archives` VALUES ('465', '2', '2', '高东林作品', '/uploads/allimg/141203/2-141203140425-lp.jpg');
INSERT INTO `dede_archives` VALUES ('466', '2', '2', '高岚作品', '/uploads/allimg/141203/2-141203142027-lp.jpg');
INSERT INTO `dede_archives` VALUES ('467', '2', '2', '高志作品', '/uploads/allimg/141203/2-141203143A1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('468', '2', '2', '耿燕芹作品', '/uploads/allimg/141203/2-141203144050-lp.jpg');
INSERT INTO `dede_archives` VALUES ('469', '2', '2', '关桂英作品', '/uploads/allimg/141203/2-141203144421-lp.jpg');
INSERT INTO `dede_archives` VALUES ('470', '2', '2', '关永源作品', '/uploads/allimg/141203/2-141203145144-lp.jpg');
INSERT INTO `dede_archives` VALUES ('471', '2', '2', '郭得占作品', '/uploads/allimg/141203/2-141203145J9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('472', '2', '2', '郭辉作品', '/uploads/allimg/141203/2-141203150408-lp.jpg');
INSERT INTO `dede_archives` VALUES ('473', '2', '2', '郭丽霞作品', '/uploads/allimg/141203/2-141203151050-lp.jpg');
INSERT INTO `dede_archives` VALUES ('474', '2', '2', '郭伟东作品', '/uploads/allimg/141203/2-141203151503-lp.jpg');
INSERT INTO `dede_archives` VALUES ('475', '2', '2', '郭卫新作品', '/uploads/allimg/141203/2-141203151Q9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('476', '2', '2', '哈那提。赛依提哈木扎作品', '/uploads/allimg/141203/2-141203152441-lp.jpg');
INSERT INTO `dede_archives` VALUES ('477', '2', '2', '赖钟鸣作品', '/uploads/allimg/141203/2-141203153117-lp.jpg');
INSERT INTO `dede_archives` VALUES ('478', '2', '2', '哈帕孜.恰合班作品', '/uploads/allimg/141203/2-141203153959-lp.jpg');
INSERT INTO `dede_archives` VALUES ('479', '2', '2', '海拉提•哈拜作品', '/uploads/allimg/141203/2-141203164615-lp.jpg');
INSERT INTO `dede_archives` VALUES ('480', '2', '2', '韩革新作品', '/uploads/allimg/141203/2-1412031A347-lp.jpg');
INSERT INTO `dede_archives` VALUES ('481', '2', '2', '郝沛作品', '/uploads/allimg/141203/2-1412031G024-lp.jpg');
INSERT INTO `dede_archives` VALUES ('482', '2', '2', '何强作品', '/uploads/allimg/141203/2-1412031J642-lp.jpg');
INSERT INTO `dede_archives` VALUES ('483', '2', '2', '何伟作品', '/uploads/allimg/141203/2-1412031K627-lp.jpg');
INSERT INTO `dede_archives` VALUES ('484', '2', '2', '刘成刚作品', '/uploads/allimg/141203/2-1412031P103-lp.jpg');
INSERT INTO `dede_archives` VALUES ('485', '2', '2', '胡皓中作品', '/uploads/allimg/141203/2-1412031P334-lp.jpg');
INSERT INTO `dede_archives` VALUES ('486', '2', '2', '胡爱萍作品', '/uploads/allimg/141203/2-1412031P952-lp.jpg');
INSERT INTO `dede_archives` VALUES ('487', '2', '2', '鲁维玉作品', '/uploads/allimg/141203/2-1412031Q420-lp.jpg');
INSERT INTO `dede_archives` VALUES ('488', '2', '2', '胡永革', '/uploads/allimg/141203/2-141203204345-lp.jpg');
INSERT INTO `dede_archives` VALUES ('489', '2', '2', '胡勇跃作品', '/uploads/allimg/141203/2-141203204955-lp.jpg');
INSERT INTO `dede_archives` VALUES ('490', '2', '2', '胡宇作品', '/uploads/allimg/141203/2-141203205S2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('491', '2', '2', '花家镇作品', '/uploads/allimg/141203/2-141203210142-lp.jpg');
INSERT INTO `dede_archives` VALUES ('492', '2', '2', '黄宏才作品', '/uploads/allimg/141203/2-141203210645-lp.jpg');
INSERT INTO `dede_archives` VALUES ('493', '2', '2', '秦杰作品', '/uploads/allimg/141203/2-141203212213-lp.jpg');
INSERT INTO `dede_archives` VALUES ('494', '2', '2', '秦爱霞作品', '/uploads/allimg/141203/2-141203212R3-lp.gif');
INSERT INTO `dede_archives` VALUES ('495', '2', '2', '黄新波作品', '/uploads/allimg/141203/2-141203213314-lp.jpg');
INSERT INTO `dede_archives` VALUES ('496', '2', '2', '秦永亮作品', '/uploads/allimg/141203/2-141203214033-lp.jpg');
INSERT INTO `dede_archives` VALUES ('497', '2', '2', '贾宪生作品', '/uploads/allimg/141203/2-141203214320-lp.jpg');
INSERT INTO `dede_archives` VALUES ('498', '2', '2', '江晓作品', '/uploads/allimg/141203/2-141203214H0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('499', '2', '2', '金万军作品', '/uploads/allimg/141203/2-141203215044-lp.jpg');
INSERT INTO `dede_archives` VALUES ('500', '4', '1', '哈萨克猎鹰人', '/uploads/allimg/141204/2-1412040035440-L.jpg');
INSERT INTO `dede_archives` VALUES ('501', '2', '2', '刘诗江作品', '/uploads/allimg/141204/2-141204193929-lp.jpg');
INSERT INTO `dede_archives` VALUES ('502', '2', '2', '金鑫作品', '/uploads/allimg/141204/2-141204224347-lp.jpg');
INSERT INTO `dede_archives` VALUES ('503', '2', '2', '靳磊作品', '/uploads/allimg/141204/2-141204225647-lp.jpg');
INSERT INTO `dede_archives` VALUES ('504', '2', '2', '居来提作品', '/uploads/allimg/141204/2-141204230124-lp.jpg');
INSERT INTO `dede_archives` VALUES ('505', '2', '2', '黄惠尧作品', '/uploads/allimg/141204/2-141204230F1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('506', '2', '2', '洪远江作品', '/uploads/allimg/141204/2-141204231516-lp.jpg');
INSERT INTO `dede_archives` VALUES ('507', '2', '2', '黄敬彬作品', '/uploads/allimg/141204/2-141204232I3-lp.jpg');
INSERT INTO `dede_archives` VALUES ('508', '2', '2', '冀松池作品', '/uploads/allimg/141204/2-141204233026-lp.jpg');
INSERT INTO `dede_archives` VALUES ('509', '2', '2', '胡世明作品', '/uploads/allimg/141204/2-141204233321-lp.jpg');
INSERT INTO `dede_archives` VALUES ('510', '2', '2', '卡玛里江.塔力甫作品', '/uploads/allimg/141204/2-141204234436-lp.jpg');
INSERT INTO `dede_archives` VALUES ('511', '2', '2', '赖宇宁作品', '/uploads/allimg/141204/2-141204235227-lp.jpg');
INSERT INTO `dede_archives` VALUES ('512', '2', '2', '郎海波作品', '/uploads/allimg/141205/2-141205000033-lp.jpg');
INSERT INTO `dede_archives` VALUES ('513', '2', '2', '雷洪作品', '/uploads/allimg/141205/2-141205000332-lp.jpg');
INSERT INTO `dede_archives` VALUES ('514', '2', '2', '李文作品', '/uploads/allimg/141205/2-141205000Z2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('515', '2', '2', '李刚作品', '/uploads/allimg/141205/2-141205001449-lp.jpg');
INSERT INTO `dede_archives` VALUES ('516', '2', '2', '李建国作品', '/uploads/allimg/141205/2-141205001624-lp.jpg');
INSERT INTO `dede_archives` VALUES ('517', '2', '2', '李建民作品', '/uploads/allimg/141205/2-141205002010-lp.jpg');
INSERT INTO `dede_archives` VALUES ('518', '2', '2', '李凯江作品', '/uploads/allimg/141205/2-141205002S0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('519', '2', '2', '李科文作品', '/uploads/allimg/141205/2-141205003127-lp.jpg');
INSERT INTO `dede_archives` VALUES ('520', '2', '2', '李明作品', '/uploads/allimg/141205/2-141205003420-lp.jpg');
INSERT INTO `dede_archives` VALUES ('521', '2', '2', '李奇渊作品', '/uploads/allimg/141205/2-141205003I8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('522', '2', '2', '李万明作品', '/uploads/allimg/141205/2-141205004154-lp.jpg');
INSERT INTO `dede_archives` VALUES ('523', '2', '2', '李卫民作品', '/uploads/allimg/141205/2-141205004543-lp.jpg');
INSERT INTO `dede_archives` VALUES ('524', '2', '2', '李向东作品', '/uploads/allimg/141205/2-141205005323-lp.jpg');
INSERT INTO `dede_archives` VALUES ('525', '2', '2', '李晓萍作品', '/uploads/allimg/141205/2-141205010143-lp.jpg');
INSERT INTO `dede_archives` VALUES ('526', '2', '2', '李学军作品', '/uploads/allimg/141205/2-141205010431-lp.jpg');
INSERT INTO `dede_archives` VALUES ('527', '2', '2', '李育新作品', '/uploads/allimg/141205/2-141205010H9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('528', '2', '2', '王晋作品', '/uploads/allimg/141205/2-141205011045-lp.jpg');
INSERT INTO `dede_archives` VALUES ('529', '2', '2', '林金荣作品', '/uploads/allimg/141205/2-141205011F3-lp.jpg');
INSERT INTO `dede_archives` VALUES ('530', '2', '2', '林科作品', '/uploads/allimg/141205/2-141205012217-lp.jpg');
INSERT INTO `dede_archives` VALUES ('531', '2', '2', '刘锋兵作品', '/uploads/allimg/141205/2-141205013012-lp.jpg');
INSERT INTO `dede_archives` VALUES ('532', '2', '2', '刘海军作品', '/uploads/allimg/141205/2-141205013443-lp.jpg');
INSERT INTO `dede_archives` VALUES ('533', '2', '2', '刘浩作品', '/uploads/allimg/141205/2-141205013H0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('534', '2', '2', '刘刻心作品', '/uploads/allimg/141205/2-141205014445-lp.jpg');
INSERT INTO `dede_archives` VALUES ('535', '2', '2', '刘利作品', '/uploads/allimg/141205/2-141205022P9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('536', '2', '2', '刘书作品', '/uploads/allimg/141205/2-141205023303-lp.jpg');
INSERT INTO `dede_archives` VALUES ('537', '2', '2', '刘伟作品', '/uploads/allimg/141205/2-141205023629-lp.jpg');
INSERT INTO `dede_archives` VALUES ('538', '2', '2', '刘武作品', '/uploads/allimg/141205/2-141205024020-lp.jpg');
INSERT INTO `dede_archives` VALUES ('539', '2', '2', '刘霞作品', '/uploads/allimg/141205/2-141205024618-lp.jpg');
INSERT INTO `dede_archives` VALUES ('540', '2', '2', '刘晓林作品', '/uploads/allimg/141205/2-141205024946-lp.jpg');
INSERT INTO `dede_archives` VALUES ('541', '4', '1', '《声音》', '/uploads/allimg/141205/2-1412050302560-L.jpg');
INSERT INTO `dede_archives` VALUES ('543', '2', '2', '刘银刚作品', '/uploads/allimg/141206/2-141206103133-lp.jpg');
INSERT INTO `dede_archives` VALUES ('542', '4', '1', '假期', '/uploads/allimg/141205/2-1412050304010-L.jpg');
INSERT INTO `dede_archives` VALUES ('544', '2', '2', '刘勇军作品', '/uploads/allimg/141206/2-141206104443-lp.jpg');
INSERT INTO `dede_archives` VALUES ('545', '2', '2', '刘振东作品', '/uploads/allimg/141206/2-141206105219-lp.jpg');
INSERT INTO `dede_archives` VALUES ('546', '2', '2', '刘征作品', '/uploads/allimg/141206/2-141206111032-lp.jpg');
INSERT INTO `dede_archives` VALUES ('547', '2', '2', '吕方明作品', '/uploads/allimg/141206/2-141206111K3-lp.jpg');
INSERT INTO `dede_archives` VALUES ('548', '2', '2', '吕自捷作品', '/uploads/allimg/141206/2-141206112436-lp.jpg');
INSERT INTO `dede_archives` VALUES ('549', '2', '2', '罗广军作品', '/uploads/allimg/141206/2-141206112U8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('550', '2', '2', '马松江作品', '/uploads/allimg/141206/2-141206113612-lp.jpg');
INSERT INTO `dede_archives` VALUES ('551', '2', '2', '马新民作品', '/uploads/allimg/141206/2-141206114139-lp.jpg');
INSERT INTO `dede_archives` VALUES ('552', '2', '2', '马玉山作品', '/uploads/allimg/141206/2-141206114F2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('553', '2', '2', '梅健作品', '/uploads/allimg/141206/2-141206115032-lp.jpg');
INSERT INTO `dede_archives` VALUES ('554', '2', '2', '陈辉作品', '/uploads/allimg/141206/2-141206120452-lp.jpg');
INSERT INTO `dede_archives` VALUES ('555', '2', '2', '孟宪翔作品', '/uploads/allimg/141206/2-141206122112-lp.jpg');
INSERT INTO `dede_archives` VALUES ('556', '2', '2', '米学勤作品', '/uploads/allimg/141206/2-141206122422-lp.jpg');
INSERT INTO `dede_archives` VALUES ('557', '2', '2', '牟小宏作品', '/uploads/allimg/141206/2-141206122I0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('558', '2', '2', '木拉提汗•木汗作品', '/uploads/allimg/141206/2-141206123115-lp.jpg');
INSERT INTO `dede_archives` VALUES ('559', '2', '2', '尼加提•麦麦提明作品', '/uploads/allimg/141206/2-141206123J3-lp.jpg');
INSERT INTO `dede_archives` VALUES ('560', '2', '2', '牛泰作品', '/uploads/allimg/141206/2-141206124R1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('561', '2', '2', '努尔木哈买提.吾木尔别克作品', '/uploads/allimg/141206/2-141206125608-lp.jpg');
INSERT INTO `dede_archives` VALUES ('562', '2', '2', '潘静作品', '/uploads/allimg/141206/2-141206125Z2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('563', '2', '2', '潘晓辉作品', '/uploads/allimg/141206/2-141206130537-lp.jpg');
INSERT INTO `dede_archives` VALUES ('564', '2', '2', '潘永皓作品', '/uploads/allimg/141206/2-141206132045-lp.jpg');
INSERT INTO `dede_archives` VALUES ('565', '2', '2', '庞思博作品', '/uploads/allimg/141206/2-141206132647-lp.jpg');
INSERT INTO `dede_archives` VALUES ('566', '2', '2', '彭淑芬作品', '/uploads/allimg/141206/2-141206133521-lp.jpg');
INSERT INTO `dede_archives` VALUES ('567', '2', '2', '金炜作品', '/uploads/allimg/141206/2-141206134015-lp.jpg');
INSERT INTO `dede_archives` VALUES ('568', '2', '2', '齐颜礼作品', '/uploads/allimg/141206/2-141206134T7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('569', '2', '2', '钱文作品', '/uploads/allimg/141206/2-141206135206-lp.jpg');
INSERT INTO `dede_archives` VALUES ('570', '2', '2', '邱勇作品', '/uploads/allimg/141206/2-141206135642-lp.jpg');
INSERT INTO `dede_archives` VALUES ('571', '2', '2', '曲志耘作品', '/uploads/allimg/141206/2-141206152332-lp.jpg');
INSERT INTO `dede_archives` VALUES ('572', '2', '2', '王新平作品', '/uploads/allimg/141206/2-141206153022-lp.jpg');
INSERT INTO `dede_archives` VALUES ('573', '2', '2', '茹可作品', '/uploads/allimg/141206/2-141206153Q9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('574', '2', '2', '王韬作品', '/uploads/allimg/141206/2-141206154449-lp.jpg');
INSERT INTO `dede_archives` VALUES ('575', '2', '2', '上官风雁作品', '/uploads/allimg/141206/2-141206155019-lp.jpg');
INSERT INTO `dede_archives` VALUES ('576', '2', '2', '师爱红作品', '/uploads/allimg/141206/2-141206155318-lp.jpg');
INSERT INTO `dede_archives` VALUES ('577', '2', '2', '施洁华作品', '/uploads/141102/141207/1-14120F004214P.jpg');
INSERT INTO `dede_archives` VALUES ('578', '2', '2', '时霈作品', '/uploads/allimg/141206/2-141206162537-lp.jpg');
INSERT INTO `dede_archives` VALUES ('579', '2', '2', '宋歌作品', '/uploads/allimg/141206/2-141206164159-lp.jpg');
INSERT INTO `dede_archives` VALUES ('580', '2', '2', '关新作品', '/uploads/allimg/141206/2-1412061A138-lp.jpg');
INSERT INTO `dede_archives` VALUES ('581', '2', '2', '孙克英作品', '/uploads/allimg/141206/2-1412061A508-lp.jpg');
INSERT INTO `dede_archives` VALUES ('582', '2', '2', '孙新明作品', '/uploads/allimg/141206/2-1412061F611-lp.jpg');
INSERT INTO `dede_archives` VALUES ('583', '2', '2', '孙珍华作品', '/uploads/allimg/141206/2-1412061G216-lp.jpg');
INSERT INTO `dede_archives` VALUES ('584', '2', '2', '谭成军作品', '/uploads/allimg/141206/2-1412061G525-lp.jpg');
INSERT INTO `dede_archives` VALUES ('585', '2', '2', '谭曙作品', '/uploads/allimg/141206/2-1412061H016-lp.jpg');
INSERT INTO `dede_archives` VALUES ('586', '2', '2', '谭永生作品', '/uploads/allimg/141207/2-14120F21519-lp.jpg');
INSERT INTO `dede_archives` VALUES ('587', '2', '2', '王宝森作品', '/uploads/allimg/141207/2-14120F23J7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('588', '2', '2', '王国栋作品', '/uploads/allimg/141207/2-14120F24353-lp.jpg');
INSERT INTO `dede_archives` VALUES ('589', '2', '2', '吐尔迪吾加合买提作品', '/uploads/allimg/141207/2-14120F24K1-lp.jpg');
INSERT INTO `dede_archives` VALUES ('590', '2', '2', '吐尔逊买买提.吾斯曼作品', '/uploads/allimg/141207/2-14120F25448-lp.jpg');
INSERT INTO `dede_archives` VALUES ('591', '2', '2', '王碧霞作品', '/uploads/allimg/141207/2-14120F30141-lp.jpg');
INSERT INTO `dede_archives` VALUES ('592', '2', '2', '王兵会作品', '/uploads/allimg/141207/2-14120F30644-lp.jpg');
INSERT INTO `dede_archives` VALUES ('593', '2', '2', '王聪惠作品', '/uploads/allimg/141207/2-14120F31453-lp.jpg');
INSERT INTO `dede_archives` VALUES ('594', '2', '2', '王汉冰作品', '/uploads/allimg/141207/2-14120F32A2-lp.jpg');
INSERT INTO `dede_archives` VALUES ('595', '2', '2', '王禾硕作品', '/uploads/allimg/141207/2-14120F33418-lp.jpg');
INSERT INTO `dede_archives` VALUES ('596', '2', '2', '王宏作品', '/uploads/allimg/141207/2-14120F33648-lp.jpg');
INSERT INTO `dede_archives` VALUES ('597', '2', '2', '王俊生作品', '/uploads/allimg/141207/2-14120F34123-lp.jpg');
INSERT INTO `dede_archives` VALUES ('598', '2', '2', '王利芳作品', '/uploads/allimg/141207/2-14120F34U0-lp.jpg');
INSERT INTO `dede_archives` VALUES ('599', '2', '2', '王敏作品', '/uploads/allimg/141207/2-14120F35311-lp.jpg');
INSERT INTO `dede_archives` VALUES ('600', '2', '2', '王铭进作品', '/uploads/allimg/141207/2-14120F35942-lp.jpg');
INSERT INTO `dede_archives` VALUES ('601', '2', '2', '王世木作品', '/uploads/allimg/141207/2-14120F40A7-lp.jpg');
INSERT INTO `dede_archives` VALUES ('602', '2', '2', '王书宁作品', '/uploads/allimg/141207/2-14120F41307-lp.jpg');
INSERT INTO `dede_archives` VALUES ('603', '2', '2', '王帅旗作品', '/uploads/allimg/141207/2-14120F42509-lp.jpg');
INSERT INTO `dede_archives` VALUES ('604', '2', '2', '王维全作品', '/uploads/allimg/141207/2-14120F43557-lp.jpg');
INSERT INTO `dede_archives` VALUES ('605', '2', '2', '王炜娟作品', '/uploads/allimg/141207/2-14120F44055-lp.jpg');
INSERT INTO `dede_archives` VALUES ('606', '2', '2', '王炜淑作品', '/uploads/allimg/141207/2-14120F44613-lp.jpg');
INSERT INTO `dede_archives` VALUES ('607', '2', '2', '王胥波作品', '/uploads/allimg/141207/2-14120F52023-lp.jpg');
INSERT INTO `dede_archives` VALUES ('608', '2', '2', '王旭作品', '/uploads/allimg/141207/2-14120F52A8-lp.jpg');
INSERT INTO `dede_archives` VALUES ('609', '2', '2', '王雪梅作品', '/uploads/allimg/141207/2-14120F53046-lp.jpg');
INSERT INTO `dede_archives` VALUES ('610', '2', '2', '王越飞作品', '/uploads/allimg/141207/2-14120F53424-lp.jpg');
INSERT INTO `dede_archives` VALUES ('611', '2', '2', '卫冬梅作品', '/uploads/allimg/141207/2-14120F53S9-lp.jpg');
INSERT INTO `dede_archives` VALUES ('612', '2', '2', '陈伟作品', '/uploads/allimg/141207/2-14120F54547-lp.jpg');
INSERT INTO `dede_archives` VALUES ('613', '2', '2', '亓永胜作品', '/uploads/allimg/141207/2-14120F55534-lp.jpg');

-- ----------------------------
-- Table structure for doc
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime DEFAULT NULL,
  `DOCID` varchar(255) DEFAULT NULL,
  `DOCTITLE` varchar(255) DEFAULT NULL,
  `DOCTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------

-- ----------------------------
-- Table structure for jeecg_demo
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo`;
CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo
-- ----------------------------
INSERT INTO `jeecg_demo` VALUES ('5a43553b4a2d65b4014a2d66b50f015e', '12', '2014-02-14 00:00:00', null, null, '123', 'demo@jeecg.com', '13111111111', '66666666', '111111.00', '1', null, '小明', null);

-- ----------------------------
-- Table structure for jeecg_demo_course
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_course`;
CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `teacher_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_course
-- ----------------------------
INSERT INTO `jeecg_demo_course` VALUES ('5a43553b4a2d65b4014a2d66b0d0015b', '海贼王', '5a43553b4a2d65b4014a2d66b0cd015a');

-- ----------------------------
-- Table structure for jeecg_demo_student
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_student`;
CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `COURSE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_student
-- ----------------------------
INSERT INTO `jeecg_demo_student` VALUES ('5a43553b4a2d65b4014a2d66b3ee015c', null, '卓洛', '0', '5a43553b4a2d65b4014a2d66b0d0015b');
INSERT INTO `jeecg_demo_student` VALUES ('5a43553b4a2d65b4014a2d66b3f4015d', null, '山治 ', '0', '5a43553b4a2d65b4014a2d66b0d0015b');

-- ----------------------------
-- Table structure for jeecg_demo_teacher
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_teacher`;
CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_teacher
-- ----------------------------
INSERT INTO `jeecg_demo_teacher` VALUES ('5a43553b4a2d65b4014a2d66b0cd015a', '路飞', 'upload/Teacher/pic3345280233.PNG');

-- ----------------------------
-- Table structure for jeecg_matter_bom
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_matter_bom`;
CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `parent_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_matter_bom
-- ----------------------------
INSERT INTO `jeecg_matter_bom` VALUES ('5a43553b4a2d65b4014a2d66b51c0163', '广东深圳', '001', '电脑', '5000.000000', '2014-12-09 12:55:13', '5', '10', '台', '100', null);
INSERT INTO `jeecg_matter_bom` VALUES ('5a43553b4a2d65b4014a2d66b5e20164', '上海', '001001', '主板', '800.000000', '2014-12-09 12:55:14', '6', '18', '个', '60', '5a43553b4a2d65b4014a2d66b51c0163');

-- ----------------------------
-- Table structure for jeecg_minidao
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_minidao`;
CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_minidao
-- ----------------------------

-- ----------------------------
-- Table structure for jeecg_order_custom
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_custom`;
CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) DEFAULT NULL,
  `GOC_CONTENT` varchar(66) DEFAULT NULL,
  `GOC_CUS_NAME` varchar(16) DEFAULT NULL,
  `GOC_IDCARD` varchar(18) DEFAULT NULL,
  `GOC_PASSPORT_CODE` varchar(10) DEFAULT NULL,
  `GOC_SEX` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_custom
-- ----------------------------
INSERT INTO `jeecg_order_custom` VALUES ('5a43553b4a2d65b4014a2d66b51a0162', null, null, null, null, null, '11111AAA', null, null, '小明', null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for jeecg_order_main
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ALL_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_CONTACT_NAME` varchar(16) DEFAULT NULL,
  `GO_CONTENT` varchar(66) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) DEFAULT NULL,
  `GO_RETURN_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_TELPHONE` varchar(11) DEFAULT NULL,
  `GODER_TYPE` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  `USERTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO `jeecg_order_main` VALUES ('5a43553b4a2d65b4014a2d66b5140160', null, null, null, null, null, '1111111.00', 'alex', '别放辣椒', '11111AAA', '1', '100.00', null, '1', null, null, null, '1');

-- ----------------------------
-- Table structure for jeecg_order_product
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_product`;
CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) DEFAULT NULL,
  `GOP_COUNT` int(11) DEFAULT NULL,
  `GOP_ONE_PRICE` decimal(10,2) DEFAULT NULL,
  `GOP_PRODUCT_NAME` varchar(33) DEFAULT NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_product
-- ----------------------------
INSERT INTO `jeecg_order_product` VALUES ('5a43553b4a2d65b4014a2d66b5170161', null, null, null, null, null, '11111AAA', null, '1', '100.00', '最最美味的地锅鸡', '1', '100.00', null, null, null);

-- ----------------------------
-- Table structure for jform_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_head`;
CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_head
-- ----------------------------

-- ----------------------------
-- Table structure for jform_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_item`;
CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) DEFAULT NULL,
  `S_MODE` varchar(10) DEFAULT NULL,
  `CGRHEAD_ID` varchar(36) DEFAULT NULL,
  `DICT_CODE` varchar(36) DEFAULT NULL,
  `FIELD_HREF` varchar(120) DEFAULT NULL,
  `FIELD_NAME` varchar(36) DEFAULT NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) DEFAULT NULL,
  `IS_SHOW` varchar(5) DEFAULT NULL,
  `ORDER_NUM` int(11) DEFAULT NULL,
  `REPLACE_VA` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_item
-- ----------------------------

-- ----------------------------
-- Table structure for jg_person
-- ----------------------------
DROP TABLE IF EXISTS `jg_person`;
CREATE TABLE `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CREATEDT` datetime DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jg_person
-- ----------------------------
INSERT INTO `jg_person` VALUES ('5a43553b4a2d65b4014a2d66b512015f', '10', '2014-12-09 12:55:13', '2014-12-09 12:55:13', '小红', '1000.00');

-- ----------------------------
-- Table structure for m_y_award
-- ----------------------------
DROP TABLE IF EXISTS `m_y_award`;
CREATE TABLE `m_y_award` (
  `ID` varchar(32) NOT NULL,
  `awardname` varchar(255) DEFAULT NULL,
  `dengji` varchar(255) DEFAULT NULL,
  `studentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ktvk0b1e7p0thqwfyi5o1ygvx` (`studentid`),
  CONSTRAINT `FK_ktvk0b1e7p0thqwfyi5o1ygvx` FOREIGN KEY (`studentid`) REFERENCES `tuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_y_award
-- ----------------------------

-- ----------------------------
-- Table structure for m_y_lesson
-- ----------------------------
DROP TABLE IF EXISTS `m_y_lesson`;
CREATE TABLE `m_y_lesson` (
  `ID` varchar(32) NOT NULL,
  `lessonname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_y_lesson
-- ----------------------------

-- ----------------------------
-- Table structure for optimistic_locking
-- ----------------------------
DROP TABLE IF EXISTS `optimistic_locking`;
CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `VER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optimistic_locking
-- ----------------------------

-- ----------------------------
-- Table structure for studentlesson
-- ----------------------------
DROP TABLE IF EXISTS `studentlesson`;
CREATE TABLE `studentlesson` (
  `ID` varchar(32) NOT NULL,
  `lessonid` varchar(32) DEFAULT NULL,
  `studentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_13p8vgrkeumcn5riu2lvkuv5u` (`lessonid`),
  KEY `FK_6h11ob2iq3rhb9ycn2irloxiw` (`studentid`),
  CONSTRAINT `FK_13p8vgrkeumcn5riu2lvkuv5u` FOREIGN KEY (`lessonid`) REFERENCES `m_y_lesson` (`ID`),
  CONSTRAINT `FK_6h11ob2iq3rhb9ycn2irloxiw` FOREIGN KEY (`studentid`) REFERENCES `tuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentlesson
-- ----------------------------

-- ----------------------------
-- Table structure for tuser
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `ID` varchar(32) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `pwd` varchar(20) NOT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_1t2tvox1pi3i9c3tk04q1ug1e` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------

-- ----------------------------
-- Table structure for t_driveruser
-- ----------------------------
DROP TABLE IF EXISTS `t_driveruser`;
CREATE TABLE `t_driveruser` (
  `ID` varchar(32) NOT NULL,
  `carcolor` varchar(50) DEFAULT NULL,
  `cartype` varchar(50) DEFAULT NULL,
  `driveraddress` varchar(255) DEFAULT NULL,
  `driverbir` date DEFAULT NULL,
  `driverflapper` varchar(255) DEFAULT NULL,
  `driverlicencenum` varchar(20) DEFAULT NULL,
  `drivername` varchar(50) NOT NULL,
  `drivernum` varchar(20) DEFAULT NULL,
  `driverpassword` varchar(20) NOT NULL,
  `drivertel` varchar(11) DEFAULT NULL,
  `illegal` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driveruser
-- ----------------------------

-- ----------------------------
-- Table structure for t_finance
-- ----------------------------
DROP TABLE IF EXISTS `t_finance`;
CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) DEFAULT NULL,
  `BUYMONEY` float DEFAULT NULL,
  `BUYPROJECTNO` varchar(255) DEFAULT NULL,
  `BUYPROJECTORG` varchar(255) DEFAULT NULL,
  `BUYUSE` varchar(255) DEFAULT NULL,
  `BUYYEAR` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `COLLECTORG` varchar(255) DEFAULT NULL,
  `EXPENSEACCOUNT` varchar(255) DEFAULT NULL,
  `HAPPENYEAR` int(11) DEFAULT NULL,
  `MONEYAREA` varchar(255) DEFAULT NULL,
  `MONEYSOURCE` varchar(255) DEFAULT NULL,
  `MONEYTOTAL` float DEFAULT NULL,
  `MONEYUSE` varchar(255) DEFAULT NULL,
  `PAYTIME` datetime DEFAULT NULL,
  `ZBWNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance
-- ----------------------------

-- ----------------------------
-- Table structure for t_finance_files
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_files`;
CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_files
-- ----------------------------

-- ----------------------------
-- Table structure for t_illegal
-- ----------------------------
DROP TABLE IF EXISTS `t_illegal`;
CREATE TABLE `t_illegal` (
  `ID` varchar(32) NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `illegaladdress` varchar(255) DEFAULT NULL,
  `illegalcode` varchar(20) DEFAULT NULL,
  `illegalcontent` varchar(255) DEFAULT NULL,
  `illegaldate` varchar(255) DEFAULT NULL,
  `illegalfine` varchar(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `score` varchar(10) DEFAULT NULL,
  `driver_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_rcpx6ps1e2i0cknksmgti1vsm` (`driver_id`),
  CONSTRAINT `FK_rcpx6ps1e2i0cknksmgti1vsm` FOREIGN KEY (`driver_id`) REFERENCES `t_driveruser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_illegal
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_s_attachment`;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) DEFAULT NULL,
  `businesskey` varchar(32) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `extend` varchar(32) DEFAULT NULL,
  `note` longtext,
  `realpath` varchar(100) DEFAULT NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) DEFAULT NULL,
  `INFOTYPEID` varchar(32) DEFAULT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`),
  CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_attachment
-- ----------------------------
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a3fb0008', null, 'JR079839867R90000001000', null, null, 'doc', null, 'JR079839867R90000001000', null, 'upload/files/20130719201109hDr31jP1.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a46c0009', null, 'JEECG平台协议', null, null, 'docx', null, 'JEECG平台协议', null, 'upload/files/20130719201156sYHjSFJj.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a46f000a', null, '分析JEECG与其他的开源项目的不足和优势', null, null, 'docx', null, '分析JEECG与其他的开源项目的不足和优势', null, 'upload/files/20130719201727ZLEX1OSf.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a472000b', null, 'DMS-T3第三方租赁业务接口开发说明', null, null, 'docx', null, 'DMS-T3第三方租赁业务接口开发说明', null, 'upload/files/20130719201841LzcgqUek.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a475000c', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, null, 'doc', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, 'upload/files/20130719201925mkCrU47P.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a47b000d', null, 'JEECG团队开发规范', null, null, 'txt', null, 'JEECG团队开发规范', null, 'upload/files/20130724103633fvOTwNSV.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a47e000e', null, '第一模板', null, null, 'doc', null, '第一模板', null, 'upload/files/20130724104603pHDw4QUT.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a480000f', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200345EakUH3WB.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a4830010', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200651IE8wPdZ4.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a4850011', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, null, 'xlsx', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, 'upload/files/20130704201022KhdRW1Gd.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a4870012', null, 'EIM201_CN', null, null, 'pdf', null, 'EIM201_CN', null, 'upload/files/20130704201046JVAkvvOt.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a4890013', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704201116Z8NhEK57.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('5a43553b4a2d65b4014a2d66a48b0014', null, 'JEECGUI标签库帮助文档v3.2', null, null, 'pdf', null, 'JEECGUI标签库帮助文档v3.2', null, 'upload/files/20130704201125DQg8hi2x.swf', null, null, null);

-- ----------------------------
-- Table structure for t_s_base_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_base_user`;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `signature` blob,
  `status` smallint(6) DEFAULT NULL,
  `userkey` varchar(200) DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_base_user
-- ----------------------------
INSERT INTO `t_s_base_user` VALUES ('5a43553b4a2d65b4014a2d66a61e0043', '1', null, '5f2aa410c0a8bd5a', '管理员', null, '1', null, 'admin', '5a43553b4a2d65b4014a2d66a48e0015');
INSERT INTO `t_s_base_user` VALUES ('5a43553b4a2d65b4014a2d66a6ad0044', '0', null, '97c07a884bf272b5', '张代浩', null, '1', null, 'scott', '5a43553b4a2d65b4014a2d66a4ac0017');
INSERT INTO `t_s_base_user` VALUES ('5a43553b4a2d65b4014a2d66a8140045', '0', null, 'f2322ec2fb9f40d1', '采购员', null, '1', null, 'cgy', '5a43553b4a2d65b4014a2d66a48e0015');
INSERT INTO `t_s_base_user` VALUES ('5a43553b4a2d65b4014a2d66a81c0046', '1', null, 'a324509dc1a3089a', '采购审批员', null, '1', null, 'cgspy', '5a43553b4a2d65b4014a2d66a48e0015');

-- ----------------------------
-- Table structure for t_s_config
-- ----------------------------
DROP TABLE IF EXISTS `t_s_config`;
CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_config
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_demo
-- ----------------------------
DROP TABLE IF EXISTS `t_s_demo`;
CREATE TABLE `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) DEFAULT NULL,
  `demotitle` varchar(200) DEFAULT NULL,
  `demourl` varchar(200) DEFAULT NULL,
  `demopid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`),
  CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_demo
-- ----------------------------
INSERT INTO `t_s_demo` VALUES ('5a43553b4a2d65b4014a2d66acab00c4', '<div class=\"form\">\r\n   <label class=\"Validform_label\">\r\n     非空验证：\r\n    </label>\r\n    <input name=\"demotitle\" id=\"demotitle\" datatype=\"*\" errormsg=\"该字段不为空\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     URL验证：\r\n    </label>\r\n    <input name=\"demourl\" id=\"demourl\" datatype=\"url\" errormsg=\"必须是URL\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     至少选择2项：\r\n    </label>\r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite21\" type=\"checkbox\" value=\"1\" datatype=\"need2\" nullmsg=\"请选择您的爱好！\" />\r\n  \r\n     阅读\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite22\" type=\"checkbox\" value=\"2\" />\r\n    \r\n     音乐\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite23\" type=\"checkbox\" value=\"3\" />\r\n  \r\n     运动\r\n   \r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     邮箱：\r\n    </label>\r\n    <input name=\"demoorder\" id=\"demoorder\" datatype=\"e\" errormsg=\"邮箱非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     手机号：\r\n    </label>\r\n    <input name=\"phone\" id=\"phone\" datatype=\"m\" errormsg=\"手机号非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     金额：\r\n    </label>\r\n    <input name=\"money\" id=\"money\" datatype=\"d\" errormsg=\"金额非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     日期：\r\n    </label>\r\n    <input name=\"date\" id=\"date\" class=\"easyui-datebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     时间：\r\n    </label>\r\n    <input name=\"time\" id=\"time\" class=\"easyui-datetimebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>', null, '表单验证', null, null);

-- ----------------------------
-- Table structure for t_s_depart
-- ----------------------------
DROP TABLE IF EXISTS `t_s_depart`;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_depart
-- ----------------------------
INSERT INTO `t_s_depart` VALUES ('5a43553b4a2d65b4014a2d66a48e0015', '信息部', '12', null);
INSERT INTO `t_s_depart` VALUES ('5a43553b4a2d65b4014a2d66a4a80016', '设计部', null, null);
INSERT INTO `t_s_depart` VALUES ('5a43553b4a2d65b4014a2d66a4ac0017', '研发室', '研发技术难题', '5a43553b4a2d65b4014a2d66a4a80016');

-- ----------------------------
-- Table structure for t_s_document
-- ----------------------------
DROP TABLE IF EXISTS `t_s_document`;
CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) DEFAULT NULL,
  `documenttitle` varchar(100) DEFAULT NULL,
  `pictureindex` blob,
  `showhome` smallint(6) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`),
  CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_document
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_fileno
-- ----------------------------
DROP TABLE IF EXISTS `t_s_fileno`;
CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) DEFAULT NULL,
  `filenonum` int(11) DEFAULT NULL,
  `filenotype` varchar(32) DEFAULT NULL,
  `filenoYear` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_fileno
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_function
-- ----------------------------
DROP TABLE IF EXISTS `t_s_function`;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) DEFAULT NULL,
  `functionlevel` smallint(6) DEFAULT NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) DEFAULT NULL,
  `functionurl` varchar(100) DEFAULT NULL,
  `parentfunctionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_function
-- ----------------------------
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a58c0018', null, '0', 'Online 开发', '1', '', null, '5a43553b4a2d65b4014a2d66a3fa0007');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a58f0019', null, '0', '系统管理', '5', '', null, '5a43553b4a2d65b4014a2d66a3f70005');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a592001a', null, '0', '统计查询', '3', '', null, '5a43553b4a2d65b4014a2d66a3fa0007');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a594001b', null, '0', '常用示例', '8', '', null, '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a596001c', null, '0', '系统监控', '11', '', null, '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a59a001d', null, '1', '用户管理', '5', 'userController.do?user', '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a59d001e', null, '1', '角色管理', '6', 'roleController.do?role', '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a59f001f', null, '1', '菜单管理', '7', 'functionController.do?function', '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5a40020', null, '1', '数据字典', '6', 'systemController.do?typeGroupList', '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5a60021', null, '1', '图标管理', '18', 'iconController.do?icon', '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5a90022', null, '1', '部门管理', '22', 'departController.do?depart', '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5ac0023', null, '1', '地域管理', '22', 'territoryController.do?territory', '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a3ef0001');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5af0024', null, '1', '用户分析', '17', 'logController.do?statisticTabs&isIframe', '5a43553b4a2d65b4014a2d66a592001a', '5a43553b4a2d65b4014a2d66a3ef0001');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5b20025', null, '1', '表单配置', '1', 'cgFormHeadController.do?cgFormHeadList', '5a43553b4a2d65b4014a2d66a58c0018', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5b50026', null, '1', '动态报表配置', '2', 'cgreportConfigHeadController.do?cgreportConfigHead', '5a43553b4a2d65b4014a2d66a58c0018', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5b80027', null, '1', '数据监控', '11', 'dataSourceController.do?goDruid&isIframe', '5a43553b4a2d65b4014a2d66a596001c', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5bb0028', null, '1', '系统日志', '21', 'logController.do?log', '5a43553b4a2d65b4014a2d66a596001c', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5bf0029', null, '1', '定时任务', '21', 'timeTaskController.do?timeTask', '5a43553b4a2d65b4014a2d66a596001c', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5c2002a', null, '1', '表单验证', '1', 'demoController.do?formTabs', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5c5002b', null, '1', 'Demo示例', '2', 'jeecgDemoController.do?jeecgDemo', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5c9002c', null, '1', 'Minidao例子', '2', 'jeecgMinidaoController.do?jeecgMinidao', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5cd002d', null, '1', '单表模型', '3', 'jeecgNoteController.do?jeecgNote', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5d1002e', null, '1', '一对多模型', '4', 'jeecgOrderMainController.do?jeecgOrderMain', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5d4002f', null, '1', 'Excel导入导出', '5', 'courseController.do?course', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5d80030', null, '1', '上传下载', '6', 'commonController.do?listTurn&turn=system/document/filesList', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5dc0031', null, '1', '无分页列表', '7', 'userNoPageController.do?user', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5df0032', null, '1', 'jdbc示例', '8', 'jeecgJdbcController.do?jeecgJdbc', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5e40033', null, '1', 'SQL分离', '9', 'jeecgJdbcController.do?dictParameter', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5e80034', null, '1', '字典标签', '10', 'demoController.do?dictSelect', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5ec0035', null, '1', '表单弹出风格', '11', 'demoController.do?demoList', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5f00036', null, '1', '特殊布局', '12', 'demoController.do?demoIframe', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5f30037', null, '1', '单表例子(无Tag)', '13', 'jeecgEasyUIController.do?jeecgEasyUI', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5f70038', null, '1', '一对多例子(无Tag)', '14', 'jeecgOrderMainNoTagController.do?jeecgOrderMainNoTag', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5fa0039', null, '1', 'HTML编辑器', '15', 'jeecgDemoController.do?ckeditor&isIframe', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a5fd003a', null, '1', '在线word(IE)', '16', 'webOfficeController.do?webOffice', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a600003b', null, '1', 'WebOffice官方例子', '17', 'webOfficeController.do?webOfficeSample&isIframe', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a603003c', null, '1', '多附件管理', '18', 'tFinanceController.do?tFinance', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a606003d', null, '1', 'Datagrid手工Html', '19', 'userController.do?userDemo', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a609003e', null, '1', '物料Bom', '20', 'jeecgMatterBomController.do?goList', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a60c003f', null, '1', '报表示例', '21', 'reportDemoController.do?studentStatisticTabs&isIframe', '5a43553b4a2d65b4014a2d66a592001a', '5a43553b4a2d65b4014a2d66a3ef0001');
INSERT INTO `t_s_function` VALUES ('5a43553b4a2d65b4014a2d66a60f0040', null, '1', 'ckfinder例子', '100', 'jeecgDemoCkfinderController.do?jeecgDemoCkfinder', '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a3f10002');

-- ----------------------------
-- Table structure for t_s_icon
-- ----------------------------
DROP TABLE IF EXISTS `t_s_icon`;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `iconclas` varchar(200) DEFAULT NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_icon
-- ----------------------------
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3ba0000', 'png', 'back', null, '返回', 'plug-in/accordion/images/back.png', '1');
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3ef0001', 'png', 'pie', null, '饼图', 'plug-in/accordion/images/pie.png', '1');
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3f10002', 'png', 'pictures', null, '图片', 'plug-in/accordion/images/pictures.png', '1');
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3f40003', 'png', 'pencil', null, '笔', 'plug-in/accordion/images/pencil.png', '1');
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3f50004', 'png', 'map', null, '地图', 'plug-in/accordion/images/map.png', '1');
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3f70005', 'png', 'group_add', null, '组', 'plug-in/accordion/images/group_add.png', '1');
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3f90006', 'png', 'calculator', null, '计算器', 'plug-in/accordion/images/calculator.png', '1');
INSERT INTO `t_s_icon` VALUES ('5a43553b4a2d65b4014a2d66a3fa0007', 'png', 'folder', null, '文件夹', 'plug-in/accordion/images/folder.png', '1');

-- ----------------------------
-- Table structure for t_s_log
-- ----------------------------
DROP TABLE IF EXISTS `t_s_log`;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) DEFAULT NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) DEFAULT NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) DEFAULT NULL,
  `TSUser_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_lec4rovx6bpi2d9beusrl9iub` (`TSUser_id`),
  CONSTRAINT `FK_lec4rovx6bpi2d9beusrl9iub` FOREIGN KEY (`TSUser_id`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_log
-- ----------------------------
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66acd900c5', 'Chrome', '用户: admin登录成功', '1', '169.254.200.136', '2013-04-24 16:22:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66ace700c6', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-04-24 17:12:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66acea00c7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:37:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af4100c8', 'Chrome', '用户admin已退出', '2', '169.254.218.201', '2013-03-10 15:38:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af4400c9', 'MSIE 9.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:38:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af4e00ca', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af5100cb', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af5400cc', 'Chrome', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af5700cd', 'MSIE 9.0', '权限: 单表模型被更新成功', '5', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af5900ce', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af5c00cf', 'MSIE 9.0', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6000d0', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6200d1', 'Firefox', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6400d2', 'Chrome', '添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6600d3', 'Chrome', '更新成功', '5', '169.254.218.201', '2013-03-10 15:40:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6800d4', 'Chrome', 'JeecgDemo例子: 12被添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6b00d5', 'Chrome', '部门: 信息部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6d00d6', 'Chrome', '部门: 设计部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af6f00d7', 'Chrome', '类型: 信息部流程被更新成功', '5', '169.254.218.201', '2013-03-10 15:46:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7000d8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:48:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7200d9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:23:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7300da', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:26:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7500db', 'Chrome', '权限: 一对多实例被添加成功', '3', '169.254.218.201', '2013-03-21 23:28:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7600dc', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 08:25:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7800dd', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:05:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7900de', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:09:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7b00df', 'MSIE 8.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:28:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7c00e0', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:32:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7e00e1', 'Chrome', '物品: 笔记本添加成功', '3', '169.254.218.201', '2013-03-22 10:35:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af7f00e2', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:41:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8100e3', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 16:11:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8200e4', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 21:49:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8400e5', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:17:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8600e6', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:27:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8800e7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:16:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8900e8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:22:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8b00e9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:31:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8d00ea', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 14:23:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af8e00eb', 'Chrome', '流程参数: 主任审批被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9000ec', 'Firefox', '业务参数: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9200ed', 'Chrome', '权限: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:12:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9400ee', 'Firefox', '权限: 入职办理被添加成功', '3', '169.254.218.201', '2013-03-23 15:13:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9600ef', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-05-06 15:27:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9700f0', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 15:16:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9900f1', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:02:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9a00f2', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:07:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9c00f3', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:09:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9e00f4', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:11:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66af9f00f5', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:13:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afa000f6', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:16:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afa200f7', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:19:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afa300f8', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:27:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afa500f9', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:42:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afa600fa', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:44:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afa800fb', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:49:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afaa00fc', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:50:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afab00fd', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:53:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afad00fe', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 16:56:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afae00ff', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:59:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb00100', 'MSIE 8.0', '创建成功', '3', '192.168.197.1', '2013-07-07 17:22:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb10101', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:26:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb20102', 'MSIE 8.0', '删除成功', '4', '192.168.197.1', '2013-07-07 17:31:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb40103', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:35:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb50104', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:46:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb60105', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:55:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb80106', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:08:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afb90107', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:13:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afbb0108', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:15:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afbc0109', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:28:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afbe010a', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:29:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afbf010b', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:30:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afc1010c', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afc3010d', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afc5010e', 'MSIE 9.0', '物品: 555添加成功', '3', '192.168.1.103', '2013-03-20 23:03:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afc6010f', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-20 23:19:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afc70110', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:09:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afc90111', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:27:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afca0112', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:44:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afcc0113', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:54:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afcd0114', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:01:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afcf0115', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:13:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afd00116', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:15:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afd10117', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:22:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afd30118', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afd40119', 'MSIE 9.0', '物品: 33添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afd6011a', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:25:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afd7011b', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:27:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afd9011c', 'MSIE 9.0', '权限: 采购审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:29:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afda011d', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:29:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afdc011e', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:30:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afdd011f', 'MSIE 9.0', '用户: admin更新成功', '5', '192.168.1.103', '2013-03-21 21:31:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afde0120', 'MSIE 9.0', '流程参数: 采购审批员审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:36:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afe00121', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:36:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afe20122', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:37:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afe30123', 'MSIE 9.0', '流程类别: 采购审批员审批被删除 成功', '4', '192.168.1.103', '2013-03-21 21:38:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afe50124', 'MSIE 9.0', '物品: 44添加成功', '3', '192.168.1.103', '2013-03-21 21:43:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afe70125', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 10:10:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afe80126', 'MSIE 9.0', '权限: 上传下载被添加成功', '3', '192.168.1.105', '2013-02-07 11:07:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afea0127', 'MSIE 9.0', '权限: 插件演示被删除成功', '4', '192.168.1.105', '2013-02-07 11:07:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d66afeb0128', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 11:07:00', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d6700120180', 'Chrome', '用户: admin[信息部]登录成功', '1', '218.195.213.187', '2014-12-09 12:55:32', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2d65b4014a2d6767230181', 'Chrome', '用户admin已退出', '2', '218.195.213.187', '2014-12-09 12:55:59', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2e6b68014a2e6bf3210000', 'Chrome', '用户: admin[信息部]登录成功', '1', '218.195.213.187', '2014-12-09 17:40:34', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2e6e7c014a2e6ef5ba0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '218.195.213.187', '2014-12-09 17:43:51', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2ebec2014a2ebf1bd90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '218.195.213.187', '2014-12-09 19:11:24', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2ec14e014a2ec1fb0c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '218.195.213.187', '2014-12-09 19:14:32', '1', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_log` VALUES ('5a43553b4a2ec14e014a2f0b44e00001', 'Chrome', '用户: admin[信息部]登录成功', '1', '218.195.213.187', '2014-12-09 20:34:35', '1', '5a43553b4a2d65b4014a2d66a61e0043');

-- ----------------------------
-- Table structure for t_s_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_s_operation`;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) DEFAULT NULL,
  `operationicon` varchar(100) DEFAULT NULL,
  `operationname` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_operation
-- ----------------------------
INSERT INTO `t_s_operation` VALUES ('5a43553b4a2d65b4014a2d66a95a0069', 'add', null, '录入', null, '5a43553b4a2d65b4014a2d66a5c5002b', '5a43553b4a2d65b4014a2d66a3ba0000');
INSERT INTO `t_s_operation` VALUES ('5a43553b4a2d65b4014a2d66a95e006a', 'edit', null, '编辑', null, '5a43553b4a2d65b4014a2d66a5c5002b', '5a43553b4a2d65b4014a2d66a3ba0000');
INSERT INTO `t_s_operation` VALUES ('5a43553b4a2d65b4014a2d66a962006b', 'del', null, '删除', null, '5a43553b4a2d65b4014a2d66a5c5002b', '5a43553b4a2d65b4014a2d66a3ba0000');
INSERT INTO `t_s_operation` VALUES ('5a43553b4a2d65b4014a2d66aa06006c', 'szqm', null, '审核', null, '5a43553b4a2d65b4014a2d66a5c5002b', '5a43553b4a2d65b4014a2d66a3ba0000');

-- ----------------------------
-- Table structure for t_s_opintemplate
-- ----------------------------
DROP TABLE IF EXISTS `t_s_opintemplate`;
CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_opintemplate
-- ----------------------------

-- ----------------------------
-- Table structure for t_s_role
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role`;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) DEFAULT NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role
-- ----------------------------
INSERT INTO `t_s_role` VALUES ('5a43553b4a2d65b4014a2d66a6120041', 'admin', '管理员');
INSERT INTO `t_s_role` VALUES ('5a43553b4a2d65b4014a2d66a6150042', 'manager', '普通用户');

-- ----------------------------
-- Table structure for t_s_role_function
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_function`;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_function
-- ----------------------------
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa21006d', null, '5a43553b4a2d65b4014a2d66a58c0018', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa26006e', null, '5a43553b4a2d65b4014a2d66a58c0018', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa29006f', null, '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa2c0070', null, '5a43553b4a2d65b4014a2d66a58f0019', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa2f0071', null, '5a43553b4a2d65b4014a2d66a592001a', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa330072', null, '5a43553b4a2d65b4014a2d66a592001a', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa360073', null, '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa3a0074', null, '5a43553b4a2d65b4014a2d66a594001b', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa3d0075', null, '5a43553b4a2d65b4014a2d66a596001c', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa400076', null, '5a43553b4a2d65b4014a2d66a596001c', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa430077', null, '5a43553b4a2d65b4014a2d66a59a001d', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa460078', null, '5a43553b4a2d65b4014a2d66a59a001d', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa490079', null, '5a43553b4a2d65b4014a2d66a59d001e', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa4c007a', null, '5a43553b4a2d65b4014a2d66a59d001e', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa4e007b', null, '5a43553b4a2d65b4014a2d66a59f001f', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa51007c', null, '5a43553b4a2d65b4014a2d66a59f001f', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa54007d', null, '5a43553b4a2d65b4014a2d66a5a40020', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa57007e', null, '5a43553b4a2d65b4014a2d66a5a40020', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa5b007f', null, '5a43553b4a2d65b4014a2d66a5a60021', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa5e0080', null, '5a43553b4a2d65b4014a2d66a5a60021', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa610081', null, '5a43553b4a2d65b4014a2d66a5a90022', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa640082', null, '5a43553b4a2d65b4014a2d66a5a90022', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa690083', null, '5a43553b4a2d65b4014a2d66a5ac0023', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa6c0084', null, '5a43553b4a2d65b4014a2d66a5ac0023', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa710085', null, '5a43553b4a2d65b4014a2d66a5af0024', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa740086', null, '5a43553b4a2d65b4014a2d66a5af0024', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa780087', null, '5a43553b4a2d65b4014a2d66a5b20025', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa7b0088', null, '5a43553b4a2d65b4014a2d66a5b20025', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa7e0089', null, '5a43553b4a2d65b4014a2d66a5b50026', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa80008a', null, '5a43553b4a2d65b4014a2d66a5b50026', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa83008b', null, '5a43553b4a2d65b4014a2d66a5b80027', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa86008c', null, '5a43553b4a2d65b4014a2d66a5b80027', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa89008d', null, '5a43553b4a2d65b4014a2d66a5bb0028', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa8b008e', null, '5a43553b4a2d65b4014a2d66a5bb0028', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa8d008f', null, '5a43553b4a2d65b4014a2d66a5bf0029', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa8e0090', null, '5a43553b4a2d65b4014a2d66a5bf0029', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa900091', null, '5a43553b4a2d65b4014a2d66a5c2002a', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa920092', null, '5a43553b4a2d65b4014a2d66a5c2002a', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa930093', 'add,szqm,', '5a43553b4a2d65b4014a2d66a5c5002b', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa950094', null, '5a43553b4a2d65b4014a2d66a5c5002b', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa970095', null, '5a43553b4a2d65b4014a2d66a5c9002c', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa990096', null, '5a43553b4a2d65b4014a2d66a5c9002c', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa9b0097', null, '5a43553b4a2d65b4014a2d66a5cd002d', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa9c0098', null, '5a43553b4a2d65b4014a2d66a5cd002d', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa9e0099', null, '5a43553b4a2d65b4014a2d66a5d1002e', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aa9f009a', null, '5a43553b4a2d65b4014a2d66a5d1002e', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaa1009b', null, '5a43553b4a2d65b4014a2d66a5d4002f', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaa2009c', null, '5a43553b4a2d65b4014a2d66a5d4002f', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaa4009d', null, '5a43553b4a2d65b4014a2d66a5d80030', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaa6009e', null, '5a43553b4a2d65b4014a2d66a5d80030', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaa7009f', null, '5a43553b4a2d65b4014a2d66a5dc0031', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaa900a0', null, '5a43553b4a2d65b4014a2d66a5dc0031', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaab00a1', null, '5a43553b4a2d65b4014a2d66a5df0032', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaac00a2', null, '5a43553b4a2d65b4014a2d66a5df0032', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaae00a3', null, '5a43553b4a2d65b4014a2d66a5e40033', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaaf00a4', null, '5a43553b4a2d65b4014a2d66a5e40033', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aab100a5', null, '5a43553b4a2d65b4014a2d66a5e80034', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aab300a6', null, '5a43553b4a2d65b4014a2d66a5e80034', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aab500a7', null, '5a43553b4a2d65b4014a2d66a5ec0035', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aab700a8', null, '5a43553b4a2d65b4014a2d66a5ec0035', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aab800a9', null, '5a43553b4a2d65b4014a2d66a5f00036', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aaba00aa', null, '5a43553b4a2d65b4014a2d66a5f00036', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aabc00ab', null, '5a43553b4a2d65b4014a2d66a5f30037', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aabe00ac', null, '5a43553b4a2d65b4014a2d66a5f30037', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aac000ad', null, '5a43553b4a2d65b4014a2d66a5f70038', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aac200ae', null, '5a43553b4a2d65b4014a2d66a5f70038', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aac300af', null, '5a43553b4a2d65b4014a2d66a5fa0039', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aac500b0', null, '5a43553b4a2d65b4014a2d66a5fa0039', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aac700b1', null, '5a43553b4a2d65b4014a2d66a5fd003a', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aac900b2', null, '5a43553b4a2d65b4014a2d66a5fd003a', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aacc00b3', null, '5a43553b4a2d65b4014a2d66a600003b', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aace00b4', null, '5a43553b4a2d65b4014a2d66a600003b', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aad000b5', null, '5a43553b4a2d65b4014a2d66a603003c', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aad200b6', null, '5a43553b4a2d65b4014a2d66a603003c', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aad400b7', null, '5a43553b4a2d65b4014a2d66a606003d', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aad700b8', null, '5a43553b4a2d65b4014a2d66a606003d', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aad900b9', null, '5a43553b4a2d65b4014a2d66a609003e', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aadc00ba', null, '5a43553b4a2d65b4014a2d66a609003e', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aade00bb', null, '5a43553b4a2d65b4014a2d66a60c003f', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aae100bc', null, '5a43553b4a2d65b4014a2d66a60c003f', '5a43553b4a2d65b4014a2d66a6150042');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aae300bd', null, '5a43553b4a2d65b4014a2d66a60f0040', '5a43553b4a2d65b4014a2d66a6120041');
INSERT INTO `t_s_role_function` VALUES ('5a43553b4a2d65b4014a2d66aae500be', null, '5a43553b4a2d65b4014a2d66a60f0040', '5a43553b4a2d65b4014a2d66a6150042');

-- ----------------------------
-- Table structure for t_s_role_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_user`;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_user
-- ----------------------------
INSERT INTO `t_s_role_user` VALUES ('5a43553b4a2d65b4014a2d66ab2300bf', '5a43553b4a2d65b4014a2d66a6120041', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_role_user` VALUES ('5a43553b4a2d65b4014a2d66ab2b00c0', '5a43553b4a2d65b4014a2d66a6120041', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_role_user` VALUES ('5a43553b4a2d65b4014a2d66ab2c00c1', '5a43553b4a2d65b4014a2d66a6150042', '5a43553b4a2d65b4014a2d66a6ad0044');
INSERT INTO `t_s_role_user` VALUES ('5a43553b4a2d65b4014a2d66ac3200c2', '5a43553b4a2d65b4014a2d66a6120041', '5a43553b4a2d65b4014a2d66a8140045');
INSERT INTO `t_s_role_user` VALUES ('5a43553b4a2d65b4014a2d66ac3500c3', '5a43553b4a2d65b4014a2d66a6120041', '5a43553b4a2d65b4014a2d66a81c0046');

-- ----------------------------
-- Table structure for t_s_student
-- ----------------------------
DROP TABLE IF EXISTS `t_s_student`;
CREATE TABLE `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_student
-- ----------------------------
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5e50165', '1班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5e90166', '1班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5eb0167', '1班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5f10168', '1班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5f30169', '2班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5f5016a', '2班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5f9016b', '2班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b5fb016c', '2班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b600016d', '3班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b603016e', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b609016f', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b60f0170', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b6150171', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b6170172', '3班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b6190173', '4班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b61b0174', '4班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b61e0175', '4班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b6200176', '4班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b6220177', '5班', '张三', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b6230178', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b6250179', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b626017a', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b628017b', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b629017c', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b62b017d', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b62c017e', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('5a43553b4a2d65b4014a2d66b62d017f', '5班', '赵六', 'm');

-- ----------------------------
-- Table structure for t_s_territory
-- ----------------------------
DROP TABLE IF EXISTS `t_s_territory`;
CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) DEFAULT NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_territory
-- ----------------------------
INSERT INTO `t_s_territory` VALUES ('1', '100', '1', '全国', 'qg', '0', '106.258754', '38.471318', '0');
INSERT INTO `t_s_territory` VALUES ('10', '00000016', '2', '河南省', 'HNS', '0', '113.687228', '34.76819', '1');
INSERT INTO `t_s_territory` VALUES ('100', '371300', '3', '临沂市', 'LYS', '0', '118.356448', '35.104672', '18');
INSERT INTO `t_s_territory` VALUES ('1000', '370903', '4', '岱岳区', 'DYQ', '0', '117.041582', '36.18799', '96');
INSERT INTO `t_s_territory` VALUES ('1001', '370921', '4', '宁阳县', 'NYX', '0', '116.805797', '35.758787', '96');
INSERT INTO `t_s_territory` VALUES ('1002', '370923', '4', '东平县', 'DPX', '0', '116.470304', '35.937102', '96');
INSERT INTO `t_s_territory` VALUES ('1003', '370982', '4', '新泰市', 'XTS', '0', '117.767953', '35.909032', '96');
INSERT INTO `t_s_territory` VALUES ('1004', '370983', '4', '肥城市', 'FCS', '0', '116.768358', '36.182571', '96');
INSERT INTO `t_s_territory` VALUES ('1005', '371002', '4', '环翠区', 'HCQ', '0', '122.123444', '37.501991', '97');
INSERT INTO `t_s_territory` VALUES ('1006', '371081', '4', '文登市', 'WDS', '0', '122.058128', '37.1939129', '97');
INSERT INTO `t_s_territory` VALUES ('1007', '371082', '4', '荣成市', 'RCS', '0', '122.486676', '37.165249', '97');
INSERT INTO `t_s_territory` VALUES ('1008', '371083', '4', '乳山市', 'RSS', '0', '121.539764', '36.919816', '97');
INSERT INTO `t_s_territory` VALUES ('1009', '371102', '4', '东港区', 'DGQ', '0', '119.462228', '35.425475', '98');
INSERT INTO `t_s_territory` VALUES ('101', '371400', '3', '德州市', 'DZS', '0', '116.357465', '37.434093', '18');
INSERT INTO `t_s_territory` VALUES ('1010', '371103', '4', '岚山区', 'LSQ', '0', '119.318813', '35.121816', '98');
INSERT INTO `t_s_territory` VALUES ('1011', '371121', '4', '五莲县', 'WLX', '0', '119.208744', '35.750095', '98');
INSERT INTO `t_s_territory` VALUES ('1012', '371122', '4', '莒县', 'JX', '0', '118.837131', '35.579868', '98');
INSERT INTO `t_s_territory` VALUES ('1013', '371202', '4', '莱城区', 'LCQ', '0', '117.659864', '36.203208', '99');
INSERT INTO `t_s_territory` VALUES ('1014', '371203', '4', '钢城区', 'GCQ', '0', '117.811355', '36.058572', '99');
INSERT INTO `t_s_territory` VALUES ('1015', '371302', '4', '兰山区', 'LSQ', '0', '118.347707', '35.051729', '100');
INSERT INTO `t_s_territory` VALUES ('1016', '371311', '4', '罗庄区', 'LZQ', '0', '118.284786', '34.996741', '100');
INSERT INTO `t_s_territory` VALUES ('1017', '371312', '4', '河东区', 'HDQ', '0', '118.402893', '35.089917', '100');
INSERT INTO `t_s_territory` VALUES ('1018', '371321', '4', '沂南县', 'YNX', '0', '118.465213', '35.549976', '100');
INSERT INTO `t_s_territory` VALUES ('1019', '371322', '4', '郯城县', 'TCX', '0', '118.367263', '34.613557', '100');
INSERT INTO `t_s_territory` VALUES ('102', '371500', '3', '聊城市', 'LCS', '0', '115.985371', '36.4567039', '18');
INSERT INTO `t_s_territory` VALUES ('1020', '371323', '4', '沂水县', 'YSX', '0', '118.627918', '35.79045', '100');
INSERT INTO `t_s_territory` VALUES ('1021', '371324', '4', '苍山县', 'CSX', '0', '118.07065', '34.857149', '100');
INSERT INTO `t_s_territory` VALUES ('1022', '371325', '4', '费县', 'FX', '0', '117.977868', '35.26634', '100');
INSERT INTO `t_s_territory` VALUES ('1023', '371326', '4', '平邑县', 'PYX', '0', '117.640352', '35.5059429', '100');
INSERT INTO `t_s_territory` VALUES ('1024', '371327', '4', '莒南县', 'JNX', '0', '118.835163', '35.174846', '100');
INSERT INTO `t_s_territory` VALUES ('1025', '371328', '4', '蒙阴县', 'MYX', '0', '117.945085', '35.710032', '100');
INSERT INTO `t_s_territory` VALUES ('1026', '371329', '4', '临沭县', 'LSX', '0', '118.650782', '34.919852', '100');
INSERT INTO `t_s_territory` VALUES ('1027', '371402', '4', '德城区', 'DCQ', '0', '116.299434', '37.451272', '101');
INSERT INTO `t_s_territory` VALUES ('1028', '371421', '4', '陵县', 'LX', '0', '116.576176', '37.33579', '101');
INSERT INTO `t_s_territory` VALUES ('1029', '371422', '4', '宁津县', 'NJX', '0', '116.800324', '37.652329', '101');
INSERT INTO `t_s_territory` VALUES ('103', '371600', '3', '滨州市', 'BZS', '0', '117.970703', '37.38199', '18');
INSERT INTO `t_s_territory` VALUES ('1030', '371423', '4', '庆云县', 'QYX', '0', '117.385123', '37.77539', '101');
INSERT INTO `t_s_territory` VALUES ('1031', '371424', '4', '临邑县', 'LYX', '0', '116.86665', '37.189864', '101');
INSERT INTO `t_s_territory` VALUES ('1032', '371425', '4', '齐河县', 'QHX', '0', '116.758917', '36.795011', '101');
INSERT INTO `t_s_territory` VALUES ('1033', '371426', '4', '平原县', 'PYX', '0', '116.434187', '37.165419', '101');
INSERT INTO `t_s_territory` VALUES ('1034', '371427', '4', '夏津县', 'XJX', '0', '116.001726', '36.948371', '101');
INSERT INTO `t_s_territory` VALUES ('1035', '371428', '4', '武城县', 'WCX', '0', '116.069302', '37.213311', '101');
INSERT INTO `t_s_territory` VALUES ('1036', '371481', '4', '乐陵市', 'LLS', '0', '117.231935', '37.729907', '101');
INSERT INTO `t_s_territory` VALUES ('1037', '371482', '4', '禹城市', 'YCS', '0', '116.638387', '36.934259', '101');
INSERT INTO `t_s_territory` VALUES ('1038', '371502', '4', '东昌府区', 'DCFQ', '0', '115.988484', '36.434697', '102');
INSERT INTO `t_s_territory` VALUES ('1039', '371521', '4', '阳谷县', 'YGX', '0', '115.79182', '36.114392', '102');
INSERT INTO `t_s_territory` VALUES ('104', '371700', '3', '菏泽市', 'HZS', '0', '115.480656', '35.23375', '18');
INSERT INTO `t_s_territory` VALUES ('1040', '371522', '4', '莘县', 'SX', '0', '115.671191', '36.233599', '102');
INSERT INTO `t_s_territory` VALUES ('1041', '371523', '4', '茌平县', 'CPX', '0', '116.255282', '36.5807639', '102');
INSERT INTO `t_s_territory` VALUES ('1042', '371524', '4', '东阿县', 'DAX', '0', '116.24758', '36.334917', '102');
INSERT INTO `t_s_territory` VALUES ('1043', '371525', '4', '冠县', 'GX', '0', '115.44274', '36.484009', '102');
INSERT INTO `t_s_territory` VALUES ('1044', '371526', '4', '高唐县', 'GTX', '0', '116.231478', '36.866062', '102');
INSERT INTO `t_s_territory` VALUES ('1045', '371581', '4', '临清市', 'LQS', '0', '115.704881', '36.838277', '102');
INSERT INTO `t_s_territory` VALUES ('1046', '371602', '4', '滨城区', 'BCQ', '0', '118.019146', '37.43206', '103');
INSERT INTO `t_s_territory` VALUES ('1047', '371621', '4', '惠民县', 'HMX', '0', '117.510451', '37.489769', '103');
INSERT INTO `t_s_territory` VALUES ('1048', '371622', '4', '阳信县', 'YXX', '0', '117.578262', '37.641106', '103');
INSERT INTO `t_s_territory` VALUES ('1049', '371623', '4', '无棣县', 'WDX', '0', '117.625696', '37.770261', '103');
INSERT INTO `t_s_territory` VALUES ('1050', '371624', '4', '沾化县', 'ZHX', '0', '118.132199', '37.698281', '103');
INSERT INTO `t_s_territory` VALUES ('1051', '371625', '4', '博兴县', 'BXX', '0', '118.131815', '37.150226', '103');
INSERT INTO `t_s_territory` VALUES ('1052', '371626', '4', '邹平县', 'ZPX', '0', '117.743109', '36.862989', '103');
INSERT INTO `t_s_territory` VALUES ('1053', '371702', '4', '牡丹区', 'MDQ', '0', '115.417827', '35.252512', '104');
INSERT INTO `t_s_territory` VALUES ('1054', '371721', '4', '曹县', 'CX', '0', '115.542328', '34.825508', '104');
INSERT INTO `t_s_territory` VALUES ('1055', '371722', '4', '单县', 'DX', '0', '116.107428', '34.778808', '104');
INSERT INTO `t_s_territory` VALUES ('1056', '371723', '4', '成武县', 'CWX', '0', '115.889765', '34.952459', '104');
INSERT INTO `t_s_territory` VALUES ('1057', '371724', '4', '巨野县', 'JYX', '0', '116.094674', '35.396261', '104');
INSERT INTO `t_s_territory` VALUES ('1058', '371725', '4', '郓城县', 'YCX', '0', '115.943613', '35.599758', '104');
INSERT INTO `t_s_territory` VALUES ('1059', '371726', '4', '鄄城县', 'JCX', '0', '115.510193', '35.563408', '104');
INSERT INTO `t_s_territory` VALUES ('1060', '371727', '4', '定陶县', 'DTX', '0', '115.573094', '35.071', '104');
INSERT INTO `t_s_territory` VALUES ('1061', '371728', '4', '东明县', 'DMX', '0', '115.089905', '35.289368', '104');
INSERT INTO `t_s_territory` VALUES ('11', '00000008', '2', '黑龙江省', 'HLJS', '0', '126.662507', '45.7421699', '1');
INSERT INTO `t_s_territory` VALUES ('12', '20000000', '2', '上海市', 'SHS', '0', '121.473704', '31.230393', '1');
INSERT INTO `t_s_territory` VALUES ('13', '00000010', '2', '江苏省', 'JSS', '0', '118.763232', '32.061707', '1');
INSERT INTO `t_s_territory` VALUES ('14', '00000011', '2', '浙江省', 'ZJS', '0', '120.153676', '30.26586', '1');
INSERT INTO `t_s_territory` VALUES ('15', '00000012', '2', '安徽省', 'AHS', '0', '117.284923', '31.861184', '1');
INSERT INTO `t_s_territory` VALUES ('16', '00000013', '2', '福建省', 'FJS', '0', '119.296506', '26.099933', '1');
INSERT INTO `t_s_territory` VALUES ('17', '00000014', '2', '江西省', 'JXS', '0', '115.909175', '28.674424', '1');
INSERT INTO `t_s_territory` VALUES ('1739', '360102', '4', '东湖区', 'DHQ', '0', '115.89901', '28.6849159', '184');
INSERT INTO `t_s_territory` VALUES ('1740', '360103', '4', '西湖区', 'XHQ', '0', '115.877287', '28.656887', '184');
INSERT INTO `t_s_territory` VALUES ('1741', '360104', '4', '青云谱区', 'QYPQ', '0', '115.925749', '28.621169', '184');
INSERT INTO `t_s_territory` VALUES ('1742', '360105', '4', '湾里区', 'WLQ', '0', '115.730994', '28.714869', '184');
INSERT INTO `t_s_territory` VALUES ('1743', '360111', '4', '青山湖区', 'QSHQ', '0', '115.962144', '28.682985', '184');
INSERT INTO `t_s_territory` VALUES ('1744', '360121', '4', '南昌县', 'NCX', '0', '115.944162', '28.545459', '184');
INSERT INTO `t_s_territory` VALUES ('1745', '360122', '4', '新建县', 'XJX', '0', '115.815233', '28.692437', '184');
INSERT INTO `t_s_territory` VALUES ('1746', '360123', '4', '安义县', 'AYX', '0', '115.549199', '28.844429', '184');
INSERT INTO `t_s_territory` VALUES ('1747', '360124', '4', '进贤县', 'JXX', '0', '116.240924', '28.376918', '184');
INSERT INTO `t_s_territory` VALUES ('1748', '360202', '4', '昌江区', 'CJQ', '0', '117.183688', '29.27342', '185');
INSERT INTO `t_s_territory` VALUES ('1749', '360203', '4', '珠山区', 'ZSQ', '0', '117.202336', '29.301272', '185');
INSERT INTO `t_s_territory` VALUES ('1750', '360222', '4', '浮梁县', 'FLX', '0', '117.215061', '29.351739', '185');
INSERT INTO `t_s_territory` VALUES ('1751', '360281', '4', '乐平市', 'LPS', '0', '117.129169', '28.961902', '185');
INSERT INTO `t_s_territory` VALUES ('1752', '360302', '4', '安源区', 'AYQ', '0', '113.87073', '27.615202', '186');
INSERT INTO `t_s_territory` VALUES ('1753', '360313', '4', '湘东区', 'XDQ', '0', '113.733059', '27.640075', '186');
INSERT INTO `t_s_territory` VALUES ('1754', '360321', '4', '莲花县', 'LHX', '0', '113.961465', '27.127669', '186');
INSERT INTO `t_s_territory` VALUES ('1755', '360322', '4', '上栗县', 'SLX', '0', '113.795219', '27.880567', '186');
INSERT INTO `t_s_territory` VALUES ('1756', '360323', '4', '芦溪县', 'LXX', '0', '114.029595', '27.631145', '186');
INSERT INTO `t_s_territory` VALUES ('1757', '360402', '4', '庐山区', 'LSQ', '0', '115.989212', '29.671775', '187');
INSERT INTO `t_s_territory` VALUES ('1758', '360403', '4', '浔阳区', 'XYQ', '0', '115.990399', '29.72746', '187');
INSERT INTO `t_s_territory` VALUES ('1759', '360421', '4', '九江县', 'JJX', '0', '115.911314', '29.608456', '187');
INSERT INTO `t_s_territory` VALUES ('1760', '360423', '4', '武宁县', 'WNX', '0', '115.100579', '29.256323', '187');
INSERT INTO `t_s_territory` VALUES ('1761', '360424', '4', '修水县', 'XSX', '0', '114.547356', '29.025707', '187');
INSERT INTO `t_s_territory` VALUES ('1762', '360425', '4', '永修县', 'YXX', '0', '115.809111', '29.021824', '187');
INSERT INTO `t_s_territory` VALUES ('1763', '360426', '4', '德安县', 'DAX', '0', '115.756883', '29.314348', '187');
INSERT INTO `t_s_territory` VALUES ('1764', '360427', '4', '星子县', 'XZX', '0', '116.044893', '29.448037', '187');
INSERT INTO `t_s_territory` VALUES ('1765', '360428', '4', '都昌县', 'DCX', '0', '116.204099', '29.273194', '187');
INSERT INTO `t_s_territory` VALUES ('1766', '360429', '4', '湖口县', 'HKX', '0', '116.220266', '29.73944', '187');
INSERT INTO `t_s_territory` VALUES ('1767', '360430', '4', '彭泽县', 'PZX', '0', '116.549359', '29.896061', '187');
INSERT INTO `t_s_territory` VALUES ('1768', '360481', '4', '瑞昌市', 'RCS', '0', '115.681504', '29.673795', '187');
INSERT INTO `t_s_territory` VALUES ('1769', '360499', '4', '共青城', 'GQC', '0', '115.774', '29.2417', '187');
INSERT INTO `t_s_territory` VALUES ('1770', '360502', '4', '渝水区', 'YSQ', '0', '114.944574', '27.80038', '188');
INSERT INTO `t_s_territory` VALUES ('1771', '360521', '4', '分宜县', 'FYX', '0', '114.692039', '27.814628', '188');
INSERT INTO `t_s_territory` VALUES ('1772', '360602', '4', '月湖区', 'YHQ', '0', '117.036676', '28.238797', '189');
INSERT INTO `t_s_territory` VALUES ('1773', '360622', '4', '余江县', 'YJX', '0', '116.818871', '28.204174', '189');
INSERT INTO `t_s_territory` VALUES ('1774', '360681', '4', '贵溪市', 'GXS', '0', '117.245497', '28.292519', '189');
INSERT INTO `t_s_territory` VALUES ('1775', '360702', '4', '章贡区', 'ZGQ', '0', '114.941826', '25.862827', '190');
INSERT INTO `t_s_territory` VALUES ('1776', '360721', '4', '赣县', 'GX', '0', '115.011561', '25.860691', '190');
INSERT INTO `t_s_territory` VALUES ('1777', '360722', '4', '信丰县', 'XFX', '0', '114.922963', '25.386278', '190');
INSERT INTO `t_s_territory` VALUES ('1778', '360723', '4', '大余县', 'DYX', '0', '114.362094', '25.401283', '190');
INSERT INTO `t_s_territory` VALUES ('1779', '360724', '4', '上犹县', 'SYX', '0', '114.551371', '25.784978', '190');
INSERT INTO `t_s_territory` VALUES ('1780', '360725', '4', '崇义县', 'CYX', '0', '114.308273', '25.681879', '190');
INSERT INTO `t_s_territory` VALUES ('1781', '360726', '4', '安远县', 'AYX', '0', '115.393922', '25.136925', '190');
INSERT INTO `t_s_territory` VALUES ('1782', '360727', '4', '龙南县', 'LNX', '0', '114.789811', '24.911107', '190');
INSERT INTO `t_s_territory` VALUES ('1783', '360728', '4', '定南县', 'DNX', '0', '115.027845', '24.78441', '190');
INSERT INTO `t_s_territory` VALUES ('1784', '360729', '4', '全南县', 'QNX', '0', '114.530125', '24.742401', '190');
INSERT INTO `t_s_territory` VALUES ('1785', '360730', '4', '宁都县', 'NDX', '0', '116.009472', '26.470116', '190');
INSERT INTO `t_s_territory` VALUES ('1786', '360731', '4', '于都县', 'YDX', '0', '115.41551', '25.952066', '190');
INSERT INTO `t_s_territory` VALUES ('1787', '360732', '4', '兴国县', 'XGX', '0', '115.36319', '26.337937', '190');
INSERT INTO `t_s_territory` VALUES ('1788', '360733', '4', '会昌县', 'HCX', '0', '115.786057', '25.600272', '190');
INSERT INTO `t_s_territory` VALUES ('1789', '360734', '4', '寻乌县', 'YWX', '0', '115.646525', '24.963322', '190');
INSERT INTO `t_s_territory` VALUES ('1790', '360735', '4', '石城县', 'SCX', '0', '116.354201', '26.32686', '190');
INSERT INTO `t_s_territory` VALUES ('1791', '360781', '4', '瑞金市', 'RJS', '0', '116.02713', '25.885561', '190');
INSERT INTO `t_s_territory` VALUES ('1792', '360782', '4', '南康市', 'NKS', '0', '114.765238', '25.661356', '190');
INSERT INTO `t_s_territory` VALUES ('1793', '360802', '4', '吉州区', 'JZQ', '0', '114.994307', '27.129975', '191');
INSERT INTO `t_s_territory` VALUES ('1794', '360803', '4', '青原区', 'QYQ', '0', '115.01424', '27.081719', '191');
INSERT INTO `t_s_territory` VALUES ('1795', '360821', '4', '吉安县', 'JAX', '0', '114.907659', '27.040142', '191');
INSERT INTO `t_s_territory` VALUES ('1796', '360822', '4', '吉水县', 'JSX', '0', '115.135507', '27.229632', '191');
INSERT INTO `t_s_territory` VALUES ('1797', '360823', '4', '峡江县', 'XJX', '0', '115.316566', '27.582901', '191');
INSERT INTO `t_s_territory` VALUES ('1798', '360824', '4', '新干县', 'XGX', '0', '115.393043', '27.740809', '191');
INSERT INTO `t_s_territory` VALUES ('1799', '360825', '4', '永丰县', 'YFX', '0', '115.441477', '27.317869', '191');
INSERT INTO `t_s_territory` VALUES ('18', '00000015', '2', '山东省', 'SDS', '0', '117.020411', '36.668627', '1');
INSERT INTO `t_s_territory` VALUES ('1800', '360826', '4', '泰和县', 'THX', '0', '114.908861', '26.790231', '191');
INSERT INTO `t_s_territory` VALUES ('1801', '360827', '4', '遂川县', 'SCX', '0', '114.52098', '26.311894', '191');
INSERT INTO `t_s_territory` VALUES ('1802', '360828', '4', '万安县', 'WAX', '0', '114.786256', '26.458257', '191');
INSERT INTO `t_s_territory` VALUES ('1803', '360829', '4', '安福县', 'AFX', '0', '114.619893', '27.392874', '191');
INSERT INTO `t_s_territory` VALUES ('1804', '360830', '4', '永新县', 'YXX', '0', '114.242675', '26.945233', '191');
INSERT INTO `t_s_territory` VALUES ('1805', '360881', '4', '井冈山市', 'JGSS', '0', '114.289182', '26.748186', '191');
INSERT INTO `t_s_territory` VALUES ('1806', '360902', '4', '袁州区', 'YZQ', '0', '114.424657', '27.798846', '192');
INSERT INTO `t_s_territory` VALUES ('1807', '360921', '4', '奉新县', 'FXX', '0', '115.384904', '28.700806', '192');
INSERT INTO `t_s_territory` VALUES ('1808', '360922', '4', '万载县', 'WZX', '0', '114.447551', '28.10455', '192');
INSERT INTO `t_s_territory` VALUES ('1809', '360923', '4', '上高县', 'SGX', '0', '114.924494', '28.232827', '192');
INSERT INTO `t_s_territory` VALUES ('1810', '360924', '4', '宜丰县', 'YFX', '0', '114.803542', '28.393613', '192');
INSERT INTO `t_s_territory` VALUES ('1811', '360925', '4', '靖安县', 'JAX', '0', '115.362629', '28.861475', '192');
INSERT INTO `t_s_territory` VALUES ('1812', '360926', '4', '铜鼓县', 'TGX', '0', '114.37098', '28.520747', '192');
INSERT INTO `t_s_territory` VALUES ('1813', '360981', '4', '丰城市', 'FCS', '0', '115.771195', '28.159325', '192');
INSERT INTO `t_s_territory` VALUES ('1814', '360982', '4', '樟树市', 'ZSS', '0', '115.546063', '28.055796', '192');
INSERT INTO `t_s_territory` VALUES ('1815', '360983', '4', '高安市', 'GAS', '0', '115.375618', '28.417261', '192');
INSERT INTO `t_s_territory` VALUES ('1816', '361002', '4', '临川区', 'LCQ', '0', '116.31136', '27.934529', '193');
INSERT INTO `t_s_territory` VALUES ('1817', '361021', '4', '南城县', 'NCX', '0', '116.644658', '27.552748', '193');
INSERT INTO `t_s_territory` VALUES ('1818', '361022', '4', '黎川县', 'LCX', '0', '116.907508', '27.282382', '193');
INSERT INTO `t_s_territory` VALUES ('1819', '361023', '4', '南丰县', 'NFX', '0', '116.525725', '27.218445', '193');
INSERT INTO `t_s_territory` VALUES ('1820', '361024', '4', '崇仁县', 'CRX', '0', '116.061164', '27.764681', '193');
INSERT INTO `t_s_territory` VALUES ('1821', '361025', '4', '乐安县', 'LAX', '0', '115.837895', '27.420441', '193');
INSERT INTO `t_s_territory` VALUES ('1822', '361026', '4', '宜黄县', 'YHX', '0', '116.222128', '27.546146', '193');
INSERT INTO `t_s_territory` VALUES ('1823', '361027', '4', '金溪县', 'JXX', '0', '116.775435', '27.908337', '193');
INSERT INTO `t_s_territory` VALUES ('1824', '361028', '4', '资溪县', 'ZXX', '0', '117.060264', '27.706102', '193');
INSERT INTO `t_s_territory` VALUES ('1825', '361029', '4', '东乡县', 'DXX', '0', '116.590465', '28.236118', '193');
INSERT INTO `t_s_territory` VALUES ('1826', '361030', '4', '广昌县', 'GCX', '0', '116.325757', '26.837267', '193');
INSERT INTO `t_s_territory` VALUES ('1827', '361102', '4', '信州区', 'XZQ', '0', '117.966823', '28.43121', '194');
INSERT INTO `t_s_territory` VALUES ('1828', '361121', '4', '上饶县', 'SRX', '0', '117.90785', '28.448983', '194');
INSERT INTO `t_s_territory` VALUES ('1829', '361122', '4', '广丰县', 'GFX', '0', '118.19124', '28.436286', '194');
INSERT INTO `t_s_territory` VALUES ('1830', '361123', '4', '玉山县', 'YSX', '0', '118.245124', '28.682055', '194');
INSERT INTO `t_s_territory` VALUES ('1831', '361124', '4', '铅山县', 'QSX', '0', '117.709451', '28.315217', '194');
INSERT INTO `t_s_territory` VALUES ('1832', '361125', '4', '横峰县', 'HFX', '0', '117.596452', '28.407118', '194');
INSERT INTO `t_s_territory` VALUES ('1833', '361126', '4', '弋阳县', 'YYX', '0', '117.449588', '28.378044', '194');
INSERT INTO `t_s_territory` VALUES ('1834', '361127', '4', '余干县', 'YGX', '0', '116.695647', '28.702302', '194');
INSERT INTO `t_s_territory` VALUES ('1835', '361128', '4', '鄱阳县', 'PYX', '0', '116.699746', '29.011699', '194');
INSERT INTO `t_s_territory` VALUES ('1836', '361129', '4', '万年县', 'WNX', '0', '117.058445', '28.694582', '194');
INSERT INTO `t_s_territory` VALUES ('1837', '361130', '4', '婺源县', 'WYX', '0', '117.861911', '29.2480249', '194');
INSERT INTO `t_s_territory` VALUES ('1838', '361181', '4', '德兴市', 'DXS', '0', '117.578713', '28.946464', '194');
INSERT INTO `t_s_territory` VALUES ('1839', '370102', '4', '历下区', 'LXQ', '0', '117.07653', '36.666344', '195');
INSERT INTO `t_s_territory` VALUES ('184', '360100', '3', '南昌市', 'NCS', '0', '115.858089', '28.68316', '17');
INSERT INTO `t_s_territory` VALUES ('1840', '370103', '4', '市中区', 'SZQ', '0', '116.997475', '36.6511749', '195');
INSERT INTO `t_s_territory` VALUES ('1841', '370104', '4', '槐荫区', 'HYQ', '0', '116.90113', '36.651301', '195');
INSERT INTO `t_s_territory` VALUES ('1842', '370105', '4', '天桥区', 'TQQ', '0', '116.987492', '36.678016', '195');
INSERT INTO `t_s_territory` VALUES ('1843', '370112', '4', '历城区', 'LCQ', '0', '117.065222', '36.680171', '195');
INSERT INTO `t_s_territory` VALUES ('185', '360200', '3', '景德镇市', 'JDZS', '0', '117.17842', '29.268836', '17');
INSERT INTO `t_s_territory` VALUES ('186', '360300', '3', '萍乡市', 'PXS', '0', '113.854676', '27.622865', '17');
INSERT INTO `t_s_territory` VALUES ('187', '360400', '3', '九江市', 'JJS', '0', '116.001951', '29.705103', '17');
INSERT INTO `t_s_territory` VALUES ('188', '360500', '3', '新余市', 'XYS', '0', '114.91741', '27.817819', '17');
INSERT INTO `t_s_territory` VALUES ('189', '360600', '3', '鹰潭市', 'YTS', '0', '117.069202', '28.260189', '17');
INSERT INTO `t_s_territory` VALUES ('19', '00000017', '2', '湖北省', 'HBS', '0', '114.341921', '30.545861', '1');
INSERT INTO `t_s_territory` VALUES ('190', '360700', '3', '赣州市', 'GZS', '0', '114.935025', '25.831925', '17');
INSERT INTO `t_s_territory` VALUES ('191', '360800', '3', '吉安市', 'JAS', '0', '114.992912', '27.113039', '17');
INSERT INTO `t_s_territory` VALUES ('192', '360900', '3', '宜春市', 'YCS', '0', '114.416778', '27.815619', '17');
INSERT INTO `t_s_territory` VALUES ('193', '361000', '3', '抚州市', 'FZS', '0', '116.358176', '27.9492', '17');
INSERT INTO `t_s_territory` VALUES ('194', '361100', '3', '上饶市', 'SRS', '0', '117.943433', '28.454863', '17');
INSERT INTO `t_s_territory` VALUES ('195', '370100', '3', '济南市', 'JNS', '0', '116.994917', '36.665282', '18');
INSERT INTO `t_s_territory` VALUES ('20', '00000018', '2', '湖南省', 'HNS', '0', '112.98381', '28.112444', '1');
INSERT INTO `t_s_territory` VALUES ('21', '40000000', '2', '重庆市', 'ZQS', '0', '106.551557', '29.56301', '1');
INSERT INTO `t_s_territory` VALUES ('22', '00000022', '2', '四川省', 'SCS', '0', '104.075931', '30.651652', '1');
INSERT INTO `t_s_territory` VALUES ('23', '00000019', '2', '广东省', 'GDS', '0', '113.266531', '23.132191', '1');
INSERT INTO `t_s_territory` VALUES ('24', '00000020', '2', '广西壮族自治区', 'GXZZZZQ', '0', '108.327546', '22.815478', '1');
INSERT INTO `t_s_territory` VALUES ('25', '00000021', '2', '海南省', 'HNS', '0', '110.349229', '20.017378', '1');
INSERT INTO `t_s_territory` VALUES ('26', '810000', '2', '香港特别行政区', 'XGTBXZQ', '0', '114.109497', '22.396428', '1');
INSERT INTO `t_s_territory` VALUES ('27', '820000', '2', '澳门特别行政区', 'AMTBXZQ', '0', '113.543873', '22.198745', '1');
INSERT INTO `t_s_territory` VALUES ('28', '00000023', '2', '贵州省', 'GZS', '0', '106.707116', '26.598026', '1');
INSERT INTO `t_s_territory` VALUES ('29', '00000024', '2', '云南省', 'YNS', '0', '102.709812', '25.045359', '1');
INSERT INTO `t_s_territory` VALUES ('3', '00000006', '2', '辽宁省', 'LNS', '0', '123.42944', '41.835441', '1');
INSERT INTO `t_s_territory` VALUES ('30', '00000025', '2', '西藏自治区', 'XCZZQ', '0', '91.1170059', '29.647951', '1');
INSERT INTO `t_s_territory` VALUES ('31', '00000026', '2', '陕西省', 'SXS', '0', '108.954239', '34.265472', '1');
INSERT INTO `t_s_territory` VALUES ('32', '00000027', '2', '甘肃省', 'GSS', '0', '103.826308', '36.059421', '1');
INSERT INTO `t_s_territory` VALUES ('33', '00000028', '2', '青海省', 'QHS', '0', '101.780199', '36.620901', '1');
INSERT INTO `t_s_territory` VALUES ('34', '00000029', '2', '宁夏回族自治区', 'NXHZZZQ', '0', '106.258754', '38.471318', '1');
INSERT INTO `t_s_territory` VALUES ('35', '00000030', '2', '新疆维吾尔自治区', 'XJWWEZZQ', '0', '87.6278119', '43.793028', '1');
INSERT INTO `t_s_territory` VALUES ('4', '00000007', '2', '吉林省', 'JLS', '0', '125.326065', '43.896082', '1');
INSERT INTO `t_s_territory` VALUES ('5', '10000000', '2', '北京市', 'BJS', '0', '116.407413', '39.904214', '1');
INSERT INTO `t_s_territory` VALUES ('6', '30000000', '2', '天津市', 'TJS', '0', '117.200983', '39.084158', '1');
INSERT INTO `t_s_territory` VALUES ('7', '00000003', '2', '河北省', 'HBS', '0', '114.468665', '38.037057', '1');
INSERT INTO `t_s_territory` VALUES ('8', '00000004', '2', '山西省', 'SXS', '0', '112.562569', '37.873376', '1');
INSERT INTO `t_s_territory` VALUES ('89', '370200', '3', '青岛市', 'QDS', '0', '120.382504', '36.06722', '18');
INSERT INTO `t_s_territory` VALUES ('9', '00000005', '2', '内蒙古自治区', 'NMGZZQ', '0', '111.765618', '40.817498', '1');
INSERT INTO `t_s_territory` VALUES ('90', '370300', '3', '淄博市', 'ZBS', '0', '118.055007', '36.813497', '18');
INSERT INTO `t_s_territory` VALUES ('91', '370400', '3', '枣庄市', 'ZZS', '0', '117.323725', '34.810488', '18');
INSERT INTO `t_s_territory` VALUES ('92', '370500', '3', '东营市', 'DYS', '0', '118.674767', '37.434751', '18');
INSERT INTO `t_s_territory` VALUES ('926', '370113', '4', '长清区', 'CQQ', '0', '116.751959', '36.553691', '195');
INSERT INTO `t_s_territory` VALUES ('927', '370124', '4', '平阴县', 'PYX', '0', '116.456187', '36.289265', '195');
INSERT INTO `t_s_territory` VALUES ('928', '370125', '4', '济阳县', 'JYX', '0', '117.173529', '36.978547', '195');
INSERT INTO `t_s_territory` VALUES ('929', '370126', '4', '商河县', 'SHX', '0', '117.157183', '37.309045', '195');
INSERT INTO `t_s_territory` VALUES ('93', '370600', '3', '烟台市', 'YTS', '0', '121.447926', '37.463819', '18');
INSERT INTO `t_s_territory` VALUES ('930', '370181', '4', '章丘市', 'ZQS', '0', '117.534326', '36.714015', '195');
INSERT INTO `t_s_territory` VALUES ('931', '370202', '4', '市南区', 'SNQ', '0', '120.412392', '36.075651', '89');
INSERT INTO `t_s_territory` VALUES ('932', '370203', '4', '市北区', 'SBQ', '0', '120.374801', '36.087661', '89');
INSERT INTO `t_s_territory` VALUES ('933', '370205', '4', '四方区', 'SFQ', '0', '120.366454', '36.103993', '89');
INSERT INTO `t_s_territory` VALUES ('934', '370211', '4', '黄岛区', 'HDQ', '0', '120.198054', '35.960935', '89');
INSERT INTO `t_s_territory` VALUES ('935', '370212', '4', '崂山区', 'LSQ', '0', '120.468956', '36.107538', '89');
INSERT INTO `t_s_territory` VALUES ('936', '370213', '4', '李沧区', 'LCQ', '0', '120.432864', '36.145476', '89');
INSERT INTO `t_s_territory` VALUES ('937', '370214', '4', '城阳区', 'CYQ', '0', '120.396529', '36.307061', '89');
INSERT INTO `t_s_territory` VALUES ('938', '370281', '4', '胶州市', 'JZS', '0', '120.033345', '36.264664', '89');
INSERT INTO `t_s_territory` VALUES ('939', '370282', '4', '即墨市', 'JMS', '0', '120.447162', '36.389401', '89');
INSERT INTO `t_s_territory` VALUES ('94', '370700', '3', '潍坊市', 'WFS', '0', '119.16193', '36.706691', '18');
INSERT INTO `t_s_territory` VALUES ('940', '370283', '4', '平度市', 'PDS', '0', '119.960014', '36.7867', '89');
INSERT INTO `t_s_territory` VALUES ('941', '370284', '4', '胶南市', 'JNS', '0', '120.04643', '35.8725', '89');
INSERT INTO `t_s_territory` VALUES ('942', '370285', '4', '莱西市', 'LXS', '0', '120.51769', '36.889084', '89');
INSERT INTO `t_s_territory` VALUES ('943', '370302', '4', '淄川区', 'ZCQ', '0', '117.966842', '36.643449', '90');
INSERT INTO `t_s_territory` VALUES ('944', '370303', '4', '张店区', 'ZDQ', '0', '118.017656', '36.806773', '90');
INSERT INTO `t_s_territory` VALUES ('945', '370304', '4', '博山区', 'BSQ', '0', '117.861698', '36.494752', '90');
INSERT INTO `t_s_territory` VALUES ('946', '370305', '4', '临淄区', 'LZQ', '0', '118.308977', '36.827343', '90');
INSERT INTO `t_s_territory` VALUES ('947', '370306', '4', '周村区', 'ZCQ', '0', '117.869877', '36.803109', '90');
INSERT INTO `t_s_territory` VALUES ('948', '370321', '4', '桓台县', 'HTX', '0', '118.097955', '36.959623', '90');
INSERT INTO `t_s_territory` VALUES ('949', '370322', '4', '高青县', 'GQX', '0', '117.826916', '37.171063', '90');
INSERT INTO `t_s_territory` VALUES ('95', '370800', '3', '济宁市', 'JNS', '0', '116.587099', '35.414921', '18');
INSERT INTO `t_s_territory` VALUES ('950', '370323', '4', '沂源县', 'YYX', '0', '118.170979', '36.184827', '90');
INSERT INTO `t_s_territory` VALUES ('951', '370402', '4', '市中区', 'SZQ', '0', '117.556124', '34.864114', '91');
INSERT INTO `t_s_territory` VALUES ('952', '370403', '4', '薛城区', 'YCQ', '0', '117.263157', '34.795206', '91');
INSERT INTO `t_s_territory` VALUES ('953', '370404', '4', '峄城区', 'YCQ', '0', '117.590819', '34.772236', '91');
INSERT INTO `t_s_territory` VALUES ('954', '370405', '4', '台儿庄区', 'TEZQ', '0', '117.733832', '34.562528', '91');
INSERT INTO `t_s_territory` VALUES ('955', '370406', '4', '山亭区', 'STQ', '0', '117.461343', '35.099549', '91');
INSERT INTO `t_s_territory` VALUES ('956', '370481', '4', '滕州市', 'TZS', '0', '117.164388', '35.084021', '91');
INSERT INTO `t_s_territory` VALUES ('957', '370502', '4', '东营区', 'DYQ', '0', '118.582184', '37.448964', '92');
INSERT INTO `t_s_territory` VALUES ('958', '370503', '4', '河口区', 'HKQ', '0', '118.525579', '37.886138', '92');
INSERT INTO `t_s_territory` VALUES ('959', '370521', '4', '垦利县', 'KLX', '0', '118.547627', '37.58754', '92');
INSERT INTO `t_s_territory` VALUES ('960', '370522', '4', '利津县', 'LJX', '0', '118.255273', '37.49026', '92');
INSERT INTO `t_s_territory` VALUES ('961', '370523', '4', '广饶县', 'GRX', '0', '118.407045', '37.0537', '92');
INSERT INTO `t_s_territory` VALUES ('962', '370602', '4', '芝罘区', 'ZFQ', '0', '121.400031', '37.540687', '93');
INSERT INTO `t_s_territory` VALUES ('963', '370611', '4', '福山区', 'FSQ', '0', '121.267697', '37.498051', '93');
INSERT INTO `t_s_territory` VALUES ('964', '370612', '4', '牟平区', 'MPQ', '0', '121.600512', '37.386901', '93');
INSERT INTO `t_s_territory` VALUES ('965', '370613', '4', '莱山区', 'LSQ', '0', '121.445304', '37.511305', '93');
INSERT INTO `t_s_territory` VALUES ('966', '370614', '4', '开发区', 'KFQ', '0', '121.251001', '37.554683', '93');
INSERT INTO `t_s_territory` VALUES ('967', '370634', '4', '长岛县', 'CDX', '0', '120.736584', '37.921417', '93');
INSERT INTO `t_s_territory` VALUES ('968', '370681', '4', '龙口市', 'LKS', '0', '120.477836', '37.646064', '93');
INSERT INTO `t_s_territory` VALUES ('969', '370682', '4', '莱阳市', 'LYS', '0', '120.711607', '36.97891', '93');
INSERT INTO `t_s_territory` VALUES ('970', '370683', '4', '莱州市', 'LZS', '0', '119.942327', '37.177017', '93');
INSERT INTO `t_s_territory` VALUES ('971', '370684', '4', '蓬莱市', 'PLS', '0', '120.758848', '37.810661', '93');
INSERT INTO `t_s_territory` VALUES ('972', '370685', '4', '招远市', 'ZYS', '0', '120.434072', '37.355469', '93');
INSERT INTO `t_s_territory` VALUES ('973', '370686', '4', '栖霞市', 'QXS', '0', '120.849675', '37.335123', '93');
INSERT INTO `t_s_territory` VALUES ('974', '370687', '4', '海阳市', 'HYS', '0', '121.158477', '36.776425', '93');
INSERT INTO `t_s_territory` VALUES ('975', '370702', '4', '潍城区', 'WCQ', '0', '119.024836', '36.7281', '94');
INSERT INTO `t_s_territory` VALUES ('976', '370703', '4', '寒亭区', 'HTQ', '0', '119.219734', '36.775491', '94');
INSERT INTO `t_s_territory` VALUES ('977', '370704', '4', '坊子区', 'FZQ', '0', '119.166485', '36.654448', '94');
INSERT INTO `t_s_territory` VALUES ('978', '370705', '4', '奎文区', 'KWQ', '0', '119.132486', '36.707676', '94');
INSERT INTO `t_s_territory` VALUES ('979', '370724', '4', '临朐县', 'LQX', '0', '118.542982', '36.5125059', '94');
INSERT INTO `t_s_territory` VALUES ('980', '370725', '4', '昌乐县', 'CLX', '0', '118.829914', '36.706945', '94');
INSERT INTO `t_s_territory` VALUES ('981', '370781', '4', '青州市', 'QZS', '0', '118.479622', '36.684528', '94');
INSERT INTO `t_s_territory` VALUES ('982', '370782', '4', '诸城市', 'ZCS', '0', '119.410103', '35.995654', '94');
INSERT INTO `t_s_territory` VALUES ('983', '370783', '4', '寿光市', 'SGS', '0', '118.790652', '36.85548', '94');
INSERT INTO `t_s_territory` VALUES ('984', '370784', '4', '安丘市', 'AQS', '0', '119.218978', '36.478494', '94');
INSERT INTO `t_s_territory` VALUES ('985', '370785', '4', '高密市', 'GMS', '0', '119.755597', '36.3825949', '94');
INSERT INTO `t_s_territory` VALUES ('986', '370786', '4', '昌邑市', 'CYS', '0', '119.398525', '36.85882', '94');
INSERT INTO `t_s_territory` VALUES ('987', '370802', '4', '市中区', 'SZQ', '0', '116.596614', '35.40819', '95');
INSERT INTO `t_s_territory` VALUES ('988', '370811', '4', '任城区', 'RCQ', '0', '116.628562', '35.433727', '95');
INSERT INTO `t_s_territory` VALUES ('989', '370826', '4', '微山县', 'WSX', '0', '117.128946', '34.8071', '95');
INSERT INTO `t_s_territory` VALUES ('990', '370827', '4', '鱼台县', 'YTX', '0', '116.650608', '35.012749', '95');
INSERT INTO `t_s_territory` VALUES ('991', '370828', '4', '金乡县', 'JXX', '0', '116.311532', '35.06662', '95');
INSERT INTO `t_s_territory` VALUES ('992', '370829', '4', '嘉祥县', 'JXX', '0', '116.342442', '35.407829', '95');
INSERT INTO `t_s_territory` VALUES ('993', '370830', '4', '汶上县', 'WSX', '0', '116.489043', '35.732799', '95');
INSERT INTO `t_s_territory` VALUES ('994', '370831', '4', '泗水县', 'SSX', '0', '117.251195', '35.664323', '95');
INSERT INTO `t_s_territory` VALUES ('995', '370832', '4', '梁山县', 'LSX', '0', '116.096044', '35.802306', '95');
INSERT INTO `t_s_territory` VALUES ('996', '370881', '4', '曲阜市', 'QFS', '0', '116.986532', '35.581137', '95');
INSERT INTO `t_s_territory` VALUES ('997', '370882', '4', '兖州市', 'YZS', '0', '116.783834', '35.553144', '95');
INSERT INTO `t_s_territory` VALUES ('998', '370883', '4', '邹城市', 'ZCS', '0', '117.003743', '35.405185', '95');
INSERT INTO `t_s_territory` VALUES ('999', '370902', '4', '泰山区', 'TSQ', '0', '117.135354', '36.192084', '96');

-- ----------------------------
-- Table structure for t_s_timetask
-- ----------------------------
DROP TABLE IF EXISTS `t_s_timetask`;
CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_timetask
-- ----------------------------
INSERT INTO `t_s_timetask` VALUES ('5a43553b4a2d65b4014a2d66b0ca0159', null, null, null, '0 0/1 * * * ?', '0', '0', '测试Demo', 'taskDemoServiceTaskCronTrigger', null, null, null);

-- ----------------------------
-- Table structure for t_s_type
-- ----------------------------
DROP TABLE IF EXISTS `t_s_type`;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(50) DEFAULT NULL,
  `typepid` varchar(32) DEFAULT NULL,
  `typegroupid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_type
-- ----------------------------
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a8730051', '2', '菜单图标', null, '5a43553b4a2d65b4014a2d66a8240047');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a8900052', '1', '系统图标', null, '5a43553b4a2d65b4014a2d66a8240047');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a8930053', 'files', '附件', null, '5a43553b4a2d65b4014a2d66a84f004f');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9060054', '1', '优质订单', null, '5a43553b4a2d65b4014a2d66a82e0048');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a90a0055', '2', '普通订单', null, '5a43553b4a2d65b4014a2d66a82e0048');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a90e0056', '1', '签约客户', null, '5a43553b4a2d65b4014a2d66a8340049');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9120057', '2', '普通客户', null, '5a43553b4a2d65b4014a2d66a8340049');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9150058', '1', '特殊服务', null, '5a43553b4a2d65b4014a2d66a83a004a');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a91a0059', '2', '普通服务', null, '5a43553b4a2d65b4014a2d66a83a004a');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a91d005a', 'single', '单条件查询', null, '5a43553b4a2d65b4014a2d66a83f004b');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a920005b', 'group', '范围查询', null, '5a43553b4a2d65b4014a2d66a83f004b');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a924005c', 'Y', '是', null, '5a43553b4a2d65b4014a2d66a843004c');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a927005d', 'N', '否', null, '5a43553b4a2d65b4014a2d66a843004c');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a92b005e', 'Integer', 'Integer', null, '5a43553b4a2d65b4014a2d66a847004d');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a92f005f', 'Date', 'Date', null, '5a43553b4a2d65b4014a2d66a847004d');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9330060', 'String', 'String', null, '5a43553b4a2d65b4014a2d66a847004d');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9360061', 'Long', 'Long', null, '5a43553b4a2d65b4014a2d66a847004d');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a93a0062', 'act', '工作流引擎表', null, '5a43553b4a2d65b4014a2d66a84b004e');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a93d0063', 't_s', '系统基础表', null, '5a43553b4a2d65b4014a2d66a84b004e');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9410064', 't_b', '业务表', null, '5a43553b4a2d65b4014a2d66a84b004e');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9440065', 't_p', '自定义引擎表', null, '5a43553b4a2d65b4014a2d66a84b004e');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a9470066', 'news', '新闻', null, '5a43553b4a2d65b4014a2d66a84f004f');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a94a0067', '0', '男性', null, '5a43553b4a2d65b4014a2d66a8530050');
INSERT INTO `t_s_type` VALUES ('5a43553b4a2d65b4014a2d66a94e0068', '1', '女性', null, '5a43553b4a2d65b4014a2d66a8530050');

-- ----------------------------
-- Table structure for t_s_typegroup
-- ----------------------------
DROP TABLE IF EXISTS `t_s_typegroup`;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) DEFAULT NULL,
  `typegroupname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_typegroup
-- ----------------------------
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a8240047', 'icontype', '图标类型');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a82e0048', 'order', '订单类型');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a8340049', 'custom', '客户类型');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a83a004a', 'service', '服务项目类型');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a83f004b', 'searchmode', '查询模式');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a843004c', 'yesorno', '逻辑条件');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a847004d', 'fieldtype', '字段类型');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a84b004e', 'database', '数据表');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a84f004f', 'fieltype', '文档分类');
INSERT INTO `t_s_typegroup` VALUES ('5a43553b4a2d65b4014a2d66a8530050', 'sex', '性别类');

-- ----------------------------
-- Table structure for t_s_user
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user`;
CREATE TABLE `t_s_user` (
  `email` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `signatureFile` varchar(100) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user
-- ----------------------------
INSERT INTO `t_s_user` VALUES (null, null, null, 'images/renfang/qm/licf.gif', '5a43553b4a2d65b4014a2d66a61e0043');
INSERT INTO `t_s_user` VALUES ('zhangdaiscott@163.com', '13426432910', '7496661', null, '5a43553b4a2d65b4014a2d66a6ad0044');
INSERT INTO `t_s_user` VALUES (null, null, null, null, '5a43553b4a2d65b4014a2d66a8140045');
INSERT INTO `t_s_user` VALUES (null, null, null, null, '5a43553b4a2d65b4014a2d66a81c0046');

-- ----------------------------
-- Table structure for t_s_version
-- ----------------------------
DROP TABLE IF EXISTS `t_s_version`;
CREATE TABLE `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) DEFAULT NULL,
  `versioncode` varchar(50) DEFAULT NULL,
  `versionname` varchar(30) DEFAULT NULL,
  `versionnum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_version
-- ----------------------------
