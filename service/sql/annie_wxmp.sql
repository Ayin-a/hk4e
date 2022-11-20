/*
 Navicat Premium Data Transfer

 Source Server         : MySQL-Dev
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 192.168.199.131:3306
 Source Schema         : annie_wxmp

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 25/05/2022 00:39:11
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fw_death_info
-- ----------------------------
DROP TABLE IF EXISTS `fw_death_info`;
CREATE TABLE `fw_death_info`
(
    `fdid`      bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `fw_alive`  tinyint(1) NULL DEFAULT NULL,
    `fw_cancel` tinyint(1) NULL DEFAULT NULL,
    `fw_info`   varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
    PRIMARY KEY (`fdid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fw_death_info
-- ----------------------------
INSERT INTO `fw_death_info`
VALUES (1, 1, 0, '你好');

-- ----------------------------
-- Table structure for fw_death_notify_user
-- ----------------------------
DROP TABLE IF EXISTS `fw_death_notify_user`;
CREATE TABLE `fw_death_notify_user`
(
    `dnuid`      bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `wx_open_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
    `email`      varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
    PRIMARY KEY (`dnuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fw_death_notify_user
-- ----------------------------
INSERT INTO `fw_death_notify_user`
VALUES (1, 'oAuwFwB2-uoEeDQDUdleUbH5jAlI', '1782360262@qq.com');

SET
FOREIGN_KEY_CHECKS = 1;
