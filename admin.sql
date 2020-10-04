/*
MySQL Data Transfer
Source Host: localhost
Source Database: webdb
Target Host: localhost
Target Database: webdb
Date: 2020/10/4 14:32:16
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(32) DEFAULT NULL,
  `AdminPwd` varchar(64) DEFAULT NULL,
  `AdminType` smallint(6) DEFAULT NULL,
  `LastLoginTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'guo', 'hnzj@183', '1', '2016-01-01');
