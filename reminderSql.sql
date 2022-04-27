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

 Date: 28/04/2022 02:45:49
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
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backlog
-- ----------------------------
INSERT INTO `backlog` VALUES (1, 'root', '1', '2022-03-06 11:57', '#icon-life', '#7766E7', '2022-02-10 03:32:04', 0);
INSERT INTO `backlog` VALUES (2, 'root', '1234', '2022-03-06 11:57', '#icon-health', '#1DBD84', '2022-02-10 03:33:59', 0);
INSERT INTO `backlog` VALUES (3, 'root', '12345', '2022-03-05 11:57', '#icon-social', '#518BF1', '2022-02-10 03:38:03', 0);
INSERT INTO `backlog` VALUES (4, 'root', '1111', '2023-01-01 19:50', '#icon-life', '#7766E7', '2022-02-10 04:33:22', 1);
INSERT INTO `backlog` VALUES (7, 'root', 'test', '2022-03-06 21:13', '#icon-work', '#518BF1', '2022-02-11 02:20:47', 1);
INSERT INTO `backlog` VALUES (8, 'root', 'test', '2022-03-06 21:56', '#icon-work', '#518BF1', '2022-02-13 03:59:09', 1);
INSERT INTO `backlog` VALUES (11, 'root', 'q', '2023-01-03 22:37', '#icon-life', '#7766E7', '2022-02-13 04:53:04', 0);
INSERT INTO `backlog` VALUES (12, 'root2', '123', '2022-01-31 02:28', '#icon-work', '#518BF1', '2022-02-13 04:57:32', 0);
INSERT INTO `backlog` VALUES (13, 'root2', 'root2', '2022-02-22 22:37', '#icon-work', '#518BF1', '2022-02-13 17:58:27', 0);
INSERT INTO `backlog` VALUES (15, 'root2', '666', '2022-02-22 22:37', '#icon-work', '#518BF1', '2022-02-13 18:00:01', 0);
INSERT INTO `backlog` VALUES (16, 'root2', '12', '2022-02-23 22:37', '#icon-work', '#518BF1', '2022-02-13 18:01:32', 0);
INSERT INTO `backlog` VALUES (17, 'root2', '3', '2022-03-22 22:37', '#icon-work', '#518BF1', '2022-02-13 18:17:05', 0);
INSERT INTO `backlog` VALUES (29, 'root', '234234', '2022-03-05 11:57', '#icon-social', '#FE738A', '2022-02-20 20:08:34', 1);
INSERT INTO `backlog` VALUES (30, 'root', '324234', '2022-03-06 21:13', '#icon-study', '#FFCD00', '2022-02-20 20:08:40', 0);
INSERT INTO `backlog` VALUES (31, 'root', '1', '2022-03-06 21:14', '#icon-life', '#7766E7', '2022-02-20 20:16:59', 0);
INSERT INTO `backlog` VALUES (33, 'root', '测试', '2022-04-03 12:30', '#icon-life', '#7766E7', '2022-02-21 16:52:23', 0);
INSERT INTO `backlog` VALUES (34, 'root', '测试2', '2022-06-01 19:50', '#icon-life', '#7766E7', '2022-02-21 16:52:31', 1);
INSERT INTO `backlog` VALUES (35, 'root', '测试3', '2022-07-03 16:52', '#icon-life', '#7766E7', '2022-02-21 16:52:39', 0);
INSERT INTO `backlog` VALUES (36, 'root', '测试4', '2022-03-06 21:56', '#icon-work', '#518BF1', '2022-02-21 16:52:51', 1);
INSERT INTO `backlog` VALUES (37, 'root', 'test', '2022-03-15 21:14', '#icon-study', '#FFCD00', '2022-02-22 22:33:42', 1);
INSERT INTO `backlog` VALUES (39, 'root', '乌克兰', '2022-03-03 21:14', '#icon-health', '#1DBD84', '2022-02-25 23:31:06', 1);
INSERT INTO `backlog` VALUES (40, 'root', '打乌克兰', '2022-12-03 00:00', '#icon-life', '#7766E7', '2022-02-25 23:31:22', 1);
INSERT INTO `backlog` VALUES (41, 'root', '111', '2022-03-06 11:57', '#icon-health', '#1DBD84', '2022-02-26 00:21:26', 0);
INSERT INTO `backlog` VALUES (42, 'root', '2131232423', '2022-03-04 20:54', '#icon-health', '#1DBD84', '2022-02-26 16:53:55', 1);
INSERT INTO `backlog` VALUES (43, 'root', '1', '2022-03-07 11:57', '#icon-life', '#7766E7', '2022-03-01 14:05:40', 0);
INSERT INTO `backlog` VALUES (44, 'root', '1', '2022-03-05 11:57', '#icon-life', '#7766E7', '2022-03-02 20:46:39', 1);
INSERT INTO `backlog` VALUES (47, 'root', '阿达', '2022-07-14 00:00', '#icon-life', '#7766E7', '2022-03-03 21:18:44', 0);
INSERT INTO `backlog` VALUES (48, 'root', '324', '2022-03-03 21:19', '#icon-other', '#C4C4C4', '2022-03-03 21:19:31', 0);
INSERT INTO `backlog` VALUES (49, 'root', '2342342', '2022-03-03 21:19', '#icon-other', '#C4C4C4', '2022-03-03 21:19:38', 0);
INSERT INTO `backlog` VALUES (50, 'root', '123', '2022-03-04 00:00', '#icon-health', '#1DBD84', '2022-03-04 16:25:47', 0);
INSERT INTO `backlog` VALUES (51, 'root3', '12', '2022-03-07 16:09', '#icon-work', '#518BF1', '2022-03-07 16:09:04', 1);
INSERT INTO `backlog` VALUES (52, 'root3', '31', '2022-03-07 00:00', '#icon-life', '#7766E7', '2022-03-07 16:41:01', 0);
INSERT INTO `backlog` VALUES (53, 'root3', '5', '2022-03-08 15:06', '#icon-life', '#7766E7', '2022-03-07 21:04:36', 0);
INSERT INTO `backlog` VALUES (54, 'root3', '123', '2022-03-08 15:06', '#icon-life', '#7766E7', '2022-03-08 14:49:25', 0);
INSERT INTO `backlog` VALUES (55, 'root', '4234', '2022-03-17 20:04', '#icon-life', '#7766E7', '2022-03-17 20:04:19', 0);
INSERT INTO `backlog` VALUES (56, 'root', '4234', '2022-03-17 20:26', '#icon-life', '#7766E7', '2022-03-17 20:26:04', 0);
INSERT INTO `backlog` VALUES (57, 'root', '123', '2022-04-27 01:20', '#icon-work', '#518BF1', '2022-04-01 19:25:57', 1);
INSERT INTO `backlog` VALUES (58, 'root', '456665', '2022-04-01 19:26', '#icon-study', '#FFCD00', '2022-04-01 19:26:06', 0);
INSERT INTO `backlog` VALUES (59, 'root', '讨厌她', '2022-04-01 19:26', '#icon-life', '#7766E7', '2022-04-01 19:26:22', 0);
INSERT INTO `backlog` VALUES (60, 'root', 'iioip', '2022-04-01 19:26', '#icon-social', '#FE738A', '2022-04-01 19:26:35', 0);
INSERT INTO `backlog` VALUES (61, 'root', '132465487979797', '2022-04-01 19:26', '#icon-life', '#7766E7', '2022-04-01 19:26:52', 0);
INSERT INTO `backlog` VALUES (62, 'root', '21654653fughjkl', '2022-04-01 19:27', '#icon-life', '#7766E7', '2022-04-01 19:27:01', 0);
INSERT INTO `backlog` VALUES (63, 'root', '风格和健康', '2022-04-01 19:27', '#icon-health', '#1DBD84', '2022-04-01 19:27:14', 0);
INSERT INTO `backlog` VALUES (65, 'root', '你还是我问他测试测试测试测试测试测试测试测试测试测试测试测试', '2022-04-01 21:18', '#icon-life', '#7766E7', '2022-04-01 21:18:26', 0);
INSERT INTO `backlog` VALUES (66, 'root', 'test', '2022-04-01 22:20', '#icon-work', '#518BF1', '2022-04-01 22:20:50', 0);
INSERT INTO `backlog` VALUES (67, 'root', 'testtest', '2022-04-01 22:24', '#icon-study', '#FFCD00', '2022-04-01 22:24:54', 0);
INSERT INTO `backlog` VALUES (68, 'root', 'test', '2022-04-02 01:20', '#icon-life', '#7766E7', '2022-04-02 01:20:03', 0);
INSERT INTO `backlog` VALUES (69, 'root', 'asdasdasdda好我爱上大拉手打了会打击是不打算不单单', '2022-04-02 01:20', '#icon-life', '#7766E7', '2022-04-02 01:20:20', 0);
INSERT INTO `backlog` VALUES (70, 'root', 'tezst', '2022-04-02 01:26', '#icon-life', '#7766E7', '2022-04-02 01:26:25', 0);
INSERT INTO `backlog` VALUES (71, 'root', 'test', '2022-04-27 01:20', '#icon-life', '#7766E7', '2022-04-27 01:20:26', 1);
INSERT INTO `backlog` VALUES (72, 'root', 'test', '2022-04-28 01:42', '#icon-work', '#518BF1', '2022-04-28 01:42:47', 0);
INSERT INTO `backlog` VALUES (74, 'root', '钱213', '2022-04-28 01:43', '#icon-study', '#FFCD00', '2022-04-28 01:43:26', 1);
INSERT INTO `backlog` VALUES (75, 'root', '是对方是否', '2022-04-28 01:47', '#icon-life', '#5da7f1', '2022-04-28 01:47:31', 0);
INSERT INTO `backlog` VALUES (76, 'root', '234234', '2022-04-28 01:47', '#icon-life', '#5da7f1', '2022-04-28 01:47:43', 0);
INSERT INTO `backlog` VALUES (77, 'root', '阿萨达4', '2022-04-28 01:47', '#icon-other', '#C4C4C4', '2022-04-28 01:47:54', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clock
-- ----------------------------
INSERT INTO `clock` VALUES (10, 'root', '学习', '21', '2022-03-01');
INSERT INTO `clock` VALUES (11, 'root3', '1', '7', '2022-03-08');

-- ----------------------------
-- Table structure for clock_user
-- ----------------------------
DROP TABLE IF EXISTS `clock_user`;
CREATE TABLE `clock_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `donedatetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clock_user
-- ----------------------------
INSERT INTO `clock_user` VALUES (36, 'root', '2022-03-02');
INSERT INTO `clock_user` VALUES (41, 'root', '2022-03-01');
INSERT INTO `clock_user` VALUES (52, 'root', '2022-03-03');
INSERT INTO `clock_user` VALUES (55, 'root', '2022-03-04');
INSERT INTO `clock_user` VALUES (56, 'root', '2022-03-05');
INSERT INTO `clock_user` VALUES (57, 'root', '2022-03-06');
INSERT INTO `clock_user` VALUES (58, 'root3', '2022-03-08');
INSERT INTO `clock_user` VALUES (60, 'root', '2022-03-08');
INSERT INTO `clock_user` VALUES (64, 'root', '2022-03-12');
INSERT INTO `clock_user` VALUES (65, 'root', '2022-03-17');
INSERT INTO `clock_user` VALUES (67, 'root', '2022-03-20');
INSERT INTO `clock_user` VALUES (69, 'root', '2022-04-01');
INSERT INTO `clock_user` VALUES (70, 'root', '2022-04-09');
INSERT INTO `clock_user` VALUES (71, 'root', '2022-04-27');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updatetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `photourl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, 'root', '123', '<p>1231231</p>', NULL, NULL);
INSERT INTO `feedback` VALUES (2, 'root', '123', '<p>123123<img src=\"http://localhost:5001/public/uploadeditor/6082142832aec6d1f505c1aad8a8e0b8\"></p>', '2022-03-13 12:23:01', NULL);
INSERT INTO `feedback` VALUES (3, 'root', '123', '<p>1231<img src=\"http://localhost:5001/public/uploadeditor/1eb7481e2fb1d27e24ace6e94054976c\"></p>', '2022-03-13 12:25:48', NULL);
INSERT INTO `feedback` VALUES (4, 'root', '123', '<p>1231<img src=\"http://localhost:5001/public/uploadeditor/1eb7481e2fb1d27e24ace6e94054976c\"></p>', '2022-03-13 12:29:25', NULL);
INSERT INTO `feedback` VALUES (5, 'root', '123', '<p>1231<img src=\"http://localhost:5001/public/uploadeditor/d2dc62eaa72d485242d21193a27c7c55\"></p>', '2022-03-13 12:29:39', NULL);
INSERT INTO `feedback` VALUES (6, 'root', '123', '<p>123<img src=\"http://localhost:5001/public/uploadeditor/3bb74917d947ae7ea53c376945bd4c8f\"></p>', '2022-03-13 12:30:22', NULL);
INSERT INTO `feedback` VALUES (7, 'root', 'title', '<p>123<img src=\"http://localhost:5001/public/uploadeditor/12f0fb0709f50e643097e64117e48032\"></p>', '2022-03-29 19:21:11', NULL);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `datetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '【通知】', '消息功能已上线~~~', '2022-03-12');
INSERT INTO `message` VALUES (2, '【官方】', '测试测试', '2022-03-12');

-- ----------------------------
-- Table structure for user_message
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `message_id` int(0) NULL DEFAULT NULL,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isread` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_message
-- ----------------------------
INSERT INTO `user_message` VALUES (1, 1, 'root', 1);
INSERT INTO `user_message` VALUES (2, 2, 'root', 0);
INSERT INTO `user_message` VALUES (3, 1, 'root16', 0);
INSERT INTO `user_message` VALUES (4, 2, 'root16', 0);

-- ----------------------------
-- Table structure for user_position
-- ----------------------------
DROP TABLE IF EXISTS `user_position`;
CREATE TABLE `user_position`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `district` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `street` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `latitude` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `longitude` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_position
-- ----------------------------

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
  `sex` int(0) NULL DEFAULT 0,
  `introduction` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', '你吃晚饭了吗', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '15207054150', 'http://localhost:5001/public/upload/dfc9a38f2a750c351d1ca2ba6ca84d25', 'weijiecode@163.com', '2022-01-31 02:28:22', 1, '好好学习，天天向上');
INSERT INTO `users` VALUES (2, 'root2', '我吃晚饭', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '1253669654', 'http://localhost:5001/public/upload/3586c28132b111b4a6bc381fb320b689', 'weqw4242@qq.com', '2022-01-31 02:29:39', 0, 'good good studay');
INSERT INTO `users` VALUES (3, 'root3', '测试测试', 'b9a44f06013c2cb37e18a7458b66e83c', 1, NULL, 'http://localhost:5001/public/upload/3d4d1923b85a575d10efe84b1a522592', '245619254@qq.com', '2022-02-13 16:35:32', 0, NULL);
INSERT INTO `users` VALUES (4, 'root4', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '19970591880', 'http://localhost:5001/public/upload/fafaaa73bfe97a6e30281dd86b39c3cd', NULL, '2022-03-10 21:25:08', 0, NULL);
INSERT INTO `users` VALUES (5, 'root5', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/7822c4a626fcc6f7bd2efc60b9ea3041', NULL, '2022-03-10 21:27:26', 1, NULL);
INSERT INTO `users` VALUES (6, 'root6', '121', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', '@undefined', '2022-03-10 21:28:47', 0, NULL);
INSERT INTO `users` VALUES (7, 'root7', '424', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', NULL, '2022-03-10 21:29:45', 1, NULL);
INSERT INTO `users` VALUES (8, 'root8', '123123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '15932802279', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', '245619254@qq.com', '2022-03-17 01:41:05', 0, '123');
INSERT INTO `users` VALUES (9, 'root9', '142', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', 'http://localhost:5001/public/upload/792b99fb57c908cf187845b5473de08d', NULL, '2022-03-17 01:43:25', 1, NULL);
INSERT INTO `users` VALUES (11, 'root10', '你好啊', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '12314567899', 'http://localhost:5001/public/upload/833916c1d0b7675c8a0e592a4c7094ed', '245619254@qq.com', '2022-03-17 01:44:09', 1, 'testtes');
INSERT INTO `users` VALUES (12, 'root11', '3123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 01:58:41', 1, NULL);
INSERT INTO `users` VALUES (13, 'root12', '4434', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:03:34', 1, NULL);
INSERT INTO `users` VALUES (14, 'root13', '4234', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:04:27', 1, NULL);
INSERT INTO `users` VALUES (15, 'root14', '12312', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:06:27', 1, NULL);
INSERT INTO `users` VALUES (16, 'root15', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:07:01', 1, NULL);
INSERT INTO `users` VALUES (17, 'root16', '5524', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-17 02:08:45', 1, NULL);
INSERT INTO `users` VALUES (18, 'root20', '123', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-23 10:54:46', 1, NULL);
INSERT INTO `users` VALUES (19, 'root21', 'ceshi测试', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '12345678900', NULL, NULL, '2022-03-23 11:01:29', 0, NULL);
INSERT INTO `users` VALUES (20, 'root22', '234', 'b9a44f06013c2cb37e18a7458b66e83c', 1, '', NULL, NULL, '2022-03-23 11:04:54', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
