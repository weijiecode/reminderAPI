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

 Date: 22/02/2022 23:43:49
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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backlog
-- ----------------------------
INSERT INTO `backlog` VALUES (1, 'root', '123', '2022-01-31 02:28:22', '#icon-yuandian-copy-copy1', '#2aa515', '2022-02-10 03:32:04', 1);
INSERT INTO `backlog` VALUES (2, 'root', '1234', '2022-02-22 22:37', '#icon-yuandian-copy', '#f36372', '2022-02-10 03:33:59', 0);
INSERT INTO `backlog` VALUES (3, 'root', '12345', '2022-01-31 02:28:22', '#icon-yuandian-copy-copy1', '#d81e06', '2022-02-10 03:38:03', 1);
INSERT INTO `backlog` VALUES (4, 'root', '1111', '2022-02-02T16:00:00.000Z', '#icon-yuandian', '#5da7f1', '2022-02-10 04:33:22', 0);
INSERT INTO `backlog` VALUES (7, 'root', 'test', '2022-02-25T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-11 02:20:47', 1);
INSERT INTO `backlog` VALUES (8, 'root', 'test', '2022-02-25T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 03:59:09', 0);
INSERT INTO `backlog` VALUES (11, 'root', 'q', '2022-02-22 22:37', '#icon-yuandian', '#5da7f1', '2022-02-13 04:53:04', 0);
INSERT INTO `backlog` VALUES (12, 'root2', '123', '2022-02-04T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 04:57:32', 0);
INSERT INTO `backlog` VALUES (13, 'root2', 'root2', '2022-02-01T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 17:58:27', 0);
INSERT INTO `backlog` VALUES (15, 'root2', '666', '2022-02-03T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:00:01', 0);
INSERT INTO `backlog` VALUES (16, 'root2', '12', '2022-02-02T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:01:32', 0);
INSERT INTO `backlog` VALUES (17, 'root2', '3', '2022-02-08T16:00:00.000Z', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:17:05', 0);
INSERT INTO `backlog` VALUES (29, 'root', '234234', '2022-02-20 20:08', '#icon-yuandian-copy-copy1', '#2aa515', '2022-02-20 20:08:34', 0);
INSERT INTO `backlog` VALUES (30, 'root', '324234', '2022-02-20 20:08', '#icon-yuandian', '#5da7f1', '2022-02-20 20:08:40', 1);
INSERT INTO `backlog` VALUES (31, 'root', 'test', '2022-02-20 20:16', '#icon-yuandian-copy', '#f36372', '2022-02-20 20:16:59', 1);
INSERT INTO `backlog` VALUES (32, 'root', 'test', '2022-02-21 16:52', '#icon-yuandian', '#5da7f1', '2022-02-21 16:52:14', 0);
INSERT INTO `backlog` VALUES (33, 'root', '测试', '2022-02-21 16:52', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-21 16:52:23', 0);
INSERT INTO `backlog` VALUES (34, 'root', '测试2', '2022-02-21 16:52', '#icon-yuandian-copy', '#f36372', '2022-02-21 16:52:31', 0);
INSERT INTO `backlog` VALUES (35, 'root', '测试3', '2022-02-21 16:52', '#icon-yuandian-copy-copy1', '#2aa515', '2022-02-21 16:52:39', 1);
INSERT INTO `backlog` VALUES (36, 'root', '测试4', '2022-02-21 16:52', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-21 16:52:51', 1);
INSERT INTO `backlog` VALUES (37, 'root', 'test', '2022-02-22 22:33', '#icon-yuandian-copy-copy-copy', '#82529d', '2022-02-22 22:33:42', 1);

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
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NOT NULL,
  `sex` int(0) NULL DEFAULT 1,
  `introduction` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', '你吃晚饭了吗', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '15207054150', NULL, 'weijiecode@163.com', '2022-01-31 02:28:22', 1, '好好学习，天天向上！');
INSERT INTO `users` VALUES (2, 'root2', '我吃晚饭', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '1253669654', NULL, 'weqw4242@qq.com', '2022-01-31 02:29:39', 0, 'good good studay');
INSERT INTO `users` VALUES (3, 'root3', 'test1', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, NULL, NULL, '2022-02-13 16:35:32', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
