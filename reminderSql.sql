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

 Date: 01/03/2022 14:10:48
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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backlog
-- ----------------------------
INSERT INTO `backlog` VALUES (1, 'root', '123', '2022-01-31 02:28', '#icon-yuandian-copy-copy1', '#2aa515', '2022-02-10 03:32:04', 1);
INSERT INTO `backlog` VALUES (2, 'root', '1234', '2022-02-27 22:37', '#icon-yuandian-copy', '#f36372', '2022-02-10 03:33:59', 1);
INSERT INTO `backlog` VALUES (3, 'root', '12345', '2022-01-31 02:28', '#icon-yuandian-copy-copy1', '#d81e06', '2022-02-10 03:38:03', 1);
INSERT INTO `backlog` VALUES (4, 'root', '1111', '2022-02-24 13:25', '#icon-yuandian-copy', '#f36372', '2022-02-10 04:33:22', 0);
INSERT INTO `backlog` VALUES (7, 'root', 'test', '2022-01-31 02:28', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-11 02:20:47', 1);
INSERT INTO `backlog` VALUES (8, 'root', 'test', '2022-02-26 12:29', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 03:59:09', 1);
INSERT INTO `backlog` VALUES (11, 'root', 'q', '2022-02-28 22:37', '#icon-yuandian', '#5da7f1', '2022-02-13 04:53:04', 0);
INSERT INTO `backlog` VALUES (12, 'root2', '123', '2022-01-31 02:28', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 04:57:32', 0);
INSERT INTO `backlog` VALUES (13, 'root2', 'root2', '2022-02-22 22:37', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 17:58:27', 0);
INSERT INTO `backlog` VALUES (15, 'root2', '666', '2022-02-22 22:37', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:00:01', 0);
INSERT INTO `backlog` VALUES (16, 'root2', '12', '2022-02-23 22:37', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:01:32', 0);
INSERT INTO `backlog` VALUES (17, 'root2', '3', '2022-03-22 22:37', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-13 18:17:05', 0);
INSERT INTO `backlog` VALUES (29, 'root', '234234', '2022-02-26 12:29', '#icon-yuandian-copy-copy1', '#2aa515', '2022-02-20 20:08:34', 1);
INSERT INTO `backlog` VALUES (30, 'root', '324234', '2022-02-20 20:08', '#icon-yuandian', '#5da7f1', '2022-02-20 20:08:40', 1);
INSERT INTO `backlog` VALUES (31, 'root', 'test', '2022-02-20 20:16', '#icon-yuandian-copy', '#f36372', '2022-02-20 20:16:59', 1);
INSERT INTO `backlog` VALUES (32, 'root', 'test', '2022-02-26 12:29', '#icon-yuandian', '#5da7f1', '2022-02-21 16:52:14', 0);
INSERT INTO `backlog` VALUES (33, 'root', '测试', '2022-02-26 12:30', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-21 16:52:23', 1);
INSERT INTO `backlog` VALUES (34, 'root', '测试2', '2022-02-27 16:52', '#icon-yuandian-copy', '#f36372', '2022-02-21 16:52:31', 0);
INSERT INTO `backlog` VALUES (35, 'root', '测试3', '2022-02-21 16:52', '#icon-yuandian-copy-copy1', '#2aa515', '2022-02-21 16:52:39', 1);
INSERT INTO `backlog` VALUES (36, 'root', '测试4', '2022-02-21 16:52', '#icon-yuandian-copy-copy', '#d81e06', '2022-02-21 16:52:51', 1);
INSERT INTO `backlog` VALUES (37, 'root', 'test', '2022-02-22 22:33', '#icon-yuandian-copy-copy-copy', '#82529d', '2022-02-22 22:33:42', 1);
INSERT INTO `backlog` VALUES (39, 'root', '乌克兰', '2022-02-25 00:00', '#icon-yuandian', '#5da7f1', '2022-02-25 23:31:06', 1);
INSERT INTO `backlog` VALUES (40, 'root', '打乌克兰', '2022-02-26 00:00', '#icon-yuandian', '#5da7f1', '2022-02-25 23:31:22', 1);
INSERT INTO `backlog` VALUES (41, 'root', '111', '2022-02-26 12:29', '#icon-yuandian', '#5da7f1', '2022-02-26 00:21:26', 0);
INSERT INTO `backlog` VALUES (42, 'root', '2131232423', '2022-02-26 16:53', '#icon-yuandian', '#5da7f1', '2022-02-26 16:53:55', 0);
INSERT INTO `backlog` VALUES (43, 'root', '123', '2022-03-01 14:05', '#icon-yuandian-copy-copy-copy', '#82529d', '2022-03-01 14:05:40', 1);

-- ----------------------------
-- Table structure for clock
-- ----------------------------
DROP TABLE IF EXISTS `clock`;
CREATE TABLE `clock`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `daytype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `startdatetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clock
-- ----------------------------
INSERT INTO `clock` VALUES (10, 'root', '学习', '7', '2022-03-01');

-- ----------------------------
-- Table structure for clock_user
-- ----------------------------
DROP TABLE IF EXISTS `clock_user`;
CREATE TABLE `clock_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `donedatetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clock_user
-- ----------------------------
INSERT INTO `clock_user` VALUES (36, 'root', '2022-03-02');
INSERT INTO `clock_user` VALUES (40, 'root', '2022-03-01');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', '你吃晚饭了吗？', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '15207054150', 'http://localhost:5001/public/upload/a0b04d065c62a6ba6af4299cb655fb91', 'weijiecode@163.com', '2022-01-31 02:28:22', 0, '好好学习，天天向上！');
INSERT INTO `users` VALUES (2, 'root2', '我吃晚饭', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '1253669654', NULL, 'weqw4242@qq.com', '2022-01-31 02:29:39', 0, 'good good studay');
INSERT INTO `users` VALUES (3, 'root3', 'test1', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, NULL, NULL, '2022-02-13 16:35:32', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
