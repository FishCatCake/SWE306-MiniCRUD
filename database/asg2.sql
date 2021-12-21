/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : asg2

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 21/12/2021 23:14:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ic_number` varchar(255) NOT NULL,
  `tel_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `last_visit_date` varchar(255) NOT NULL,
  `prescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`,`ic_number`),
  KEY `ic_number` (`ic_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of patient
-- ----------------------------
BEGIN;
INSERT INTO `patient` VALUES (1, 'joe doe', 'AB123', '1333', 'hall', '2021-12-20', 'negative ', 'male');
INSERT INTO `patient` VALUES (2, 'ha haha', 'AA1222', '19999', 'taxi', '2021-12-17', 'negative', 'female');
INSERT INTO `patient` VALUES (3, 'asdasda', 'AA222', '1234', 'adad', '2021-12-20', 'negative ', 'male');
INSERT INTO `patient` VALUES (9, 'joe', 'ha111', '12341', 'asddd', '2021-12-02', 'neg', 'male');
INSERT INTO `patient` VALUES (11, 'John haha', 'AIA111', '99282', 'earth', '2021-12-01', 'good', 'female');
COMMIT;

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ic_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `q1` varchar(255) NOT NULL,
  `q2` varchar(255) NOT NULL,
  `q3` varchar(255) NOT NULL,
  `q4` varchar(255) NOT NULL,
  `q5` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`ic_number`) USING BTREE,
  KEY `questionnaire_ic_number` (`ic_number`),
  CONSTRAINT `questionnaire_ic_number` FOREIGN KEY (`ic_number`) REFERENCES `patient` (`ic_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
BEGIN;
INSERT INTO `questionnaire` VALUES (4, 'AB123', 'Polymerase Chain Reaction Test (PCR)', 'None', 'None', 'No', 'Yes');
INSERT INTO `questionnaire` VALUES (5, 'AB123', 'Polymerase Chain Reaction Test (PCR)', 'None', 'None', 'No', 'Yes');
INSERT INTO `questionnaire` VALUES (6, 'AB123', 'Polymerase Chain Reaction Test (PCR)', 'None', 'None', 'No', 'Yes');
INSERT INTO `questionnaire` VALUES (7, 'AA1222', 'Antigen Rapid Test Kit (RTK)', 'Fully Vaccinated', 'Fever', 'No', 'Yes');
INSERT INTO `questionnaire` VALUES (8, 'ha111', 'Antigen Rapid Test Kit (RTK)', 'Partially Vaccinated', 'Sore throat', 'No', 'Yes');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
