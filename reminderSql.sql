/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : remindersql

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 17/02/2022 10:35:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for backlog
-- ----------------------------
DROP TABLE IF EXISTS `backlog`;
CREATE TABLE `backlog`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contents` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `datetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classvalue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `colorbg` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createtime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `done` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backlog
-- ----------------------------
INSERT INTO `backlog` VALUES (1, 'root', '123', '2022-01-31 02:28:22', '#icon-yuandian-copy-copy1', '#2aa515', '2022-02-10 03:32:04', 1);
INSERT INTO `backlog` VALUES (2, 'root', '1234', '2022-01-31 02:28:22', '#icon-yuandian-copy', '#f36372', '2022-02-10 03:33:59', 0);
INSERT INTO `backlog` VALUES (3, 'root', '12345', '2022-01-31 02:28:22', '#icon-yuandian-copy-copy1', '#d81e06', '2022-02-10 03:38:03', 1);
INSERT INTO `backlog` VALUES (4, 'root', '1111', '2022-02-02T16:00:00.000Z', '#icon-yuandian', '#5da7f1', '2022-02-10 04:33:22', 0);
INSERT INTO `backlog` VALUES (7, 'root', 'test', '2022-02-25T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-11 02:20:47', 1);
INSERT INTO `backlog` VALUES (8, 'root', 'test', '2022-02-25T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 03:59:09', 0);
INSERT INTO `backlog` VALUES (11, 'root', 'q', '2022-02-09T16:00:00.000Z', '#icon-yuandian', '#5da7f1', '2022-02-13 04:53:04', 0);
INSERT INTO `backlog` VALUES (12, 'root2', '123', '2022-02-04T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 04:57:32', 0);
INSERT INTO `backlog` VALUES (13, 'root2', 'root2', '2022-02-01T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 17:58:27', 0);
INSERT INTO `backlog` VALUES (15, 'root2', '666', '2022-02-03T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:00:01', 0);
INSERT INTO `backlog` VALUES (16, 'root2', '12', '2022-02-02T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:01:32', 0);
INSERT INTO `backlog` VALUES (17, 'root2', '3', '2022-02-08T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:17:05', 0);
INSERT INTO `backlog` VALUES (18, 'root', '时间', '2022-01-31T18:01:06.000Z', '#icon-yuandian-copy-copy-copy', '#82529d', '2022-02-14 14:58:39', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int(0) NOT NULL DEFAULT 1,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', 'test', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, NULL, '2022-01-31 02:28:22');
INSERT INTO `users` VALUES (2, 'root2', 'test', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, NULL, '2022-01-31 02:29:39');
INSERT INTO `users` VALUES (3, 'root3', 'test1', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, NULL, '2022-02-13 16:35:32');

SET FOREIGN_KEY_CHECKS = 1;
