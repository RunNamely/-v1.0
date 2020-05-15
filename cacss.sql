/*
Navicat MySQL Data Transfer

Source Server         : lauuu
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : cacss

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-04-05 09:11:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classroomtb
-- ----------------------------
DROP TABLE IF EXISTS `classroomtb`;
CREATE TABLE `classroomtb` (
  `CRoomId` int(11) NOT NULL AUTO_INCREMENT,
  `CRoomCode` varchar(50) DEFAULT NULL,
  `CRoomName` varchar(52) DEFAULT NULL,
  `CAreaId` int(11) DEFAULT NULL,
  `RoomTypeId` int(11) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `CRoomSeatingCapacity` int(11) DEFAULT NULL,
  `DeleteFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`CRoomId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroomtb
-- ----------------------------
INSERT INTO `classroomtb` VALUES ('2', '002', '二号音乐教室', null, '2', null, '100', '1');
INSERT INTO `classroomtb` VALUES ('3', '003', '1号物理实验', null, '5', null, '100', '1');
INSERT INTO `classroomtb` VALUES ('4', '004', '2号楼104号', null, '4', null, '70', '1');
INSERT INTO `classroomtb` VALUES ('7', '005', '七号机房', null, '4', null, '19', '1');
INSERT INTO `classroomtb` VALUES ('8', '006', '6号机房', null, '4', null, '80', '1');
INSERT INTO `classroomtb` VALUES ('9', '107', 'wl实验2', null, '5', null, '70', '1');
INSERT INTO `classroomtb` VALUES ('10', '108', 'wl实验3', null, '5', null, '70', '1');
INSERT INTO `classroomtb` VALUES ('11', '109', 'wl实验4', null, '5', null, '70', '1');
INSERT INTO `classroomtb` VALUES ('12', '110', '操场东', null, '3', null, '80', '1');
INSERT INTO `classroomtb` VALUES ('13', '111', '操场西', null, '3', null, '80', '1');
INSERT INTO `classroomtb` VALUES ('14', '201', '化学实验室1', null, '6', null, '70', '1');
INSERT INTO `classroomtb` VALUES ('15', '202', '化学实验室2', null, '6', null, '70', '1');

-- ----------------------------
-- Table structure for classtb
-- ----------------------------
DROP TABLE IF EXISTS `classtb`;
CREATE TABLE `classtb` (
  `ClassId` int(11) NOT NULL AUTO_INCREMENT,
  `ClassCode` varchar(50) DEFAULT NULL,
  `ClassName` varchar(52) DEFAULT NULL,
  `ClassSize` int(11) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `MajorId` int(11) DEFAULT NULL,
  `Describe` varchar(200) DEFAULT NULL,
  `DeleteFlag` char(1) DEFAULT NULL,
  `InYear` int(11) DEFAULT NULL,
  `CAreaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClassId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classtb
-- ----------------------------
INSERT INTO `classtb` VALUES ('1', 'bj001', '15级1班', '55', null, null, null, '1', '2018', '1');
INSERT INTO `classtb` VALUES ('2', 'bj000', '15级2班', '55', null, null, null, '1', '2018', '1');
INSERT INTO `classtb` VALUES ('3', 'bj003', '17级1班', '45', null, null, null, '1', '2018', '1');
INSERT INTO `classtb` VALUES ('4', 'bj004', '17级2班', '50', null, null, null, '1', '2018', '1');
INSERT INTO `classtb` VALUES ('5', '006', '17级3班', '40', null, null, null, '1', '2018', '1');
INSERT INTO `classtb` VALUES ('6', '007', '17级4班', '50', null, null, null, '1', '2018', '1');
INSERT INTO `classtb` VALUES ('7', '008', '16级1班', '30', null, null, null, '1', '2018', '1');
INSERT INTO `classtb` VALUES ('8', '009', '16级7班', '66', null, null, null, '1', '2016', '1');
INSERT INTO `classtb` VALUES ('20', 'b001', '计算机科学与技术2班', '100', null, null, null, null, '2019', null);

-- ----------------------------
-- Table structure for clco
-- ----------------------------
DROP TABLE IF EXISTS `clco`;
CREATE TABLE `clco` (
  `ClCoId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `TermId` int(11) DEFAULT NULL,
  `TeacherId` int(11) DEFAULT NULL,
  `WeekCount` int(11) DEFAULT NULL,
  `CcStatus` varchar(10) DEFAULT NULL,
  `CcType` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clco
-- ----------------------------
INSERT INTO `clco` VALUES ('3', '1', '1', '20091', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('4', '1', '1', '20100', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('5', '1', '1', '20101', '0', '3', '未排', '计划内');
INSERT INTO `clco` VALUES ('7', '1', '1', '20110', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('8', '2', '1', '20091', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('17', '2', '1', '20101', '0', '3', '未排', '计划内');
INSERT INTO `clco` VALUES ('19', '2', '1', '20110', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('28', '3', '1', '20110', '8', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('36', '3', '1', '20111', '0', '3', '未排', '计划内');
INSERT INTO `clco` VALUES ('38', '3', '1', '20120', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('37', '3', '2', '20111', '0', '5', '未排', '计划内');
INSERT INTO `clco` VALUES ('29', '3', '4', '20110', '9', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('40', '4', '1', '20110', '8', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('48', '4', '1', '20111', '0', '3', '未排', '计划内');
INSERT INTO `clco` VALUES ('50', '4', '1', '20120', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('49', '4', '2', '20111', '0', '5', '未排', '计划内');
INSERT INTO `clco` VALUES ('41', '4', '4', '20110', '9', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('42', '4', '5', '20110', '10', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('43', '4', '7', '20110', '11', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('44', '4', '8', '20110', '12', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('45', '4', '9', '20110', '12', '1', '已排', '计划内');
INSERT INTO `clco` VALUES ('46', '4', '10', '20110', '13', '1', '已排', '计划内');
INSERT INTO `clco` VALUES ('55', '4', '12', '20110', '1', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('56', '5', '1', '20101', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('57', '5', '1', '20110', '2', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('65', '5', '1', '20111', '0', '3', '未排', '计划内');
INSERT INTO `clco` VALUES ('67', '5', '1', '20120', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('66', '5', '2', '20111', '0', '5', '未排', '计划内');
INSERT INTO `clco` VALUES ('58', '5', '4', '20110', '3', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('59', '5', '5', '20110', '5', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('60', '5', '7', '20110', '6', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('61', '5', '8', '20110', '7', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('62', '5', '9', '20110', '7', '1', '已排', '计划内');
INSERT INTO `clco` VALUES ('63', '5', '10', '20110', '6', '1', '已排', '计划内');
INSERT INTO `clco` VALUES ('64', '5', '12', '20110', '1', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('68', '6', '1', '20101', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('69', '6', '1', '20110', '2', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('77', '6', '1', '20111', '0', '3', '未排', '计划内');
INSERT INTO `clco` VALUES ('79', '6', '1', '20120', '0', '4', '未排', '计划内');
INSERT INTO `clco` VALUES ('78', '6', '2', '20111', '0', '5', '未排', '计划内');
INSERT INTO `clco` VALUES ('70', '6', '4', '20110', '3', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('71', '6', '5', '20110', '4', '4', '已排', '计划内');
INSERT INTO `clco` VALUES ('72', '6', '7', '20110', '5', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('73', '6', '8', '20110', '6', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('74', '6', '9', '20110', '6', '1', '已排', '计划内');
INSERT INTO `clco` VALUES ('75', '6', '10', '20110', '5', '1', '已排', '计划内');
INSERT INTO `clco` VALUES ('76', '6', '12', '20110', '7', '2', '已排', '计划内');
INSERT INTO `clco` VALUES ('80', '7', '1', '20121', '0', '4', '未排', '计划内');

-- ----------------------------
-- Table structure for courseinfotb
-- ----------------------------
DROP TABLE IF EXISTS `courseinfotb`;
CREATE TABLE `courseinfotb` (
  `CInfoId` int(11) DEFAULT NULL,
  `TermId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `TeacherId` int(11) DEFAULT NULL,
  `ClassRoomId` int(11) DEFAULT NULL,
  `Weeks` int(11) DEFAULT NULL,
  `LessonOrders` int(11) DEFAULT NULL,
  `CInfoType` varchar(52) DEFAULT NULL,
  `CreateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseinfotb
-- ----------------------------
INSERT INTO `courseinfotb` VALUES ('397', '20180', '3', '12', '1', '13', '4', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('398', '20180', '3', '12', '1', '13', '2', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('399', '20180', '3', '1', '8', '0', '2', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('400', '20180', '3', '1', '8', '0', '3', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('401', '20180', '3', '1', '8', '0', '1', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('402', '20180', '3', '1', '8', '0', '5', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('403', '20180', '3', '5', '10', '0', '5', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('404', '20180', '3', '5', '10', '0', '3', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('405', '20180', '3', '5', '10', '0', '2', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('406', '20180', '3', '5', '10', '0', '1', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('407', '20180', '3', '7', '11', '0', '5', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('408', '20180', '3', '7', '11', '0', '3', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('409', '20180', '3', '8', '12', '0', '5', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('410', '20180', '3', '8', '12', '0', '4', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('411', '20180', '3', '9', '11', '9', '4', '6', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('412', '20180', '3', '10', '13', '15', '1', '3', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('413', '20180', '3', '4', '9', '0', '3', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('414', '20180', '3', '4', '9', '0', '5', '3', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('415', '20180', '3', '4', '9', '0', '1', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('416', '20180', '3', '4', '9', '0', '2', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('417', '20180', '4', '12', '1', '13', '1', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('418', '20180', '4', '12', '1', '13', '5', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('419', '20180', '4', '1', '8', '0', '4', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('420', '20180', '4', '1', '8', '0', '2', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('421', '20180', '4', '1', '8', '0', '3', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('422', '20180', '4', '1', '8', '0', '1', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('423', '20180', '4', '5', '10', '0', '3', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('424', '20180', '4', '5', '10', '0', '5', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('425', '20180', '4', '5', '10', '0', '1', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('426', '20180', '4', '5', '10', '0', '2', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('427', '20180', '4', '7', '11', '0', '4', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('428', '20180', '4', '7', '11', '0', '3', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('429', '20180', '4', '8', '12', '0', '5', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('430', '20180', '4', '8', '12', '0', '3', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('431', '20180', '4', '9', '12', '11', '3', '6', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('432', '20180', '4', '10', '13', '15', '1', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('433', '20180', '4', '4', '9', '0', '2', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('434', '20180', '4', '4', '9', '0', '1', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('435', '20180', '4', '4', '9', '0', '5', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('436', '20180', '4', '4', '9', '0', '4', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('437', '20180', '5', '12', '1', '12', '1', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('438', '20180', '5', '12', '1', '12', '5', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('439', '20180', '5', '5', '5', '0', '2', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('440', '20180', '5', '5', '5', '0', '1', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('441', '20180', '5', '5', '5', '0', '5', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('442', '20180', '5', '5', '5', '0', '3', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('443', '20180', '5', '1', '2', '0', '4', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('444', '20180', '5', '1', '2', '0', '5', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('445', '20180', '5', '1', '2', '0', '1', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('446', '20180', '5', '1', '2', '0', '3', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('447', '20180', '5', '4', '3', '0', '2', '6', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('448', '20180', '5', '4', '3', '0', '5', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('449', '20180', '5', '4', '3', '0', '4', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('450', '20180', '5', '4', '3', '0', '1', '6', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('451', '20180', '5', '7', '6', '0', '2', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('452', '20180', '5', '7', '6', '0', '3', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('453', '20180', '5', '8', '7', '0', '1', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('454', '20180', '5', '8', '7', '0', '5', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('455', '20180', '5', '9', '7', '9', '4', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('456', '20180', '5', '10', '6', '14', '1', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('457', '20180', '6', '12', '7', '12', '2', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('458', '20180', '6', '12', '7', '12', '3', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('459', '20180', '6', '1', '2', '0', '1', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('460', '20180', '6', '1', '2', '0', '3', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('461', '20180', '6', '1', '2', '0', '4', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('462', '20180', '6', '1', '2', '0', '2', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('463', '20180', '6', '5', '4', '0', '3', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('464', '20180', '6', '5', '4', '0', '1', '1', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('465', '20180', '6', '5', '4', '0', '5', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('466', '20180', '6', '5', '4', '0', '4', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('467', '20180', '6', '7', '5', '0', '3', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('468', '20180', '6', '7', '5', '0', '2', '6', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('469', '20180', '6', '8', '6', '0', '4', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('470', '20180', '6', '8', '6', '0', '2', '3', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('471', '20180', '6', '9', '6', '3', '1', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('472', '20180', '6', '10', '5', '15', '5', '6', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('473', '20180', '6', '4', '3', '0', '4', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('474', '20180', '6', '4', '3', '0', '2', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('475', '20180', '6', '4', '3', '0', '5', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('476', '20180', '6', '4', '3', '0', '1', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('477', '20180', '1', '1', '1', '12', '1', '1', '手工', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('478', '20180', '1', '1', '1', '1', '2', '1', '手工', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('479', '20180', '7', '13', '4', '4', '4', '4', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('480', '20180', '7', '13', '4', '4', '2', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('481', '20180', '7', '11', '4', '2', '5', '5', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('482', '20180', '7', '11', '4', '2', '4', '7', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('483', '20180', '7', '2', '1', '0', '5', '2', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('484', '20180', '7', '2', '1', '0', '2', '3', '自动', '2018-11-23 00:00:00');
INSERT INTO `courseinfotb` VALUES ('485', '20170', '1', '1', '3', '0', '2', '5', '自动', '2020-03-14 21:43:50');
INSERT INTO `courseinfotb` VALUES ('486', '20170', '1', '1', '3', '0', '5', '5', '自动', '2020-03-14 21:43:50');

-- ----------------------------
-- Table structure for coursetb
-- ----------------------------
DROP TABLE IF EXISTS `coursetb`;
CREATE TABLE `coursetb` (
  `CourseId` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(50) DEFAULT NULL,
  `CourseName` varchar(52) DEFAULT NULL,
  `CourseType` int(11) DEFAULT NULL,
  `CourseLesson` int(11) DEFAULT NULL,
  `RoomTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`CourseId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursetb
-- ----------------------------
INSERT INTO `coursetb` VALUES ('1', 'c001', '英语', '2', '55', '1');
INSERT INTO `coursetb` VALUES ('2', 'c002', '历史', '1', '55', '1');
INSERT INTO `coursetb` VALUES ('4', 'c003', '语文', '1', '44', '1');
INSERT INTO `coursetb` VALUES ('5', 'c011', '数学', '2', '25', '1');
INSERT INTO `coursetb` VALUES ('7', 'c004', '化学', '1', '22', '1');
INSERT INTO `coursetb` VALUES ('8', 'c333', '物理', '1', '50', '1');
INSERT INTO `coursetb` VALUES ('9', 's001', '物理实验', '1', '20', '5');
INSERT INTO `coursetb` VALUES ('10', 's002', '化学实验', '1', '20', '6');
INSERT INTO `coursetb` VALUES ('11', 'y001', '音乐', '1', '20', '2');
INSERT INTO `coursetb` VALUES ('12', 'y002', '体育', '3', '20', '3');
INSERT INTO `coursetb` VALUES ('13', 'y003', '计算机', '1', '20', '4');
INSERT INTO `coursetb` VALUES ('14', 'c009', '高数', '2', '66', '1');

-- ----------------------------
-- Table structure for cstemp
-- ----------------------------
DROP TABLE IF EXISTS `cstemp`;
CREATE TABLE `cstemp` (
  `TermId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `CdId` int(11) DEFAULT NULL,
  `CdName` varchar(52) DEFAULT NULL,
  `week1` varchar(156) DEFAULT NULL,
  `week2` varchar(156) DEFAULT NULL,
  `week3` varchar(156) DEFAULT NULL,
  `week4` varchar(156) DEFAULT NULL,
  `week5` varchar(156) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cstemp
-- ----------------------------
INSERT INTO `cstemp` VALUES ('20180', '3', '1', '第一节', '英语,不指定,李003', '英语,不指定,李003', '英语,不指定,李003', '', '数学,不指定,李005');
INSERT INTO `cstemp` VALUES ('20180', '3', '2', '第二节', '', '语文,不指定,李004', '', '', '化学,不指定,李006');
INSERT INTO `cstemp` VALUES ('20180', '3', '3', '第三节', '化学实验,化学实验室2,王102', '', '', '', '语文,不指定,李004');
INSERT INTO `cstemp` VALUES ('20180', '3', '4', '第四节', '', '', '语文,不指定,李004', '', '');
INSERT INTO `cstemp` VALUES ('20180', '3', '5', '第五节', '数学,不指定,李005', '数学,不指定,李005', '数学,不指定,李005', '物理,不指定,王101', '英语,不指定,李003');
INSERT INTO `cstemp` VALUES ('20180', '3', '6', '第六节', '', '', '', '物理实验,wl实验2,李006', '');
INSERT INTO `cstemp` VALUES ('20180', '3', '7', '第七节', '语文,不指定,李004', '体育,操场西,刘旭', '化学,不指定,李006', '体育,操场西,刘旭', '物理,不指定,王101');

-- ----------------------------
-- Table structure for departmenttb
-- ----------------------------
DROP TABLE IF EXISTS `departmenttb`;
CREATE TABLE `departmenttb` (
  `DepartmentId` int(11) DEFAULT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `Describe` varchar(102) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departmenttb
-- ----------------------------

-- ----------------------------
-- Table structure for lookup
-- ----------------------------
DROP TABLE IF EXISTS `lookup`;
CREATE TABLE `lookup` (
  `CdType` int(11) DEFAULT NULL,
  `CdId` int(11) DEFAULT NULL,
  `CdName` varchar(52) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lookup
-- ----------------------------
INSERT INTO `lookup` VALUES ('1', '1', '普通教室');
INSERT INTO `lookup` VALUES ('1', '2', '音乐教室');
INSERT INTO `lookup` VALUES ('1', '3', '体育场地');
INSERT INTO `lookup` VALUES ('1', '4', '计算机机房');
INSERT INTO `lookup` VALUES ('1', '5', '物理实验室');
INSERT INTO `lookup` VALUES ('1', '6', '化学实验室');
INSERT INTO `lookup` VALUES ('2', '1', '第一节');
INSERT INTO `lookup` VALUES ('2', '2', '第二节');
INSERT INTO `lookup` VALUES ('2', '3', '第三节');
INSERT INTO `lookup` VALUES ('2', '4', '第四节');
INSERT INTO `lookup` VALUES ('2', '5', '第五节');
INSERT INTO `lookup` VALUES ('2', '6', '第六节');
INSERT INTO `lookup` VALUES ('2', '7', '第七节');
INSERT INTO `lookup` VALUES ('3', '1', '普通课程');
INSERT INTO `lookup` VALUES ('3', '2', '较难课程');
INSERT INTO `lookup` VALUES ('3', '3', '体育课');
INSERT INTO `lookup` VALUES ('4', '1', '一年级上学期');
INSERT INTO `lookup` VALUES ('4', '2', '一年级下学期');
INSERT INTO `lookup` VALUES ('4', '3', '二年级上学期');
INSERT INTO `lookup` VALUES ('4', '4', '二年级下学期');
INSERT INTO `lookup` VALUES ('4', '5', '三年级上学期');
INSERT INTO `lookup` VALUES ('4', '6', '三年级下学期');

-- ----------------------------
-- Table structure for maco
-- ----------------------------
DROP TABLE IF EXISTS `maco`;
CREATE TABLE `maco` (
  `MajorId` int(11) DEFAULT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `StartTerm` int(11) DEFAULT NULL,
  `EndTerm` int(11) DEFAULT NULL,
  `TermIdStart` int(11) DEFAULT NULL,
  `TermIdEnd` int(11) DEFAULT NULL,
  `WeekCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maco
-- ----------------------------

-- ----------------------------
-- Table structure for majortb
-- ----------------------------
DROP TABLE IF EXISTS `majortb`;
CREATE TABLE `majortb` (
  `MajorId` int(11) DEFAULT NULL,
  `MajorName` varchar(50) DEFAULT NULL,
  `MajorCode` varchar(50) DEFAULT NULL,
  `MajorDescribe` varchar(52) DEFAULT NULL,
  `YearSize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of majortb
-- ----------------------------

-- ----------------------------
-- Table structure for teachertb
-- ----------------------------
DROP TABLE IF EXISTS `teachertb`;
CREATE TABLE `teachertb` (
  `TeacherId` int(11) NOT NULL AUTO_INCREMENT,
  `TeacherCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TeacherName` varchar(50) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `MajorStr` varchar(50) DEFAULT NULL,
  `TeacherTitle` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `Describe` varchar(50) DEFAULT NULL,
  `DeleteFlag` char(1) DEFAULT NULL,
  `birth` varchar(52) DEFAULT NULL,
  PRIMARY KEY (`TeacherId`,`TeacherCode`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachertb
-- ----------------------------
INSERT INTO `teachertb` VALUES ('1', 't001', '刘旭', null, '英语', '中级', null, '男', '111111', '1', '2011-01-10');
INSERT INTO `teachertb` VALUES ('2', 't002', '刘秀', null, '英语', '高级', null, '男', '111111', '1', '2011-01-10');
INSERT INTO `teachertb` VALUES ('3', 't003', '王娜', null, '语文', '中级', null, '女', '111111', '1', '2011-01-26');
INSERT INTO `teachertb` VALUES ('4', 't004', '李四', null, '数学', '高级', null, '女', '111111', '1', '2011-01-04');
INSERT INTO `teachertb` VALUES ('5', 't005', '张哥', null, '数学', '初级', null, '男', '111111', '1', '1990-02-01');
INSERT INTO `teachertb` VALUES ('6', '001', '001', null, '001', '中级', null, '男', '111111', '1', '1984-04-10');
INSERT INTO `teachertb` VALUES ('7', '002', '002', null, '002', '中级', null, '男', '111111', '1', '1984-04-10');
INSERT INTO `teachertb` VALUES ('8', '003', '李003', null, '003', '中级', null, '男', '111111', '1', '1984-04-10');
INSERT INTO `teachertb` VALUES ('9', '004', '李004', null, '004', '中级', null, '男', '111111', '1', '1984-04-10');
INSERT INTO `teachertb` VALUES ('10', '005', '李005', null, '005', '中级', null, '男', '111111', '1', '1984-04-10');
INSERT INTO `teachertb` VALUES ('11', '006', '李006', null, '006', '中级', null, '男', '111111', '1', '1984-04-10');
INSERT INTO `teachertb` VALUES ('12', '101', '王101', null, '101', '高级', null, '男', '111111', '1', '1986-02-04');
INSERT INTO `teachertb` VALUES ('13', '102', '王102', null, '102', '高级', null, '男', '111111', '1', '1986-02-04');
INSERT INTO `teachertb` VALUES ('14', '103', '王103', null, '103', '高级', null, '男', '111111', '1', '1986-02-04');
INSERT INTO `teachertb` VALUES ('15', 't008', '12', null, '英语', '初级', null, '男', '111111', '1', '2018-03-23');
INSERT INTO `teachertb` VALUES ('16', '1212', '1212', null, '1212', '初级', null, '男', null, '1', '2018-04-08');
INSERT INTO `teachertb` VALUES ('17', 't006', '张三', null, '英语', '中级', null, '男', '111111', '1', '1997-01-01');

-- ----------------------------
-- Table structure for term
-- ----------------------------
DROP TABLE IF EXISTS `term`;
CREATE TABLE `term` (
  `TermId` varchar(50) DEFAULT NULL,
  `TermName` varchar(52) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of term
-- ----------------------------
INSERT INTO `term` VALUES ('20140', '2014年上半年');
INSERT INTO `term` VALUES ('20141', '2014年下半年');
INSERT INTO `term` VALUES ('20150', '2015年上半年');
INSERT INTO `term` VALUES ('20151', '2015年下半年');
INSERT INTO `term` VALUES ('20160', '2016年上半年');
INSERT INTO `term` VALUES ('20161', '2016年下半年');
INSERT INTO `term` VALUES ('20170', '2017年上半年');
INSERT INTO `term` VALUES ('20171', '2017年下半年');
INSERT INTO `term` VALUES ('20180', '2018年上半年');
INSERT INTO `term` VALUES ('20181', '2018年下半年');
INSERT INTO `term` VALUES ('20190', '2019年上半年');
INSERT INTO `term` VALUES ('20191', '2019年下半年');
INSERT INTO `term` VALUES ('20200', '2020年上半年');
INSERT INTO `term` VALUES ('20201', '2020年下半年');
INSERT INTO `term` VALUES ('20210', '2021年上半年');
INSERT INTO `term` VALUES ('20211', '2021年下半年');
INSERT INTO `term` VALUES ('20220', '2022年上半年');
INSERT INTO `term` VALUES ('20221', '2022年下半年');
INSERT INTO `term` VALUES ('20230', '2023年上半年');
INSERT INTO `term` VALUES ('20231', '2023年下半年');
INSERT INTO `term` VALUES ('20240', '2024年上半年');
INSERT INTO `term` VALUES ('20241', '2024年下半年');
INSERT INTO `term` VALUES ('20250', '2025年上半年');
INSERT INTO `term` VALUES ('20251', '2025年下半年');
INSERT INTO `term` VALUES ('20260', '2026年上半年');
INSERT INTO `term` VALUES ('20261', '2026年下半年');
INSERT INTO `term` VALUES ('20270', '2027年上半年');
INSERT INTO `term` VALUES ('20271', '2027年下半年');
INSERT INTO `term` VALUES ('20280', '2028年上半年');
INSERT INTO `term` VALUES ('20281', '2028年下半年');
INSERT INTO `term` VALUES ('20290', '2029年上半年');
INSERT INTO `term` VALUES ('20291', '2029年下半年');
INSERT INTO `term` VALUES ('20300', '2030年上半年');
INSERT INTO `term` VALUES ('20301', '2030年下半年');
INSERT INTO `term` VALUES ('20310', '2031年上半年');
INSERT INTO `term` VALUES ('20311', '2031年下半年');
INSERT INTO `term` VALUES ('20320', '2032年上半年');
INSERT INTO `term` VALUES ('20321', '2032年下半年');
INSERT INTO `term` VALUES ('20330', '2033年上半年');
INSERT INTO `term` VALUES ('20331', '2033年下半年');
INSERT INTO `term` VALUES ('20340', '2034年上半年');
INSERT INTO `term` VALUES ('20341', '2034年下半年');
INSERT INTO `term` VALUES ('20350', '2035年上半年');
INSERT INTO `term` VALUES ('20351', '2035年下半年');
INSERT INTO `term` VALUES ('20360', '2036年上半年');
INSERT INTO `term` VALUES ('20361', '2036年下半年');
INSERT INTO `term` VALUES ('20370', '2037年上半年');
INSERT INTO `term` VALUES ('20371', '2037年下半年');
INSERT INTO `term` VALUES ('20380', '2038年上半年');
INSERT INTO `term` VALUES ('20381', '2038年下半年');
INSERT INTO `term` VALUES ('20390', '2039年上半年');
INSERT INTO `term` VALUES ('20391', '2039年下半年');
INSERT INTO `term` VALUES ('20400', '2040年上半年');
INSERT INTO `term` VALUES ('20401', '2040年下半年');
INSERT INTO `term` VALUES ('20410', '2041年上半年');
INSERT INTO `term` VALUES ('20411', '2041年下半年');
INSERT INTO `term` VALUES ('20420', '2042年上半年');
INSERT INTO `term` VALUES ('20421', '2042年下半年');
INSERT INTO `term` VALUES ('20430', '2043年上半年');
INSERT INTO `term` VALUES ('20431', '2043年下半年');
INSERT INTO `term` VALUES ('20440', '2044年上半年');
INSERT INTO `term` VALUES ('20441', '2044年下半年');
INSERT INTO `term` VALUES ('20450', '2045年上半年');
INSERT INTO `term` VALUES ('20451', '2045年下半年');
INSERT INTO `term` VALUES ('20460', '2046年上半年');
INSERT INTO `term` VALUES ('20461', '2046年下半年');
INSERT INTO `term` VALUES ('20470', '2047年上半年');
INSERT INTO `term` VALUES ('20471', '2047年下半年');
INSERT INTO `term` VALUES ('20480', '2048年上半年');
INSERT INTO `term` VALUES ('20481', '2048年下半年');
INSERT INTO `term` VALUES ('20490', '2049年上半年');
INSERT INTO `term` VALUES ('20491', '2049年下半年');
INSERT INTO `term` VALUES ('20500', '2050年上半年');
INSERT INTO `term` VALUES ('20501', '2050年下半年');

-- ----------------------------
-- Table structure for termplan
-- ----------------------------
DROP TABLE IF EXISTS `termplan`;
CREATE TABLE `termplan` (
  `TermPlanId` int(11) DEFAULT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `TermNum` int(11) DEFAULT NULL,
  `WeekCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of termplan
-- ----------------------------
INSERT INTO `termplan` VALUES ('2', '1', '1', '6');
INSERT INTO `termplan` VALUES ('3', '1', '2', '4');
INSERT INTO `termplan` VALUES ('6', '4', '2', '4');
INSERT INTO `termplan` VALUES ('7', '5', '2', '4');
INSERT INTO `termplan` VALUES ('8', '7', '2', '2');
INSERT INTO `termplan` VALUES ('9', '8', '2', '2');
INSERT INTO `termplan` VALUES ('10', '9', '2', '1');
INSERT INTO `termplan` VALUES ('12', '10', '2', '1');
INSERT INTO `termplan` VALUES ('11', '12', '2', '2');
INSERT INTO `termplan` VALUES ('4', '1', '3', '3');
INSERT INTO `termplan` VALUES ('1', '2', '3', '5');
INSERT INTO `termplan` VALUES ('5', '1', '4', '4');

-- ----------------------------
-- Table structure for tstemp
-- ----------------------------
DROP TABLE IF EXISTS `tstemp`;
CREATE TABLE `tstemp` (
  `TermId` int(11) DEFAULT NULL,
  `TeacherId` int(11) DEFAULT NULL,
  `CdId` int(11) DEFAULT NULL,
  `CdName` varchar(52) DEFAULT NULL,
  `week1` varchar(158) DEFAULT NULL,
  `week2` varchar(158) DEFAULT NULL,
  `week3` varchar(158) DEFAULT NULL,
  `week4` varchar(158) DEFAULT NULL,
  `week5` varchar(158) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tstemp
-- ----------------------------
INSERT INTO `tstemp` VALUES ('20180', '2', '1', '第一节', '17级3班,不指定,英语', '', '17级3班,不指定,英语', '17级4班,不指定,英语', '');
INSERT INTO `tstemp` VALUES ('20180', '2', '2', '第二节', '', '', '', '', '');
INSERT INTO `tstemp` VALUES ('20180', '2', '3', '第三节', '', '', '', '', '');
INSERT INTO `tstemp` VALUES ('20180', '2', '4', '第四节', '', '', '', '', '');
INSERT INTO `tstemp` VALUES ('20180', '2', '5', '第五节', '17级4班,不指定,英语', '17级4班,不指定,英语', '17级4班,不指定,英语', '17级3班,不指定,英语', '17级3班,不指定,英语');
INSERT INTO `tstemp` VALUES ('20180', '2', '6', '第六节', '', '', '', '', '');
INSERT INTO `tstemp` VALUES ('20180', '2', '7', '第七节', '', '', '', '', '');

-- ----------------------------
-- Table structure for usertb
-- ----------------------------
DROP TABLE IF EXISTS `usertb`;
CREATE TABLE `usertb` (
  `UserId` int(11) DEFAULT NULL,
  `UserLoginName` varchar(50) DEFAULT NULL,
  `UserPass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `UserType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Beizhu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertb
-- ----------------------------
INSERT INTO `usertb` VALUES ('1', 'admin', 'admin', 'admin', null, '管理员', '教务室', null, null);
INSERT INTO `usertb` VALUES ('2', '1', '1', '1', null, '管理员', '教务室', null, null);
INSERT INTO `usertb` VALUES ('4', '2', '2', '2', null, '普通学生', '学生', null, null);
