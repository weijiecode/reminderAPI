/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : reminderSql

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 11/02/2022 01:26:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for backlog
-- ----------------------------
DROP TABLE IF EXISTS `backlog`;
CREATE TABLE `backlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) NOT NULL,
  `contents` varchar(30) NOT NULL,
  `datetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class` int NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of backlog
-- ----------------------------
BEGIN;
INSERT INTO `backlog` VALUES (1, 'root', '123', '2022-01-31 02:28:22', 1, '2022-02-10 03:32:04');
INSERT INTO `backlog` VALUES (2, 'root', '1234', '2022-01-31 02:28:22', 1, '2022-02-10 03:33:59');
INSERT INTO `backlog` VALUES (3, 'root', '12345', '2022-01-31 02:28:22', 1, '2022-02-10 03:38:03');
INSERT INTO `backlog` VALUES (4, 'root', '1111', '2022-02-02T16:00:00.000Z', 2, '2022-02-10 04:33:22');
INSERT INTO `backlog` VALUES (5, 'root', '2222', '2022-02-01T16:00:00.000Z', 1, '2022-02-10 04:34:47');
INSERT INTO `backlog` VALUES (6, 'root', '111', '2022-01-31T16:00:00.000Z', 2, '2022-02-10 14:20:43');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'root', 'test', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, NULL, '2022-01-31 02:28:22');
INSERT INTO `users` VALUES (2, 'root2', 'test', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, NULL, '2022-01-31 02:29:39');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
