/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : book_db

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-24 00:00:07
*/

DROP DATABASE IF EXISTS BOOK_DB;
CREATE DATABASE BOOK_DB   DEFAULT CHARSET=utf8;

USE BOOK_DB;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
  username varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  PRIMARY KEY (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO admin VALUES ('cyz', 'cyz');

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS t_book;
CREATE TABLE t_book (
  barcode varchar(200) NOT NULL COMMENT '国际标准书号ISBN',
  bookName varchar(200) NOT NULL COMMENT '图书名称',
  bookType int(11) DEFAULT NULL COMMENT '图书类别',
  price float NOT NULL COMMENT '出版价格',
  count int(11) DEFAULT NULL COMMENT '库存量',
  publish varchar(200) NOT NULL COMMENT '出版社',
  publishDate varchar(100) DEFAULT NULL COMMENT '出版日期',
  photoBook varchar(500) DEFAULT NULL COMMENT '图书图片',
  buyDate varchar(100) DEFAULT NULL COMMENT '购买日期',
  buyPrice float DEFAULT NULL COMMENT '购买价格',
  createdDate datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库日期',
  purChannel varchar(100) DEFAULT '当当网' COMMENT '购买渠道',
  discount float DEFAULT NULL COMMENT '折扣',
  author varchar(100) DEFAULT NULL COMMENT '作者',
  remark varchar(500) DEFAULT NULL,
  PRIMARY KEY (barcode),
  KEY FKCB4C8FF42CA4B7B0 (bookType),
  CONSTRAINT FKCB4C8FF42CA4B7B0 FOREIGN KEY (bookType) REFERENCES t_booktype (bookTypeId),
  CONSTRAINT FKcfht1lg6djffxrt3jtjoc4o9h FOREIGN KEY (bookType) REFERENCES t_booktype (bookTypeId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO t_book VALUES ('ISBN9787040223422', '投资学', '2', '29', '1', '高等教育出版社', '2007-11-01', 'upload/1534f9a1-ae12-4410-879d-096411063485.jpg', '2010-11-29', '26.1', '2016-12-21 01:19:17', '当当网', null, '金德环 ', null);
INSERT INTO t_book VALUES ('ISBN9787111284055', '彼得.林奇教你理财', '2', '36', '1', '机械工业出版社', '2010-01-01', 'upload/1a0e01c1-9bf9-43b9-8f33-ab4ee251c75a.jpg', '2015-02-06', '24.7', '2016-12-20 23:24:32', '当当网', null, '（美）林奇，（美）罗瑟查尔德', null);
INSERT INTO t_book VALUES ('ISBN9787111302490', '彼得.林奇的成功投资（珍藏版）', '2', '38', '1', '机械工业出版社', '2010-04-01', 'upload/d46e4bd6-8455-4d20-843b-1cceaf089261.jpg', '2015-02-06', '27', '2016-12-20 23:19:52', '当当网', null, '（美）林奇，（美）罗瑟查尔德', null);
INSERT INTO t_book VALUES ('ISBN9787111302506', '江恩华尔街45年（珍藏版）', '2', '36', '1', '机械工业出版社', '2010-04-01', 'upload/0a8aeece-91f4-49ef-a58e-39f05467414f.jpg', '2014-11-01', '23', '2016-12-21 00:49:17', '当当网', null, '（美）江恩　', null);
INSERT INTO t_book VALUES ('ISBN9787111302520', '战胜华尔街（珍藏版）', '2', '48', '1', '机械工业出版社', '2010-04-01', 'upload/e6cafaef-1b72-4b04-8847-3c4915002730.jpg', '2016-02-06', '34.1', '2016-12-20 23:22:22', '当当网', null, '（美）林奇，（美）罗瑟查尔德　', null);
INSERT INTO t_book VALUES ('ISBN9787111306290', '股市心理博弈（原书第2版）（珍藏版）', '2', '58', '1', '机械工业出版社', '2010-06-01', 'upload/b8772ef1-551b-47ee-8db0-6fbc0bda476a.jpg', '2014-11-09', '39.6', '2016-12-21 00:37:07', '当当网', null, '（美）约翰·迈吉 ', null);
INSERT INTO t_book VALUES ('ISBN9787111310167', '艾略特波浪理论：市场行为的关键（二十周年纪念版）', '2', '38', '1', '机械工业出版社', '2010-08-01', 'upload/644f5d5a-b7e6-4a28-a359-8f5bb11dceef.jpg', '2014-11-01', '21.8', '2016-12-21 00:53:02', '当当网', null, '（美）普莱切特，（美）弗罗斯特', null);
INSERT INTO t_book VALUES ('ISBN9787111373216', '打开量化投资的黑箱', '2', '45', '1', '机械工业出版社', '2012-03-01', 'upload/cd608cf9-8e78-41d6-9f7f-7668404819de.jpg', '2014-12-12', '33', '2016-12-21 00:08:13', '当当网', null, '（美）纳兰　', null);
INSERT INTO t_book VALUES ('ISBN9787111436737', '利用Python进行数据分析', '1', '89', '1', '机械工业出版社', '2014-01-01', 'upload/9c358233-158c-456d-ae50-a1d1b3773643.jpg', '2016-12-22', '53.4', '2016-12-23 23:36:37', '当当网', null, '（美）麦金尼', null);
INSERT INTO t_book VALUES ('ISBN9787111439561', '以交易为生II：卖出的艺术', '2', '55', '1', '机械工业出版社', '2013-10-01', 'upload/fb1e4511-5408-44cc-87ea-70ae3d7624ee.jpg', '2015-06-04', '35.3', '2016-12-20 23:02:04', '当当网', null, '（美）亚历山大.埃尔德 （Alexander Elder）', null);
INSERT INTO t_book VALUES ('ISBN9787111465676', '证券混沌操作法', '2', '49', '1', '机械工业出版社', '2014-05-01', 'upload/15c0f765-d5f7-4fe4-8cba-69812cff0e9f.jpg', '2014-11-09', '36.5', '2016-12-21 00:26:16', '当当网', null, '（美）威廉斯，（美）格雷戈里–威廉斯', null);
INSERT INTO t_book VALUES ('ISBN9787115234957', '聪明的投资者', '2', '88', '1', '人民邮电出版社', '2010-08-01', 'upload/aae2a8f0-9ef3-4543-a573-c649427256bb.jpg', '2014-11-01', '49.6', '2016-12-21 00:47:20', '当当网', null, '（美）格雷厄姆', null);
INSERT INTO t_book VALUES ('ISBN9787115289094', '别怕，Excel VBA其实很简单', '1', '49', '1', '人民邮电出版社', '2012-10-01', 'upload/aeefc52e-a6d5-44c1-b4c5-60ff982918ab.jpg', '2014-11-09', '29.4', '2016-12-21 00:35:18', '当当网', null, 'Excel Home ', null);
INSERT INTO t_book VALUES ('ISBN9787115292360', '股票大作手操盘术——融合时间和价格的利弗莫尔准则', '2', '35', '1', '人民邮电出版社', '2012-10-01', 'upload/4bd4b117-2403-414d-bde7-fea111cd09bf.jpg', '2014-11-09', '21', '2016-12-21 00:28:19', '当当网', null, '[美]杰西·利弗莫尔(Jesse Livermore)', null);
INSERT INTO t_book VALUES ('ISBN9787115296894', 'Excel VBA实战技巧精粹（修订版）', '1', '69', '1', '人民邮电出版社', '2013-01-01', 'upload/ad85d53c-74da-4ddc-bd1c-97d83f816c71.jpg', '2014-11-09', '33.8', '2016-12-21 00:33:24', '当当网', null, 'Excel Home', null);
INSERT INTO t_book VALUES ('ISBN9787115335234', 'Excel 2010函数与公式实战技巧精粹', '1', '69', '1', '人民邮电出版社', '2014-01-01', 'upload/c461f1bc-503b-462d-b643-991c0d516472.jpg', '2014-11-11', '58.7', '2016-12-21 00:21:41', '当当网', null, 'Excel Home', null);
INSERT INTO t_book VALUES ('ISBN9787115335418', 'Excel 2010数据处理与分析实战技巧精粹', '1', '69', '1', '人民邮电出版社', '2013-12-24', 'upload/0d357dbe-1d83-431a-a9e5-c7a1ed5b5160.jpg', '2014-11-11', '51.3', '2016-12-21 00:14:02', '当当网', null, 'Excel Home ', null);
INSERT INTO t_book VALUES ('ISBN9787115335722', 'Excel 2010图表实战技巧精粹', '1', '69', '1', '人民邮电出版社', '2013-12-23', 'upload/ec5a4f03-1f31-4906-9f7c-6ea64507bd54.jpg', '2014-11-11', '33.8', '2016-12-21 00:15:43', '当当网', null, 'Excel Home ', null);
INSERT INTO t_book VALUES ('ISBN9787115414779', 'Python核心编程 (第3版)', '1', '99', '1', '人民邮电出版社', '2016-05-30', 'upload/7100ffa5-c9d9-4429-81b3-8aa2efead1ae.jpg', '2016-11-11', '48.5', '2016-12-19 23:54:09', '当当网', null, '[美]卫斯理 春（Wesley Chun）', null);
INSERT INTO t_book VALUES ('ISBN9787115416292', 'Python网络数据采集', '1', '59', '1', '人民邮电出版社', '2016-03-21', 'upload/b00ea1e6-4c62-4d53-973f-4fc4f533dfae.jpg', '2016-05-02', '50.2', '2016-12-19 23:56:45', '当当网', null, '[美] 米切尔（Ryan Mitchell）', null);
INSERT INTO t_book VALUES ('ISBN9787115417305', 'Spring实战（第4版）', '1', '89', '1', '人民邮电出版社', '2016-04-01', 'upload/f9424991-2829-4331-8d53-2eb303e9251a.jpg', '2016-12-12', '43.6', '2016-12-19 23:58:32', '当当网', null, '[美] 沃尔斯 (Craig Walls)', null);
INSERT INTO t_book VALUES ('ISBN9787115431790', '用Python写网络爬虫', '1', '45', '1', '人民邮电出版社', '2016-08-01', 'upload/15899871-17b3-4844-9cb5-8b66c6c71e76.jpg', '2016-11-11', '22.1', '2016-12-20 00:00:08', '当当网', null, '[澳] 理查德 劳森（Richard Lawson）', null);
INSERT INTO t_book VALUES ('ISBN9787121127526', '交易心理分析', '2', '58', '1', '电子工业出版社', '2011-03-01', 'upload/cf9fdd52-cda5-4199-8650-73b03349d413.jpg', '2014-11-01', '31.3', '2016-12-21 00:51:23', '当当网', null, '（美）马克?道格拉斯　', null);
INSERT INTO t_book VALUES ('ISBN9787121179631', '问道量化投资-用MATLAB来敲门', '2', '59', '1', '电子工业出版社', '2012-09-01', 'upload/2ed3a905-5431-44bf-99fa-96ef72c6981c.jpg', '2012-09-01', '35.4', '2016-12-20 23:51:28', '当当网', null, '金斯伯格', null);
INSERT INTO t_book VALUES ('ISBN9787121240621', '量化投资——策略与技术（典藏版）', '2', '118', '1', '电子工业出版社', '2014-09-01', 'upload/241248b7-1b36-45f6-98c1-9d24cbdd785a.jpg', '2014-12-12', '70.8', '2016-12-21 00:10:08', '当当网', null, '丁鹏', null);
INSERT INTO t_book VALUES ('ISBN9787121259265', '量化投资：数据挖掘技术与实践（MATLAB版）', '2', '88', '1', '电子工业出版社', '2015-05-01', 'upload/b231193b-9e39-47f7-8fb4-e9f6ac88b29d.jpg', '2015-09-28', '78.3', '2016-12-20 22:51:26', '当当网', null, '卓金武 周英 ', null);
INSERT INTO t_book VALUES ('ISBN9787160010595', 'Python基础教程(第2版修订版', '1', '79', '1', '人民邮电出版社', '2014-04-01', 'upload/800b6f62-d9cb-4012-b003-554e0ecc0c22.jpg', '2016-12-12', '43.7', '2016-12-20 00:04:18', '当当网', null, '[挪] 海特兰德', null);
INSERT INTO t_book VALUES ('ISBN9787203074755', '趋势投资50年', '2', '39.8', '1', '山西人民出版社发行部', '2012-06-01', 'upload/5f3b03f1-cf3b-41ad-9ebc-227867ab6d6f.jpg', '2014-12-12', '27.3', '2016-12-21 00:06:34', '当当网', null, '[挪威]拉斯 特维德 ', null);
INSERT INTO t_book VALUES ('ISBN9787203075165', '外汇日内交易与波段交易', '2', '49.8', '1', '山西人民出版社发行部', '2012-05-01', 'upload/df86a4c1-aed2-417f-973d-e3437b2e8964.jpg', '2015-01-30', '32.6', '2016-12-20 23:40:36', '当当网', null, '[美国]（美）莲恩', null);
INSERT INTO t_book VALUES ('ISBN9787300079530', '西方经济学（微观部分）第四版', '2', '28', '1', '中国人民大学出版社', '2007-03-01', 'upload/c42b8573-46b7-48ee-86e9-6bde53a12ba7.jpg', '2010-11-25', '21.8', '2016-12-21 01:24:56', '当当网', null, '高鸿业', null);
INSERT INTO t_book VALUES ('ISBN9787300079547', '西方经济学 第四版（宏观部分）', '2', '28', '1', '中国人民大学出版社', '2007-03-01', 'upload/af9b385a-ea81-4370-b630-9dc3b9d12ef9.jpg', '2010-11-25', '21.8', '2016-12-21 01:23:05', '当当网', null, '高鸿业 ', null);
INSERT INTO t_book VALUES ('ISBN9787300104713', '宏观经济学（第六版）', '2', '69', '1', '中国人民大学出版社', '2009-05-01', 'upload/6833e7c6-05b7-440a-b51c-06b16e341e92.jpg', '2010-11-29', '48.3', '2016-12-21 01:20:54', '当当网', null, '（美）曼昆', null);
INSERT INTO t_book VALUES ('ISBN9787300173429', '证券分析第6版（平装上、下）', '2', '129.9', '1', '中国人民大学出版社', '2014-11-11', 'upload/88283f98-1f42-4ebc-a645-e0d2be8767a2.jpg', '2014-11-11', '63.7', '2016-12-21 00:19:47', '当当网', null, '[美]本杰明·格雷厄姆（Benjamin Graham），戴维多德（David L. Dodd', null);
INSERT INTO t_book VALUES ('ISBN9787301222249', '税法 2013年注册会计师考试应试指导及全真模拟测试', '3', '48', '1', '北京大学出版社', '2013-04-01', 'upload/30080011-2fac-4ca2-b873-1c1f3ce744fd.jpg', '2013-06-06', '28.1', '2016-12-21 01:09:09', '当当网', null, '刘颖 ', null);
INSERT INTO t_book VALUES ('ISBN9787301222256', '公司战略与风险管理 2013年注册会计师考试应试指导及全真模拟测试', '3', '36', '1', '北京大学出版社', '2013-04-01', 'upload/c58a82a2-3be8-47fd-a83c-c5529a2a6d53.jpg', '2013-06-04', '21.6', '2016-12-21 01:10:55', '当当网', null, '田明', null);
INSERT INTO t_book VALUES ('ISBN9787301222263', '2013年注册会计师考试应试指导及全真模拟测试财务成本管理', '3', '52', '1', '北京大学出版社', '2013-04-01', 'upload/3a6cb347-6eaf-427a-8f0c-48524596698b.jpg', '2013-06-04', '26', '2016-12-21 01:07:20', '当当网', null, '闫华红', null);
INSERT INTO t_book VALUES ('ISBN9787301222270', '2013年注册会计师考试应试指导及全真模拟测试', '3', '52', '1', '北京大学出版社', '2013-04-01', 'upload/dd4842ea-7e59-413f-ae72-7fe1a53d9711.jpg', '2013-06-04', '26', '2016-12-21 01:05:33', '当当网', null, '张志凤', null);
INSERT INTO t_book VALUES ('ISBN9787301222287', '轻松过关3-税法 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/031214f8-63c1-4153-9c2e-ab646e6f569c.jpg', '2013-06-04', '9', '2016-12-21 01:15:12', '当当网', null, '葛艳军', null);
INSERT INTO t_book VALUES ('ISBN9787301222317', '轻松过关3-财务成本管理 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/3bb55785-9640-4ea1-ad86-4fb30610ba1f.jpg', '2013-06-04', '9', '2016-12-21 01:13:49', '当当网', null, '孙明菲，窦丽娟', null);
INSERT INTO t_book VALUES ('ISBN9787301222324', '轻松过关3-会计 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/60a4a6ac-9aa9-4d55-a9f1-ed1bb8fb5df2.jpg', '2013-06-04', '7.5', '2016-12-21 01:12:24', '当当网', null, '佟志强 ', null);
INSERT INTO t_book VALUES ('ISBN9787301222331', '轻松过关3-公司战略与风险管理 2013年注册会计师考试考点荟萃及记忆锦囊', '3', '15', '1', '北京大学出版社', '2013-04-01', 'upload/64d5978b-d25f-4240-abc6-5eedb67e7b07.jpg', '2013-06-04', '9', '2016-12-21 01:16:29', '当当网', null, '王婷婷', null);
INSERT INTO t_book VALUES ('ISBN9787301255858', '2015年注册会计师考试应试指导及全真模拟测试 财务成本管理', '3', '52', '1', '北京大学出版社', '2015-03-01', 'upload/10327804-cd28-4ef0-920a-705c52c7f9eb.jpg', '2015-06-04', '31.2', '2016-12-20 23:08:52', '当当网', null, '闫华红', null);
INSERT INTO t_book VALUES ('ISBN9787301255865', '2015年注册会计师考试应试指导及全真模拟测试 公司战略与风险管理 ', '3', '40', '1', '北京大学出版社', '2015-03-01', 'upload/c1c7c2ae-33cb-4efb-9e7f-32c55b061b20.jpg', '2015-06-04', '24', '2016-12-20 23:10:27', '当当网', null, '田明', null);
INSERT INTO t_book VALUES ('ISBN9787301255889', '2015年注册会计师考试应试指导及全真模拟测试 经济法', '3', '48', '1', '北京大学出版社', '2015-03-01', 'upload/e1f2c4a2-39f8-4dc4-ba97-759c1de1f82c.jpg', '2015-06-04', '28.8', '2016-12-20 23:06:45', '当当网', null, '郭守杰', null);
INSERT INTO t_book VALUES ('ISBN9787301255902', '2015年注册会计师考试应试指导及全真模拟测试 税法', '3', '49', '1', '北京大学出版社', '2015-03-01', 'upload/cd8597aa-09ed-45bf-8cbd-166476bdbd15.jpg', '2015-06-04', '29.4', '2016-12-20 23:11:58', '当当网', null, '刘颖', null);
INSERT INTO t_book VALUES ('ISBN9787301269732', '2016注册会计师考试轻松过关1应试指导及全真模拟测试 财务成本管理', '3', '54', '1', '北京大学出版社', '2016-03-31', 'upload/860e67af-d4ef-4aa0-8506-cb87e791d961.jpg', '2016-06-09', '27', '2016-12-19 23:40:24', '当当网', null, '闫华红', null);
INSERT INTO t_book VALUES ('ISBN9787301269893', '2016注册会计师考试轻松过关1应试指导及全真模拟测试 税法', '3', '50', '1', '北京大学出版社', '2016-03-31', 'upload/1a047f23-c907-4e86-baa4-ed0f4c392a32.jpg', '2016-06-08', '25', '2016-12-19 21:39:52', '当当网', null, '刘颖', null);
INSERT INTO t_book VALUES ('ISBN9787301269923', '2016注册会计师考试轻松过关1应试指导及全真模拟测试 公司战略与风险管理', '3', '42', '1', '北京大学出版社', '2016-03-31', 'upload/74cbd1ff-15b9-4cf0-b21b-20bfbfef1409.jpg', '2016-06-09', '21', '2016-12-19 21:57:19', '当当网', null, '田明', null);
INSERT INTO t_book VALUES ('ISBN9787501790159', '金融怪杰：对话华尔街的传奇交易员', '2', '36', '1', '中国经济出版社', '2012-07-01', 'upload/8c52707b-d2a5-49c4-b840-ab5ca2698d17.jpg', '2014-11-09', '17.4', '2016-12-21 00:31:29', '当当网', null, '（美）杰克施瓦格（Jack D.Schwager）', null);
INSERT INTO t_book VALUES ('ISBN9787502840617', '怎样选择成长股（第二版）', '2', '48', '1', '地震出版社', '2013-01-01', 'upload/c0b27250-ab23-45bd-ad82-0bc7911d27cb.jpg', '2015-01-29', '30', '2016-12-20 23:27:15', '当当网', null, '[美国]（美）费舍', null);
INSERT INTO t_book VALUES ('ISBN9787508633800', '投资最重要的事', '2', '58', '1', '中信出版社', '2012-07-01', 'upload/dffbc396-f574-4640-a6c2-0cbb53754a36.jpg', '2014-11-01', '35.5', '2016-12-21 00:44:09', '当当网', null, '[美] 霍华德马克斯', null);
INSERT INTO t_book VALUES ('ISBN9787508651453', '高盛帝国', '2', '69', '1', '中信出版社', '2015-06-01', 'upload/12a9e2f5-8654-4325-b03e-6e0e0f50c0f1.jpg', '2015-06-19', '49.2', '2016-12-20 22:58:15', '当当网', null, '【美】查尔斯·埃利斯（Charles D. Ellis）', null);
INSERT INTO t_book VALUES ('ISBN9787509551325', '注册会计师全国统一考试历年试题汇编会计', '3', '11', '1', '中国财政经济出版社', '2014-03-31', 'upload/aa439759-6244-4c07-a624-ae29c9e6310b.jpg', '2014-08-19', '9.7', '2016-12-21 00:55:04', '当当网', null, '中国注册会计师协会', null);
INSERT INTO t_book VALUES ('ISBN9787511312174', '国富论（超值白金版）', '2', '24.8', '1', '中国华侨出版社', '2011-03-01', 'upload/028a8793-3ffe-46d7-b14f-71b296954ccd.jpg', '2014-12-12', '12.4', '2016-12-21 00:01:01', '当当网', null, '（英）亚当·斯密（Adam Smith）', null);
INSERT INTO t_book VALUES ('ISBN9787511315861', '中国人必读的古典诗词大全集', '5', '24.8', '1', '中国华侨出版社', '2011-10-01', 'upload/06471cc2-6a7f-45fc-acdb-a1eddad23bef.jpg', '2013-06-06', '17.1', '2016-12-21 01:00:16', '当当网', null, '文嫣　', null);
INSERT INTO t_book VALUES ('ISBN9787511317490', '索罗斯炼金术 大全集', '2', '29.8', '1', '中国华侨出版社', '2012-01-01', 'upload/e2da682e-3e03-4a46-beae-a881d5d0e77b.jpg', '2015-01-30', '17.3', '2016-12-20 23:36:41', '当当网', null, '高榕璠', null);
INSERT INTO t_book VALUES ('ISBN9787511339515', '股票技术分析大全', '2', '29.8', '1', '中国华侨出版社', '2013-10-01', 'upload/49c3d4da-1d5d-4090-8a1e-b7987a32f85b.jpg', '2014-11-09', '14.6', '2016-12-21 00:24:22', '当当网', null, '王达菲', null);
INSERT INTO t_book VALUES ('ISBN9787512322333', 'Head First Python(中文版)', '1', '68', '1', '中国电力出版社', '2012-03-01', 'upload/6ee7e5a0-ccdc-4997-9852-fcf13f2e48de.jpg', '2016-12-12', '33.3', '2016-12-18 21:32:17', '当当网', null, '[美] 巴里', null);
INSERT INTO t_book VALUES ('ISBN9787513625494', '图解缠论：核心理论推导与实战演示', '2', '35', '1', '中国经济出版社', '2013-08-01', 'upload/28d19c74-47a4-4f50-8ddf-d662d7e777f4.jpg', '2015-01-30', '24.5', '2016-12-20 23:29:23', '当当网', null, '陈秋明', null);
INSERT INTO t_book VALUES ('ISBN9787514155358', '税法--2015年度注册会计师全国统一考试辅导教材', '3', '50', '1', '经济科学出版社', '2015-03-01', 'upload/798eb1bc-61b9-4aa1-ad02-d1bde101b75c.jpg', '2015-06-04', '37.5', '2016-12-20 23:04:39', '当当网', null, '中国注册会计师协会', null);
INSERT INTO t_book VALUES ('ISBN9787514167160', '2016年注册会计师考试机考题库与真题汇编 财务成本管理', '3', '38', '1', '经济科学出版社', '2016-03-31', 'upload/cd95b7d2-bd81-42b4-9023-28550b0cb68a.jpg', '2016-06-09', '27.8', '2016-12-20 22:38:00', '当当网', null, '田明', null);
INSERT INTO t_book VALUES ('ISBN9787514167177', '2016年注册会计师考试机考题库与真题汇编 公司战略与风险管理 ', '3', '36', '1', '经济科学出版社', '2016-03-31', 'upload/ebb8ed5a-4b2e-4fbd-968e-7f56b8650157.jpg', '2016-06-09', '26.3', '2016-12-20 22:39:57', '当当网', null, '吕鹏', null);
INSERT INTO t_book VALUES ('ISBN9787514167214', '2016年注册会计师考试机考题库与真题汇编 税法', '3', '34', '1', '经济科学出版社', '2016-03-31', 'upload/b8b3c04d-a13b-4327-b4f3-e591c8683ea9.jpg', '2016-06-09', '22.1', '2016-12-20 22:42:56', '当当网', null, '马兆瑞', null);
INSERT INTO t_book VALUES ('ISBN9787514603439', '一生要读的古典诗词', '5', '32', '1', '中国画报出版社', '2012-04-01', 'upload/a1fbd511-c30e-4bc8-b27d-dc38ede9564b.jpg', '2013-06-06', '20.8', '2016-12-21 01:01:57', '当当网', null, '陈默', null);
INSERT INTO t_book VALUES ('ISBN9787515303628', '股票作手回忆录', '2', '33.9', '1', '中国青年出版社', '2012-01-01', 'upload/b7a1db47-f08f-482b-9f93-b3e6da4d5566.jpg', '2014-10-31', '16', '2016-12-21 00:39:58', '当当网', null, '（美）杰西·利弗莫尔 ', null);
INSERT INTO t_book VALUES ('ISBN9787515902357', '缠论解析：缠中说禅技术理论图解', '2', '23', '1', '中国宇航出版社', '2012-07-01', 'upload/44de5bf6-7fa6-4530-9e13-a04e06024303.jpg', '2015-01-30', '15.8', '2016-12-20 23:34:27', '当当网', null, '江南小隐 ', null);
INSERT INTO t_book VALUES ('ISBN9787515907420', '趋势定位 缠中说禅理论精解', '2', '35', '1', '中国宇航出版社', '2014-08-01', 'upload/3dce9f47-04e9-4abd-afb6-ab6c77ef3ded.jpg', '2015-01-30', '26.5', '2016-12-20 23:31:34', '当当网', null, '付上金', null);
INSERT INTO t_book VALUES ('ISBN9787532631261', '文徵明书兰亭序', '5', '24', '1', '上海辞书出版社', '2010-07-01', 'upload/bd3bf309-1ede-4554-8102-e536f48aaa8d.jpg', '2014-12-12', '2', '2016-12-21 00:12:00', '当当网', null, '上海辞书出版社', null);
INSERT INTO t_book VALUES ('ISBN9787539467870', '中国经典书画丛书--文徵明行书离骚滕王阁序', '5', '22', '1', '湖北美术出版社', '2014-06-01', 'upload/5f2094cb-6286-4698-abe9-5aae9da7ddff.jpg', '2014-12-12', '13.2', '2016-12-20 23:53:59', '当当网', null, '（明）文徵明　', null);
INSERT INTO t_book VALUES ('ISBN9787539966830', '摩根财团：美国一代银行王朝和现代金融业的崛起（1838～1990） ', '2', '198', '1', '江苏文艺出版社', '2014-04-01', 'upload/8301f4d2-c744-4ef1-8fed-de65aba6a01f.jpg', '2015-06-19', '116.7', '2016-12-20 22:55:33', '当当网', null, '（美）彻诺', null);
INSERT INTO t_book VALUES ('ISBN9787540676209', '刘斯奋诗译宋四家词选：辛弃疾', '5', '16.5', '1', '广东教育出版社', '2009-08-01', 'upload/2ae3b710-bd46-4c2f-ad07-fce7fa3d6513.jpg', '2013-06-06', '12.4', '2016-12-21 00:58:26', '当当网', null, '刘斯奋 ', null);
INSERT INTO t_book VALUES ('ISBN9787544339759', '金融炼金术（投资经典）索罗斯荣休纪念版', '2', '32', '1', '海南出版社', '2011-11-01', 'upload/74626643-b11f-4268-a9af-52c5a1bc98af.jpg', '2014-11-01', '16.6', '2016-12-21 00:42:16', '当当网', null, '(美)索罗斯　', null);
INSERT INTO t_book VALUES ('ISBN9787547207970', '天下墨宝 文徵明 前后赤壁赋', '5', '16', '1', '吉林文史出版社', '2013-01-01', 'upload/70ceb96d-0ee5-4d7a-8bee-cf0b84fa6f21.jpg', '2014-12-12', '9.6', '2016-12-20 23:48:15', '当当网', null, '吉林文史出版社', null);
INSERT INTO t_book VALUES ('ISBN9787547216385', '天下墨宝 文徵明 醉翁亭记', '5', '28', '1', '吉林文史出版社', '2013-07-01', 'upload/2c1a8e1f-8ec3-4377-bf2b-e2603989c548.jpg', '2014-12-12', '16.8', '2016-12-20 23:46:48', '当当网', null, '吉林文史出版社', null);
INSERT INTO t_book VALUES ('ISBN9787547217498', '天下墨宝 归去来辞·琵琶行', '5', '16', '1', '吉林文史出版社　', '2014-01-01', 'upload/fdd544f0-5c58-4d90-bfe5-ee97b4d50f8e.jpg', '2014-12-12', '9.6', '2016-12-20 23:57:38', '当当网', null, '吉林文史出版社　', null);
INSERT INTO t_book VALUES ('ISBN9787550611245', '十年一梦-一个操盘手的自白（修订版）', '2', '48', '1', '凤凰出版社', '2012-04-01', 'upload/1a8438b3-c836-4505-9340-c30607a58561.jpg', '2015-01-30', '28.5', '2016-12-20 23:38:27', '当当网', null, '青泽', null);
INSERT INTO t_book VALUES ('ISBN9787561354513', '振荡指标MACD：波段操作精解', '2', '35', '1', '陕西师范大学出版社', '2011-04-01', 'upload/99b038a7-695c-44f7-b3f2-e051d7eafcfe.jpg', '2014-12-12', '17.5', '2016-12-20 23:59:14', '当当网', null, '凌波', null);
INSERT INTO t_book VALUES ('ISBN9787565413254', '量化交易：如何建立自己的算法交易', '2', '28', '1', '东北财经大学出版社有限责任公司', '2014-01-01', 'upload/ac765719-013c-4d8d-a0c7-36580b10e56d.jpg', '2014-12-12', '21.8', '2016-12-20 23:56:00', '当当网', null, '(加)欧内斯特·陈　', null);
INSERT INTO t_book VALUES ('ISBN9787567102644', '文徵明行书入门', '5', '12', '1', '上海大学出版社', '2012-08-01', 'upload/d87e63c0-d8c9-47a2-93b0-589cd7ef65e2.jpg', '2014-12-12', '7.2', '2016-12-21 00:04:39', '当当网', null, '柯国富，华骏铭', null);
INSERT INTO t_book VALUES ('ISBN9787802114302', '道德情操论', '5', '30', '1', '中央编译出版社', '2008-07-01', 'upload/5c0088bc-e7bb-423b-bc68-bae44071d9ac.jpg', '2014-12-12', '14.3', '2016-12-21 00:03:13', '当当网', null, '斯密', null);
INSERT INTO t_book VALUES ('ISBN9787806805619', '毛泽东诗词全集赏读', '5', '36.8', '1', '太白文艺', '2011-06-01', 'upload/85cdde1b-638f-4500-bc82-14b18c4f4d51.jpg', '2013-06-06', '25.4', '2016-12-21 01:03:34', '当当网', null, '麓山子', null);
INSERT INTO t_book VALUES ('ISBN9787806887189', '股市晴雨表', '2', '36', '1', '天津社会科学院出版社', '2012-01-01', 'upload/20ade035-3db8-4b79-a635-ad7eb7bf92a5.jpg', '2014-11-09', '17.4', '2016-12-21 00:29:50', '当当网', null, '（美）汉密尔顿', null);
INSERT INTO t_book VALUES ('ISBN9787806887363', '波浪理论经典', '2', '38', '1', '天津社会科学院出版社', '2012-01-01', 'upload/8fe2c283-8ab1-4347-83e4-01ad350ebf15.jpg', '2014-11-01', '20.2', '2016-12-21 00:45:45', '当当网', null, '（美）艾略特　', null);

-- ----------------------------
-- Table structure for t_booktype
-- ----------------------------
DROP TABLE IF EXISTS t_booktype;
CREATE TABLE t_booktype (
  bookTypeId int(11) NOT NULL AUTO_INCREMENT,
  bookTypeName varchar(18) NOT NULL,
  days int(11) NOT NULL,
  PRIMARY KEY (bookTypeId)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_booktype
-- ----------------------------
INSERT INTO t_booktype VALUES ('1', '计算机与网络', '30');
INSERT INTO t_booktype VALUES ('2', '金融投资', '30');
INSERT INTO t_booktype VALUES ('3', '教育考试', '30');
INSERT INTO t_booktype VALUES ('4', '哲学宗教', '30');
INSERT INTO t_booktype VALUES ('5', '人文艺术', '30');
