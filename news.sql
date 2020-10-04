/*
MySQL Data Transfer
Source Host: localhost
Source Database: webdb
Target Host: localhost
Target Database: webdb
Date: 2020/10/4 14:09:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for news
-- ----------------------------
CREATE TABLE `news` (
  `NewsID` int(11) NOT NULL AUTO_INCREMENT,
  `NewsTitle` varchar(60) DEFAULT NULL,
  `NewsContent` longtext,
  `NewsTime` varchar(50) DEFAULT NULL,
  `AdminName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`NewsID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `news` VALUES ('1', '新闻标题', '新闻内容', '2016-01-01', '管理员');
INSERT INTO `news` VALUES ('2', '标题2', '内容', '2016-02-01', '主管');
