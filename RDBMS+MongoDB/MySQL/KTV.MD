-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema KTV
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema KTV
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `KTV` DEFAULT CHARACTER SET utf8 ;#使用UTF8编码
USE `KTV` ;

-- -----------------------------------------------------
-- Table `KTV`.`KTV_USERS`#创建用户表
-- -----------------------------------------------------
DROP TABLE IF EXISTS `KTV`.`KTV_USERS` ;

CREATE TABLE IF NOT EXISTS `KTV`.`KTV_USERS` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Age` VARCHAR(45) NOT NULL,
  `Type` VARCHAR(45) NOT NULL,#用户身份类型
  `Phone` VARCHAR(45) NOT NULL,
  `Signup_time` DATETIME NULL,#用户注册时间
PRIMARY KEY (`Name`) USING BTREE)#Name为主键
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `KTV`.`KTV_VIPlist`#创建VIP名单表
-- -----------------------------------------------------
DROP TABLE IF EXISTS `KTV`.`KTV_VIPlist` ;

CREATE TABLE IF NOT EXISTS `KTV`.`KTV_VIPlist` (
  `ID` INT NOT NULL,
  `Signup_time` DATETIME NOT NULL,#注册时间
  `Level` INT NOT NULL,#VIP等级
PRIMARY KEY (`ID`) USING BTREE)#ID为主键
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `KTV`.`KTV_USERAccount`#创建用户账户信息
-- -----------------------------------------------------
DROP TABLE IF EXISTS `KTV`.`KTV_USERAccount` ;

CREATE TABLE IF NOT EXISTS `KTV`.`KTV_USERAccount` (
  `Name` VARCHAR(45) NOT NULL,
  `Account` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Signup_time` DATETIME NOT NULL,#注册时间
  `State` VARCHAR(45) NOT NULL,#账号状态
  `Moneys` INT NULL,#余额
PRIMARY KEY (`Name`) USING BTREE)Name为主键
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `KTV`.`KTV_employees`#创建员工表
-- -----------------------------------------------------
DROP TABLE IF EXISTS `KTV`.`KTV_employees` ;

CREATE TABLE IF NOT EXISTS `KTV`.`KTV_employees` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Age` INT NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `In_time` DATETIME NOT NULL,#入职时间
  `Out_time` DATETIME NULL,#离职时间
  `IdentifyNumbs` INT NOT NULL,#身份证号
  `Salary` INT NOT NULL,#薪水
PRIMARY KEY (`ID`) USING BTREE)#ID为主键
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `KTV`.`KTV_Salary`#创建KTV工资信息表，此表数据可重复，用于记账
-- -----------------------------------------------------
DROP TABLE IF EXISTS `KTV`.`KTV_Salary` ;

CREATE TABLE IF NOT EXISTS `KTV`.`KTV_Salary` (
  `ID` INT NOT NULL,
  `BaseSalary` INT NOT NULL,#基础工资
  `BS_Get_Time` DATETIME NOT NULL,#发放时间
  `YearsSalary` INT NOT NULL,#年终奖
  `Get_YearsSalary_state` VARCHAR(45) NOT NULL)#是否拿到年终奖
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `KTV`.`KTV_USER_COSTorPay`#创建用户消费信息表，用于统计用户消费情况，数据可重复
-- -----------------------------------------------------
DROP TABLE IF EXISTS `KTV`.`KTV_USER_COSTorPay` ;

CREATE TABLE IF NOT EXISTS `KTV`.`KTV_USER_COSTorPay` (
  `ID` INT NOT NULL,
  `COST_Time` DATETIME NULL,#消费时间
  `COST` INT NULL,#消费金额
  `Pay_Time` DATETIME NULL,#充值时间
  `Pay` INT NULL)#充值金额
ENGINE = InnoDB;

USE `KTV` ;

-- -----------------------------------------------------
-- Placeholder table for view `KTV`.`USER_Money`#创建用户-余额视图，用于方便用户查询自身余额
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `KTV`.`USER_Money` (`Name` INT, `Moneys` INT);

-- -----------------------------------------------------
-- View `KTV`.`USER_Money`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `KTV`.`USER_Money`;
DROP VIEW IF EXISTS `KTV`.`USER_Money` ;
USE `KTV`;
CREATE  OR REPLACE VIEW `USER_Money` AS
select KTV_USERAccount.Name,KTV_USERAccount.Moneys from KTV_USERAccount;

-- -----------------------------------------------------
-- Data for table `KTV`.`KTV_USERS`
-- -----------------------------------------------------
START TRANSACTION;
USE `KTV`;
INSERT INTO `KTV`.`KTV_USERS` (`ID`, `Name`, `Age`, `Type`, `Phone`, `Signup_time`) VALUES (00001, 'AA', '20', 'Nom', '123456789', '2022.02.10');
INSERT INTO `KTV`.`KTV_USERS` (`ID`, `Name`, `Age`, `Type`, `Phone`, `Signup_time`) VALUES (00002, 'BB', '23', 'Nom', '123654978', '2022.03.14');
INSERT INTO `KTV`.`KTV_USERS` (`ID`, `Name`, `Age`, `Type`, `Phone`, `Signup_time`) VALUES (00003, 'CC', '35', 'Nom', '524568566', '2022.04.25');
INSERT INTO `KTV`.`KTV_USERS` (`ID`, `Name`, `Age`, `Type`, `Phone`, `Signup_time`) VALUES (00004, 'DD', '36', 'VIP', '5789426626', '2022.05.22');
INSERT INTO `KTV`.`KTV_USERS` (`ID`, `Name`, `Age`, `Type`, `Phone`, `Signup_time`) VALUES (00005, 'FF', '32', 'VIP', '2165423168', '2022.01.22');

COMMIT;


-- -----------------------------------------------------
-- Data for table `KTV`.`KTV_VIPlist`
-- -----------------------------------------------------
START TRANSACTION;
USE `KTV`;
INSERT INTO `KTV`.`KTV_VIPlist` (`ID`, `Signup_time`, `Level`) VALUES (00004, '2022.03.15', 2);
INSERT INTO `KTV`.`KTV_VIPlist` (`ID`, `Signup_time`, `Level`) VALUES (00005, '2022.06.11', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `KTV`.`KTV_USERAccount`
-- -----------------------------------------------------
START TRANSACTION;
USE `KTV`;
INSERT INTO `KTV`.`KTV_USERAccount` (`Name`, `Account`, `Password`, `Signup_time`, `State`, `Moneys`) VALUES ('AA', '123456789', '123456', '2022.02.12', 'Green', 201);
INSERT INTO `KTV`.`KTV_USERAccount` (`Name`, `Account`, `Password`, `Signup_time`, `State`, `Moneys`) VALUES ('BB', '123654978', '123456', '2022.05.11', 'Green', 2000);
INSERT INTO `KTV`.`KTV_USERAccount` (`Name`, `Account`, `Password`, `Signup_time`, `State`, `Moneys`) VALUES ('CC', '524568566', '123456', '2022.03.11', 'Green', 1210);

COMMIT;


-- -----------------------------------------------------
-- Data for table `KTV`.`KTV_employees`
-- -----------------------------------------------------
START TRANSACTION;
USE `KTV`;
INSERT INTO `KTV`.`KTV_employees` (`ID`, `Name`, `Age`, `Phone`, `Address`, `In_time`, `Out_time`, `IdentifyNumbs`, `Salary`) VALUES (0001, 'QQ', 23, '123456', 'XXX', '2020.02.25', NULL, 111111111, 3000);
INSERT INTO `KTV`.`KTV_employees` (`ID`, `Name`, `Age`, `Phone`, `Address`, `In_time`, `Out_time`, `IdentifyNumbs`, `Salary`) VALUES (0002, 'WW', 21, '123321', 'XXXC', '2020.03.22', NULL, 222222222, 3400);
INSERT INTO `KTV`.`KTV_employees` (`ID`, `Name`, `Age`, `Phone`, `Address`, `In_time`, `Out_time`, `IdentifyNumbs`, `Salary`) VALUES (0003, 'EE', 19, '558975', 'SSWQ', '2019.04.23', NULL, 333333333, 3100);
INSERT INTO `KTV`.`KTV_employees` (`ID`, `Name`, `Age`, `Phone`, `Address`, `In_time`, `Out_time`, `IdentifyNumbs`, `Salary`) VALUES (0004, 'RR', 24, '558935', 'WSQS', '2018.08.22', '2021.04.22', 444444444, 4500);
INSERT INTO `KTV`.`KTV_employees` (`ID`, `Name`, `Age`, `Phone`, `Address`, `In_time`, `Out_time`, `IdentifyNumbs`, `Salary`) VALUES (0005, 'TT', 30, '259752', 'SQWE', '2017.06.21', '2022.05.21', 555555555, 5300);

COMMIT;


-- -----------------------------------------------------
-- Data for table `KTV`.`KTV_Salary`
-- -----------------------------------------------------
START TRANSACTION;
USE `KTV`;
INSERT INTO `KTV`.`KTV_Salary` (`ID`, `BaseSalary`, `BS_Get_Time`, `YearsSalary`, `Get_YearsSalary_state`) VALUES (0001, 3000, '2022.03.25', 2000, 'Y');
INSERT INTO `KTV`.`KTV_Salary` (`ID`, `BaseSalary`, `BS_Get_Time`, `YearsSalary`, `Get_YearsSalary_state`) VALUES (0002, 3400, '2022.02.22', 2000, 'Y');
INSERT INTO `KTV`.`KTV_Salary` (`ID`, `BaseSalary`, `BS_Get_Time`, `YearsSalary`, `Get_YearsSalary_state`) VALUES (0003, 3100, '2020.03.12', 1300, 'Y');
INSERT INTO `KTV`.`KTV_Salary` (`ID`, `BaseSalary`, `BS_Get_Time`, `YearsSalary`, `Get_YearsSalary_state`) VALUES (0004, 4500, '2020.04.15', 3000, 'N');
INSERT INTO `KTV`.`KTV_Salary` (`ID`, `BaseSalary`, `BS_Get_Time`, `YearsSalary`, `Get_YearsSalary_state`) VALUES (0001, 3000, '2022.04.25', 3000, 'Y');

COMMIT;


-- -----------------------------------------------------
-- Data for table `KTV`.`KTV_USER_COSTorPay`
-- -----------------------------------------------------
START TRANSACTION;
USE `KTV`;
INSERT INTO `KTV`.`KTV_USER_COSTorPay` (`ID`, `COST_Time`, `COST`, `Pay_Time`, `Pay`) VALUES (00001, '2021.02.22', 1000, NULL, NULL);
INSERT INTO `KTV`.`KTV_USER_COSTorPay` (`ID`, `COST_Time`, `COST`, `Pay_Time`, `Pay`) VALUES (00001, '2022.03.12', 1202, '2022.03.12', 3000);
INSERT INTO `KTV`.`KTV_USER_COSTorPay` (`ID`, `COST_Time`, `COST`, `Pay_Time`, `Pay`) VALUES (00002, '2021.01.22', 500, NULL, NULL);
INSERT INTO `KTV`.`KTV_USER_COSTorPay` (`ID`, `COST_Time`, `COST`, `Pay_Time`, `Pay`) VALUES (00002, '2021.02.10', 600, '2021.02.10', 2000);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
