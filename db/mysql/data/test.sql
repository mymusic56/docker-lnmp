-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: home.mytest.com    Database: test
-- ------------------------------------------------------
-- Server version	5.7.37-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '9ca8a965-461f-11ee-a6f1-0242ac130003:1-142';

--
-- Table structure for table `action_log`
--

DROP TABLE IF EXISTS `action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `order_sn` varchar(128) NOT NULL DEFAULT '' COMMENT '订单号',
  `status_before` varchar(32) NOT NULL DEFAULT '' COMMENT '操作前状态',
  `status_after` varchar(32) NOT NULL DEFAULT '' COMMENT '操作后状态',
  `operator_type` varchar(15) NOT NULL DEFAULT '' COMMENT '操作人类型;admin|user|system:管理员|普通用户|系统',
  `operation_key` varchar(32) NOT NULL DEFAULT '' COMMENT '操作KEY',
  `operation_name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `remark` text NOT NULL COMMENT '备注（详细内容）',
  `is_deleted` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 (1=是 0=否)',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人编码 (默认: 空字符串)',
  `create_name` varchar(255) NOT NULL DEFAULT '' COMMENT '创建人名称 (默认: 空字符串)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '修改人编码 (默认: 空字符串)',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  `s_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'sss',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_order_sn` (`order_sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_log`
--

LOCK TABLES `action_log` WRITE;
/*!40000 ALTER TABLE `action_log` DISABLE KEYS */;
INSERT INTO `action_log` VALUES (1,1,'A1','A','3','','','','','test',0,'','','2023-08-30 01:10:40','','2023-09-01 10:08:56',3,0),(2,2,'A2','B','4','','','','','testA2',0,'','','2023-08-30 01:10:55','','2023-09-01 10:08:56',2,0),(3,3,'A3','C','5','ADDS','EEFE','','','testA3',0,'','','2023-08-30 01:22:16','','2023-09-01 10:08:56',1,0),(4,4,'A4','D','7','A','B','','','xx',0,'','','2023-08-30 08:34:47','','2023-09-01 10:09:07',0,0);
/*!40000 ALTER TABLE `action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `order_sn` varchar(128) NOT NULL DEFAULT '' COMMENT '订单号',
  `status_before` varchar(32) NOT NULL DEFAULT '' COMMENT '操作前状态',
  `status_after` varchar(32) NOT NULL DEFAULT '' COMMENT '操作后状态',
  `operator_type` varchar(15) NOT NULL DEFAULT '' COMMENT '操作人类型;admin|user|system:管理员|普通用户|系统',
  `operation_key` varchar(32) NOT NULL DEFAULT '' COMMENT '操作KEY',
  `operation_name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `remark` text NOT NULL COMMENT '备注（详细内容）',
  `is_deleted` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 (1=是 0=否)',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人编码 (默认: 空字符串)',
  `create_name` varchar(255) NOT NULL DEFAULT '' COMMENT '创建人名称 (默认: 空字符串)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '修改人编码 (默认: 空字符串)',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_order_sn` (`order_sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-01 18:46:01
