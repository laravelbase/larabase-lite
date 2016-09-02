# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.42)
# Database: newlara
# Generation Time: 2016-08-01 18:01:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `label`, `domain`, `domain_label`, `created_at`, `updated_at`)
VALUES
	(1,'createCategories','创建分类','forum','论坛综合','2016-08-01 17:24:49','2016-08-01 17:33:57'),
	(2,'manageCategories','管理分类','forum','论坛综合','2016-08-01 17:24:49','2016-08-01 17:34:10'),
	(3,'moveCategories','移动分类','forum','论坛综合','2016-08-01 17:24:49','2016-08-01 17:35:04'),
	(4,'renameCategories','重命名分类','forum','论坛综合','2016-08-01 17:24:49','2016-08-01 17:35:16'),
	(5,'markNewThreadsAsRead','标记新帖为已读','forum','论坛综合','2016-08-01 17:24:49','2016-08-01 17:35:36'),
	(6,'viewTrashedThreads','查看已删除帖子','forum','论坛综合','2016-08-01 17:24:49','2016-08-01 17:36:04'),
	(7,'viewTrashedPosts','查看已删除回帖','forum','论坛综合','2016-08-01 17:24:49','2016-08-01 17:36:21'),
	(8,'createThreads','创建帖子','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:36:37'),
	(9,'manageThreads','管理帖子','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:36:48'),
	(10,'deleteThreads','批量删除帖子','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:43:48'),
	(11,'enableThreads','开启帖子','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:37:31'),
	(12,'moveThreadsFrom','从某处拉取帖子','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:38:19'),
	(13,'moveThreadsTo','将帖子移动至','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:38:43'),
	(14,'lockThreads','锁定帖子','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:39:04'),
	(15,'pinThreads','置顶帖子','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:39:20'),
	(16,'view','查看分类','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:40:50'),
	(17,'delete','删除分类','forum.category','论坛分类','2016-08-01 17:24:49','2016-08-01 17:41:04'),
	(18,'edit','编辑回帖','forum.post','论坛回帖','2016-08-01 17:24:49','2016-08-01 17:41:23'),
	(19,'delete','删除回帖','forum.post','论坛回帖','2016-08-01 17:24:49','2016-08-01 17:41:38'),
	(20,'deletePosts','批量删除回帖','forum.thread','论坛帖子','2016-08-01 17:24:49','2016-08-01 17:42:33'),
	(21,'rename','帖子重命名','forum.thread','论坛帖子','2016-08-01 17:24:49','2016-08-01 17:42:54'),
	(22,'reply','回复帖子','forum.thread','论坛帖子','2016-08-01 17:24:49','2016-08-01 17:43:10'),
	(23,'delete','删除帖子','forum.thread','论坛帖子','2016-08-01 17:24:49','2016-08-01 17:43:57');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
