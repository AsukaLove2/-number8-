
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ktv_employees
-- ----------------------------
DROP TABLE IF EXISTS `ktv_employees`;
CREATE TABLE `ktv_employees`  (
  `ID` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Age` int NOT NULL,
  `Phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `In_time` datetime NOT NULL,
  `Out_time` datetime NULL DEFAULT NULL,
  `IdentifyNumbs` int NOT NULL,
  `Salary` int NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktv_employees
-- ----------------------------
INSERT INTO `ktv_employees` VALUES (1, 'QQ', 23, '123456', 'XXX', '2020-02-25 00:00:00', NULL, 111111111, 3000);
INSERT INTO `ktv_employees` VALUES (2, 'WW', 21, '123321', 'XXXC', '2020-03-22 00:00:00', NULL, 222222222, 3400);
INSERT INTO `ktv_employees` VALUES (3, 'EE', 19, '558975', 'SSWQ', '2019-04-23 00:00:00', NULL, 333333333, 3100);
INSERT INTO `ktv_employees` VALUES (4, 'RR', 24, '558935', 'WSQS', '2018-08-22 00:00:00', '2021-04-22 00:00:00', 444444444, 4500);
INSERT INTO `ktv_employees` VALUES (5, 'TT', 30, '259752', 'SQWE', '2017-06-21 00:00:00', '2022-05-21 00:00:00', 555555555, 5300);

-- ----------------------------
-- Table structure for ktv_salary
-- ----------------------------
DROP TABLE IF EXISTS `ktv_salary`;
CREATE TABLE `ktv_salary`  (
  `ID` int NOT NULL,
  `BaseSalary` int NOT NULL,
  `BS_Get_Time` datetime NOT NULL,
  `YearsSalary` int NOT NULL,
  `Get_YearsSalary_state` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktv_salary
-- ----------------------------
INSERT INTO `ktv_salary` VALUES (1, 3000, '2022-03-25 00:00:00', 2000, 'Y');
INSERT INTO `ktv_salary` VALUES (2, 3400, '2022-02-22 00:00:00', 2000, 'Y');
INSERT INTO `ktv_salary` VALUES (3, 3100, '2020-03-12 00:00:00', 1300, 'Y');
INSERT INTO `ktv_salary` VALUES (4, 4500, '2020-04-15 00:00:00', 3000, 'N');
INSERT INTO `ktv_salary` VALUES (1, 3000, '2022-04-25 00:00:00', 3000, 'Y');

-- ----------------------------
-- Table structure for ktv_user_costorpay
-- ----------------------------
DROP TABLE IF EXISTS `ktv_user_costorpay`;
CREATE TABLE `ktv_user_costorpay`  (
  `ID` int NOT NULL,
  `COST_Time` datetime NULL DEFAULT NULL,
  `COST` int NULL DEFAULT NULL,
  `Pay_Time` datetime NULL DEFAULT NULL,
  `Pay` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktv_user_costorpay
-- ----------------------------
INSERT INTO `ktv_user_costorpay` VALUES (1, '2021-02-22 00:00:00', 1000, NULL, NULL);
INSERT INTO `ktv_user_costorpay` VALUES (1, '2022-03-12 00:00:00', 1202, '2022-03-12 00:00:00', 3000);
INSERT INTO `ktv_user_costorpay` VALUES (2, '2021-01-22 00:00:00', 500, NULL, NULL);
INSERT INTO `ktv_user_costorpay` VALUES (2, '2021-02-10 00:00:00', 600, '2021-02-10 00:00:00', 2000);

-- ----------------------------
-- Table structure for ktv_useraccount
-- ----------------------------
DROP TABLE IF EXISTS `ktv_useraccount`;
CREATE TABLE `ktv_useraccount`  (
  `Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Account` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Signup_time` datetime NOT NULL,
  `State` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Moneys` int NULL DEFAULT NULL,
  PRIMARY KEY (`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktv_useraccount
-- ----------------------------
INSERT INTO `ktv_useraccount` VALUES ('AA', '123456789', '123456', '2022-02-12 00:00:00', 'Green', 201);
INSERT INTO `ktv_useraccount` VALUES ('BB', '123654978', '123456', '2022-05-11 00:00:00', 'Green', 2000);
INSERT INTO `ktv_useraccount` VALUES ('CC', '524568566', '123456', '2022-03-11 00:00:00', 'Green', 1210);

-- ----------------------------
-- Table structure for ktv_users
-- ----------------------------
DROP TABLE IF EXISTS `ktv_users`;
CREATE TABLE `ktv_users`  (
  `ID` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Age` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Signup_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktv_users
-- ----------------------------
INSERT INTO `ktv_users` VALUES (1, 'AA', '20', 'Nom', '123456789', '2022-02-10 00:00:00');
INSERT INTO `ktv_users` VALUES (2, 'BB', '23', 'Nom', '123654978', '2022-03-14 00:00:00');
INSERT INTO `ktv_users` VALUES (3, 'CC', '35', 'Nom', '524568566', '2022-04-25 00:00:00');
INSERT INTO `ktv_users` VALUES (4, 'DD', '36', 'VIP', '5789426626', '2022-05-22 00:00:00');
INSERT INTO `ktv_users` VALUES (5, 'FF', '32', 'VIP', '2165423168', '2022-01-22 00:00:00');

-- ----------------------------
-- Table structure for ktv_viplist
-- ----------------------------
DROP TABLE IF EXISTS `ktv_viplist`;
CREATE TABLE `ktv_viplist`  (
  `ID` int NOT NULL,
  `Signup_time` datetime NOT NULL,
  `Level` int NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktv_viplist
-- ----------------------------
INSERT INTO `ktv_viplist` VALUES (4, '2022-03-15 00:00:00', 2);
INSERT INTO `ktv_viplist` VALUES (5, '2022-06-11 00:00:00', 3);

-- ----------------------------
-- View structure for user_money
-- ----------------------------
DROP VIEW IF EXISTS `user_money`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `user_money` AS select `ktv_useraccount`.`Name` AS `Name`,`ktv_useraccount`.`Moneys` AS `Moneys` from `ktv_useraccount`;

SET FOREIGN_KEY_CHECKS = 1;
