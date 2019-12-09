/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : m1platform

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-11-29 21:17:54
*/

SET FOREIGN_KEY_CHECKS=0;

DROP Database IF EXISTS `m1platform`;

CREATE DATABASE m1platform default charset utf8 COLLATE utf8_general_ci;

use m1platform;
-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL,
  `AccountId` varchar(255) BINARY NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`RoleId`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rolename
-- ----------------------------
DROP TABLE IF EXISTS `rolename`;
CREATE TABLE `rolename` (
  `Name` varchar(255) NOT NULL,
  `ZoneId`	int(11) Not NULL default 0,
  `AccountId` varchar(255) BINARY NOT NULL,
  PRIMARY KEY (`Name`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;