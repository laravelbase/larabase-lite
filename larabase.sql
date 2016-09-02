-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-07-15 17:46:27
-- 服务器版本： 5.6.26-log
-- PHP Version: 5.6.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larabase`
--

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `categoryset_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `categoryset_id`, `name`, `created_at`, `updated_at`, `link`, `collection_id`) VALUES
(1, NULL, 1, 2, 0, 1, 'Laravel 系列', '2015-09-04 23:34:33', '2015-09-12 06:44:55', '', 0),
(2, NULL, 3, 4, 0, 1, 'Modern Javascript', '2015-09-09 22:17:28', '2015-09-12 06:44:55', '', 0),
(3, NULL, 5, 6, 0, 1, 'PHP', '2015-09-09 22:17:49', '2015-09-12 06:44:55', '', 0),
(4, NULL, 7, 8, 0, 1, '编程思路', '2015-09-09 22:18:14', '2015-09-12 06:44:55', '', 0),
(10, NULL, 9, 10, 0, 0, '概述', '2015-09-12 16:50:28', '2015-10-25 17:23:57', '33', 1),
(11, NULL, 11, 16, 0, 0, '环境配置', '2015-09-12 16:50:54', '2015-10-25 17:24:23', '', 1),
(12, 11, 12, 13, 1, 0, '安装', '2015-09-12 16:51:23', '2015-10-25 17:24:23', '34', 1),
(13, 11, 14, 15, 1, 0, '配置', '2015-09-12 16:51:56', '2015-10-25 17:24:23', '35', 1),
(14, NULL, 17, 32, 0, 0, '基本功能', '2015-09-12 16:52:23', '2015-10-25 17:25:03', '', 1),
(15, 14, 18, 19, 1, 0, '路由', '2015-09-12 16:52:35', '2015-10-25 17:25:03', '36', 1),
(16, 14, 20, 21, 1, 0, '中间件', '2015-09-12 16:52:50', '2015-10-25 17:25:03', '37', 1),
(17, 14, 22, 23, 1, 0, '控制器', '2015-09-12 16:53:08', '2015-10-25 17:25:03', '38', 1),
(18, 14, 24, 25, 1, 0, '请求', '2015-09-12 16:53:26', '2015-10-25 17:25:03', '39', 1),
(19, 14, 26, 27, 1, 0, '响应', '2015-09-12 16:54:54', '2015-10-25 17:25:03', '', 1),
(20, 14, 28, 29, 1, 0, '视图', '2015-09-12 16:55:08', '2015-10-25 17:25:03', '40', 1),
(21, 14, 30, 31, 1, 0, 'Blade模板', '2015-09-12 16:56:14', '2015-10-25 17:25:03', '43', 1),
(22, NULL, 33, 46, 0, 0, '系统架构', '2015-09-12 16:56:35', '2015-10-25 17:25:03', '', 1),
(23, 22, 34, 35, 1, 0, '请求的生命周期', '2015-09-12 16:57:00', '2015-10-25 21:55:12', '44', 1),
(24, 22, 36, 37, 1, 0, '文件结构', '2015-09-12 16:57:32', '2015-10-25 22:36:22', '45', 1),
(25, 22, 38, 39, 1, 0, 'Service Provider', '2015-09-12 16:57:54', '2015-10-26 00:29:05', '46', 1),
(26, 22, 40, 41, 1, 0, 'Service Container（IOC容器）', '2015-09-12 16:58:30', '2015-10-26 04:41:10', '47', 1),
(27, 22, 42, 43, 1, 0, 'Contracts', '2015-09-12 16:59:00', '2015-10-26 06:55:23', '48', 1),
(28, 22, 44, 45, 1, 0, 'Facades', '2015-09-12 16:59:13', '2015-10-26 06:55:35', '49', 1),
(29, NULL, 47, 96, 0, 0, '系统服务', '2015-09-12 17:01:26', '2015-10-25 17:25:03', '', 1),
(30, 29, 50, 51, 1, 0, '授权', '2015-09-12 17:01:58', '2015-10-31 00:45:53', '', 1),
(31, 29, 48, 49, 1, 0, '登录认证（Auth）', '2015-09-12 17:02:32', '2015-10-31 00:57:47', '51', 1),
(32, 29, 52, 53, 1, 0, 'Artisan 命令行工具', '2015-09-12 17:03:14', '2016-03-24 17:18:06', '75', 1),
(33, 29, 54, 55, 1, 0, '支付功能', '2015-09-12 17:03:52', '2015-10-31 00:45:53', '', 1),
(34, 29, 56, 57, 1, 0, '缓存', '2015-09-12 17:04:09', '2015-11-05 23:12:35', '62', 1),
(35, 29, 58, 59, 1, 0, 'Collections', '2015-09-12 17:05:03', '2015-11-01 16:22:44', '57', 1),
(36, 29, 60, 61, 1, 0, 'Elixir（前端工具）', '2015-09-12 17:05:47', '2016-03-11 02:35:09', '67', 1),
(37, 29, 62, 63, 1, 0, '加密(Encryption)', '2015-09-12 17:06:14', '2015-10-31 06:03:06', '52', 1),
(38, 29, 64, 65, 1, 0, '错误与日志', '2015-09-12 17:06:35', '2016-03-25 08:13:35', '76', 1),
(39, 29, 66, 67, 1, 0, '事件', '2015-09-12 17:07:52', '2015-10-31 19:08:32', '55', 1),
(40, 29, 68, 69, 1, 0, '文件系统与云存储', '2015-09-12 17:08:11', '2016-03-27 00:04:39', '77', 1),
(41, 29, 70, 71, 1, 0, '哈希加密(Hash)', '2015-09-12 17:08:34', '2015-10-31 06:56:08', '53', 1),
(42, 29, 72, 73, 1, 0, '辅助函数', '2015-09-12 17:08:56', '2015-10-31 07:42:55', '54', 1),
(43, 29, 74, 75, 1, 0, '本地化', '2015-09-12 17:09:22', '2015-10-31 00:45:53', '', 1),
(44, 29, 76, 77, 1, 0, '邮件', '2015-09-12 17:09:41', '2015-11-03 06:57:35', '61', 1),
(45, 29, 78, 79, 1, 0, '扩展包开发', '2015-09-12 17:09:54', '2015-10-31 00:45:53', '', 1),
(46, 29, 80, 81, 1, 0, '分页', '2015-09-12 17:10:10', '2015-10-31 22:07:43', '56', 1),
(47, 29, 82, 83, 1, 0, '队列', '2015-09-12 17:10:29', '2015-10-31 00:45:53', '', 1),
(48, 29, 84, 85, 1, 0, 'Redis', '2015-09-12 17:10:45', '2015-10-31 00:45:53', '', 1),
(49, 29, 86, 87, 1, 0, 'Session', '2015-09-12 17:11:01', '2015-11-02 08:45:43', '59', 1),
(50, 29, 88, 89, 1, 0, 'SSH 操作', '2015-09-12 17:12:46', '2015-10-31 00:45:53', '', 1),
(51, 29, 90, 91, 1, 0, '计划任务', '2015-09-12 17:13:05', '2015-10-31 00:45:53', '', 1),
(52, 29, 92, 93, 1, 0, '测试', '2015-09-12 17:14:16', '2015-10-31 00:45:53', '', 1),
(53, 29, 94, 95, 1, 0, '表单验证', '2015-09-12 17:15:44', '2015-11-15 00:55:29', '64', 1),
(54, NULL, 97, 106, 0, 0, '数据库操作', '2015-09-12 17:16:05', '2015-10-25 17:25:03', '', 1),
(55, 54, 98, 99, 1, 0, '基本操作', '2015-09-12 17:18:03', '2015-11-28 18:31:06', '65', 1),
(56, 54, 100, 101, 1, 0, 'Query Builder', '2015-09-12 17:18:18', '2016-03-12 17:23:08', '68', 1),
(57, 54, 102, 103, 1, 0, '数据迁移（Migrations）', '2015-09-12 17:18:48', '2016-03-13 06:16:06', '69', 1),
(58, 54, 104, 105, 1, 0, '数据填充（Seeding）', '2015-09-12 17:19:08', '2016-03-17 19:19:10', '70', 1),
(59, NULL, 107, 118, 0, 0, 'Eloquent ORM', '2015-09-12 17:19:28', '2015-10-25 17:25:03', '', 1),
(60, 59, 108, 109, 1, 0, '起步', '2015-09-12 17:19:46', '2016-03-18 21:07:01', '66', 1),
(61, 59, 110, 111, 1, 0, '数据关系', '2015-09-12 17:20:01', '2016-03-24 01:59:40', '74', 1),
(62, 59, 112, 113, 1, 0, 'Collections', '2015-09-12 17:20:20', '2016-03-19 00:29:02', '71', 1),
(63, 59, 114, 115, 1, 0, '修饰器', '2015-09-12 17:20:59', '2016-03-21 08:15:35', '72', 1),
(64, 59, 116, 117, 1, 0, '序列化', '2015-09-12 17:21:24', '2016-03-21 17:02:07', '73', 1),
(65, NULL, 123, 124, 0, 2, '核心站点', '2015-09-20 16:06:10', '2015-10-14 23:26:11', '', 0),
(66, NULL, 121, 122, 0, 2, '博客推荐', '2015-09-20 16:08:03', '2015-10-14 23:26:11', '', 0),
(67, NULL, 119, 120, 0, 3, 'A', '2015-10-14 21:36:02', '2015-10-14 23:17:44', '', 0),
(68, NULL, 125, 126, 0, 2, '非常牛博', '2015-12-11 09:06:42', '2015-12-11 09:06:42', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `categorysets`
--

CREATE TABLE IF NOT EXISTS `categorysets` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `default` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `categorysets`
--

INSERT INTO `categorysets` (`id`, `name`, `created_at`, `updated_at`, `default`) VALUES
(1, '文章', '2015-09-04 23:29:37', '2015-09-04 23:29:44', 1),
(2, '网站', '2015-09-20 16:04:21', '2015-09-20 16:04:21', 0),
(3, 'Test', '2015-10-14 21:35:53', '2015-10-14 21:35:53', 0);

-- --------------------------------------------------------

--
-- 表的结构 `collections`
--

CREATE TABLE IF NOT EXISTS `collections` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `default` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `collections`
--

INSERT INTO `collections` (`id`, `name`, `description`, `created_at`, `updated_at`, `default`) VALUES
(1, 'Laravel 5.1 文档攻略', '跳过文档中的各种坑，理解概念，记住使用要点。', '2015-09-11 21:04:33', '2015-10-20 15:46:25', 1);

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `body`, `created_at`, `updated_at`, `post_id`, `user_id`, `deleted_at`) VALUES
(4, NULL, 1, 6, 0, 'hi哈辅导费； ', '2015-09-16 21:22:23', '2015-09-16 23:19:14', 28, 10, NULL),
(13, NULL, 7, 8, 0, '大大SDK', '2015-09-16 22:20:54', '2015-09-16 23:19:14', 28, 13, NULL),
(14, NULL, 9, 12, 0, 'what', '2015-09-16 22:21:16', '2015-10-20 07:56:47', 28, 13, NULL),
(15, 4, 2, 3, 1, '大打速度回', '2015-09-16 22:48:33', '2015-09-16 22:48:33', 28, 13, NULL),
(16, 4, 4, 5, 1, 'xxx有没有问题', '2015-09-16 23:19:14', '2015-09-16 23:19:14', 28, 13, NULL),
(17, NULL, 13, 14, 0, '啊大苏打', '2015-09-16 23:20:51', '2015-10-20 07:56:47', 28, 13, NULL),
(18, NULL, 15, 18, 0, 'asd', '2015-09-18 01:27:33', '2015-10-24 18:08:36', 30, 10, NULL),
(19, 18, 16, 17, 1, 'dasd', '2015-09-18 01:27:57', '2015-10-24 18:08:36', 30, 10, NULL),
(20, NULL, 19, 20, 0, 'daadasd', '2015-09-18 18:15:40', '2015-10-24 18:08:36', 30, 10, NULL),
(21, NULL, 21, 22, 0, 'dasdasda', '2015-09-18 18:17:39', '2015-10-24 18:08:36', 30, 10, NULL),
(22, 14, 10, 11, 1, 'what the hell?', '2015-10-20 07:56:47', '2015-10-20 07:56:47', 28, 9, NULL),
(23, NULL, 23, 26, 0, '命名空间是否需要和文件目录保持一致？', '2015-10-27 17:22:47', '2016-01-23 17:38:52', 45, 18, NULL),
(24, NULL, 27, 30, 0, '怎么自定义分页？', '2015-11-03 22:24:32', '2016-01-23 17:38:52', 56, 18, NULL),
(25, NULL, 31, 34, 0, '个梵蒂冈梵蒂冈的广泛地', '2015-11-06 23:59:00', '2016-01-23 17:38:52', 50, 69, NULL),
(26, 25, 32, 33, 1, '是的范德萨范德萨', '2015-11-07 00:03:33', '2016-01-23 17:38:52', 50, 69, NULL),
(27, NULL, 35, 38, 0, '最后一张图片地址不对哦', '2015-11-26 00:05:08', '2016-01-23 17:46:05', 37, 91, NULL),
(28, NULL, 39, 40, 0, '评论\r\n', '2015-12-02 00:51:21', '2016-01-23 17:46:05', 66, 100, NULL),
(29, NULL, 41, 44, 0, '博主写的很好，对我们初学者收益很大。', '2015-12-04 22:50:30', '2016-01-23 17:47:37', 37, 103, NULL),
(30, 24, 28, 29, 1, '不知道', '2015-12-29 03:37:45', '2016-01-23 17:38:52', 56, 121, NULL),
(31, NULL, 45, 46, 0, '43214', '2015-12-29 18:48:40', '2016-01-23 17:47:37', 65, 100, NULL),
(32, NULL, 47, 48, 0, '自己写个分页服务类，用服务提供者注册一下。', '2016-01-06 23:45:49', '2016-01-23 17:47:37', 56, 128, NULL),
(33, NULL, 49, 50, 0, '123123', '2016-01-13 00:22:46', '2016-01-23 17:47:37', 66, 129, NULL),
(34, 23, 24, 25, 1, '根据PSR-4的规则，是需要保持一致；', '2016-01-23 17:38:52', '2016-01-23 17:38:52', 45, 74, NULL),
(35, 27, 36, 37, 1, '谢谢！已修正！', '2016-01-23 17:46:05', '2016-01-23 17:46:05', 37, 9, NULL),
(36, 29, 42, 43, 1, '谢谢支持！', '2016-01-23 17:47:37', '2016-01-23 17:47:37', 37, 9, NULL),
(37, NULL, 51, 54, 0, 'Route::get(''/Zoo/{zoo_id?}/animals'', ZooController@getAnimals);\r\n\r\n求教，这个路由怎么访问呢', '2016-01-26 19:15:29', '2016-03-21 22:37:53', 36, 141, NULL),
(38, NULL, 55, 56, 0, '受益匪浅，希望能看到补全到完整版，万分感谢', '2016-02-01 02:20:54', '2016-03-21 22:37:53', 33, 150, NULL),
(39, NULL, 57, 60, 0, '分组路由，数组忘记加引号了，= =', '2016-02-02 22:47:10', '2016-03-21 22:43:14', 36, 152, NULL),
(40, NULL, 61, 70, 0, '不错。', '2016-03-14 03:24:57', '2016-04-06 05:17:00', 68, 173, NULL),
(41, 40, 62, 63, 1, '哈哈。', '2016-03-14 03:25:09', '2016-03-21 22:43:14', 68, 173, NULL),
(42, 40, 64, 65, 1, '哈。', '2016-03-14 03:25:25', '2016-03-21 22:43:14', 68, 173, NULL),
(43, 40, 66, 67, 1, '谢谢支持！', '2016-03-14 19:00:52', '2016-03-21 22:43:14', 68, 29, NULL),
(44, 37, 52, 53, 1, 'http://xxx.com/Zoo/23/animals', '2016-03-21 22:37:53', '2016-03-21 22:37:53', 36, 29, NULL),
(45, 39, 58, 59, 1, '谢谢提醒！', '2016-03-21 22:43:14', '2016-03-21 22:43:14', 36, 29, NULL),
(46, NULL, 71, 72, 0, '对我很有帮助，不过Type-Hint的方法注入还是不太理解。接口章节在哪里，很期待详解。。作者幸苦~', '2016-03-31 19:31:56', '2016-04-06 05:17:00', 47, 195, NULL),
(47, NULL, 73, 74, 0, '写得很好，加油～', '2016-04-01 17:20:50', '2016-04-06 05:17:00', 47, 200, NULL),
(48, NULL, 75, 76, 0, 'Repository Pattern', '2016-04-05 21:46:13', '2016-04-06 05:17:00', 78, 202, NULL),
(49, 40, 68, 69, 1, 'e', '2016-04-06 05:17:00', '2016-04-06 05:17:00', 68, 202, NULL),
(50, NULL, 77, 80, 0, '代码截图一大堆错误没看出来吗？还是说抄的根本就不知道哪里错误', '2016-04-14 22:33:18', '2016-04-20 21:07:54', 74, 214, NULL),
(51, 50, 78, 79, 1, '你说具体的', '2016-04-20 21:07:54', '2016-04-20 21:07:54', 74, 29, NULL),
(52, NULL, 81, 82, 0, '的撒的', '2016-04-21 22:21:59', '2016-04-21 22:21:59', 28, 29, NULL),
(53, NULL, 83, 84, 0, '每使用一个关联模型数据都是一次单独查询，当需要获取关联多个关联模型时就是N条查询请求。\r\n而使用leftjoin只需要一次查询请求，可以省去N-1次的TCP请求。\r\n\r\n不知道laravel在这块上有什么好实现呢？\r\n', '2016-04-26 20:00:39', '2016-04-26 20:00:39', 74, 222, NULL),
(54, NULL, 85, 86, 0, '真棒！', '2016-05-13 05:17:57', '2016-05-13 05:17:57', 79, 237, NULL),
(55, NULL, 87, 88, 0, '我想问下路由能设置成忽略指定URL吗？例如：\r\n```Route::controller(''/'', HomeController);```\r\n我希望他忽略所有`admin/*`的URL，那要如何设置？', '2016-05-19 17:16:29', '2016-05-19 17:16:29', 36, 243, NULL),
(56, NULL, 89, 90, 0, '希望能补全文档', '2016-06-28 18:04:46', '2016-06-28 18:04:46', 76, 277, NULL),
(57, NULL, 91, 92, 0, '这里的Input::get(''name'');就相当于php 的$_GET(''name'')；下面我们来看用Request对象怎么写：\r\n\r\n哥，这是4.x版本的写法么？还有php原声的$_GET(''name'')这是url传参吧，这个应该是相当于$_POST(''name)?对么？', '2016-07-07 04:56:40', '2016-07-07 04:56:40', 39, 209, NULL),
(58, NULL, 93, 94, 0, '我是第一个吗，加油，好好学习天天天向上', '2016-07-08 02:23:46', '2016-07-08 02:23:46', 51, 273, NULL),
(59, NULL, 95, 96, 0, '刚才是什么效果，非常帅气!!!', '2016-07-08 02:24:12', '2016-07-08 02:24:12', 51, 273, NULL),
(60, NULL, 97, 98, 0, '完全不懂', '2016-07-08 19:19:50', '2016-07-08 19:19:50', 74, 273, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `forum_categories`
--

CREATE TABLE IF NOT EXISTS `forum_categories` (
  `id` int(10) unsigned NOT NULL,
  `parent_category` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `forum_categories`
--

INSERT INTO `forum_categories` (`id`, `parent_category`, `title`, `subtitle`, `weight`) VALUES
(1, NULL, '问答', '问各种问题', 0),
(2, NULL, '福利', '居然被你发现了，你懂的', 1);

-- --------------------------------------------------------

--
-- 表的结构 `forum_posts`
--

CREATE TABLE IF NOT EXISTS `forum_posts` (
  `id` int(10) unsigned NOT NULL,
  `parent_thread` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `parent_thread`, `author_id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10, '<p>纯技术交流，请勿发表违反法律和不相关内容。</p><p>技术问题，有问必答。</p>', '2015-09-15 03:49:24', '2015-10-27 18:30:04', NULL),
(2, 1, 10, 'dsdvfsdfsd', '2015-09-15 03:51:29', '2015-10-27 17:52:41', '2015-10-27 17:52:41'),
(3, 2, 13, 'what the', '2015-10-16 17:44:49', '2015-10-24 19:28:22', '2015-10-24 19:28:22'),
(4, 2, 13, '安师大大苏打', '2015-10-16 22:09:07', '2015-10-24 05:03:07', '2015-10-24 05:03:07'),
(6, 2, 13, 'fdsfsdfsdf', '2015-10-18 15:33:23', '2015-10-24 05:03:16', '2015-10-24 05:03:16'),
(7, 3, 9, '<p><br/></p><p><img src="/uploads/ueditor/php/upload/image/20151021/1445386635564880.png" title="1445386635564880.png" alt="tumblr_nw8rp9jQ1Y1uy7xnno9_1280.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151021/1445386655292602.jpeg" title="1445386655292602.jpeg" alt="tumblr_nwamloF2041uy7xnno3_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151023/1445569366224862.jpeg" title="1445569366224862.jpeg" alt="tumblr_nv0imudXvM1savz03o1_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151023/1445569429469016.png" title="1445569429469016.png" alt="tumblr_nw39kzCsiC1r7hrego1_1280.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151028/1446007575197517.jpeg" title="1446007575197517.jpeg" alt="tumblr_nu0frxRU3c1r7hrego1_540.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151024/1445666105949357.jpeg" title="1445666105949357.jpeg" alt="tumblr_nwm427Xiql1uy7xnno8_540.jpg"/></p>', '2015-10-20 08:16:47', '2015-10-27 20:46:27', NULL),
(8, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:40:56', '2015-10-24 05:06:59', '2015-10-24 05:06:59'),
(9, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:42:07', '2015-10-24 05:07:04', '2015-10-24 05:07:04'),
(10, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:42:38', '2015-10-24 05:07:08', '2015-10-24 05:07:08'),
(11, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:43:35', '2015-10-24 05:08:04', '2015-10-24 05:08:04'),
(12, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:44:23', '2015-10-24 05:07:13', '2015-10-24 05:07:13'),
(13, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:44:55', '2015-10-24 05:07:34', '2015-10-24 05:07:34'),
(14, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:45:47', '2015-10-24 05:07:17', '2015-10-24 05:07:17'),
(15, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:47:23', '2015-10-24 05:07:42', '2015-10-24 05:07:42'),
(16, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:47:49', '2015-10-24 05:07:29', '2015-10-24 05:07:29'),
(17, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:47:56', '2015-10-24 05:07:56', '2015-10-24 05:07:56'),
(18, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:48:12', '2015-10-24 05:07:38', '2015-10-24 05:07:38'),
(19, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:48:21', '2015-10-24 05:07:46', '2015-10-24 05:07:46'),
(20, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:48:58', '2015-10-24 05:07:51', '2015-10-24 05:07:51'),
(21, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:49:48', '2015-10-24 05:06:53', '2015-10-24 05:06:53'),
(22, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:50:19', '2015-10-24 05:08:17', '2015-10-24 05:08:17'),
(23, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:50:35', '2015-10-24 05:08:09', '2015-10-24 05:08:09'),
(24, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:51:08', '2015-10-24 05:08:13', '2015-10-24 05:08:13'),
(25, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:51:24', '2015-10-24 05:08:00', '2015-10-24 05:08:00'),
(26, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:53:38', '2015-10-24 05:08:22', '2015-10-24 05:08:22'),
(27, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:54:21', '2015-10-24 05:07:25', '2015-10-24 05:07:25'),
(28, 2, 10, '<p>what the fuck?</p>', '2015-10-24 04:57:59', '2015-10-24 05:08:26', '2015-10-24 05:08:26'),
(29, 2, 10, '<p>hell yeah!</p>', '2015-10-24 05:08:36', '2015-10-24 05:18:23', '2015-10-24 05:18:23'),
(30, 2, 10, '<p>what the fuck?</p>', '2015-10-24 05:15:31', '2015-10-24 05:18:27', '2015-10-24 05:18:27'),
(31, 2, 10, '<p>what the fuck?</p>', '2015-10-24 05:15:59', '2015-10-24 05:18:31', '2015-10-24 05:18:31'),
(32, 2, 10, '<p>what the fuck?</p>', '2015-10-24 05:16:28', '2015-10-24 05:18:36', '2015-10-24 05:18:36'),
(33, 2, 10, '<p>what the fuck?</p>', '2015-10-24 05:17:01', '2015-10-24 05:18:44', '2015-10-24 05:18:44'),
(34, 2, 10, '<p>what the fuck?</p>', '2015-10-24 05:17:26', '2015-10-24 05:18:40', '2015-10-24 05:18:40'),
(35, 2, 10, '<p>what the fuck?</p>', '2015-10-24 05:17:43', '2015-10-24 05:18:48', '2015-10-24 05:18:48'),
(36, 2, 10, '<p>what the fuck?</p>', '2015-10-24 05:18:04', '2015-10-24 19:28:22', '2015-10-24 19:28:22'),
(37, 2, 13, '<p>xxx</p>', '2015-10-24 07:06:02', '2015-10-24 19:28:22', '2015-10-24 19:28:22'),
(38, 2, 9, '<p>讨论一下</p><p><br/></p>', '2015-10-24 07:10:12', '2015-10-24 19:12:17', '2015-10-24 19:12:17'),
(39, 2, 10, '<p>真的假的？</p>', '2015-10-24 07:13:15', '2015-10-24 19:28:22', '2015-10-24 19:28:22'),
(40, 2, 9, '<p>can you feel !</p>', '2015-10-24 19:12:39', '2015-10-24 19:28:22', '2015-10-24 19:28:22'),
(41, 4, 9, '<p>RT，怎样获取当前的路由名称和路由路径啊？</p>', '2015-10-27 21:31:30', '2015-10-27 21:36:21', NULL),
(42, 4, 13, '<p>试试看：</p><pre class="brush:php;toolbar:false">Route::getCurrentRoute()-&gt;getPath();</pre><p>获取路由名称：<br/></p><pre>Route::getCurrentRoute()-&gt;getName();</pre><p><br/></p>', '2015-10-27 21:35:06', '2015-10-27 21:44:51', NULL),
(43, 4, 9, '<p>谢啦！</p>', '2015-10-27 21:42:20', '2015-10-27 21:42:20', NULL),
(44, 4, 30, ' 有用！不错！', '2015-10-28 23:21:16', '2015-10-29 03:33:47', '2015-10-29 03:33:47'),
(45, 5, 29, '<p><img src="/uploads/ueditor/php/upload/image/20151031/1446259428586025.jpeg" title="1446259428586025.jpeg" alt="phpMyAdmin_4.1.9_all_languages.tar.1395977955.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446259438733072.jpeg" title="1446259438733072.jpeg" alt="tumblr_nwyyfz7ZiU1uy7xnno1_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446262757259311.jpeg" title="1446262757259311.jpeg" alt="tumblr_nqoozf3iHm1uy7xnno4_540.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446262770154347.jpeg" title="1446262770154347.jpeg" alt="tumblr_nw3bpjcqAK1uy7xnno4_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446262790663782.jpeg" title="1446262790663782.jpeg" alt="tumblr_nw54j4wpE71uy7xnno1_540.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446262811657397.png" title="1446262811657397.png" alt="tumblr_nwjx0aE2R01uy7xnno5_500.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446262830481003.png" title="1446262830481003.png" alt="tumblr_nwwuya35tX1uy7xnno1_540.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446262876124769.jpeg" title="1446262876124769.jpeg" alt="tumblr_nr9116s2bN1uy7xnno3_540.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151031/1446262886645865.jpeg" title="1446262886645865.jpeg" alt="tumblr_nw3epyirlM1uy7xnno2_540.jpg"/></p><p><br/></p>', '2015-10-30 19:41:32', '2015-10-30 19:41:32', NULL),
(46, 6, 9, '<p><img src="/uploads/ueditor/php/upload/image/20151102/1446430104769029.jpeg" style="" title="1446430104769029.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151102/1446430105222863.jpeg" style="" title="1446430105222863.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151102/1446430105896779.jpeg" style="" title="1446430105896779.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151102/1446430107885660.jpeg" style="" title="1446430107885660.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151102/1446430108956270.jpeg" style="" title="1446430108956270.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151102/1446430109419130.jpeg" style="" title="1446430109419130.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151102/1446430113345616.jpeg" style="" title="1446430113345616.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151102/1446430143858689.png" style="" title="1446430143858689.png"/></p><p><br/></p>', '2015-11-01 18:13:12', '2015-11-01 18:13:12', NULL),
(47, 7, 9, '<p><img src="/uploads/ueditor/php/upload/image/20151103/1446533787742623.jpeg" title="1446533787742623.jpeg" alt="tumblr_nvpncpnwZf1uhkm7ro10_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446538954547102.jpeg" title="1446538954547102.jpeg" alt="tumblr_nwmp7bCgvc1unw9q0o1_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446538983808525.png" title="1446538983808525.png" alt="tumblr_nwzhdi56tY1ssbwqro1_540.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446538997662387.jpeg" title="1446538997662387.jpeg" alt="tumblr_nwz9wuNVC91unw9q0o1_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446533843543459.png" title="1446533843543459.png" alt="tumblr_nwg6yicazD1ssbwqro1_540.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446533864126115.jpeg" title="1446533864126115.jpeg" alt="tumblr_nx75xxNxFf1unw9q0o1_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446533888437794.png" title="1446533888437794.png" alt="tumblr_nwzki2mOPJ1unw9q0o1_1280.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446533918777750.png" title="1446533918777750.png" alt="tumblr_nwoke4X8CW1ssbwqro1_540.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446533955558723.jpeg" title="1446533955558723.jpeg" alt="tumblr_nx1u70o0d31unw9q0o1_1280.jpg"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446533983573165.png" title="1446533983573165.png" alt="tumblr_nwjx0aE2R01uy7xnno1_500.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20151103/1446534015923668.png" title="1446534015923668.png" alt="tumblr_nwws8pbtlv1ssbwqro3_540.png"/></p>', '2015-11-02 23:00:23', '2015-11-03 00:23:24', NULL),
(48, 8, 69, '最近在学习，求讨论', '2015-11-06 23:42:48', '2015-11-06 23:42:48', NULL),
(49, 8, 69, '似懂非懂。。。', '2015-11-06 23:48:30', '2015-11-06 23:48:30', NULL),
(50, 4, 69, '不知道哦。。', '2015-11-06 23:57:07', '2015-11-06 23:57:07', NULL),
(51, 8, 69, '是的范德萨发生的', '2015-11-07 00:06:24', '2015-11-07 00:06:24', NULL),
(52, 8, 69, '第三方第三方', '2015-11-07 00:06:29', '2015-11-07 00:06:29', NULL),
(53, 4, 69, 'jjjjjjjj', '2015-11-07 19:29:20', '2015-11-07 19:29:20', NULL),
(54, 4, 29, '<p>朋友请不要Spam，有问题我一定会知无不言的，谢谢！</p>', '2015-11-07 21:16:08', '2015-11-07 21:16:08', NULL),
(55, 8, 29, '<p>百度了一下，这个框架好像刚开发出来，不是很了解，有什么优势吗？</p>', '2015-11-07 21:17:30', '2015-11-07 21:17:30', NULL),
(56, 8, 69, '界面很好看，功能很强大，就是存在很多缺陷', '2015-11-08 03:38:14', '2015-11-08 03:38:14', NULL),
(57, 8, 69, 'sdsfdfdsf', '2015-11-15 18:51:58', '2015-11-15 18:51:58', NULL),
(58, 8, 69, 'dsfsdfdsf', '2015-11-15 20:19:27', '2015-11-15 20:19:27', NULL),
(59, 9, 105, 'laravel 5.1我用reset password函数以后可以登陆进去 但是我退出重新登陆以后就再也不能登陆了，老是提示账号密码不匹配，你知道这个是咋么回事吗？\r\n\r\npublic function resetPassword($token)\r\n    {\r\n        return view(''auth.reset_password'')->with(''token'', $token);\r\n    }\r\n\r\n    public function saveResetPassword(Request $request)\r\n    {\r\n        $controller = new PasswordController();\r\n        $controller->redirectTo = $this->redirectPath;\r\n        return $controller->postReset($request);\r\n    }\r\n这是我的代码。上面是reset password form.\r\n下面是 process function 我可以成功reset同时登陆进去，但是当我退出再登陆就是不行的 我对比了下2次bcryot的加密字符串\r\n在reset function 里        bcrypt(123456) = $2y$10$440WTn7lORo/qFxzuP.cI.pNSr5YEulAIzbW.9Qc8.U5WDOxP9RA.\r\n但是在processLogin 里 bcrypt(123456) = $2y$10$NI2OZ6g.kx8hG9pDcYkVlen5hkSzZqRIC4BAWqkNKwv.hVpJFHfVG', '2015-12-06 08:57:12', '2015-12-06 08:57:12', NULL),
(60, 9, 29, '<p><span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);">bcrypt()出现不同结果是正常的，，但是对应的都是 123456;<br/><br/>你不要写个SaveResetPassword的方法，直接用laravel自带的方法：</span></p><p><span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);"><br/></span></p><pre>//&nbsp;Password&nbsp;reset&nbsp;link&nbsp;request&nbsp;routes...\r\nRoute::get(&#39;password/email&#39;,&nbsp;&#39;Auth\\PasswordController@getEmail&#39;);\r\nRoute::post(&#39;password/email&#39;,&nbsp;&#39;Auth\\PasswordController@postEmail&#39;);\r\n//&nbsp;Password&nbsp;reset&nbsp;routes...\r\nRoute::get(&#39;password/reset/{token}&#39;,&nbsp;&#39;Auth\\PasswordController@getReset&#39;);\r\nRoute::post(&#39;password/reset&#39;,&nbsp;&#39;Auth\\PasswordController@postReset&#39;);</pre><p><br/>&nbsp;具体看<a href="http://laravelbase.com/collections/1/51" target="_self">http://laravelbase.com/collections/1/51</a>，先这样操作看看有没有问题</p>', '2015-12-08 17:06:52', '2015-12-08 17:06:52', NULL),
(61, 10, 115, '作者真地写出了很多细节，真是叹为观止！', '2015-12-18 04:29:15', '2015-12-18 04:29:15', NULL),
(62, 10, 115, '顺便问个问题，很多全局门面，比如：Input, Request, Auth,\r\n在其他地方可以直接使用，但在控制器使用需要 use App\\Auth;\r\n这是什么机制？', '2015-12-18 05:10:06', '2015-12-18 05:10:43', NULL),
(63, 11, 130, '想参考学习一下', '2016-01-12 16:39:12', '2016-01-12 16:39:12', NULL),
(64, 12, 134, '谢谢作者提供资源', '2016-01-15 06:04:43', '2016-01-15 06:04:43', NULL),
(65, 11, 74, '太忙，有很多代码还没清理，暂时还没放到github', '2016-01-23 17:18:40', '2016-01-23 17:18:40', NULL),
(66, 12, 74, '谢谢支持！', '2016-01-23 17:19:09', '2016-01-23 17:19:09', NULL),
(67, 10, 74, '谢谢支持！  这都是因为命名空间，，你在其他地方使用，比如view里，是因为view的命名空间和 Input, Request, Auth 这些在同一个位置，，而controller 是在app目录的，所以命名空间不一样，需要use 指定一下。', '2016-01-23 17:21:34', '2016-01-23 17:21:34', NULL),
(68, 13, 139, '不知道本站是否开源，希望得到本网站代码学习laravel', '2016-01-23 18:05:25', '2016-01-23 18:05:25', NULL),
(69, 14, 9, '<p><img src="/uploads/ueditor/php/upload/image/20160124/1453606215623926.png" style="" title="1453606215623926.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606216338968.png" style="" title="1453606216338968.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606220488157.png" style="" title="1453606220488157.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606220742498.png" style="" title="1453606220742498.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606221939745.jpeg" style="" title="1453606221939745.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606224843180.png" style="" title="1453606224843180.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606226375820.png" style="" title="1453606226375820.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606226297292.png" style="" title="1453606226297292.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606227975149.jpeg" style="" title="1453606227975149.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606228142229.jpeg" style="" title="1453606228142229.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606229748174.jpeg" style="" title="1453606229748174.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606229687898.jpeg" style="" title="1453606229687898.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606230759075.jpeg" style="" title="1453606230759075.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606231409441.jpeg" style="" title="1453606231409441.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606231402319.png" style="" title="1453606231402319.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606232802624.jpeg" style="" title="1453606232802624.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160124/1453606235912319.png" style="" title="1453606235912319.png"/></p><p><br/></p>', '2016-01-23 19:30:51', '2016-01-23 19:30:51', NULL),
(70, 15, 146, '请问在哪可以看到这方面的解说或教程\r\n\r\n假如我在路由里面定义了一个：\r\nroute::get(''admin/dashboard'',''DashboardController@index'');\r\n\r\n我在blade里面用 {{ route(''admin/dashboard'') }} 这样出错，用 {{ url(''admin/dashboard'') }} 这样正常，但是如果要带URL参数又不可以了', '2016-01-30 21:18:48', '2016-01-30 21:18:48', NULL),
(71, 15, 160, '我也碰到这样问题了，楼主找到了吗。', '2016-02-21 06:47:06', '2016-02-21 06:47:06', NULL),
(72, 16, 123, '楼主什么开源本站啊^-^', '2016-03-06 18:27:01', '2016-03-06 18:27:01', NULL),
(73, 16, 29, '<p>这个站的代码写得太潦草了，等我有时间整理一下就开源</p>', '2016-03-11 22:23:04', '2016-03-11 22:23:04', NULL),
(74, 15, 29, '<p><a href="http://laravelbase.com/collections/1/36" _src="http://laravelbase.com/collections/1/36">http://laravelbase.com/collections/1/36</a> </p><p>只能是</p><p><span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);">&nbsp;{{ route(&#39;admin.dashboard&#39;) }} 这样写，<span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);">admin.dashboard是你定义的路由名称，没定义就不能用route()方法；定义路由名称有利于解耦。</span></span></p>', '2016-03-11 22:25:43', '2016-03-11 22:25:43', NULL),
(75, 17, 172, '十分感谢有这样一个站点，希望它火起来，希望Laravel在中国迅速壮大起来！', '2016-03-13 22:28:34', '2016-03-13 22:28:34', NULL),
(76, 18, 173, 'bbbbb', '2016-03-14 03:17:57', '2016-03-19 00:33:26', '2016-03-19 00:33:26'),
(77, 17, 29, '<p>谢谢支持！</p>', '2016-03-19 00:31:38', '2016-03-19 00:31:38', NULL),
(78, 19, 29, '<p><img src="/uploads/ueditor/php/upload/image/20160325/1458899880240987.jpeg" style="" title="1458899880240987.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899880413957.jpeg" style="" title="1458899880413957.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899882142297.jpeg" style="" title="1458899882142297.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899883996934.jpeg" style="" title="1458899883996934.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899885118014.jpeg" style="" title="1458899885118014.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899885562266.jpeg" style="" title="1458899885562266.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899890468722.jpeg" style="" title="1458899890468722.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899890744811.jpeg" style="" title="1458899890744811.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899891828346.png" style="" title="1458899891828346.png"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899895733344.jpeg" style="" title="1458899895733344.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899895115633.jpeg" style="" title="1458899895115633.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899896874138.jpeg" style="" title="1458899896874138.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899897999440.jpeg" style="" title="1458899897999440.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899898559357.jpeg" style="" title="1458899898559357.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899898323655.jpeg" style="" title="1458899898323655.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899899347271.jpeg" style="" title="1458899899347271.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899900873543.jpeg" style="" title="1458899900873543.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899900516058.jpeg" style="" title="1458899900516058.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899901892549.jpeg" style="" title="1458899901892549.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899902528647.jpeg" style="" title="1458899902528647.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899903317962.jpeg" style="" title="1458899903317962.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899903282898.jpeg" style="" title="1458899903282898.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899904278258.jpeg" style="" title="1458899904278258.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899904896734.jpeg" style="" title="1458899904896734.jpeg"/></p><p><img src="/uploads/ueditor/php/upload/image/20160325/1458899904610571.jpeg" style="" title="1458899904610571.jpeg"/></p><p><br/></p>', '2016-03-25 01:58:44', '2016-03-25 01:58:44', NULL),
(79, 20, 29, '<p>v车测试</p>', '2016-04-06 23:23:54', '2016-04-08 02:20:25', '2016-04-08 02:20:25'),
(80, 21, 211, '找了好多教程~  还是你的 最让人 通俗易懂！  非常棒加油！', '2016-04-12 17:58:48', '2016-04-12 17:58:48', NULL),
(81, 21, 29, '<p>谢谢支持！！</p>', '2016-04-20 21:08:36', '2016-04-20 21:08:36', NULL),
(82, 16, 237, '开源了吗 好棒的网站！', '2016-05-13 05:18:46', '2016-05-13 05:18:46', NULL),
(83, 22, 240, '你说的“Laravel 有一个核心类，叫做application, 程序启动的时候就实例化了这个类， 放到$app, 这个类就是 ioc容器”\r\n\r\n那么文档里这段代码：$fooBar = $app->make(''FooBar''); 放哪里才能用呢？只能在服务提供者的boot方法里用$this->app->make()可以用啊。\r\n一般是在控制器或模型里make吧，但那里面找不到这个$app变量呢', '2016-05-17 00:41:01', '2016-05-17 00:41:01', NULL),
(84, 23, 271, '楼主，请问，你这个开源地址在哪里啊 ，有的话，发一个，谢谢', '2016-06-19 19:04:34', '2016-06-19 19:04:34', NULL),
(85, 24, 279, '放到git上让大家学习一下吧', '2016-06-30 00:05:49', '2016-06-30 00:05:49', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `forum_threads`
--

CREATE TABLE IF NOT EXISTS `forum_threads` (
  `id` int(10) unsigned NOT NULL,
  `parent_category` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinned` int(10) unsigned NOT NULL,
  `locked` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `view_count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `forum_threads`
--

INSERT INTO `forum_threads` (`id`, `parent_category`, `author_id`, `title`, `pinned`, `locked`, `created_at`, `updated_at`, `deleted_at`, `view_count`) VALUES
(1, 1, 10, '不要讨论的内容', 1, 1, '2015-09-15 03:49:24', '2015-09-15 03:51:29', NULL, 3287),
(2, 1, 13, '习近平接受路透社采访时强调 共同开启中英全面战略伙伴关系的“黄金时代” 为中欧关系全面推进注入新动力', 0, 0, '2015-10-16 17:44:49', '2015-10-24 19:28:22', '2015-10-24 19:28:22', 94),
(3, 2, 9, '福利10-20', 0, 0, '2015-10-20 08:16:47', '2015-10-20 08:16:47', NULL, 1023),
(4, 1, 9, '怎样获取当前的路由和路由路径啊？', 0, 0, '2015-10-27 21:31:30', '2015-11-07 21:16:08', NULL, 895),
(5, 2, 29, '福利10-31', 0, 0, '2015-10-30 19:41:32', '2015-10-30 19:41:32', NULL, 474),
(6, 2, 9, '11-2', 0, 0, '2015-11-01 18:13:12', '2015-11-01 18:13:12', NULL, 367),
(7, 2, 9, '福利11-3', 0, 0, '2015-11-02 23:00:23', '2015-11-02 23:00:23', NULL, 426),
(8, 1, 69, '有没有会b-jui的', 0, 0, '2015-11-06 23:42:48', '2015-11-15 20:19:27', NULL, 879),
(9, 1, 105, '楼主想请教你个问题', 0, 0, '2015-12-06 08:57:12', '2015-12-08 17:06:52', NULL, 580),
(10, 1, 115, '为了作者辛苦，赞一个。', 0, 0, '2015-12-18 04:29:15', '2016-01-23 17:21:34', NULL, 607),
(11, 1, 130, '请问楼主，你的这个项目有没有放到github上啊', 0, 0, '2016-01-12 16:39:12', '2016-01-23 17:18:40', NULL, 567),
(12, 1, 134, '顶你', 0, 0, '2016-01-15 06:04:43', '2016-01-23 17:19:09', NULL, 392),
(13, 1, 139, '一年新手学习laravel', 0, 0, '2016-01-23 18:05:25', '2016-01-23 18:05:25', NULL, 485),
(14, 2, 9, '1-24福利', 0, 0, '2016-01-23 19:30:51', '2016-01-23 19:30:51', NULL, 281),
(15, 1, 146, '新人请问生成URL相关函数？', 0, 0, '2016-01-30 21:18:48', '2016-03-11 22:25:43', NULL, 1305),
(16, 1, 123, '楼主什么开源本站', 0, 0, '2016-03-06 18:27:01', '2016-05-13 05:18:46', NULL, 557),
(17, 1, 172, 'Thank you for doing this', 0, 0, '2016-03-13 22:28:34', '2016-03-19 00:31:38', NULL, 551),
(18, 1, 173, 'test', 0, 0, '2016-03-14 03:17:57', '2016-03-19 00:33:26', '2016-03-19 00:33:26', 15),
(19, 2, 29, '福利3-25', 0, 0, '2016-03-25 01:58:44', '2016-03-25 01:58:44', NULL, 185),
(20, 1, 29, ' 测试', 0, 0, '2016-04-06 23:23:54', '2016-04-08 02:20:25', '2016-04-08 02:20:25', 6),
(21, 1, 211, '站长辛苦了！', 0, 0, '2016-04-12 17:58:48', '2016-04-20 21:08:36', NULL, 263),
(22, 1, 240, 'IOC容器的文档里提到的$app变量在哪才能用？', 0, 0, '2016-05-17 00:41:01', '2016-05-17 00:41:01', NULL, 208),
(23, 1, 271, '开源地址？？？', 0, 0, '2016-06-19 19:04:34', '2016-06-19 19:04:34', NULL, 124),
(24, 1, 279, '老板，放到git上让大家学习一下吧', 0, 0, '2016-06-30 00:05:49', '2016-06-30 00:05:49', NULL, 88);

-- --------------------------------------------------------

--
-- 表的结构 `forum_threads_read`
--

CREATE TABLE IF NOT EXISTS `forum_threads_read` (
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `forum_threads_read`
--

INSERT INTO `forum_threads_read` (`thread_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 10, '2015-09-15 03:51:05', '2015-09-15 03:51:29'),
(2, 13, '2015-10-16 17:44:49', '2015-10-24 19:13:15'),
(2, 12, '2015-10-17 19:46:40', '2015-10-17 19:46:48'),
(2, 9, '2015-10-18 19:41:50', '2015-10-24 19:12:40'),
(3, 9, '2015-10-20 08:16:47', '2015-10-20 08:16:47'),
(3, 13, '2015-10-22 18:57:47', '2015-10-22 18:57:47'),
(3, 10, '2015-10-24 00:15:10', '2015-10-24 00:15:10'),
(2, 10, '2015-10-24 02:45:36', '2015-10-24 07:13:15'),
(3, 16, '2015-10-27 00:25:15', '2015-10-27 00:25:15'),
(3, 18, '2015-10-27 16:28:13', '2015-10-27 16:28:13'),
(4, 9, '2015-10-27 21:31:30', '2015-11-08 03:53:08'),
(4, 13, '2015-10-27 21:31:59', '2015-10-27 21:44:41'),
(3, 28, '2015-10-28 16:58:40', '2015-10-28 16:58:40'),
(4, 28, '2015-10-28 18:13:57', '2015-10-28 18:13:57'),
(4, 29, '2015-10-28 23:02:52', '2015-11-07 21:16:09'),
(4, 30, '2015-10-28 23:20:31', '2015-10-28 23:21:16'),
(3, 29, '2015-10-29 00:04:15', '2015-10-29 00:04:15'),
(5, 29, '2015-10-30 19:41:32', '2015-10-30 19:41:32'),
(4, 37, '2015-11-01 04:34:10', '2015-11-01 04:34:10'),
(6, 9, '2015-11-01 18:13:12', '2015-11-01 18:13:12'),
(5, 9, '2015-11-01 18:33:44', '2015-11-01 18:33:44'),
(6, 29, '2015-11-01 22:36:50', '2015-11-01 22:36:50'),
(7, 9, '2015-11-02 23:00:23', '2015-11-02 23:00:23'),
(4, 18, '2015-11-03 22:27:17', '2015-11-03 22:27:17'),
(7, 66, '2015-11-05 16:36:38', '2015-11-05 16:36:38'),
(4, 69, '2015-11-06 23:40:17', '2015-11-08 03:40:51'),
(8, 69, '2015-11-06 23:42:49', '2015-11-15 20:19:27'),
(8, 29, '2015-11-07 18:31:18', '2015-11-08 10:23:40'),
(7, 29, '2015-11-07 21:22:07', '2015-11-07 21:22:07'),
(8, 9, '2015-11-10 05:18:48', '2015-11-20 20:25:28'),
(4, 73, '2015-11-17 00:24:40', '2015-11-17 00:24:40'),
(4, 80, '2015-11-19 20:11:23', '2015-11-19 20:11:23'),
(9, 105, '2015-12-06 08:57:12', '2015-12-06 08:57:12'),
(9, 74, '2015-12-08 16:54:18', '2015-12-08 16:54:18'),
(9, 37, '2015-12-08 16:54:57', '2015-12-08 16:54:57'),
(9, 29, '2015-12-08 17:02:32', '2015-12-08 17:06:52'),
(9, 112, '2015-12-15 02:24:49', '2015-12-15 02:24:49'),
(10, 115, '2015-12-18 04:29:15', '2015-12-18 05:10:06'),
(11, 130, '2016-01-12 16:39:12', '2016-01-12 16:39:12'),
(11, 129, '2016-01-13 00:24:45', '2016-01-13 00:24:45'),
(12, 134, '2016-01-15 06:04:43', '2016-01-15 06:04:43'),
(11, 74, '2016-01-23 17:17:58', '2016-01-23 17:18:41'),
(12, 74, '2016-01-23 17:18:54', '2016-01-23 17:19:09'),
(10, 74, '2016-01-23 17:21:34', '2016-01-23 17:21:34'),
(13, 139, '2016-01-23 18:05:25', '2016-01-23 18:05:25'),
(10, 139, '2016-01-23 18:05:52', '2016-01-23 18:05:52'),
(12, 139, '2016-01-23 18:06:12', '2016-01-23 18:06:12'),
(14, 9, '2016-01-23 19:30:52', '2016-01-23 19:30:52'),
(11, 140, '2016-01-24 09:48:58', '2016-01-24 09:48:58'),
(13, 146, '2016-01-30 12:24:10', '2016-01-30 12:24:10'),
(10, 146, '2016-01-30 12:24:17', '2016-01-30 12:24:17'),
(11, 146, '2016-01-30 12:24:35', '2016-01-30 12:24:35'),
(15, 146, '2016-01-30 21:18:48', '2016-02-27 05:02:08'),
(12, 160, '2016-02-21 06:15:52', '2016-02-21 06:15:52'),
(11, 160, '2016-02-21 06:15:56', '2016-02-21 06:15:56'),
(15, 160, '2016-02-21 06:41:38', '2016-02-21 06:47:06'),
(10, 160, '2016-02-21 06:44:31', '2016-02-21 06:44:31'),
(13, 160, '2016-02-21 06:45:21', '2016-02-21 06:45:21'),
(15, 76, '2016-02-24 20:13:01', '2016-02-24 20:13:01'),
(16, 123, '2016-03-06 18:27:01', '2016-03-06 18:27:01'),
(15, 123, '2016-03-06 18:34:14', '2016-03-06 18:34:14'),
(16, 29, '2016-03-11 22:22:25', '2016-03-11 22:23:04'),
(15, 29, '2016-03-11 22:23:33', '2016-03-11 22:25:43'),
(17, 172, '2016-03-13 22:28:34', '2016-03-13 22:28:34'),
(18, 173, '2016-03-14 03:17:57', '2016-03-14 03:17:57'),
(15, 173, '2016-03-14 03:18:15', '2016-03-14 03:18:15'),
(18, 29, '2016-03-19 00:31:18', '2016-03-19 00:31:18'),
(17, 29, '2016-03-19 00:31:26', '2016-03-19 00:31:38'),
(16, 177, '2016-03-19 23:35:50', '2016-03-19 23:35:50'),
(17, 177, '2016-03-20 00:10:27', '2016-03-20 00:10:27'),
(16, 86, '2016-03-22 02:08:10', '2016-03-22 02:08:10'),
(19, 29, '2016-03-25 01:58:44', '2016-03-25 01:58:44'),
(16, 125, '2016-03-29 00:50:05', '2016-06-12 19:36:24'),
(17, 195, '2016-03-30 20:51:17', '2016-03-30 20:51:17'),
(16, 200, '2016-04-01 17:23:53', '2016-04-01 17:23:53'),
(16, 201, '2016-04-02 04:12:19', '2016-04-02 04:12:19'),
(16, 202, '2016-04-05 21:49:47', '2016-04-05 21:49:47'),
(20, 29, '2016-04-06 23:23:54', '2016-04-06 23:23:54'),
(21, 211, '2016-04-12 17:58:48', '2016-04-12 17:58:48'),
(21, 29, '2016-04-20 21:08:23', '2016-04-20 21:08:36'),
(16, 237, '2016-05-13 05:18:47', '2016-05-13 05:18:47'),
(22, 240, '2016-05-17 00:41:02', '2016-05-17 00:41:02'),
(16, 244, '2016-05-19 08:20:43', '2016-05-19 08:20:43'),
(22, 261, '2016-06-04 23:41:40', '2016-06-04 23:41:40'),
(16, 261, '2016-06-04 23:42:33', '2016-06-04 23:42:33'),
(23, 271, '2016-06-19 19:04:34', '2016-06-19 19:04:34'),
(23, 29, '2016-06-29 03:28:28', '2016-06-29 03:28:28'),
(24, 279, '2016-06-30 00:05:49', '2016-06-30 00:05:49'),
(24, 274, '2016-06-30 22:01:32', '2016-06-30 22:01:32'),
(23, 274, '2016-06-30 22:01:39', '2016-06-30 22:01:39'),
(24, 284, '2016-07-08 01:57:36', '2016-07-08 01:57:36'),
(23, 284, '2016-07-08 01:57:48', '2016-07-08 01:57:48');

-- --------------------------------------------------------

--
-- 表的结构 `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `manipulations` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8_unicode_ci NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 2, 'Modules\\Blog\\Entities\\Post', 'media', 'wtzqtc_150905010632', 'wtzqtc_150905010632.jpg', 'media', 37065, '[]', '[]', NULL, '2015-09-04 17:07:33', '2015-09-04 17:07:33'),
(8, 33, 'Modules\\Blog\\Entities\\Post', 'media', 'rxnibk_151020121907', 'rxnibk_151020121907.jpg', 'media', 14862, '[]', '[]', 4, '2015-10-19 16:19:11', '2015-10-19 16:19:11'),
(12, 34, 'Modules\\Blog\\Entities\\Post', 'media', 'iupzpl_151020125306', 'iupzpl_151020125306.jpg', 'media', 20434, '[]', '[]', 7, '2015-10-19 16:53:12', '2015-10-19 16:53:12'),
(13, 35, 'Modules\\Blog\\Entities\\Post', 'media', 'vybkau_151020010431', 'vybkau_151020010431.jpg', 'media', 23608, '[]', '[]', 8, '2015-10-19 17:04:35', '2015-10-19 17:04:35'),
(14, 36, 'Modules\\Blog\\Entities\\Post', 'media', 'vggtya_151020010833', 'vggtya_151020010833.jpg', 'media', 18984, '[]', '[]', 9, '2015-10-19 17:08:41', '2015-10-19 17:08:41'),
(15, 37, 'Modules\\Blog\\Entities\\Post', 'media', 'dmgscz_151020011241', 'dmgscz_151020011241.jpg', 'media', 19816, '[]', '[]', 10, '2015-10-19 17:12:48', '2015-10-19 17:12:48'),
(16, 38, 'Modules\\Blog\\Entities\\Post', 'media', 'bqgsir_151020011521', 'bqgsir_151020011521.jpg', 'media', 18867, '[]', '[]', 11, '2015-10-19 17:15:26', '2015-10-19 17:15:26'),
(17, 39, 'Modules\\Blog\\Entities\\Post', 'media', 'uqlmaw_151020011748', 'uqlmaw_151020011748.jpg', 'media', 20071, '[]', '[]', 12, '2015-10-19 17:17:51', '2015-10-19 17:17:51'),
(18, 40, 'Modules\\Blog\\Entities\\Post', 'media', 'zhjhuc_151020011904', 'zhjhuc_151020011904.jpg', 'media', 18331, '[]', '[]', 13, '2015-10-19 17:19:07', '2015-10-19 17:19:07'),
(20, 28, 'Modules\\Blog\\Entities\\Post', 'media', 'dwgvon_151020035351', 'dwgvon_151020035351.jpg', 'media', 19571, '[]', '[]', 15, '2015-10-20 07:53:55', '2015-10-20 07:53:55'),
(22, 1, 'Modules\\Blog\\Entities\\Collection', 'media', 'azzzeg_151020114643', 'azzzeg_151020114643.jpg', 'media', 22822, '[]', '[]', 16, '2015-10-20 15:46:50', '2015-10-20 15:46:50'),
(23, 43, 'Modules\\Blog\\Entities\\Post', 'media', 'ftcxru_151026013053', 'ftcxru_151026013053.jpg', 'media', 17051, '[]', '[]', 17, '2015-10-25 17:30:56', '2015-10-25 17:30:56'),
(24, 44, 'Modules\\Blog\\Entities\\Post', 'media', 'ikusdr_151026045320', 'ikusdr_151026045320.jpg', 'media', 22644, '[]', '[]', 18, '2015-10-25 20:54:04', '2015-10-25 20:54:04'),
(25, 45, 'Modules\\Blog\\Entities\\Post', 'media', 'fytxiv_151026063557', 'fytxiv_151026063557.jpg', 'media', 19842, '[]', '[]', 19, '2015-10-25 22:36:01', '2015-10-25 22:36:01'),
(26, 47, 'Modules\\Blog\\Entities\\Post', 'media', 'dlgonx_151026122020', 'dlgonx_151026122020.jpg', 'media', 15357, '[]', '[]', 20, '2015-10-26 04:40:14', '2015-10-26 04:40:14'),
(27, 46, 'Modules\\Blog\\Entities\\Post', 'media', 'wsglja_151026124036', 'wsglja_151026124036.jpg', 'media', 20558, '[]', '[]', 21, '2015-10-26 04:40:39', '2015-10-26 04:40:39'),
(28, 48, 'Modules\\Blog\\Entities\\Post', 'media', 'nluqdn_151026020937', 'nluqdn_151026020937.jpg', 'media', 18901, '[]', '[]', 22, '2015-10-26 06:26:24', '2015-10-26 06:26:24'),
(29, 49, 'Modules\\Blog\\Entities\\Post', 'media', 'axqlgs_151026022913', 'axqlgs_151026022913.jpg', 'media', 17477, '[]', '[]', 23, '2015-10-26 06:55:01', '2015-10-26 06:55:01'),
(30, 50, 'Modules\\Blog\\Entities\\Post', 'media', 'bfwvlo_151028025517', 'bfwvlo_151028025517.jpg', 'media', 36911, '[]', '[]', 24, '2015-10-27 18:55:20', '2015-10-27 18:55:20'),
(31, 58, 'Modules\\Blog\\Entities\\Post', 'media', 'hyvcwt_151102010055', 'hyvcwt_151102010055.jpg', 'media', 18039, '[]', '[]', 25, '2015-11-01 17:00:58', '2015-11-01 17:00:58'),
(34, 60, 'Modules\\Blog\\Entities\\Post', 'media', 'tpalnn_151103071711', 'tpalnn_151103071711.jpg', 'media', 37727, '[]', '[]', 26, '2015-11-02 23:17:14', '2015-11-02 23:17:14'),
(35, 61, 'Modules\\Blog\\Entities\\Post', 'media', 'rykupb_151103035843', 'rykupb_151103035843.jpg', 'media', 13491, '[]', '[]', 27, '2015-11-03 07:58:46', '2015-11-03 07:58:46'),
(36, 59, 'Modules\\Blog\\Entities\\Post', 'media', 'kibvio_151103035905', 'kibvio_151103035905.jpg', 'media', 13752, '[]', '[]', 28, '2015-11-03 07:59:08', '2015-11-03 07:59:08'),
(37, 57, 'Modules\\Blog\\Entities\\Post', 'media', 'fxwshb_151103035922', 'fxwshb_151103035922.jpg', 'media', 14395, '[]', '[]', 29, '2015-11-03 07:59:24', '2015-11-03 07:59:24'),
(38, 56, 'Modules\\Blog\\Entities\\Post', 'media', 'jqeoja_151103035941', 'jqeoja_151103035941.jpg', 'media', 18744, '[]', '[]', 30, '2015-11-03 07:59:42', '2015-11-03 07:59:42'),
(39, 55, 'Modules\\Blog\\Entities\\Post', 'media', 'hvwrot_151103035957', 'hvwrot_151103035957.jpg', 'media', 19815, '[]', '[]', 31, '2015-11-03 08:00:03', '2015-11-03 08:00:03'),
(40, 54, 'Modules\\Blog\\Entities\\Post', 'media', 'ehdgog_151103040020', 'ehdgog_151103040020.jpg', 'media', 16968, '[]', '[]', 32, '2015-11-03 08:00:21', '2015-11-03 08:00:21'),
(41, 53, 'Modules\\Blog\\Entities\\Post', 'media', 'mmhlay_151103040037', 'mmhlay_151103040037.jpg', 'media', 16355, '[]', '[]', 33, '2015-11-03 08:00:37', '2015-11-03 08:00:37'),
(42, 52, 'Modules\\Blog\\Entities\\Post', 'media', 'jckggq_151103040048', 'jckggq_151103040048.jpg', 'media', 17872, '[]', '[]', 34, '2015-11-03 08:00:50', '2015-11-03 08:00:50'),
(43, 51, 'Modules\\Blog\\Entities\\Post', 'media', 'lhmsqm_151103040109', 'lhmsqm_151103040109.jpg', 'media', 20875, '[]', '[]', 35, '2015-11-03 08:01:14', '2015-11-03 08:01:14'),
(47, 63, 'Modules\\Blog\\Entities\\Post', 'media', 'woltjc_151107125929', 'woltjc_151107125929.jpg', 'media', 17336, '[]', '[]', 36, '2015-11-06 16:59:32', '2015-11-06 16:59:32'),
(48, 62, 'Modules\\Blog\\Entities\\Post', 'media', 'rzrgbf_151108052118', 'rzrgbf_151108052118.jpg', 'media', 21376, '[]', '[]', 37, '2015-11-07 21:21:21', '2015-11-07 21:21:21'),
(49, 64, 'Modules\\Blog\\Entities\\Post', 'media', 'ifwvpd_151116121404', 'ifwvpd_151116121404.jpg', 'media', 23154, '[]', '[]', 38, '2015-11-15 16:14:09', '2015-11-15 16:14:09'),
(53, 67, 'Modules\\Blog\\Entities\\Post', 'media', 'kqyypv_160312125115', 'kqyypv_160312125115.jpg', 'media', 9412, '[]', '[]', 39, '2016-03-11 16:51:19', '2016-03-11 16:51:19'),
(60, 69, 'Modules\\Blog\\Entities\\Post', 'media', 'kudpmv_160319052301', 'kudpmv_160319052301.jpg', 'media', 15597, '[]', '[]', 44, '2016-03-18 21:23:05', '2016-03-18 21:23:05'),
(62, 66, 'Modules\\Blog\\Entities\\Post', 'media', 'lzkwph_160319053700', 'lzkwph_160319053700.jpg', 'media', 30528, '[]', '[]', 46, '2016-03-18 21:37:09', '2016-03-18 21:37:09'),
(63, 71, 'Modules\\Blog\\Entities\\Post', 'media', 'mqtzju_160319080031', 'mqtzju_160319080031.jpg', 'media', 30528, '[]', '[]', 47, '2016-03-19 00:00:35', '2016-03-19 00:00:35'),
(64, 72, 'Modules\\Blog\\Entities\\Post', 'media', 'zdnvsb_160321043325', 'zdnvsb_160321043325.jpg', 'media', 30659, '[]', '[]', 48, '2016-03-21 08:33:33', '2016-03-21 08:33:33'),
(65, 73, 'Modules\\Blog\\Entities\\Post', 'media', 'ixrvqx_160322010259', 'ixrvqx_160322010259.jpg', 'media', 30659, '[]', '[]', 49, '2016-03-21 17:03:02', '2016-03-21 17:03:02'),
(66, 74, 'Modules\\Blog\\Entities\\Post', 'media', 'jrfklj_160324095854', 'jrfklj_160324095854.jpg', 'media', 30528, '[]', '[]', 50, '2016-03-24 01:58:59', '2016-03-24 01:58:59'),
(70, 76, 'Modules\\Blog\\Entities\\Post', 'media', 'ybpmpu_160325102047', 'ybpmpu_160325102047.jpg', 'media', 19342, '[]', '[]', 52, '2016-03-25 14:20:52', '2016-03-25 14:20:52'),
(72, 75, 'Modules\\Blog\\Entities\\Post', 'media', 'gsivsr_160327123332', 'gsivsr_160327123332.jpg', 'media', 8485, '[]', '[]', 53, '2016-03-26 16:33:38', '2016-03-26 16:33:38'),
(73, 70, 'Modules\\Blog\\Entities\\Post', 'media', 'uussms_160327124030', 'uussms_160327124030.jpg', 'media', 18475, '[]', '[]', 54, '2016-03-26 16:40:35', '2016-03-26 16:40:35'),
(74, 65, 'Modules\\Blog\\Entities\\Post', 'media', 'vfulnh_160327124442', 'vfulnh_160327124442.jpg', 'media', 25134, '[]', '[]', 55, '2016-03-26 16:44:47', '2016-03-26 16:44:47'),
(75, 68, 'Modules\\Blog\\Entities\\Post', 'media', 'fredmx_160327125054', 'fredmx_160327125054.jpg', 'media', 12202, '[]', '[]', 56, '2016-03-26 16:51:01', '2016-03-26 16:51:01'),
(76, 77, 'Modules\\Blog\\Entities\\Post', 'media', 'xvmfha_160327081108', 'xvmfha_160327081108.jpg', 'media', 7242, '[]', '[]', 57, '2016-03-27 00:11:13', '2016-03-27 00:11:13'),
(78, 78, 'Modules\\Blog\\Entities\\Post', 'media', 'pruhqp_160406012445', 'pruhqp_160406012445.jpg', 'media', 7447, '[]', '[]', 58, '2016-04-05 17:24:49', '2016-04-05 17:24:49'),
(79, 79, 'Modules\\Blog\\Entities\\Post', 'media', 'yihbwa_160423051905', 'yihbwa_160423051905.jpg', 'media', 20952, '[]', '[]', 59, '2016-04-22 21:19:09', '2016-04-22 21:19:09');

-- --------------------------------------------------------

--
-- 表的结构 `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `menuset_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `menuset_id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(2, NULL, 5, 6, 0, 1, '专辑', '/collections', '2015-08-24 17:28:48', '2015-09-09 20:25:56'),
(4, NULL, 7, 8, 0, 1, '扩展', '/extensions', '2015-08-24 18:25:47', '2015-09-09 20:25:56'),
(6, NULL, 3, 4, 0, 1, '首页', '/', '2015-08-24 22:37:09', '2015-09-09 20:25:56'),
(7, NULL, 9, 10, 0, 1, '导航', '/sites', '2015-09-09 20:44:19', '2015-09-09 20:44:19'),
(8, NULL, 11, 12, 0, 1, '速查', '/cheatsheet', '2015-09-09 20:45:38', '2015-09-09 20:45:38'),
(9, NULL, 13, 14, 0, 1, '讨论', '/forum/1-wd', '2015-09-09 20:45:59', '2016-07-13 20:36:55'),
(10, NULL, 15, 16, 0, 1, '关于', '/page/1', '2015-09-09 20:47:26', '2016-07-13 20:36:55'),
(11, NULL, 17, 20, 0, 3, 'rewrew', 'rewr', '2016-04-22 02:45:33', '2016-04-22 02:45:47'),
(12, 11, 18, 19, 1, 3, 'rewrew', 'rwerrwer', '2016-04-22 02:45:47', '2016-04-22 02:45:47');

-- --------------------------------------------------------

--
-- 表的结构 `menusets`
--

CREATE TABLE IF NOT EXISTS `menusets` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `default` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `menusets`
--

INSERT INTO `menusets` (`id`, `name`, `created_at`, `updated_at`, `default`) VALUES
(1, '主菜单', '2015-08-24 17:21:02', '2015-08-29 05:14:29', 0),
(2, '副菜单', '2015-08-24 21:22:10', '2015-08-29 05:14:29', 1),
(3, '颠三倒四', '2016-04-22 02:44:43', '2016-04-22 02:44:43', 0);

-- --------------------------------------------------------

--
-- 表的结构 `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `messages`
--

INSERT INTO `messages` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(88, 38, 9, 'dasdasdasd', '2015-08-21 00:54:54', '2015-08-21 00:54:54'),
(89, 39, 9, 'dadsad', '2015-08-21 00:55:07', '2015-08-21 00:55:07'),
(90, 40, 9, 'adasdasdda', '2015-08-21 00:55:54', '2015-08-21 00:55:54'),
(91, 40, 10, 'hhh', '2015-08-21 02:39:31', '2015-08-21 02:39:31'),
(92, 40, 10, 'sdsd', '2015-08-21 02:39:47', '2015-08-21 02:39:47'),
(93, 40, 10, 'dadasd', '2015-08-21 02:40:18', '2015-08-21 02:40:18'),
(94, 40, 10, 'dasd', '2015-08-21 02:45:24', '2015-08-21 02:45:24'),
(95, 40, 10, 'fdfd', '2015-08-21 02:45:31', '2015-08-21 02:45:31'),
(96, 40, 9, 'sdsad', '2015-08-21 02:47:12', '2015-08-21 02:47:12'),
(97, 40, 10, 'dsda', '2015-08-21 02:47:50', '2015-08-21 02:47:50'),
(98, 40, 10, '但是', '2015-08-21 03:40:36', '2015-08-21 03:40:36'),
(99, 40, 10, '大大', '2015-08-21 03:40:46', '2015-08-21 03:40:46'),
(100, 40, 10, '岂有此理', '2015-08-29 05:16:44', '2015-08-29 05:16:44'),
(101, 40, 10, '岂有此理', '2015-08-29 05:16:58', '2015-08-29 05:16:58'),
(102, 40, 10, '岂有此理', '2015-08-29 05:17:04', '2015-08-29 05:17:04'),
(103, 40, 10, '岂有此理', '2015-08-29 05:17:14', '2015-08-29 05:17:14'),
(104, 40, 10, '岂有此理', '2015-08-29 05:17:21', '2015-08-29 05:17:21'),
(105, 40, 10, '岂有此理', '2015-08-29 05:17:27', '2015-08-29 05:17:27'),
(106, 40, 10, '岂有此理', '2015-08-29 05:17:33', '2015-08-29 05:17:33'),
(107, 40, 10, '岂有此理', '2015-08-29 05:17:38', '2015-08-29 05:17:38'),
(108, 40, 10, '岂有此理', '2015-08-29 05:17:44', '2015-08-29 05:17:44'),
(109, 40, 13, 'fsdf', '2015-10-23 18:32:51', '2015-10-23 18:32:51'),
(110, 41, 13, 'fdsfdsf', '2015-10-23 18:34:45', '2015-10-23 18:34:45'),
(111, 42, 13, 'what hell?', '2015-10-24 00:08:37', '2015-10-24 00:08:37'),
(112, 43, 10, '<p>what the fuck?</p>', '2015-10-24 04:43:35', '2015-10-24 04:43:35'),
(113, 44, 10, '<p>what the fuck?</p>', '2015-10-24 04:44:23', '2015-10-24 04:44:23'),
(114, 45, 10, '<p>what the fuck?</p>', '2015-10-24 04:44:55', '2015-10-24 04:44:55'),
(115, 46, 10, '<p>what the fuck?</p>', '2015-10-24 04:45:47', '2015-10-24 04:45:47'),
(116, 47, 10, '<p>what the fuck?</p>', '2015-10-24 04:47:23', '2015-10-24 04:47:23'),
(117, 48, 10, '<p>what the fuck?</p>', '2015-10-24 04:47:49', '2015-10-24 04:47:49'),
(118, 49, 10, '<p>what the fuck?</p>', '2015-10-24 04:47:56', '2015-10-24 04:47:56'),
(119, 50, 10, '<p>what the fuck?</p>', '2015-10-24 04:48:12', '2015-10-24 04:48:12'),
(120, 51, 10, '<p>what the fuck?</p>', '2015-10-24 04:48:21', '2015-10-24 04:48:21'),
(121, 52, 10, '<p>what the fuck?</p>', '2015-10-24 04:48:58', '2015-10-24 04:48:58'),
(122, 53, 10, '<p>what the fuck?</p>', '2015-10-24 04:49:48', '2015-10-24 04:49:48'),
(123, 54, 10, '<p>what the fuck?</p>', '2015-10-24 04:50:19', '2015-10-24 04:50:19'),
(124, 55, 10, '<p>what the fuck?</p>', '2015-10-24 04:50:35', '2015-10-24 04:50:35'),
(125, 56, 10, '<p>what the fuck?</p>', '2015-10-24 04:51:08', '2015-10-24 04:51:08'),
(126, 57, 10, '<p>what the fuck?</p>', '2015-10-24 04:51:24', '2015-10-24 04:51:24'),
(127, 58, 10, '<p>what the fuck?</p>', '2015-10-24 04:53:38', '2015-10-24 04:53:38'),
(128, 59, 10, '<p>what the fuck?</p>', '2015-10-24 04:54:21', '2015-10-24 04:54:21'),
(129, 60, 10, '<p>what the fuck?</p>', '2015-10-24 04:57:59', '2015-10-24 04:57:59'),
(130, 61, 10, '<p>hell yeah!</p>', '2015-10-24 05:08:36', '2015-10-24 05:08:36'),
(131, 62, 10, '<p>what the fuck?</p>', '2015-10-24 05:15:31', '2015-10-24 05:15:31'),
(132, 63, 10, '<p>what the fuck?</p>', '2015-10-24 05:15:59', '2015-10-24 05:15:59'),
(133, 64, 10, '<p>what the fuck?</p>', '2015-10-24 05:16:28', '2015-10-24 05:16:28'),
(134, 65, 10, '<p>what the fuck?</p>', '2015-10-24 05:17:01', '2015-10-24 05:17:01'),
(135, 66, 10, '<p>what the fuck?</p>', '2015-10-24 05:17:26', '2015-10-24 05:17:26'),
(136, 67, 10, '<p>what the fuck?</p>', '2015-10-24 05:17:43', '2015-10-24 05:17:43'),
(137, 68, 10, '<p>what the fuck?</p>', '2015-10-24 05:18:04', '2015-10-24 05:18:04'),
(138, 69, 10, '<p>xxx</p>', '2015-10-24 07:06:02', '2015-10-24 07:06:02'),
(139, 70, 10, '<p>讨论一下</p><p><br/></p>', '2015-10-24 07:10:12', '2015-10-24 07:10:12'),
(140, 71, 10, '<p>真的假的？</p>', '2015-10-24 07:13:15', '2015-10-24 07:13:15'),
(141, 72, 10, '<p>can you feel !</p>', '2015-10-24 19:12:39', '2015-10-24 19:12:39'),
(142, 73, 13, '测试', '2015-10-24 19:15:25', '2015-10-24 19:15:25'),
(143, 74, 10, '<p>试试看：</p><pre class="brush:php;toolbar:false">Route::getCurrentRoute()-&gt;getPath();</pre><p>获取路由名称：<br/></p><pre>Route::getCurrentRoute()-&gt;getName();</pre><p><code><br/></code></p><p><br/></p>', '2015-10-27 21:35:06', '2015-10-27 21:35:06'),
(144, 75, 10, '<p>谢啦！</p>', '2015-10-27 21:42:20', '2015-10-27 21:42:20'),
(145, 76, 10, ' 有用！不错！', '2015-10-28 23:21:16', '2015-10-28 23:21:16'),
(146, 77, 10, '似懂非懂。。。', '2015-11-06 23:48:30', '2015-11-06 23:48:30'),
(147, 78, 10, '不知道哦。。', '2015-11-06 23:57:07', '2015-11-06 23:57:07'),
(148, 79, 10, '是的范德萨发生的', '2015-11-07 00:06:24', '2015-11-07 00:06:24'),
(149, 80, 10, '第三方第三方', '2015-11-07 00:06:29', '2015-11-07 00:06:29'),
(150, 81, 10, 'jjjjjjjj', '2015-11-07 19:29:20', '2015-11-07 19:29:20'),
(151, 82, 10, '<p>朋友请不要Spam，有问题我一定会知无不言的，谢谢！</p>', '2015-11-07 21:16:08', '2015-11-07 21:16:08'),
(152, 83, 10, '<p>百度了一下，这个框架好像刚开发出来，不是很了解，有什么优势吗？</p>', '2015-11-07 21:17:30', '2015-11-07 21:17:30'),
(153, 84, 10, '界面很好看，功能很强大，就是存在很多缺陷', '2015-11-08 03:38:14', '2015-11-08 03:38:14'),
(154, 85, 10, 'sdsfdfdsf', '2015-11-15 18:51:58', '2015-11-15 18:51:58'),
(155, 86, 10, 'dsfsdfdsf', '2015-11-15 20:19:27', '2015-11-15 20:19:27'),
(156, 87, 10, '<p><span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);">bcrypt()出现不同结果是正常的，，但是对应的都是 123456;<br/><br/>你不要写个SaveResetPassword的方法，直接用laravel自带的方法：</span></p><p><span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);"><br/></span></p><pre>//&nbsp;Password&nbsp;reset&nbsp;link&nbsp;request&nbsp;routes...\r\nRoute::get(&#39;password/email&#39;,&nbsp;&#39;Auth\\PasswordController@getEmail&#39;);\r\nRoute::post(&#39;password/email&#39;,&nbsp;&#39;Auth\\PasswordController@postEmail&#39;);\r\n//&nbsp;Password&nbsp;reset&nbsp;routes...\r\nRoute::get(&#39;password/reset/{token}&#39;,&nbsp;&#39;Auth\\PasswordController@getReset&#39;);\r\nRoute::post(&#39;password/reset&#39;,&nbsp;&#39;Auth\\PasswordController@postReset&#39;);</pre><p><br/>&nbsp;具体看<a href="http://laravelbase.com/collections/1/51" target="_self">http://laravelbase.com/collections/1/51</a>，先这样操作看看有没有问题</p>', '2015-12-08 17:06:52', '2015-12-08 17:06:52'),
(157, 88, 10, '顺便问个问题，很多全局门面，比如：Input, Request, Auth,\r\n在其他地方可以直接使用，但在控制器需要 use App\\Auth;\r\n这是什么机制？', '2015-12-18 05:10:06', '2015-12-18 05:10:06'),
(158, 89, 10, '太忙，有很多代码还没清理，暂时还没放到github', '2016-01-23 17:18:40', '2016-01-23 17:18:40'),
(159, 90, 10, '谢谢支持！', '2016-01-23 17:19:09', '2016-01-23 17:19:09'),
(160, 91, 10, '谢谢支持！  这都是因为命名空间，，你在其他地方使用，比如view里，是因为view的命名空间和 Input, Request, Auth 这些在同一个位置，，而controller 是在app目录的，所以命名空间不一样，需要use 指定一下。', '2016-01-23 17:21:34', '2016-01-23 17:21:34'),
(161, 92, 10, '我也碰到这样问题了，楼主找到了吗。', '2016-02-21 06:47:06', '2016-02-21 06:47:06'),
(162, 93, 10, '<p>这个站的代码写得太潦草了，等我有时间整理一下就开源</p>', '2016-03-11 22:23:04', '2016-03-11 22:23:04'),
(163, 94, 10, '<p><a href="http://laravelbase.com/collections/1/36" _src="http://laravelbase.com/collections/1/36">http://laravelbase.com/collections/1/36</a> </p><p>只能是</p><p><span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);">&nbsp;{{ route(&#39;admin.dashboard&#39;) }} 这样写，<span style="color: rgb(119, 119, 119); font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, SimSun, sans-serif; font-size: 13.5px; letter-spacing: 0.14px; line-height: 19.2857px; background-color: rgb(255, 255, 255);">admin.dashboard是你定义的路由名称，没定义就不能用route()方法；定义路由名称有利于解耦。</span></span></p>', '2016-03-11 22:25:43', '2016-03-11 22:25:43'),
(164, 95, 10, '<p>谢谢支持！</p>', '2016-03-19 00:31:38', '2016-03-19 00:31:38'),
(165, 96, 10, '<p>谢谢支持！！</p>', '2016-04-20 21:08:36', '2016-04-20 21:08:36'),
(166, 97, 10, '开源了吗 好棒的网站！', '2016-05-13 05:18:47', '2016-05-13 05:18:47');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_01_133753_create_posts_table', 1),
('2015_08_02_065336_create_posts_table', 2),
('2015_08_02_233409_update_users_table', 3),
('2015_01_20_105810_add_settings_to_users_table', 4),
('2015_04_13_020453_create_settings_table', 4),
('2015_08_08_115947_create_posts_table', 5),
('2015_08_11_010824_add_notify_to_users_table', 6),
('2014_10_28_175635_create_threads_table', 7),
('2014_10_28_175710_create_messages_table', 7),
('2014_10_28_180224_create_participants_table', 7),
('2014_11_03_154831_add_soft_deletes_to_participants_table', 7),
('2014_11_10_083449_add_nullable_to_last_read_in_participants_table', 7),
('2014_11_20_131739_alter_last_read_in_participants_table', 7),
('2014_12_04_124531_add_softdeletes_to_threads_table', 7),
('2015_08_15_115856_add_recipients_to_threads_table', 8),
('2015_08_18_045930_add_avatar_path_to_users', 9),
('2015_08_21_122547_entrust_setup_tables', 10),
('2015_08_24_082510_create_menus_table', 10),
('2015_08_25_011519_create_menusets_table', 10),
('2015_08_25_034436_add_default_to_menusets', 11),
('2015_09_02_153715_create_posts_table', 12),
('2015_09_04_022926_create_media_table', 13),
('2015_09_05_011519_create_categorysets_table', 14),
('2015_09_5_082510_create_categories_table', 15),
('2015_09_05_034436_add_default_to_categorysets', 16),
('2015_09_05_075359_add_pivot_to_posts', 17),
('2015_09_05_162612_create_taggable_table', 18),
('2015_09_10_061134_add_link_to_categories_table', 19),
('2015_09_12_002928_add_views_comments_likes_to_posts_table', 20),
('2015_09_12_044420_create_collections_table', 21),
('2015_09_12_081337_add_collection_id_to_categories_table', 22),
('2015_09_12_034436_add_default_to_collections', 23),
('2015_09_13_062246_add_collection_id_to_posts_table', 24),
('2014_05_19_151759_create_forum_table_categories', 25),
('2014_05_19_152425_create_forum_table_threads', 25),
('2014_05_19_152611_create_forum_table_posts', 25),
('2015_04_14_180344_create_forum_table_threads_read', 25),
('2015_05_29_185352_add_view_count_to_table_threads', 25),
('2015_09_17_022151_create_comments_table', 26),
('2015_09_17_030137_add_post_id_and_user_id_to_comments_table', 27),
('2015_06_06_015859_create_post_likes_table', 28),
('2015_09_20_080911_add_attribute_to_posts_table', 29),
('2015_09_20_080911_add_isext_to_posts_table', 30),
('2015_09_20_091958_create_sites_table', 31),
('2015_09_20_235838_add_category_id_to_sites_table', 32),
('2015_10_18_024035_add_deleted_at_to_users_table', 33),
('2015_10_19_032759_create_pages_table', 34),
('2015_09_25_133458_remove_foreign_keys', 35),
('2015_10_19_045930_add_body2_to_pages_table', 35),
('2015_10_23_032154_add_seo_to_posts_table', 36),
('2015_10_23_032230_add_seo_to_pages_table', 36),
('2015_10_25_014252_add_deleted_at_to_posts_table', 37),
('2015_10_25_025504_add_deleted_at_to_comments_table', 38),
('2015_10_28_132003_add_od_id_to_users_table', 39),
('2015_11_06_000220_add_oa_type_to_users_table', 40);

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body2` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`id`, `title`, `subtitle`, `body`, `created_at`, `updated_at`, `body2`, `seo_keywords`, `seo_description`) VALUES
(1, '关于', 'about', '<p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">LaraBase是一个围绕Laravel框架展开的全栈开发者以及远程工作者社区。</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">本网站使用Laravel 5.1独立开发，实现了CMS类社区的几乎所有功能。</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">Laravel强大而友好的框架，精通后仅需一人就能充分支持一般中小型公司的在线业务，有很高的学习价值。<br/></span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">希望借由学习能够认识到更多朋友。</span></p><p><a href="http://www.zhihu.com/people/tang-si" target="_blank" title="我的知乎" style="font-size: 14px; text-decoration: underline; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">我的知乎</span></a></p><p>QQ群：222171637</p>', '2015-10-18 20:51:08', '2015-10-27 21:06:29', '<p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">版本更新记录</span></p><p><br/></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">----alpha 1.0.1----</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">初步实现功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-基本CRUD</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-CRUD自动化脚本（只需一个命令和配置文件，一秒钟生成路由，请求，控制器，模型，模型仓库，migration，数据库，视图等）</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-菜单的无限分类</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-注册登录功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-OAuth github,qq 登录功能；</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-登录验证功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-发邮件功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-重设，找回密码功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-验证码功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-文件上传</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-媒体管理</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-图像处理</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-文章收藏功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-论坛系统</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-搜索功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-用户权限</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-评论功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-标签功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-持久化系统设置</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-消息提示功能</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">-通讯及聊天系统</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">--to do --</span></p><p><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">视频教程</span></p><p style="white-space: normal;"><br/></p>', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
  `id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `participants`
--

INSERT INTO `participants` (`id`, `thread_id`, `user_id`, `last_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(75, 38, 9, '2015-08-21 04:36:28', '2015-08-21 00:54:54', '2015-08-21 04:36:28', NULL),
(77, 38, 10, '2015-09-20 00:02:26', '2015-08-21 00:54:54', '2015-09-20 00:02:26', NULL),
(80, 39, 9, '2015-08-21 04:36:31', '2015-08-21 00:55:07', '2015-08-21 04:36:31', NULL),
(82, 39, 10, '2015-09-20 00:02:27', '2015-08-21 00:55:07', '2015-09-20 00:02:27', NULL),
(85, 40, 9, '2015-10-23 23:59:08', '2015-08-21 00:55:54', '2015-10-23 23:59:08', NULL),
(87, 40, 10, '2015-10-24 00:38:26', '2015-08-21 00:55:54', '2015-10-24 00:38:26', NULL),
(90, 41, 13, '2015-10-24 17:12:12', '2015-10-23 18:34:45', '2015-10-24 17:12:12', NULL),
(91, 42, 13, '2015-10-24 00:08:45', '2015-10-24 00:08:37', '2015-10-24 00:08:45', NULL),
(92, 59, 13, '2015-10-24 04:59:28', '2015-10-24 04:54:21', '2015-10-24 04:59:28', NULL),
(93, 59, 9, NULL, '2015-10-24 04:54:21', '2015-10-24 04:54:21', NULL),
(94, 59, 10, '2015-10-24 04:57:59', '2015-10-24 04:54:21', '2015-10-24 04:57:59', NULL),
(95, 60, 13, '2015-10-24 04:59:28', '2015-10-24 04:57:59', '2015-10-24 04:59:28', NULL),
(96, 60, 9, NULL, '2015-10-24 04:57:59', '2015-10-24 04:57:59', NULL),
(97, 60, 10, '2015-10-24 04:57:59', '2015-10-24 04:57:59', '2015-10-24 04:57:59', NULL),
(98, 61, 13, '2015-10-24 05:18:59', '2015-10-24 05:08:36', '2015-10-24 05:18:59', NULL),
(99, 61, 9, NULL, '2015-10-24 05:08:36', '2015-10-24 05:08:36', NULL),
(100, 61, 10, '2015-10-24 05:08:37', '2015-10-24 05:08:36', '2015-10-24 05:08:37', NULL),
(101, 68, 13, '2015-10-24 05:18:59', '2015-10-24 05:18:04', '2015-10-24 05:18:59', NULL),
(102, 69, 13, '2015-10-24 17:11:36', '2015-10-24 07:06:02', '2015-10-24 17:11:36', NULL),
(103, 70, 13, '2015-10-24 17:12:06', '2015-10-24 07:10:12', '2015-10-24 17:12:06', NULL),
(104, 71, 13, '2015-10-24 17:12:10', '2015-10-24 07:13:15', '2015-10-24 17:12:10', NULL),
(105, 72, 13, '2015-10-25 07:23:42', '2015-10-24 19:12:39', '2015-10-25 07:23:42', NULL),
(106, 73, 13, '2015-10-25 07:23:42', '2015-10-24 19:15:25', '2015-10-25 07:23:42', NULL),
(107, 74, 9, '2016-01-23 19:32:08', '2015-10-27 21:35:06', '2016-01-23 19:32:08', NULL),
(108, 75, 9, '2016-01-23 19:32:08', '2015-10-27 21:42:21', '2016-01-23 19:32:08', NULL),
(109, 76, 9, '2016-01-23 19:32:08', '2015-10-28 23:21:16', '2016-01-23 19:32:08', NULL),
(110, 77, 69, '2015-11-15 20:19:30', '2015-11-06 23:48:30', '2015-11-15 20:19:30', NULL),
(111, 78, 9, '2016-01-23 19:32:08', '2015-11-06 23:57:07', '2016-01-23 19:32:08', NULL),
(112, 79, 69, '2015-11-15 20:19:30', '2015-11-07 00:06:24', '2015-11-15 20:19:30', NULL),
(113, 80, 69, '2015-11-15 20:19:30', '2015-11-07 00:06:29', '2015-11-15 20:19:30', NULL),
(114, 81, 9, '2016-01-23 19:32:08', '2015-11-07 19:29:20', '2016-01-23 19:32:08', NULL),
(115, 82, 9, '2016-01-23 19:32:08', '2015-11-07 21:16:08', '2016-01-23 19:32:08', NULL),
(116, 83, 69, '2015-11-15 20:19:30', '2015-11-07 21:17:30', '2015-11-15 20:19:30', NULL),
(117, 84, 69, '2015-11-15 20:19:30', '2015-11-08 03:38:14', '2015-11-15 20:19:30', NULL),
(118, 85, 69, '2015-11-15 20:19:30', '2015-11-15 18:51:58', '2015-11-15 20:19:30', NULL),
(119, 86, 69, '2015-11-15 20:19:30', '2015-11-15 20:19:27', '2015-11-15 20:19:30', NULL),
(120, 87, 105, NULL, '2015-12-08 17:06:52', '2015-12-08 17:06:52', NULL),
(121, 88, 115, NULL, '2015-12-18 05:10:06', '2015-12-18 05:10:06', NULL),
(122, 89, 130, NULL, '2016-01-23 17:18:40', '2016-01-23 17:18:40', NULL),
(123, 90, 134, NULL, '2016-01-23 17:19:09', '2016-01-23 17:19:09', NULL),
(124, 91, 115, NULL, '2016-01-23 17:21:34', '2016-01-23 17:21:34', NULL),
(125, 92, 146, '2016-02-27 05:02:04', '2016-02-21 06:47:06', '2016-02-27 05:02:04', NULL),
(126, 93, 123, NULL, '2016-03-11 22:23:04', '2016-03-11 22:23:04', NULL),
(127, 94, 146, NULL, '2016-03-11 22:25:43', '2016-03-11 22:25:43', NULL),
(128, 95, 172, NULL, '2016-03-19 00:31:38', '2016-03-19 00:31:38', NULL),
(129, 96, 211, NULL, '2016-04-20 21:08:36', '2016-04-20 21:08:36', NULL),
(130, 97, 123, NULL, '2016-05-13 05:18:47', '2016-05-13 05:18:47', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('woody_tang@163.com', 'dcc70461460bff00bc67b19e76c1f9df576b042f1cafa950327f5a338c6f372b', '2015-10-20 06:12:46'),
('7272791@qq.com', '2a4234e00ebf1f4f56f9ce78a29ec53d6d44e4581850d5bdf9999bda0904de26', '2015-11-17 03:01:43'),
('2582228328@qq.com', '0a73483e00c042d75fa7176fbb4c7e259ebb1b1c76ae8b50cf25c5f35d3b64f3', '2015-12-28 18:25:44');

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', '访问后台', '区别前台用户和后台用户', '2015-10-15 17:11:10', '2015-10-15 17:13:29'),
(2, 'edit_user', '编辑用户', '对用户进行增删改查等处理', '2015-10-15 21:44:13', '2015-10-16 00:28:00');

-- --------------------------------------------------------

--
-- 表的结构 `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 4);

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `isext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `category_id`, `views`, `comments`, `likes`, `collection_id`, `isext`, `seo_keywords`, `seo_description`, `deleted_at`) VALUES
(28, 'Laravel CRUD 操作', '![\\bg-login.jpg][0.23876815964467824]  \r\n\r\nCRUD ，也就是对数据的“增删改查”，想必大家都应该很熟悉了，编程也没啥神秘的，也就是这些东西了：）\r\n\r\n可是大量的sql语句操作有时会把人逼疯，如果你想早日摆脱码农的形象，那赶快加入Laravel优雅的阵营吧，Laravel在数据处理方面不仅仅是优雅，而且拥有可能是这个星球上最为强大的Eloquent ORM，这块Laravel的金字招牌绝对不会让你失望的。\r\n\r\n----------\r\n##连接数据库##\r\nLaravel在启动初始化的时候会自动连接数据库，只用连接一次，你以后就不用管连接的事情了。所以很简单，你只要在配置文件中把 数据库配置好 就OK；\r\n\r\n找到\r\n```\r\napp/config/database.php\r\n```\r\n```\r\n''mysql'' => array(\r\n			''driver''    => ''mysql'',\r\n			''host''      => ''localhost'',\r\n			''database''  => ''laravelblog'',\r\n			''username''  => ''root'',\r\n			''password''  => '''',\r\n			''charset''   => ''utf8'',\r\n			''collation'' => ''utf8_unicode_ci'',\r\n			''prefix''    => '''',\r\n		),\r\n```\r\n\r\n也许你的配置环境设置在了本地，那么就去\r\n```\r\napp/config/local/database.php\r\n```\r\n里面改。\r\n\r\n##增删改查  \r\n**增（insert）**\r\n\r\n```\r\nRoute::get(''/'', function()\r\n{\r\n    $posts = DB::insert(''insert into posts (title, body) values(?, ?)'', array(''what''s your name?'',''My name is Tom!''));\r\n	dd($posts);\r\n});\r\n\r\n//返回true或false\r\n```\r\n\r\n**查（select）**\r\n\r\n\r\n```\r\nRoute::get(''/'', function()\r\n{\r\n    $posts = DB::select(''select * from posts where id = ?'', array(3));\r\n	dd($posts);\r\n});\r\n\r\n//后面数组是前面问号参数的值\r\n```\r\n**改（update）**\r\n\r\n```\r\nRoute::get(''/'', function()\r\n{\r\n    $posts = DB::update(''update posts set body = "My name is Mike!" where id = ?'', array(3));\r\n	dd($posts);\r\n});\r\n```\r\n\r\n**删（delete）**\r\n\r\n```\r\nRoute::get(''/'', function()\r\n{\r\n    $posts = DB::delete(''delete from posts where id = ?'', array(3));\r\n	dd($posts);\r\n});\r\n\r\n\r\n```\r\n\r\n很容易对吧？：）\r\n\r\n##查询构造器（Query Builder）##\r\n事实上，上面那种CRUD操作还是太繁琐，我们换一种更简洁的方式来处理，这就是Laravel的查询构造器：\r\n\r\n##增（insert）##\r\n\r\n```\r\nDB::table(''users'')->insert(\r\n    array(''email'' => ''john@example.com'', ''votes'' => 0)\r\n);\r\n\r\n\r\n```\r\n##查（select）##\r\n//循环查询\r\n\r\n```\r\n$users = DB::table(''users'')->get();\r\n\r\nforeach ($users as $user)\r\n{\r\n    var_dump($user->name);\r\n}\r\n\r\n//查一条\r\n$user = DB::table(''users'')->where(''name'', ''John'')->first();\r\n\r\nvar_dump($user->name);\r\n```\r\n\r\n**改（update）**\r\n\r\n```\r\nDB::table(''users'')\r\n            ->where(''id'', 1)\r\n            ->update(array(''votes'' => 1));\r\n```\r\n\r\n**删（delete）**\r\n\r\n```\r\n//删除一组符合条件的数据\r\nDB::table(''users'')->where(''votes'', ''<'', 100)->delete();\r\n```\r\n\r\n这是不是一种更富表达力的语句呢？\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n  [0.0068499979097396135]: http://test/uploads/editor/18f91360f792d9849b81db5ff2b622b7.jpg\r\n\r\n  [0.23876815964467824]: http://test/uploads/editor/f119d052a6975ff138953ee15cfd43fb.jpg', '2015-09-09 04:46:46', '2016-07-14 23:10:35', 10, 1, 1413, 2, 3, 0, '', '', '', NULL),
(30, 'asda', 'dad', '2015-10-20 16:37:08', '2015-10-24 19:26:24', 9, 1, 412, 0, 1, 0, '', '', '', '2015-10-24 19:26:24'),
(33, 'Laravel 5.1 文档攻略——概述', '> 一个让我感觉到自己不是很笨的框架\r\n\r\n##为什么要选择Laravel？##\r\n相信你已经看过很多有关laravel的介绍，使用者的赞扬，媒体的评测（世界排名第一的php框架）等等。虽然它引起了你的注意，但是你还是不能决定是否要花时间来学习这个年轻但著名的框架。\r\n\r\n现状是：在国外，laravel已经变得非常流行，在国内，由于受限于团队习惯，招聘成本，中文资料等，Laravel还尚未被大范围采用。\r\n\r\n关于laravel的功能，只要看左边的文档目录就可以大致了解，这需要亲自使用后才会了解到它的强大，在此就不多言之。\r\n\r\n在国外，Symfony2 一直是企业级php框架的标准，我做过简单的比较，Laravel 和 symfony 在架构和核心功能上，基本上是一模一样的~~不存在谁更强大之说。\r\n但是laravel 有两点不同，第一个语言优美，第二个out of box，它是以用户为中心的，做了比较多的封装，用了很多best practise的约定，偏向黑盒，比较像苹果的风格，就像苹果手机；\r\nsymfony2 偏向白盒，架构清晰灵活，但是非常复杂繁琐~~你需要自己做很多轮子，好处就是轮子都可以很轻松调试，有点像windows的企业版。\r\n\r\n单就框架本身而言，个人认为Laravel 5.1 是在所有当前『全栈式』php框架中最好的。这里的关键字是『全栈』，Laravel 5.1 几乎可以搞定任何web应用，和js的一些前端框架兼容得非常完美。也就意味着，个人开发者可以围绕这个框架独立的开发出非常牛B的应用，比如像以前热门的SNS社区系统，用laravel来实现基本上就是牛刀小试。\r\n\r\n团队开发上Laravel 5.1 也极具优势，它良好的扩展性和先进的架构，是真正意义上的『现代框架』，团队可以基于框架的特性制定出非常丰富的开发策略。例如，Laravel对CLI命令有着良好的支持，这意味着自动化代码方面，可以有非常大的发挥空间。\r\n\r\n无论是PHP菜鸟还是老手，Laravel 5.1都非常值得学习，它就好像是PHP领域的Photoshop，所以不用犹豫了。\r\n\r\n\r\n##为什么用5.1 LTS版本？##\r\n本人从4.0 一直用到现在，比较熟悉各个版本的区别，5.1的提升是巨大的，并且是官方第一个长期支持版本，你值得拥有。\r\n\r\n**注意**\r\nLaravel 5.1需要较高的php版本  \r\nPHP >= 5.5.9\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2015-09-20 18:43:22', '2016-07-15 00:48:18', 10, 1, 3339, 1, 13, 1, '', '', '', NULL),
(34, 'Laravel 5.1 文档笔记——安装', '如果要从php环境搭建，并且分不同操作系统开始讲起，过程会比较长，这部分会放到专门的专辑里讲解。\r\n\r\n最快速开始使用Laravel的方法：\r\n1. 自行准备好PHP环境，要求如下：\r\n	- PHP >= 5.5.9\r\n	- OpenSSL PHP Extension\r\n	- PDO PHP Extension\r\n	- Mbstring PHP Extension\r\n	- Tokenizer PHP Extension \r\n    - mcrypt  \r\n    \r\n    资料：[在mac上安装mcrypt扩展][1]\r\n    \r\n2. 到此处下载一键安装包，下载最新版  \r\nhttp://www.golaravel.com/download/\r\n3. 安装Composer  \r\n	教程：	\r\n    http://docs.phpcomposer.com/00-intro.html#Installation-*nix  \r\n    \r\n  \r\n  \r\n上述过程可能会比较耗时，请保持足够的耐心。\r\n\r\n  [1]: http://coolestguidesontheplanet.com/install-mcrypt-php-mac-osx-10-10-yosemite-development-server/', '2015-09-20 20:02:34', '2016-07-15 00:26:42', 10, 1, 3755, 0, 2, 1, '', '', '', NULL),
(35, 'Laravel 5.1 文档笔记——配置', '##指向public目录\r\n确保comoser成功安装，打开命令行工具，cd命令切换到laravel安装包所在位置，运行\r\n\r\n```composer update -vvv```  \r\n*注意：* composer在国内网络连接状况不是很好，具体原因你懂的，-vvv 是用来查询composer详细运行过程的选项，这样你就知道哪里出了问题。\r\n\r\nupdate完毕后，将服务器根目录指向laravel安装包里的public文件夹，操作方法是修改nginx或apache服务器上的.conf文件，下面代码供参考：\r\n```\r\nserver{\r\nlisten 80;\r\nserver_name laravelbase.com www.laravelbase.com;\r\nroot /a/domains/laravelbase.com/public_html/public;\r\nindex index.html index.htm index.shtml index.php;\r\n\r\n    try_files $uri $uri/ @rewrite;\r\n    location @rewrite {\r\n        rewrite ^/(.*)$ /index.php?_url=/$1;\r\n    }\r\n\r\n    #error_page  404               /404.html;\r\n    \r\n    ...\r\n    \r\n```\r\n\r\n讲服务器对外访问目录指向public可以极大的提高安全性。\r\n\r\n##配置文件##\r\n\r\n仔细观察laravel的默认目录，所有配置文件都放在`app/config `文件夹里，其中app.php 最重要，打开看一看；\r\n\r\n同时观察根目录下有无.env文件，如果没有，将.env.example文件复制一份改名为.env。 这个.env文件也是配置文件，用来存放数据库等重要配置信息，它比`app/config `配置文件的优先级要高，`app/config `的优先配置值是先读取.env的。\r\n\r\n\r\n配置样例：\r\n```\r\nAPP_ENV=local\r\nAPP_DEBUG=true\r\nAPP_KEY=sGwjZsybCxfSx8X7yhsHj8V4sqZUywM2\r\nDB_HOST=localhost\r\nDB_DATABASE=wtf\r\nDB_USERNAME=root\r\nDB_PASSWORD=\r\n\r\nCACHE_DRIVER=file\r\nSESSION_DRIVER=file\r\nQUEUE_DRIVER=sync\r\n\r\nMAIL_DRIVER=smtp\r\nMAIL_HOST=smtp.qq.com\r\nMAIL_PORT=25\r\nMAIL_USERNAME=233675645@qq.com\r\nMAIL_PASSWORD=wtfxxx\r\nMAIL_ENCRYPTION=null\r\n```\r\n\r\n##文件夹权限##\r\n使用linux服务器的时候，要确保  \r\n\r\n`public`  \r\n`bootstrap/cache`  \r\n`storage`  \r\n\r\n文件夹的访问权限为755  \r\n设置方法：`chmod 755`\r\n\r\n##Application Key (APP密钥)##\r\n看.env文件里APP_KEY 这一项，这就是app密钥，学过md5加密的同学都知道需要有一个密钥与被加密对象混合加密，这样才安全。如果.env APP_KEY的值为空，先不要着急，知道它干什么就好。\r\n\r\n##URL重写##\r\n一般装好后就没什么问题了，如果发现url有问题，看文档说明改写服务器配置。\r\n\r\n\r\n***至此，你可以开始使用laravel了。\r\n访问你的域名试试，看到Laravel几个大字就成功了。***\r\n\r\n##更多config##\r\n实际上，你会疑问`app/config `目录下还有好多的config文件，难道不用配置？  \r\n这些文件具体使用在以后我们会讲到，这里不细讲。\r\n仔细观察这些config文件，你会发现其实它们都是一些数组。\r\n\r\n记住一些关于config有用的知识：  \r\n在程序中获取config值的函数：\r\n`config(''app.timezone'');`  \r\n\r\n*app是指app.php文件，timezone是指里面的timezone这个键；*\r\n\r\n有时你想临时改变一下这个值，可以`config([''app.timezone'' => ''America/Chicago'']);`\r\n\r\n文档里面用的单词是『runtime』，也就是单次执行的时候临时有效，如果你想让改变的值永久生效，必须修改配置文件。\r\n\r\n###配置文件缓存###\r\n随着开发时间的增加，配置文件会越来越多，由于配置文件是程序启动时必须加载的，所以会影响效率。解决办法是将配置文件缓存：  \r\n在程序根目录打开命令行工具，输入：  \r\n\r\n`php artisan config:cache`\r\n\r\n\r\n当然，你还可以取消缓存：  \r\n\r\n`php artisan config:clear`\r\n\r\n开发的时候就不要用config缓存了，放到生产环境的时候再用。\r\n\r\n##维护模式##\r\n在程序根目录打开命令行工具，输入：  \r\n`php artisan down`  \r\n\r\n进入维护模式  \r\n\r\n`php artisan down`  \r\n退出维护模式  \r\n\r\n`php artisan up`    \r\n\r\n维护模式下，用户访问网站会弹出http503错误  \r\n\r\n在这个位置：  \r\n`resources/views/errors/503.blade.php`  \r\n你可以指定一个错误页面提示用户。\r\n具体操作往后看。\r\n\r\n##其他##\r\n文档还讲了切换配置环境，给根命名空间改名等等，维护模式和队列等等，新手暂时别看。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n  \r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2015-09-20 23:48:49', '2016-07-15 00:26:41', 10, 1, 4981, 0, 1, 0, '', '', '', NULL),
(36, ' Laravel 5.1 文档攻略 —— 路由', '##什么是路由##\n常听说有人嘲笑菜鸟，说『连路由都不懂』。  \n我就被这样嘲笑过。  \n新手容易只顾着学php，忘记学http协议，就会搞不清路由的定义。  \n你只要意识到我们在浏览器上的所有页面操作行为，都是通过URL发给服务器的，一个网站有好多不一样的URL，就明白了。\n这么多不一样的URL是怎么定义出来的，以及它们都让服务器干了那些事情，这就是我们要研究的。\n##什么是MVC##\n如果不熟悉路由，估计对MVC结构理解也不会很深。  \n其实特别简单：  \n路由向服务器发来一个信号，这个信号指定了Controller里面的一个方法，这个方法对Model（数据对象）进行了一系列操作，返回若干数据，最后View（视图层）负责把数据呈现出来。  \nMVC就是这样，讲完了。\n\n##Laravel基本路由##\n虽然路由的定义非常简单，但是如果你深入研究http协议规范的化，内容又有很多。\n[先看这篇关于http协议的介绍][1]  \n\n用户请求是通过路由发出的，但请求有很多种不同类型，http协议规定的有8种：  \nGET、POST、OPTIONS、HEAD、PUT、DELETE、TRACE、CONNECT、PATCH\n\n  [1]: http://www.cnblogs.com/wendingding/p/3813466.html\n  \n  好了，我们来看Laravel路由的基本写法：  \n```\nRoute::get(''/'', HomeController@index);\n\n```\n\n通过get请求访问网站的根路由，然后指定HomeController里面的index执行一些操作。（我知道你可能在想Route::get这种写法是什么意思，没关系我们后面再解释）\n\n注意，对照上面，请求类型，URL路径，控制器，控制器方法这4个元素，你可以根据需要自由定义；\n\n现在我们还没有controller，laravel提供了一个闭包的方法，让你没有控制器，控制器方法的情况下也可以通过路由执行若干php语句：  \n```\nRoute::get(''/'', function () {\n    return ''Hello World'';\n});\n```\n这样访问首页，就会出现Hello World；\n\n如果你还在纠结什么是闭包，什么是匿名函数：  \n\nRoute::get(''/'', 参数)，这个参数的位置你写了function () {)之类的，而不是一个普通变量，这就是闭包，function () {) 没有名字，这就是匿名函数。\n\n\n路由里面写闭包并不是很好的方法，因为你不可能在路由里写大量的业务逻辑，但是有时这对测试某些简单功能很方便。\n\n似乎，我们可以按照下面的方式愉快的写下去了：  \n```\nRoute::get(''/'', HomeController@index);\n\nRoute::post(''post'', PostController@create);\n\nRoute::put(''post'', PostController@store);\n\nRoute::delete(''post'', PostController@delete);\n```\n\n然而，这只是最最简单的路由；\n\n\n##路由参数##\n以前你是这样传参的：  \n`/animals?zoo_id=23`\n\n在laravel里，你仍然可以用传统的方式写url参数，但是框架鼓励你用更优雅一些的方式，于是写成了：\n`/Zoo/23/animals`  \n\n(仔细观察这两种路由的表达方式，待会儿我们要讲一个Restful的概念）\n\n\n对于后一种路由，Laravel是这样定义的：\n\n`Route::get(''/Zoo/{zoo_id}/animals'', ZooController@getAnimals);`\n\n这个时候我们看看Controller里写的啥：\n```\nClass ZooController extends Controller{\n\npublic function getAnimals($zoo_id){\n\n	$animals = Zoo::find($zoo_id)->animals()->get();\n    \n    return view(''zoo.animals'',compact(''animals'')\n}\n\n}\n```\n我们关注参数的部分，用户输入`/Zoo/23/animals`，23 对应''/Zoo/{zoo_id}/animals''中的{zoo_id}，然后{zoo_id}通过getAnimals($zoo_id)的$zoo_id传进了方法内部，这样你就不用写`$_GET[''zoo_id'']`这样的语句了。\n\n如果你能体会到  \n\n`/Zoo/23/animals`比`/animals?zoo_id=23`的写法更合理，可以去看2篇文章：\n\n[理解RESTful架构][1]\n\n[RESTful API 设计指南][2]\n\n路由其实有很多学问哪！那些嘲笑你的人搞不好也不懂。\n\n###可选路由参数###\n你在路由中定义了参数，就一定要输入参数，否则会报错。有时候需要参数可以缺省，而使用默认值，很简单：\n\n`Route::get(''/Zoo/{zoo_id?}/animals'', ZooController@getAnimals);`\n\n打个问号就行了\n```\nClass ZooController extends Controller{\n\npublic function getAnimals($zoo_id =23){\n\n	$animals = Zoo::find($zoo_id)->animals()->get();\n    \n    return view(''zoo.animals'',compact(''animals'')\n}\n\n}\n```\n方法这里一定填写一个默认值。\n\n###对路由参数的一些限制###\n你需要规定路由参数只能是数字，而不能是字符串，否则就报错，这时候就可以用文档介绍的正则表达式来限制参数，具体参考文档；\n\n##路由名称##\n\n```\nRoute::get(''user/profile'', [\n    ''as'' => ''profile'', ''uses'' => ''UserController@showProfile''\n]);\n```\n\n看看Route::get()第二个参数，这是一个数组，第一个as 就是路由名称，第二个uses是指定controller和action。  \n \n设定路由名称后，你可以用这个函数得到完整的路由：\n`route(''profile'')`  \n也就是说，你可以在视图中这样使用：\n`<a href="{{route(''profile'')}}">用户资料</a>`  \n\n**路由名称非常重要，主要用于在视图中对路由解耦，强烈建议对每个路由都起一个名字。**\n\n在重定向跳转中，路由名称也经常被使用：  \n```\nreturn redirect()->route(''profile'');\n```\n当然，也可以这样写：  \n\n```\nreturn redirect(route(''profile''));\n```\n\n上面说了路由参数，我们来看看怎么给路由传参：  \n```\nRoute::get(''user/{id}/profile'', [''as'' => ''profile'', function ($id) {\n    //\n}]);\n\n$url = route(''profile'', [''id'' => 1]);\n\n//得到http://xxx/user/1/profile 这样的url\n```\n也就是在后面传一个数组进去即可，数组的键名和路由参数名称对应。\n\n\n##路由分组##\n\n有时写多个路由的时候，这些路由有着相同的特点，比如同一个前缀（比如admin/xxx）, 这个时候我们用路由分组函数，可以简化不少代码，便于管理：  \n本来这样写：\n```\n	Route::get(''admin/users'', [\n    \n    as => "admin.users",\n    uses =>"UserController@index"\n    ]);\n    \n    Route::get(''admin/posts'', [\n    \n    as => "admin.posts",\n    uses =>"PostController@index"\n    ]);\n```\n分组后：\n```\nRoute::group([''prefix'' => ''admin''], function () {\n    Route::get(''users'', [\n    \n    as => "admin.users",\n    uses =>"UserController@index"\n    ]);\n    \n    Route::get(''posts'', [\n    \n    as => "admin.posts",\n    uses =>"PostController@index"\n    ]);\n    \n});\n```\n`[''prefix'' => ''admin'']`这里也可以加路由参数哦，`[''prefix'' => ''admin/{id}'']`  \n\n\n除了''prefix''，路由分组还有几个经常用到的参数，Middleware（中间件），Namespaces（controller的命名空间），\nSub-Domain（子域名），可以参考文档，这些概念还没讲，所以放到后面再学习。\n\n##其他内容##\n**CSRF 保护** 应该放到下一节中间件来讲，\n**表单方法虚拟**也要单独拿出来讲；\n另外文档里面暂时没提到的 `Route::controller()` 和`Route::resource()`这两种方法，也要放到后面来讲。\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  [1]: http://www.ruanyifeng.com/blog/2011/09/restful.html\n  [2]: http://www.ruanyifeng.com/blog/2014/05/restful_api.html', '2015-09-21 03:47:31', '2016-07-15 01:37:35', 10, 1, 8739, 5, 5, 1, '', '', '', NULL),
(37, 'Laravel 5.1 文档攻略 ——中间件', '##理解中间件##\r\n中间件就是在路由请求执行之前先进行一些操作，就好像进公司的时候需要刷门卡一样，所以一般用来执行登录验证，重定向，CSRF保护等等；\r\n\r\n中间件一般放置于`app/Http/Middleware`这个位置；\r\n\r\n##新建中间件##\r\n在命令行里输入  \r\n`php artisan make:middleware OldMiddleware`\r\n\r\n这样会在`app/Http/Middleware`这个位置生成一个OldMiddleware.php的文件，里面主要有个handel的方法，在handel里写上你要预先处理的逻辑，就行了  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass OldMiddleware\r\n{\r\n    /**\r\n     * Run the request filter.\r\n     *\r\n     * @param  \\Illuminate\\Http\\Request  $request\r\n     * @param  \\Closure  $next\r\n     * @return mixed\r\n     */\r\n    public function handle($request, Closure $next)\r\n    {\r\n        if ($request->input(''age'') <= 200) {\r\n            return redirect(''home'');\r\n        }\r\n\r\n        return $next($request);\r\n    }\r\n\r\n}\r\n```\r\n\r\n这里比较困扰人的是`$request, Closure $next`, 这样写是什么意思，其实这里用到了后面要说的依赖注入，你只要知道这样写了，handel（）方法里就得到了2个可以直接使用的对象，$request 和 $next；\r\n最后`return $next($request);`这一句比较重要，表示中间件执行完了，如果通过，继续执行后面的请求；  \r\n##请求前的中间件和请求后的中间件##\r\n\r\n要理解请求的生命周期，它是一步步往下走的，所以在请求的前后我们都可以设置中间件，上面的那个例子就是在请求前的中间件，如果请求后怎么写呢？ 如下：  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass OldMiddleware\r\n{\r\n    /**\r\n     * Run the request filter.\r\n     *\r\n     * @param  \\Illuminate\\Http\\Request  $request\r\n     * @param  \\Closure  $next\r\n     * @return mixed\r\n     */\r\n    public function handle($request, Closure $next)\r\n    {\r\n    $response = $next($request);\r\n        if ($request->input(''age'') <= 200) {\r\n            return redirect(''home'');\r\n        }\r\n\r\n      return $response;\r\n    }\r\n\r\n}\r\n```\r\n区别在return那里，大多数情况我们会使用请求前的中间件。\r\n\r\n##注册中间件##\r\n中间件要注册了才能使用，注册位置：  \r\n`app/Http/Kernel.php`  \r\n注册分两种，一种是全局的，一种是单路由的，全局的就是所有路由都必须先执行该中间件，单路由的就是你可以把这个中间件指派给某个路由或路由组；\r\n```\r\n<?php\r\n\r\nnamespace App\\Http;\r\n\r\nuse Illuminate\\Foundation\\Http\\Kernel as HttpKernel;\r\n\r\nclass Kernel extends HttpKernel\r\n{\r\n    /**\r\n     * The application''s global HTTP middleware stack.\r\n     *\r\n     * @var array\r\n     */\r\n    protected $middleware = [\r\n        \\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode::class,\r\n        \\App\\Http\\Middleware\\EncryptCookies::class,\r\n        \\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse::class,\r\n        \\Illuminate\\Session\\Middleware\\StartSession::class,\r\n        \\Illuminate\\View\\Middleware\\ShareErrorsFromSession::class,\r\n        \\App\\Http\\Middleware\\VerifyCsrfToken::class,\r\n\r\n    ];\r\n\r\n    /**\r\n     * The application''s route middleware.\r\n     *\r\n     * @var array\r\n     */\r\n    protected $routeMiddleware = [\r\n        ''auth'' => \\App\\Http\\Middleware\\Authenticate::class,\r\n        ''auth.basic'' => \\Illuminate\\Auth\\Middleware\\AuthenticateWithBasicAuth::class,\r\n        ''guest'' => \\App\\Http\\Middleware\\RedirectIfAuthenticated::class,\r\n\r\n    ];\r\n}\r\n```\r\n上面的protected $middleware就是全局的，下面的protected $routeMiddleware就是单路由的，注意，单路由中间件里给每个中间件指派了一个名字，这样你就可以在路由中指定该中间件了。\r\n\r\n##给路由指派中间件##\r\n**注意：这里是路由知识的一部分，请参考路由章节**  \r\n\r\n###单路由指派一个中间件###\r\n`Route::get(''admin/profile'', [''middleware'' => ''auth'', function () {\r\n    //\r\n}]);`\r\n###单路由指派多个中间件###\r\n`Route::get(''/'', [''middleware'' => [''first'', ''second''], function () {\r\n    //\r\n}]);`\r\n###给路由分组指派中间件###\r\n```\r\nRoute::group([''prefix'' => ''admin'',''middleware'' => ''auth''], function () {\r\n    Route::get(''users'', [\r\n\r\n    as => "admin.users",\r\n    uses =>"UserController@index"\r\n    ]);\r\n\r\n    Route::get(''posts'', [\r\n\r\n    as => "admin.posts",\r\n    uses =>"PostController@index"\r\n    ]);\r\n\r\n});\r\n```\r\n\r\n###中间件参数###\r\n有时，中间件里你想穿个参数进去，比如，你想传个用户角色进去，看看该用户有没有相应的权限：  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass RoleMiddleware\r\n{\r\n  \r\n  \r\n    public function handle($request, Closure $next, $role)\r\n    {\r\n        if (! $request->user()->hasRole($role)) {\r\n            // Redirect...\r\n        }\r\n\r\n        return $next($request);\r\n    }\r\n\r\n}\r\n```\r\n估计`$request, Closure $next, $role`这里又要把人搞晕了，前面两个是自动产生的对象（不用传参），后面的$role却是要从外部传入的参数；没关系，我已经注意到这个问题了，后面会详细讲解；\r\n\r\n那么怎么传入参数呢：  \r\n`Route::put(''post/{id}'', [''middleware'' => ''role:editor'', function ($id) {\r\n    //\r\n}]);`\r\n\r\n`role:editor`这个就是传入的方法；\r\n\r\n当然，你也可以在Controller里面传：  \r\n```\r\npublic function __construct()\r\n \r\n{\r\n \r\n    $this->middleware(''role:editor'');\r\n \r\n}\r\n\r\n```\r\n然而，在实际使用中，你可能需要传入不止一个的中间件参数，你可以这样写：  \r\n```\r\n`Route::put(''post/{id}'', [''middleware'' => ''role:editor,admin'', function ($id) {\r\n    //\r\n}]);`\r\n\r\n```\r\n直接在后面增加就好了，`role:editor,admin`这种写法是PHP5.6的特性，你在\r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass RoleMiddleware\r\n{\r\n  \r\n  \r\n    public function handle($request, Closure $next, $role)\r\n    {\r\n        if (! $request->user()->hasRole($role)) {\r\n            // Redirect...\r\n        }\r\n\r\n        return $next($request);\r\n    }\r\n\r\n}\r\n```\r\n\r\n取这个$role的时候，其实取出来的是一个数组：\r\n`Array ( [0] => editor [1] => admin )\r\n`\r\n\r\n这样你就可以完全玩转中间件参数了。\r\n\r\n\r\n##响应后中间件##\r\n对照文档，这里只需要知道响应后中间件的位置即可。  \r\n\r\n![响应后中间件][0.05303032812662423]\r\n\r\n  [0.05303032812662423]: http://laravelbase.com/uploads/editor/d261dcdd08cee0172b612886cbe7c6fd.png', '2015-09-27 22:08:41', '2016-07-15 01:20:58', 10, 1, 4549, 4, 1, 1, '', '', '', NULL),
(38, 'Laravel 5.1 文档攻略 ——控制器', '##从路由到控制器##\r\n\r\n控制器是整个程序的老板，指挥着各种逻辑的运行，我们来看看从路由到控制器的过程：  \r\n```\r\nRoute::get(''user/{id}'', ''UserController@showProfile'');\r\n```  \r\n  \r\n  \r\n定义好路由后，我们在这个位置`app/Http/Controllers`新建一个控制器文件UserController.php，里面写入:  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse App\\User;\r\nuse App\\Http\\Controllers\\Controller;\r\n\r\nclass UserController extends Controller\r\n{\r\n    \r\n    public function showProfile($id)\r\n    {\r\n        return view(''user.profile'', [''user'' => User::findOrFail($id)]);\r\n    }\r\n}\r\n```\r\n\r\n这样一个基本控制器就写好了。\r\n\r\n##控制器的命名空间##\r\n如果我不想把控制器放在`app/Http/Controllers`这个地方怎么办？\r\n\r\n因为laravel是按照psr-4的原则进行自动加载的，因此如果controller没有放在默认位置，需要调整相应的命名空间：  \r\n例如，有一个controller在这个位置：\r\n`App\\Http\\Controllers\\Photos\\AdminController.php`\r\n它里面的命名空间应该是这样写的：\r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers\\Photos;\r\n\r\nclass AdminController extends Controller{\r\n\r\n...\r\n\r\n}\r\n```\r\n只有这样写才能被composer正确的加载到；  \r\n\r\n然后在路由调用这个controller的时候，也需要把命名空间加上：  \r\n\r\n`Route::get(''foo'', ''Photos\\AdminController@method'');`\r\n\r\n注意App\\Http\\Controllers\\Photos; 我们只加了Photos，这是因为App\\Http\\Controllers在routes.php文件里是默认的命名空间，不用全写。\r\n\r\n实际使用的时候，我们会在App\\Http\\Controllers\\Photos文件夹里放很多controller，难道需要每个路由里都写一遍命名空间？不用：  \r\n**注意，这里是路由的知识，请参考相关章节**\r\n```\r\nRoute::group([''namespace'' => ''Photos''], function () {\r\n...\r\n}\r\n\r\n```\r\n用路由分组，只写一次就可以了。\r\n\r\n##控制器中间件##\r\n前面这个知识已经涉及到，可以在路由里指定中间件，也可以在controller里面直接指定中间件：  \r\n```\r\nclass UserController extends Controller\r\n{\r\n    /**\r\n     * Instantiate a new UserController instance.\r\n     *\r\n     * @return void\r\n     */\r\n    public function __construct()\r\n    {\r\n        $this->middleware(''auth'');\r\n\r\n        $this->middleware(''log'', [''only'' => [''fooAction'', ''barAction'']]);\r\n\r\n        $this->middleware(''subscribed'', [''except'' => [''fooAction'', ''barAction'']]);\r\n    }\r\n}\r\n```\r\n注意后面两个限制写法，这样不仅可以为控制器加入中间件，还可以灵活的指定特定的function。\r\n\r\n##RESTful Resource 控制器##\r\n\r\n对数据的操作经常要通常要涉及『增删改查』CRUD，在web中，是通过http请求完成的。每个人写crud请求的方式千奇百怪，于是有个人就提出用RESTful的方式来统一资源请求的写法。\r\nRest基本上就是这么一回事。  \r\n\r\n**注意：以下是路由知识的一部分**\r\nLaravel 把Restful路由封装成一个：  \r\n`Route::resource(''photo'', ''PhotoController'');`\r\n\r\n''photo''这里不再是url，而是指一个资源的名称，相应的url会在下表中自动生成；你看，指定的PhotoController后面并没有跟上某个方法，因为resource是一套完整的crud标准集合。\r\n\r\n文档中的那个表解释得很清楚了：  \r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Verb</th>\r\n<th>Path</th>\r\n<th>Action</th>\r\n<th>Route Name</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>GET</td>\r\n<td><code class=" language-php"><span class="token operator">/</span>photo</code></td>\r\n<td>index</td>\r\n<td>photo.index</td>\r\n</tr>\r\n<tr>\r\n<td>GET</td>\r\n<td><code class=" language-php"><span class="token operator">/</span>photo<span class="token operator">/</span>create</code></td>\r\n<td>create</td>\r\n<td>photo.create</td>\r\n</tr>\r\n<tr>\r\n<td>POST</td>\r\n<td><code class=" language-php"><span class="token operator">/</span>photo</code></td>\r\n<td>store</td>\r\n<td>photo.store</td>\r\n</tr>\r\n<tr>\r\n<td>GET</td>\r\n<td><code class=" language-php"><span class="token operator">/</span>photo<span class="token operator">/</span><span class="token punctuation">{</span>photo<span class="token punctuation">}</span></code></td>\r\n<td>show</td>\r\n<td>photo.show</td>\r\n</tr>\r\n<tr>\r\n<td>GET</td>\r\n<td><code class=" language-php"><span class="token operator">/</span>photo<span class="token operator">/</span><span class="token punctuation">{</span>photo<span class="token punctuation">}</span><span class="token operator">/</span>edit</code></td>\r\n<td>edit</td>\r\n<td>photo.edit</td>\r\n</tr>\r\n<tr>\r\n<td>PUT/PATCH</td>\r\n<td><code class=" language-php"><span class="token operator">/</span>photo<span class="token operator">/</span><span class="token punctuation">{</span>photo<span class="token punctuation">}</span></code></td>\r\n<td>update</td>\r\n<td>photo.update</td>\r\n</tr>\r\n<tr>\r\n<td>DELETE</td>\r\n<td><code class=" language-php"><span class="token operator">/</span>photo<span class="token operator">/</span><span class="token punctuation">{</span>photo<span class="token punctuation">}</span></code></td>\r\n<td>destroy</td>\r\n<td>photo.destroy</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n这就是Restful请求写法的整个标准。\r\n\r\n###只让部分Restful action生效###\r\n\r\n```\r\nRoute::resource(''photo'', ''PhotoController'',\r\n                [''only'' => [''index'', ''show'']]);\r\n\r\nRoute::resource(''photo'', ''PhotoController'',\r\n                [''except'' => [''create'', ''store'', ''update'', ''destroy'']]);\r\n```\r\n\r\n###给resource路由命名###\r\nresource路由的名字是根据资源名称自动生成的，当你也可以完全手动的指定路由名称：\r\n```\r\nRoute::resource(''photo'', ''PhotoController'',\r\n                [''names'' => [''create'' => ''photo.build'']]);\r\n```\r\n\r\n###嵌套resource路由###\r\n有时候你需要`photos/{photos}/comments/{comments}`这样的url，那resource路由和控制器怎么写呢？  \r\n`Route::resource(''photos.comments'', ''PhotoCommentController'');`\r\n''photos.comments''中间用点链接，再次强调，这里是资源名称，不是url；  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse App\\Http\\Controllers\\Controller;\r\n\r\nclass PhotoCommentController extends Controller\r\n{\r\n    \r\n    public function show($photoId, $commentId)\r\n    {\r\n        //\r\n    }\r\n}\r\n\r\n```\r\n控制器的写法如上；\r\n\r\n###给resource路由控制器增加方法###\r\nresource控制器的方法都是预置好的，如果需要增加，你可以随意增加，只是增加路由的时候，需要把自定的路由放在resource路由的前面：\r\n```\r\nRoute::get(''photos/popular'', ''PhotoController@method'');\r\n\r\nRoute::resource(''photos'', ''PhotoController'');\r\n```\r\n\r\n##隐式路由##\r\n隐式路由的写法，是由于有些人觉得一个一个路由写太麻烦了，于是就用魔术方法来绑定controller里的action：\r\n\r\n路由是这样写的：  \r\n`Route::controller(''users'', ''UserController'');`\r\n\r\n主要看controller里的方法：  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nclass UserController extends Controller\r\n{\r\n    /**\r\n     * Responds to requests to GET /users\r\n     */\r\n    public function getIndex()\r\n    {\r\n        //\r\n    }\r\n\r\n    /**\r\n     * Responds to requests to GET /users/show/1\r\n     */\r\n    public function getShow($id)\r\n    {\r\n        //\r\n    }\r\n\r\n    /**\r\n     * Responds to requests to GET /users/admin-profile\r\n     */\r\n    public function getAdminProfile()\r\n    {\r\n        //\r\n    }\r\n\r\n    /**\r\n     * Responds to requests to POST /users/profile\r\n     */\r\n    public function postProfile()\r\n    {\r\n        //\r\n    }\r\n}\r\n```\r\n这里的getIndex()就相当于定义了一个路由：  \r\nRoute::get(''user/index'', ''UserController@getIndex'');\r\n\r\n###隐式路由的路由名称###\r\n显而易见，隐式路由的写法巧妙的减少了很多代码量，但是同时并不利于给路由起名，方法是有的：\r\n```\r\nRoute::controller(''users'', ''UserController'', [\r\n    ''getShow'' => ''user.show'',\r\n]);\r\n```\r\n增加第三个参数，把action逐一起名；\r\n\r\n**但是隐式路由不能定义路由参数**，实际使用中，由于定义不清，管理不便，Taylor并不建议使用隐式路由，并表示会在以后的版本中废除这一功能；\r\n所以尽量不要使用；\r\n\r\n##控制器与依赖注入##\r\n***这里放到后面再讲***\r\n\r\n##小节##\r\n至此，我们已经比较完整的了解了路由的知识，它和控制器有着密切的关系，\r\n\r\nLaravel路由实现总的来说有3种方式；\r\n\r\n一种就是Route::get(''路径'', function(){...});这种形式，你可以根据需要把get换成post, put, delete等各种请求方式；这种写法最常见，也是最推荐的；\r\n\r\n第二种形式resource路由：\r\n```\r\nRoute::resource(''posts'',''PostsController''); \r\n```\r\n第三种形式隐式路由：\r\n```\r\nRoute::controller(''foo'', ''FooController'');\r\n```\r\n\r\n\r\n下面提示两个小技巧，也许能节约你不少时间：\r\n一个是控制台命令：\r\n```\r\nphp artisan route:list\r\n```\r\n这个命令可以拉出来一个所有路由的清单；\r\n\r\n另一个是:  \r\nRoute::get() 可以简写为 get()；同理，Route::post() 也可以简写为 post(),以此类推。', '2015-09-28 17:18:19', '2016-07-15 00:54:21', 10, 1, 3794, 0, 1, 1, '', '', '', NULL),
(39, 'Laravel 5.1 文档攻略 ——请求', '##获取请求对象##\r\n\r\n从这里开始要讲Http的请求和响应，要先对http协议进行充分的预习和了解。  \r\n\r\n在Laravel里，主要是对请求和响应做了对象化处理，所以要充分理解对象化编程的理念。  \r\n\r\n我们的一个表单中提交上来的信息，是怎么传送到控制器里进行处理的呢？\r\n\r\n先来看个路由：  \r\n```\r\nRoute::post(''user'', ''UserController@store'');\r\n\r\n```\r\n这个路由就是用来提交表单信息的，接下来我们来看看UserController中怎么写：\r\n传统的写法：\r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Illuminate\\Http\\Request;\r\nuse Illuminate\\Routing\\Controller;\r\nuse Input;\r\n\r\nclass UserController extends Controller\r\n{\r\n    \r\n    \r\n    public function store()\r\n    {\r\n        $name = Input::get(''name'');\r\n\r\n        //\r\n    }\r\n}\r\n```\r\n这里的Input::get(''name'');就相当于php 的$_GET(''name'')；下面我们来看用Request对象怎么写：\r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Illuminate\\Http\\Request;\r\nuse Illuminate\\Routing\\Controller;\r\n\r\nclass UserController extends Controller\r\n{\r\n    \r\n    \r\n    public function store(Request $request)\r\n    {\r\n        $name = $request->input(''name'');\r\n\r\n        //\r\n    }\r\n}\r\n```\r\n这里又出现了Request $request这种控制器方法依赖注入的写法，看文档就是有这个问题，好多概念不分先后，混在一起讲；总之你需要知道这样写，就可以得到一个$request对象。使用对象后，比起只是用$_GET(''name'')；取得一个值，功能要强大很多，后面会有讲到；  \r\nRequest $request 这种（Typehint）写法，其实不是输入一个参数，而是注入了一个\r\n对象，但是如果我要加入参数怎么办：写在后面！：  \r\n\r\n路由\r\n```\r\nRoute::put(''user/{id}'', ''UserController@update'');\r\n```\r\n控制器\r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Illuminate\\Http\\Request;\r\nuse Illuminate\\Routing\\Controller;\r\n\r\nclass UserController extends Controller\r\n{\r\n    \r\n    public function update(Request $request, $id)\r\n    {\r\n        //\r\n    }\r\n}\r\n```\r\n\r\n##基本的请求对象操作##\r\n\r\n###请求URL相关###\r\n获取发出请求的完整URL：  \r\n```\r\n$url = $request->url();\r\n```\r\n获取URL相对路径：  \r\n```\r\n$uri = $request->path();\r\n```\r\n判断请求是否来自某个url：\r\n```\r\nif ($request->is(''admin/*'')) {\r\n    //\r\n}\r\n```\r\n###判断请求的方法###\r\n```\r\n$method = $request->method();\r\n\r\nif ($request->isMethod(''post'')) {\r\n    //\r\n}\r\n```\r\n\r\n###获取请求值###\r\n```\r\n$name = $request->input(''name'');\r\n```\r\n如果你不能确定有没有这个name，你可以：  \r\n```\r\n$name = $request->input(''name'', ''Sally'');\r\n```\r\n这样就可以在name没有的情况下设置一个name及其默认值；\r\n如果传过来的是个数组：\r\n```\r\n$input = $request->input(''products.0.name'');\r\n```\r\n你可以用这种方式取值，超级方便。\r\n\r\n**取全部值**\r\n```\r\n$input = $request->all();\r\n```\r\n这将得到一个数组；\r\n\r\n**限制取值**\r\n```\r\n$input = $request->only([''username'', ''password'']);\r\n\r\n$input = $request->only(''username'', ''password'');\r\n\r\n$input = $request->except([''credit_card'']);\r\n\r\n$input = $request->except(''credit_card'');\r\n```\r\n\r\n##把Input值放到Session里##\r\n表单提交数据，一般刷新后就没了，有时候你需要重复使用它们，一般可以放它们放到Session里：  \r\n```\r\n$request->flash();\r\n```\r\n类似之前的知识，我们可以对request的值做一些限制：  \r\n```\r\n$request->flashOnly(''username'', ''email'');\r\n\r\n$request->flashExcept(''password'');\r\n```\r\n更多的应用是在重定向的时候： \r\n```\r\n return redirect(''form'')->withInput();\r\n\r\nreturn redirect(''form'')->withInput($request->except(''password''));\r\n```\r\nwithInput() 就可以把request里全部的值发给Session，如果需要进行一些限制，可以这样写withInput($request->except(''password''))；\r\n\r\n###取回request发给session的值###\r\n```\r\n$username = $request->old(''username'');\r\n```\r\n在视图中（这里还没讲到blade模板，先记着），可以在表单中这样写：\r\n```\r\n<input name="username" value="{{ old(''username'') }}"/>\r\n```\r\n\r\n这样如果用户表单填错了，再重定向返回的时候，表单就可以记住上次用户输入的数据；\r\n\r\n##文件请求##\r\n文件请求是一种特殊的请求，涉及到文件在磁盘上的操作；\r\n###获取上传的文件###\r\n```\r\n$file = $request->file(''photo'');\r\n```\r\n这里获取到的是一个文件对象；\r\n###检查是否有某上传文件###\r\n```\r\nif ($request->hasFile(''photo'')) {\r\n    //\r\n}\r\n```\r\n###检查上传文件是否成功###\r\n```\r\nif ($request->file(''photo'')->isValid())\r\n{\r\n    //\r\n}\r\n```\r\n###移动上传文件###\r\n```\r\n$request->file(''photo'')->move($destinationPath);\r\n\r\n$request->file(''photo'')->move($destinationPath, $fileName);\r\n```\r\n$destinationPath 必须是一个完整的磁盘路径，后面可以加个$fileName给文件重命名；\r\n\r\n对于上传文件的操作还有一系列Api，请参考：[Symfony\\Component\\HttpFoundation\\File\\UploadedFile][1]\r\n\r\n  [1]: http://api.symfony.com/2.7/Symfony/Component/HttpFoundation/File/UploadedFile.html', '2015-09-28 22:38:20', '2016-07-15 00:54:23', 10, 1, 3070, 1, 2, 1, '', '', '', NULL),
(40, 'Laravel 5.1 文档攻略 ——视图', '##基本视图渲染##\r\n\r\n首先，所有视图文件应该放在resources/views 文件夹内，比如新建一个resources/views/greeting.php文件，这文件的内容是：  \r\n```\r\n<html>\r\n    <body>\r\n        <h1>Hello, <?php echo $name; ?></h1>\r\n    </body>\r\n</html>\r\n```\r\n一个最简单的html文件，$name是一个外部传入的变量，那么我们怎么渲染视图并传入变量呢？  \r\n```\r\nRoute::get(''/'', function ()    {\r\n    return view(''greeting'', [''name'' => ''James'']);\r\n});\r\n```\r\n这样访问路径就可以看到传入参数的的视图了，注意view(''greeting'',...),greeting是resources/views下面的文件名或文件夹，例如，如果你把视图文件放在了resources/views/admin/greeting.php, 那么view(''greeting'',...) 就要改成view(''admin.greeting'',...)了，中间用点分隔。\r\n###判断视图文件是否存在###\r\n```\r\nif (view()->exists(''emails.customer'')) {\r\n    //\r\n}\r\n```\r\n\r\n\r\n##视图传入数据##\r\n基本传入方式：  \r\n```\r\nreturn view(''greetings'', [''name'' => ''Victoria'']);\r\n\r\n```\r\n注意到后面就是一个数组，如果你在前面有定义过数据：\r\n\r\n```\r\n$name = User::find(1)->name;\r\nreturn view(''greetings'', compact(''name''));\r\n\r\n```\r\n\r\n可以使用PHP的compact（）函数，其实这是一种更方便的写法；\r\n\r\n用with（）传数据：\r\n```\r\n$view = view(''greeting'')->with(''name'', ''Victoria'');\r\n```\r\n\r\n基本上一个意思。\r\n\r\n###给所有视图传数据###\r\n有时候我想把登录用户的数据传给所有视图，这时候需要在程序启动的时候就注册一下这个数据，在哪里启动呢，这里要提前讲一下Service Provider ：  \r\n位置`app/Providers/AppServiceProvider.php `\r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Providers;\r\n\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n   \r\n   \r\n    public function boot()\r\n    {\r\n        view()->share(''name'', ''Victoria'');\r\n    }\r\n\r\n   \r\n   \r\n    public function register()\r\n    {\r\n        //\r\n    }\r\n}\r\n```\r\n这里面的boot()方法，就是程序最先启动的时候加载的逻辑的地方,我们在里面写上\r\n` view()->share(''name'', ''Victoria'');`意思就是把这个变量传递给所有视图，所有视图里都可以直接使用$name这个变量；\r\n\r\n##View Composers##\r\n\r\n这个composer和我们那个包管理composer一点关系都没有。 这个View Composer是用来指定特定的视图，或视图组，为其传入数据：  \r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Providers;\r\n\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n   \r\n   \r\n    public function boot()\r\n    {\r\n       $this->getAuthUser();\r\n    }\r\n\r\n  \r\n    public function register()\r\n    {\r\n        //\r\n    }\r\n    \r\n     private function getAuthUser()\r\n    {\r\n\r\n\r\n        view()->composer([''back._layouts.partials.header'',''front._layouts.partials.header'',''front.user.*''], function ($view) {\r\n\r\n            $auth_user = Auth::user();\r\n\r\n $view->with(''auth_user'', $auth_user);          \r\n\r\n        });\r\n    }\r\n   \r\n}\r\n```\r\n这个是本站view composer的实际应用代码，你可以看到指定视图的时候可以用数组的方式指定多个，并且可以使用通配符；\r\n\r\n##View Creators##\r\n文档说和View Composers差不多，一直没搞懂有啥区别，有什么用，哪位大侠了解的请留言。', '2015-09-29 06:53:48', '2016-07-15 01:06:05', 13, 1, 2546, 0, 1, 1, '', '', '', NULL),
(43, 'Laravel 5.1 文档攻略 ——Blade 视图模板', '##概述##\r\nPhp 本身就是一个视图模板，视图模板引擎的作用只不过是把视图逻辑渲染的代码变得简单了。Blade是Laravel专门开发的视图模板引擎，也许功能比不上twig等（Smarty这种就不要拿出来丢人现眼了）模板强大（也就强大那么一点点），但是非常简单，不用重新学习视图模板语法，最重要是告诉你怎么才能科学合理的组织的视图逻辑。  \r\nBlade模板里可以和php代码混用，这真是太方便了，学习成本几乎为0；\r\n\r\n##模版的继承##\r\n视图模板最重要的一个特性，就是它拥有类似PHP的类继承关系，切记。\r\n\r\n@section 类似这样的视图模板语句，我们把它称之为directive，如果你恰好用过一些前端框架（Angular.js等），你会很熟悉这个概念。所有directive加起来也就10几个，熟悉了它们，blade也就学会了。\r\n\r\n除了directive，还有一个重要的概念就是视图结构，不同视图文件的组合关系，请看下图：\r\n![\\blade_layout.png][0.7143440712243319]\r\n\r\n  [0.7143440712243319]: http://laravelbase.com/uploads/editor/794561105ce08caaaf8bdfc69c8cef94.png\r\n  \r\n  然后我们来看文档说的Layout\r\n  ```\r\n  <!-- Stored in resources/views/layouts/master.blade.php -->\r\n\r\n<html>\r\n    <head>\r\n        <title>App Name - @yield(''title'')</title>\r\n    </head>\r\n    <body>\r\n        @section(''sidebar'')\r\n            This is the master sidebar.\r\n        @show\r\n\r\n        <div class="container">\r\n            @yield(''content'')\r\n        </div>\r\n    </body>\r\n</html>\r\n```\r\n这就是主模板里面的，@yield的意思是『生成』，所以@yield(''title'')，@yield(''content'')就是生成子页面定义的内容，那么子页面该怎样定义呢：\r\n```\r\n@section(''content'')\r\n\r\n你的内容\r\n\r\n@endsection\r\n```\r\n这样『你的内容』就会在主模板中@yield(''content'')的位置出现。  \r\n那上面例子中的\r\n```\r\n@section(''sidebar'')\r\nThis is the master sidebar.\r\n@show \r\n```\r\n又是什么意思呢？文档还真是不客气，首先这里已经是主模板了，This is the master sidebar.一般不会出现在其他地方（除非你在子页面里定义@yield，非常不建议这样做）。@show 的意思是显示当前section并且『yield』子页面中相同键名的section，说通俗点就是子页面对应的内容可以接着这个地方继续往下写。  \r\n现在来看子页面\r\n```\r\n<!-- Stored in resources/views/child.blade.php -->\r\n\r\n@extends(''layouts.master'')\r\n\r\n@section(''title'', ''Page Title'')\r\n\r\n@section(''sidebar'')\r\n    \r\n@parent\r\n    <p>This is appended to the master sidebar.</p>\r\n@endsection\r\n\r\n@section(''content'')\r\n    <p>This is my body content.</p>\r\n@endsection\r\n```\r\n首先你要用@extends继承一下主模板，表示这个blade文件是子页面。\r\n\r\n  @parent意思就是增补section(''sidebar'')，而不是覆盖，@parent和@show要配合使用。\r\n  \r\n  ###Include###\r\n  在页面中include一段代码：\r\n  ```\r\n  <div>\r\n    @include(''shared.errors'')\r\n\r\n    <form>\r\n        <!-- Form Contents -->\r\n    </form>\r\n</div>\r\n```\r\n''shared.errors''是视图文件的位置；有了include，代码变得更整洁，而且可以复用。\r\n```\r\n@include(''view.name'', [''name'' => ''data''])\r\n```\r\n**注意，include可以传入数据，这是一个非常有用的功能，不要忽略了。** \r\n  \r\n \r\n ##显示数据##\r\n 传数据的方法和普通php文件一样：\r\n ```\r\n Route::get(''greeting'', function () {\r\n    return view(''welcome'', [''name'' => ''Samantha'']);\r\n});\r\n```\r\n显示\r\n```\r\nHello, {{ $name }}.\r\n```\r\n\r\n如果$name里面含有html代码，你需要这样写：\r\n```\r\n{!! $name !!}\r\n```\r\n才能解析，否则代码会变成字符串显示出来，这在解析文章正文的时候经常用到。\r\n大多数情况我们还是使用{{ $name }}。  \r\n*{{ time() }} 双括号里里面可以写任何php语句*  \r\n\r\n### Javasript 语法冲突 ###\r\n现在很多前端框架，比如vue.js，也用{{  }}嵌入代码，那么就和blade模板冲突了，这个时候你只要这样写，Blade就会忽略这个{{  }}：\r\n```\r\n@{{ name }}\r\n```\r\n\r\n### 让三元运算变得更简单 ###\r\n\r\n你常常会这样写\r\n```\r\n{{ isset($name) ? $name : ''Default'' }}\r\n```\r\nBlade里面这样写就够了：\r\n```\r\n{{ $name or ''Default'' }}\r\n```\r\n\r\n\r\n##条件控制##\r\n\r\n视图里的条件控制是视图模板的核心内容，基本和PHP一样，非常简单：\r\n\r\n\r\n### IF 条件 ###\r\n```\r\n@if (count($records) === 1)\r\n    I have one record!\r\n@elseif (count($records) > 1)\r\n    I have multiple records!\r\n@else\r\n    I don''t have any records!\r\n@endif\r\n\r\n```\r\n\r\nBlade 还提提供了一个 @unless：\r\n```\r\n@unless (Auth::check())\r\n    You are not signed in.\r\n@endunless\r\n\r\n```\r\n用这个unless就要考你语文和逻辑学得好不好了，它的意思是除非...否则... , 你要把它理解为除非...才能...那你就错了，因为只有...才能...才是对的。\r\n英语的确是一门精确的语言。\r\n\r\n懒得搞明白还是用万能的If吧。\r\n\r\n###循环###\r\n```\r\n@for ($i = 0; $i < 10; $i++)\r\n    The current value is {{ $i }}\r\n@endfor\r\n\r\n@foreach ($users as $user)\r\n    <p>This is user {{ $user->id }}</p>\r\n@endforeach\r\n\r\n@forelse ($users as $user)\r\n    <li>{{ $user->name }}</li>\r\n@empty\r\n    <p>No users</p>\r\n@endforelse\r\n\r\n@while (true)\r\n    <p>I''m looping forever.</p>\r\n@endwhile\r\n```\r\n没什么好说的，就是forelse挺好用，可以常用。\r\n\r\n\r\n###Collection循环###\r\n\r\nCollection是一种对象集合，这后面会讲到，因为Laravel是面向对象的，所以喜欢玩对象，而不是数组。\r\n因为，一般用于循环的数据都是Collection对象集合，在这种情况下，你可以把视图代码精简到极致：\r\n```\r\n@each(''view.name'', $jobs, ''job'', ''view.empty'')\r\n```\r\n''view.name''是渲染子视图，$jobs是Collection对象集合，job是单个变量名称（as 后面那个），''view.empty''是当$jobs不存在下的缺省视图。\r\n\r\n建议这种写法新手先别用，熟练再用。\r\n\r\n##Service Injection（服务注入）##\r\n这个是5.1的新功能，什么是服务什么是注入，这个后面会讲到。\r\n大概的意思你可以在试图中轻松调用一个类，并获得它的实例。\r\n\r\n##扩展Blade模板的Directive##\r\n有这个功能，但建议新手就别玩了，免得写出自己和别人都看不懂的代码。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2015-10-17 22:47:04', '2016-07-15 01:25:11', 13, 1, 3909, 0, 0, 1, '', 'Laravel,PHP, 视图模板，视图模板引擎，全栈，程序员，开发，web开发', 'Php 本身就是一个视图模板，视图模板引擎的作用只不过是把视图逻辑渲染的代码变得简单了。Blade是Laravel专门开发的视图模板引擎，也许功能比不上twig等（Smarty这种就不要拿出来丢人现眼了）模板强大（也就强大那么一点点），但是非常简单，最重要是告诉你怎么才能科学合理的组织的视图逻辑。', NULL),
(44, 'Laravel 5.1 文档攻略 ——请求的生命周期', '##概述##\r\n从url到服务器处理信息再到服务器返回数据，浏览器渲染视图。这不到1秒的过程其实有不同的阶段，合起来就叫一个请求的生命周期。我们与服务器的交互就是由很多请求的生命周期来完成的。\r\n学习请求的生命周期，就是学习程序在请求的不同阶段做了那些事情（涉及到那些重要文件），然后了解在合适的位置插入代码逻辑。\r\n\r\n##生命周期##\r\n###启动阶段###\r\n`public/index.php`\r\n`bootstrap/app.php`\r\n这两个文件，和所有程序一样，index.php是入口文件，不过它是放在public下的。  \r\nbootstrap/app.php这个文件是程序的核心，它会生成一个『容器』对象 $app; 关于什么叫容器，后面会讲，总之容器是Laravel架构的核心，先了解一下；\r\n\r\n###HTTP / Console Kernels(核心）###\r\n下面开始处理HTTP / Console请求的核心文件，怎么还有console？对，Laravel是支持命令行交互的。\r\n核心文件的位置：  \r\n```\r\napp/Http/Kernel.php\r\n```\r\n它继承了：\r\n```\r\nIlluminate\\Foundation\\Http\\Kernel\r\n```\r\n打开这个Kernel.php看一下：  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http;\r\n\r\nuse Illuminate\\Foundation\\Http\\Kernel as HttpKernel;\r\n\r\nclass Kernel extends HttpKernel\r\n{\r\n    /**\r\n     * The application''s global HTTP middleware stack.\r\n     *\r\n     * @var array\r\n     */\r\n    protected $middleware = [\r\n        \\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode::class,\r\n        \\App\\Http\\Middleware\\EncryptCookies::class,\r\n        \\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse::class,\r\n        \\Illuminate\\Session\\Middleware\\StartSession::class,\r\n        \\Illuminate\\View\\Middleware\\ShareErrorsFromSession::class,\r\n        \\App\\Http\\Middleware\\VerifyCsrfToken::class,\r\n\r\n    ];\r\n\r\n    /**\r\n     * The application''s route middleware.\r\n     *\r\n     * @var array\r\n     */\r\n    protected $routeMiddleware = [\r\n        ''auth'' => \\App\\Http\\Middleware\\Authenticate::class,\r\n        ''auth.basic'' => \\Illuminate\\Auth\\Middleware\\AuthenticateWithBasicAuth::class,\r\n        ''guest'' => \\App\\Http\\Middleware\\RedirectIfAuthenticated::class,\r\n        ''role'' => \\App\\Http\\Middleware\\Role::class,\r\n        ''like'' => \\App\\Http\\Middleware\\LikeDislikeMiddleware::class,\r\n\r\n    ];\r\n}\r\n```\r\n从这里就可以看出它主要在管理什么了，这些都是中间件，上部分是全局的，下部分是命名的，单路由的。\r\n里面就包括了错误处理，Session，CSRF防护等重要基础功能，用户自己新建的中间件也在这里绑定。\r\n\r\n###Service Providers(服务提供者)###\r\n\r\nIlluminate\\Foundation\\Http\\Kernel 这个类还在背后默默的做了很多重要的基础工作，其中就包括启动Service Providers。\r\n\r\nService Providers的概念后面会详细讲，先说什么是服务，服务其实就是一个组件，再通俗点讲，composer里的一个package就是一个服务，有的地方把服务器称之为bundle, 或者Component。\r\n\r\n```\r\nconfig/app.php\r\n```\r\n这个文件是框架最重要的文件之一，composer的包使用前都要在这里绑定一下，也就是说服务需要在这里绑定一下才会被启动加载到。\r\n\r\n服务不仅要加载，而且还要先注册一下，才能被使用，什么叫做注册呢？其实就是一个外部服务（包）和Laravel核心程序的连接行为，这个连接器就叫做Service Provider。\r\n\r\n它们的位置位于：\r\n```\r\napp/Providers\r\n```\r\nService Provider 里面一般有两个重要方法：boot()和register()；\r\n前者是用来在启动前期加载一些程序逻辑。\r\n**注意，boot()非常常用，请记住**\r\nregister()则是用来注册外部的服务。\r\n\r\nService Providers 和Service Container 有密切关系，这个后面会讲。\r\n\r\n###请求对象###\r\n  \r\n有了Service Providers 和Service Container的帮助，Laravel在启动的时候就把用户请求封装成了一个对象（Request），这个对象有很多现成的方法，使请求处理变得异常强大。\r\n\r\n\r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  ', '2015-10-25 20:54:04', '2016-07-14 23:23:58', 10, 1, 2561, 0, 3, 1, '', '', '', NULL),
(45, 'Laravel 5.1 文档攻略 ——文件结构', '  \r\n    \r\n      \r\n      \r\n这一节无疑是文档中写得比较详细的。所以简单讲下就好了。  \r\n主要搞清楚几个问题。\r\n##composer##\r\n首先是composer，composer有2个功能，一个是自动加载，一个是包管理。\r\ncomposer正确配置后，你再也不用写include，require这些东西了。 \r\n\r\n##命名空间##\r\nlaravel遵循psr-4的规则，命名空间极其重要，一定要先了解，否则无法继续学下去，另外输入命名空间最好的方法是使用Phpstorm;\r\n\r\n##app文件夹##\r\n你完全可以复制这个文件夹，比如叫做app1，里面东西和app一样，这样就是一个新的独立组件了，你可以把它变成一个独立的composer package。  \r\n\r\napp1如果要想被加载到，事前必须在composer里配置好。  \r\n\r\napp 和 app1 都和laravel的核心独立互动，从某种意义上，都是laravel核心的扩展。  \r\n\r\n通常情况下一个app写逻辑足够用，如果不是超大型项目，不建议使用app1。\r\n\r\n##app/Http/Controllers和routes.php##\r\n在routes.php里定义controller一般不用写全命名空间，但如果你的controller.php 如果没有放在默认的app/Http/Controllers的位置，那么就必须在routes.php里把多出来的命名空间补全。', '2015-10-25 22:23:17', '2016-07-15 00:53:50', 10, 1, 3032, 2, 2, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发,composer', '首先是composer，composer有2个功能，一个是自动加载，一个是包管理。 composer正确配置后，你再也不用写include，require这些东西了。', NULL),
(46, 'Laravel 5.1 文档攻略 ——Service Providers', '##概述##\r\n马上要进入Laravel 架构的最精彩部分了。其实Service Providers与Service Container是密切相关的，所以这两章当做一章来看。\r\n\r\n即使文档详细介绍了文档结构的各个目录的细节功能，但是对于初学者来说，还是不容易理解Laravel整体架构的逻辑。  \r\n```\r\nvendor/laravel\r\n```\r\n这里面的文件是Laravel的内核文件，其他外面的，包括vendor下面的包，从某种意义上都是Laravel内核的扩展。\r\n\r\n扩展和内核之间通过什么连接呢？  \r\n**Service Provider**\r\n\r\n```\r\napp/Providers\r\n```\r\n下面写Service Provider文件，文件的主要作用是注册内核以外的服务，你可能要问什么叫做注册，当你理解Service Container的时候就知道了，这里暂时跳过。\r\n\r\n```\r\nconfig/app.php\r\n```\r\n这里把写好的Service Provider加载到启动序列中，这里不写Service Provider不生效。\r\n\r\n##写一个Service Provider##\r\n很多文件都可以用artisan 命令生成  \r\n```\r\nphp artisan make:provider RiakServiceProvider\r\n```\r\n这样就在`app/Providers`下生成了RiakServiceProvider.php 文件。另外，系统已经默认生成了一个AppServiceProvider.php，打开看看：  \r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Providers;\r\n\r\n\r\nuse Illuminate\\Support\\ServiceProvider;\r\n\r\n\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n    /**\r\n     * Bootstrap any application services.\r\n     *\r\n     * @return void\r\n     */\r\n    public function boot()\r\n    {\r\n        \r\n\r\n    }\r\n\r\n    /**\r\n     * Register any application services.\r\n     *\r\n     * @return void\r\n     */\r\n    public function register()\r\n    {\r\n        //\r\n    }\r\n\r\n}\r\n```\r\n2个方法，boot()用于在启动的时候加载一些逻辑和程序，比如全局变量等等；\r\n**register()就是将外部服务器注册到Laravel内核的方法：  **\r\n我们来看一个典型的写法：  \r\n```\r\npublic function register()\r\n    {\r\n        $this->app->singleton(''Riak\\Contracts\\Connection'', function ($app) {\r\n            return new Connection(config(''riak''));\r\n        });\r\n    }\r\n```\r\n这样就把Riak\\Contracts\\Connection这个类（PHP接口）以单例模式的方式注册到系统内核中去了，这里所谓的系统内核，就是Service Container。\r\n\r\n注册了有什么用呢？你理解了Service Container就明白了，简单的说就是可以非常轻松的在任何需要的地方得到Riak\\Contracts\\Connection的实例。  \r\n\r\n你可能会问什么是单例模式，就是这个类只能生成一个对象。如果你这样写：  \r\n```\r\npublic function register()\r\n    {\r\n        $this->app->bind(''Riak\\Contracts\\Connection'', function ($app) {\r\n            return new Connection(config(''riak''));\r\n        });\r\n    }\r\n```\r\n就是多例模式，可以生成好多不同的对象。\r\n\r\n**register()里面只能用来注册服务，不能写不相干的东西**  \r\n\r\n###boot()的依赖注入###\r\n放到Service Container中讲。\r\n\r\n\r\n##延迟加载SP##\r\n首先Service Provider并不是日常开发常用到的功能，一般在开发扩展包的时候才用。如果你只是想绑定服务到容器，那么可以使用延迟加载的方法，这样加快速度。\r\nLaravel会把你这个Service Provider放到缓存了，只有需要解析实例的时候才会调用。\r\n', '2015-10-26 00:28:39', '2016-07-15 00:53:52', 10, 1, 4418, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(47, 'Laravel 5.1 文档攻略 ——Service Container', '##概述##\r\n没错，Service Container就是Laravel的核心机制了。\r\n###依赖注入###\r\n大多数面向对象编程语言，在调用一个类的时候，先要实例化这个类，生成一个对象。\r\n如果你在写一个类，过程中要调用到很多其它类，甚至这里的其它类，也要“依赖”于更多其它的类，那么可以想象，你要进行多少次实例化。\r\n\r\n这就是“依赖”的意思。\r\n\r\n依赖注入，全称是“依赖注入到容器”， 容器（IOC容器）是一个设计模式，它也是个对象，你把某个类（不管有多少依赖关系）放入这个容器中，可以“解析”出这个类的实例。\r\n\r\n所以依赖注入就是把有依赖关系（或者没有）的类放入容器（IOC容器）中，然后解析出这个类的实例。仅此而已。\r\n\r\n###容器###\r\n前面说了，容器是个对象，Laravel 有一个核心类，叫做application, 程序启动的时候就实例化了这个类， 放到$app, 这个类就是 ioc容器。\r\n\r\n有了这个$app，你就可以把注册过的类的实例解析出来：  \r\n ```\r\n $fooBar = $app->make(''FooBar'');\r\n ```\r\n 你可能在想，这个FooBar是一个类吗？什么时候注册过？怎么注册到容器的？ 复习一下上一节Service Container的内容：  \r\n ```\r\n $this->app->singleton(''FooBar'', function ($app) {\r\n    return new App\\Lib\\FooBar($app[''SomethingElse'']);\r\n});\r\n ```\r\n 看见了吗？FooBar是类App\\Lib\\FooBar的别称，你可以起任何名字。只要把这个别称放进容器里，就可以解析出一个实例；\r\n \r\n 你可能觉得费这么大劲解析一个实例，那还不如New一个实例呢。请理解依赖，new是new不出依赖的。\r\n 实际上我们通常不是按照上述方法来获得实例的，而是使用了一种更牛的方法，叫做Type-hint：  \r\n ```\r\n <?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Illuminate\\Routing\\Controller;\r\nuse App\\Users\\Repository as UserRepository;\r\n\r\nclass UserController extends Controller\r\n{\r\n    /**\r\n     * The user repository instance.\r\n     */\r\n    protected $users;\r\n\r\n    /**\r\n     * Create a new controller instance.\r\n     *\r\n     * @param  UserRepository  $users\r\n     * @return void\r\n     */\r\n    public function __construct(UserRepository $users)\r\n    {\r\n        $this->users = $users;\r\n    }\r\n\r\n    /**\r\n     * Show the user with the given ID.\r\n     *\r\n     * @param  int  $id\r\n     * @return Response\r\n     */\r\n    public function show($id)\r\n    {\r\n        //\r\n    }\r\n}\r\n```\r\nUserRepository $users这个地方，你看上去好像是个变量的类型限定，但是在Laravel里面这样写，这个$users在这里直接就是App\\Users\\Repository的一个实例，并不需要在实例化UserController的时候传入。\r\n 你有没有想明白，你不需要什么new，只要UserRepository $users这样写就可以得到$users这个实例，是不是很方便？\r\n \r\n 文档的简略简直让人汗颜，这个Type-hint最最常用的地方其实是在类的方法中：\r\n \r\n ```\r\n <?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Illuminate\\Routing\\Controller;\r\nuse App\\Users\\Repository as UserRepository;\r\n\r\nclass UserController extends Controller\r\n{\r\n\r\n\r\n    public function show(UserRepository $users,$id)\r\n    {\r\n        //\r\n    }\r\n}\r\n```\r\n 在show方法直接通过Type-hint注入$users对象，请记住，这个方法在实际中大量使用。前面的是通过容器注入的对象$users，后面是外部传入的变量$id，不会冲突，请注意。\r\n \r\n 这种注入方法在很多地方都可以使用，比如 controllers, event listeners, queue jobs, middleware,以及service provider里的boot()方法。\r\n \r\n ###服务的注册###\r\n 我们已经知道注册某个类到容器是在service provider里的register(),下面看看具体怎么注册：  \r\n 绑定多例：\r\n ```\r\n $this->app->bind(''HelpSpot\\API'', function ($app) {\r\n    return new HelpSpot\\API($app[''HttpClient'']);\r\n});\r\n```\r\n绑定单例  \r\n```\r\n$this->app->singleton(''FooBar'', function ($app) {\r\n    return new FooBar($app[''SomethingElse'']);\r\n});\r\n```\r\n绑定一个实例\r\n```\r\n$fooBar = new FooBar(new SomethingElse);\r\n\r\n$this->app->instance(''FooBar'', $fooBar);\r\n```\r\n###绑定接口并指定一个特定的实现###\r\n```\r\n$this->app->bind(''App\\Contracts\\EventPusher'', ''App\\Services\\RedisEventPusher'');\r\n```\r\n请注意，App\\Contracts\\EventPusher是一个Php接口类，App\\Services\\RedisEventPusher是它对应的实现，这里你可能有问题了，这样绑定我理解，但是怎么解析出来实例呢？\r\n```\r\n$pusher = $app->make(''App\\Contracts\\EventPusher'');\r\n```\r\n对，就是这样写，类没有别称，把类的全称放进去就可以解析出来了。\r\n但实际使用，我们还是用Type-Hint的方法注入，注意，是Type-hint接口，解析实现的实例，也就是App\\Services\\RedisEventPusher的实例。  \r\n不知道你是否能够理解这样做对解耦的意义，没关系，我们在下一章讲接口的时候会详细说到。  \r\n\r\n###上下文绑定###\r\n你观察到上面那种绑定方式，只能指定一个实现，如果要其他实现，就要改后面一个参数，这样一改，就全局改动了。有时候我们在某个类中注入接口，却想使用另一个实现怎么办？\r\n\r\n```\r\n$this->app->when(''App\\Handlers\\Commands\\CreateOrderHandler'')\r\n          ->needs(''App\\Contracts\\EventPusher'')\r\n          ->give(''App\\Services\\PubNubEventPusher'');\r\n```\r\n这种写法真是太流畅了，优雅！\r\n\r\n###标记###\r\n如果同时有多个实现，你想把他们的实例都获取到：  \r\n```\r\n$this->app->bind(''SpeedReport'', function () {\r\n    //\r\n});\r\n\r\n$this->app->bind(''MemoryReport'', function () {\r\n    //\r\n});\r\n\r\n$this->app->tag([''SpeedReport'', ''MemoryReport''], ''reports'');\r\n```\r\n这样标记好了以后，就可以  \r\n```\r\n$app->tagged(''reports'')\r\n```\r\n获取实例。\r\n\r\n##容器事件##\r\n```\r\n$this->app->resolving(function ($object, $app) {\r\n    // 任何类解析的时候都会触发\r\n});\r\n\r\n$this->app->resolving(FooBar::class, function (FooBar $fooBar, $app) {\r\n    // 指定类解析的时候才会触发\r\n});\r\n```\r\n 容器事件有啥用呢？你可以在实例解析出来的时候，预先做一些设置，比如改个属性什么的，然后在注入给别的类。\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n ', '2015-10-26 04:20:07', '2016-07-15 00:53:55', 10, 1, 5144, 2, 3, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL);
INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `category_id`, `views`, `comments`, `likes`, `collection_id`, `isext`, `seo_keywords`, `seo_description`, `deleted_at`) VALUES
(48, 'Laravel 5.1 文档攻略 ——Contracts（接口）', '##概述##\r\nContracts就是PHP中的Interface，主要作用是解耦。 \r\n\r\n接口就像是RPG游戏中的装备系统，比如说“防具”，“武器”，“魔法”，就是所谓的接口，你可以装备 各种对应的道具，比如“橡木盾”，“屠龙刀”，“亡灵法杖”，这些就是实现（implementation）。接口的作用就是解耦，简单理解就是“换装”，只要是按照接口换装，英雄不会出现无法使用武器的情况。\r\n\r\nLaravel内部已经预制了大量的Contracts ，这些Contracts通过service provider绑定了对应的实现。 而你在注入依赖类的时候，不用管具体实现，只要注入Contract，Laravel就会自动帮你找到那个绑定过的实现。\r\n\r\n什么意思？也就是说，以后你要“换装”，只要在Service Provider里改一下就好，不用涉及任何具体业务代码。\r\n\r\n你可以建立自己的Contract，到service provider里绑定一下到ioc容器即可。\r\n\r\n##简明步骤##\r\n1 定义你的接口类  \r\n2 定义一个你的接口实现类  \r\n3 到Service Provider去绑定到Service Container，记得在config/app.php里加载  \r\n4 用Type-hint解析的时候，你就可以得到实现类的实例  \r\n5 你在很多地方用了这个实例，并写了很多代码，有一天你发现要改很实现里function的内容。  \r\n6 没关系，完全不用涉及业务代码，你只要重新写一个实现，然后service provider里面重新绑定即可。', '2015-10-26 06:26:24', '2016-07-15 01:03:06', 10, 1, 2306, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(49, 'Laravel 5.1 文档攻略 ——Facades', '##概述##\r\n什么是Facades，可能你已经接触过不少了：  \r\n```\r\nRoute::get(''/'', function () {\r\n    return ''Hello World'';\r\n});\r\n```\r\n这种类似静态方法的写法其实不是PHP的静态方法调用，而是Facade。\r\n\r\n你突然发现Laravel里有两个似是而非的概念了，一个是上次说的Type-hint，其实是依赖注入，这里看似静态方法，其实是Facade，不用担心，也就是这两种写法容易混淆，熟悉就好。\r\n\r\n然后，这两种写法的背后都有同一个主使，那就是Service Provider（容器）。\r\n\r\n##Facede是干什么用的##\r\n其实很简单，Facade是一种更简单的解析容器实例方法，它的性质和Type-Hint一样，只不过更方便。\r\n\r\n你这样写\r\n```\r\nSession::put(''name'',''Jack'');\r\n```\r\n实际上是通过容器得到了一个Session类的实例，然后调用了put方法，只不过它看上去像是调用了静态方法，而你也通常无法直接拿到这个对象实例罢了。\r\n\r\nLaravel预置了很多Facade，详见文档列表。\r\n\r\n##怎么定义一个Facade##\r\n文档讲得比较简略，我们来一步步看：  \r\n首先：  \r\n```\r\nconfig/app.php\r\n```\r\n我们就来看Session类吧：  \r\n```\r\n ''Session''   => Illuminate\\Support\\Facades\\Session::class,\r\n ```\r\n 和service provider一样，需要启动的时候加载一下，''Session''   => 这个Session就是你调用Session::put(''name'',''Jack'');的Session  \r\n 接下来我们看Illuminate\\Support\\Facades\\Session  \r\n ```\r\n <?php\r\n\r\nnamespace Illuminate\\Support\\Facades;\r\n\r\n/**\r\n * @see \\Illuminate\\Session\\SessionManager\r\n * @see \\Illuminate\\Session\\Store\r\n */\r\nclass Session extends Facade\r\n{\r\n    /**\r\n     * Get the registered name of the component.\r\n     *\r\n     * @return string\r\n     */\r\n    protected static function getFacadeAccessor()\r\n    {\r\n        return ''session'';\r\n    }\r\n}\r\n\r\n ```\r\ngetFacadeAccessor()就是将Facade与容器连接，return ''session''; session是容器解析的别名，记得吗？不记得的话，我们再来看看Session类在Service Provider绑定的代码：  \r\n```\r\n protected function registerSessionManager()\r\n    {\r\n        $this->app->singleton(''session'', function ($app) {\r\n            return new SessionManager($app);\r\n        });\r\n    }\r\n```\r\n ', '2015-10-26 06:55:01', '2016-07-15 01:06:10', 10, 1, 2859, 0, 1, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(50, 'barryvdh/laravel-debugbar 调试神器', '[Github地址][1]\r\n\r\n  [1]: https://github.com/barryvdh/laravel-debugbar\r\n  \r\n  强大得一塌糊涂的debug调试工具，谁用谁知道。\r\n  初学者可能觉得用处不大，可是随着项目的深入，各种路由，视图，请求大量增加，你根本记不住，这个时候debugbar将信息一目了然的呈现给你。  \r\n  \r\n  技巧：\r\n1.   debugbar会降低速度，生产环境一定要关掉。  \r\n1. debugbar可以追踪2次请求，如果你的页面进行了跳转，你可以追踪上一次的请求数据。\r\n1. config文件里还可以打开很多模块，根据你的需要配置。\r\n\r\n点评：必装插件。', '2015-10-27 18:48:22', '2016-07-14 22:25:12', 10, 1, 2077, 2, 2, 0, 'on', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发，debug, laravel-debugbar', '', NULL),
(51, 'Laravel 5.1 文档攻略 —— 登录认证', '##概述##\n从这一章开始，就要讲框架提供的具体功能了，Laravel把这些功能称之为『服务』。  \n登录认证（Auth）是一个开箱即用，包括了登录，注册，邮箱验证，密码找回等完整的登录注册模块。\n登录认证并不复杂，但是很繁琐，好在Laravel已经帮我们把一切都准备好了，这个功能为程序员节省的时间是非常可观的。\n\n\n##涉及到的相关文件##\nAuth的配置文件在``config/auth.php``.  \n\n用户模型：``App\\User``  \nAuth控制器：  \n``App\\Http\\Controllers\\Auth\\AuthController.php``  \n \n\n中间件：  \n``\n        ''auth'' => \\App\\Http\\Middleware\\Authenticate::class\n        ``  \n        ``\n        ''auth.basic'' => \\Illuminate\\Auth\\Middleware\\AuthenticateWithBasicAuth::class``  \n        ``\n        ''guest'' => \\App\\Http\\Middleware\\RedirectIfAuthenticated::class\n        ``    \n视图：  \n``resources/views/auth/login.blade.php``  \n``resources/views/auth/register.blade.php``  \n\n        \n##路由##\n所谓开箱即用，路由加上去就可以用了：\n```\n// Authentication routes...\nRoute::get(''auth/login'', ''Auth\\AuthController@getLogin'');\nRoute::post(''auth/login'', ''Auth\\AuthController@postLogin'');\nRoute::get(''auth/logout'', ''Auth\\AuthController@getLogout'');\n\n// Registration routes...\nRoute::get(''auth/register'', ''Auth\\AuthController@getRegister'');\nRoute::post(''auth/register'', ''Auth\\AuthController@postRegister'');\n```\n\n##视图##\n基本视图也帮你准备好了，看官网文档的例子，主要是``value="{{ old(''name'') }}"``这个写法，这样可以提交某个值的时候存进session，如果提交失败，可以显示出来，不用用户重新填。\n\n##认证控制器##\n\n登录和注册的功能都放在``App\\Http\\Controllers\\Auth\\AuthController.php``中，**其实``config/auth.php``并不是放置所有配置的地方，AuthController.php中需要进行登录认证相关的设置。**  \n\n设置成功登录后转向的页面：  \n``protected $redirectPath = ''/dashboard'';``  \n设置登录失败后转向的页面：  \n``protected $loginPath = ''/login'';``  \n设置退出登录后转向的页面：  \n``protected $redirectAfterLogout = ''/'';``  \n\n###自定义控制器###\n所有的逻辑，写在``use AuthenticatesAndRegistersUsers``这个trait里面，你可以在把里面的方法拷贝出来，写在AuthController.php里，这样就可以覆盖。  \n这两个方法通常是需要修改的，拷出来：  \n``postRegister()``  \n``postLogin()``  \nAuthController.php里还有个``validator()``,可以修改里面表单认证的条件。  \n\n##获取认证用户##\n\n获取认证用户：  \n``$user = Auth::user();``\n这个可能是laravel里使用的最频繁的语句之一了，记住。\n官网说的  \n``$request->user()``也可以获取认证用户的实例。  \n\n###判断用户是否登录###\n方法一：  \n\n```\nif (Auth::check()) {\n    // The user is logged in...\n}\n```\n方法二：  \n```\nif ($request->user()) {\n            // $request->user() returns an instance of the authenticated user...\n        }\n        \n```\n方法三：\n最常用的方法还是 使用中间件auth。\n\n###在路由中使用中间件###\n```\nRoute::get(''profile'', [\n    ''middleware'' => ''auth'',\n    ''uses'' => ''ProfileController@show''\n]);\n```\n\n控制器中也可以设置：  \n```\npublic function __construct()\n{\n    $this->middleware(''auth'');\n}\n```\n\n##认证节流阀（Throttling）##\n这是什么意思呢？大家都使用过ATM取款机吧，秘密输错了3次，机器就会吞卡。这里的节流阀就是这个意思，如果有人用恶意程序登录系统，laravel会把该IP封锁一段时间，不让其进行登录相关操作。\n\nAuthController加入这个Trait就行了：  \n``\nThrottlesLogins;\n``  \n如果要改相关设置，同样的道理，进入Trait把要修改的方法拷贝出来就行了。\n\n##手动认证##\n前面说都是Laravel帮你封装好的，如果你需要自己写认证逻辑的话，下面提供了几个重要的方法：  \n```\npublic function authenticate()\n    {\n        if (Auth::attempt([''email'' => $email, ''password'' => $password])) {\n            // Authentication passed...\n            return redirect()->intended(''dashboard'');\n        }\n    }\n```\n这个是用来校验表单和数据库是否匹配的；\n\n如果登录需要用户是激活状态，可以这样写：  \n```\nif (Auth::attempt([''email'' => $email, ''password'' => $password, ''active'' => 1])) {\n    // The user is active, not suspended, and exists.\n}\n```\n\n##记住登录##\n要实现这个功能，数据库要有remember_token；  \n使用很简单：  \n```\nif (Auth::attempt([''email'' => $email, ''password'' => $password], $remember)) {\n    // The user is being remembered...\n}\n```\n在你后面的逻辑里，如果要区分是记住登录和手动登录的行为，可以：  \n```\nif (Auth::viaRemember()) {\n    //\n}\n```\n\n##对认证用户的一些操作##\n登录用户：  \n```\nAuth::login($user);\n```  \n\n用Id登录用户：  \n```\nAuth::loginUsingId(1);\n```\n\n登出用户：  \n```\nAuth::logout();\n```\n无状态登录（只在一个请求周期内有效）  \n```\nif (Auth::once($credentials)) {\n    //\n}\n```\n这在写一些API的时候比较有用。\n\n##HTTP基础登录##\n什么是基础登录呢？就是没有登录页面，直接浏览器弹个窗口让你输入用户名和密码。\n基础登录的中间件是：  \n``auth.basic``  \n默认用email作为登录的账户。\n\n###HTTP基础登录无状态登录（只在一个请求周期内有效）###\n这也就是一个中间件就能解决的事情：  \n```\n<?php\n\nnamespace Illuminate\\Auth\\Middleware;\n\nuse Auth;\nuse Closure;\n\nclass AuthenticateOnceWithBasicAuth\n{\n    /**\n     * Handle an incoming request.\n     *\n     * @param  \\Illuminate\\Http\\Request  $request\n     * @param  \\Closure  $next\n     * @return mixed\n     */\n    public function handle($request, Closure $next)\n    {\n        return Auth::onceBasic() ?: $next($request);\n    }\n\n}\n```\n绑定好这个中间件后，路由上加一下：  \n```\nRoute::get(''api/user'', [''middleware'' => ''auth.basic.once'', function() {\n    // Only authenticated users may enter...\n}]);\n```\n\n##重设（找回）密码##\n重设（找回）密码的功能，在你装好Laravel的时候就已经给你了。\n首先，User Model里面 实现了''Illuminate\\Contracts\\Auth\\CanResetPassword''这个接口，它这部分实现的代码放在了''Illuminate\\Auth\\Passwords\\CanResetPassword''这个Trait里面了。\n另外，数据库方面，你只要一执行  \n``php artisan migrate``  \n相关数据表就自动建立好了。  \n\n控制器：  \n  \n``App\\Http\\Controllers\\Auth\\PasswordController.php``  \n\n路由:  \n```\n// Password reset link request routes...\nRoute::get(''password/email'', ''Auth\\PasswordController@getEmail'');\nRoute::post(''password/email'', ''Auth\\PasswordController@postEmail'');\n\n// Password reset routes...\nRoute::get(''password/reset/{token}'', ''Auth\\PasswordController@getReset'');\nRoute::post(''password/reset'', ''Auth\\PasswordController@postReset'');\n```\n视图：\n``\nresources/views/auth/password.blade.php //这个是重设密码的表单\n``  \n``\nresources/views/emails/password.blade.php //这个是发给用户邮件的内容\n``\n``\nresources/views/auth/reset.blade.php  //这个是点击邮件链接后重设密码的表单\n``\n\n###重设密码后的重定向设置###\n依然是在AuthController里设置：		\n``protected $redirectTo = ''/dashboard'';``  \n\n复习一下，前面讲过这些重定向属性:  \n```\n protected $redirectPath =''/'';\n    protected $loginPath = ''/auth/login'';\n    protected $redirectAfterLogout = ''/'';\n    protected $redirectTo = ''/posts'';\n```\n\n你还记得它们分别都是什么吗？\n\n##社会化登录##\n\n社会化登录就是QQ，微博，微信，Facebook，github这些社会化帐号的登录，它们遵循OAuth2.0的规范，至于这个规范的细节，没有必要看，下面以Github为例讲一下使用过程，很简单的：  \n\n首先，社会化登录插件Laravel默认没有，需要安装一下：  \n``composer require laravel/socialite``  \n安装细节不累述。  \n\n然后你到github上注册一个开发者帐号，它会给你3个东西： \n```\nClient ID\nClient Secret\nCallBack URL（这个要自己填）\n```\n注意：按照OAuth标准，其他的社交应用也会给你这3个东西。\n\n然后你需要把这3个东西写到``config/services.php``里  \n```\n''github'' => [\n        ''client_id'' => ''xxxxx'',\n        ''client_secret'' => ''xxxxxxxxx'',\n        ''redirect'' => ''http://laravelbase.com/github/callback'',\n    ],\n\n```\n然后路由  \n```\nRoute::get(''/auth/github'', ''OAuthController@getGithubAuth'');\n\nRoute::get(''/auth/github/callback'', ''OAuthController@getGithubAuthCallback'');\n\n```\n\n第一个路由是请求OAuth的路由，第二个路由是OAuth通过后返回的路由；  \n\n最后看控制器：  \n```\npublic function getGithubAuth(){\n       return LaravelSocialite::driver(''github'')->redirect();\n    }\n\n    public function getGithubAuthCallback(){\n        $oa_user = LaravelSocialite::driver(''github'')->user();\n        dd($oa_user);\n        }\n        ```\n\n$oa_user 就是对方返回给你的用户信息，email一般是没有的，你可以先手动把它登录系统，然后再提示绑定帐号，或补充帐号资料；这些细节就不啰嗦了。\n\n\n###增加社交登录驱动###\nLaravel默认只包含了几个外国常见的社交网站，没有包括QQ，微博这些。如果增加，需要添加驱动；\n\n我实在没有耐心逐字逐句看完官方文档的解释，不如给大家一个链接：http://socialiteproviders.github.io/\n这里面啥驱动都有，按照它的说明安装就OK了。\n\n\n\n\n\n\n', '2015-10-30 22:40:58', '2016-07-15 00:42:23', 29, 1, 5775, 2, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(52, 'Laravel 5.1 文档攻略 ——加密(Encryption)', '##说明##\r\n在Laravel中，关于加密你会发现有几种说法，一个是Encryption，一个是Hash，还有一个是bcrypt，bcrypt和Hash是同一个意思。  \r\nEncryption和Hash的区别：  \r\n哈希（Hash）是将目标文本转换成具有相同长度的、不可逆的杂凑字符串（或叫做消息摘要），而加密（Encrypt）是将目标文本转换成具有不同长度的、可逆的密文。\r\n你可能还会问，那么MD5加密呢？MD5也是一种Hash加密方式，只不过相比较bcrypt，它已经过时了，Laravel中建议使用bcrypt。\r\n\r\n##配置##\r\n还记得在一开始讲环境配置那一章讲的App Key的内容吗？  \r\nEncryption就是拿App Key作为基础进行加密运算，同样借由App Key还可以进行逆向解密。\r\nApp Key一定要合理设置，否则加密就不安全了。\r\n命令行生成app key：  \r\n```\r\nphp artisan key:generate\r\n\r\n```\r\n\r\n##加密和解密##\r\n\r\n```\r\n$encryptedValue = Crypt::encrypt(''Hello World'');\r\n\r\n$decrypted = Crypt::decrypt($encryptedValue);\r\n//''Hello World''\r\n\r\n```\r\n密码不建议使用这种方式，密码使用Bcrypt；\r\n', '2015-10-31 06:02:40', '2016-07-14 23:21:49', 29, 1, 1379, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发,加密(Encryption)', '', NULL),
(53, 'Laravel 5.1 文档攻略 ——哈希加密(Hash)', '##说明##\n在Laravel中，关于加密你会发现有几种说法，一个是Encryption，一个是Hash，还有一个是Bcrypt，Bcrypt和Hash是同一个意思。  \nEncryption和Hash的区别：  \n哈希（Hash）是将目标文本转换成具有相同长度的、不可逆的杂凑字符串（或叫做消息摘要），而加密（Encrypt）是将目标文本转换成具有不同长度的、可逆的密文。\n你可能还会问，那么MD5加密呢？MD5也是一种Hash加密方式，只不过相比较Bcrypt，它已经过时了，Laravel中建议使用Bcrypt。\n##介绍Bcrypt##\nBcrypt是一种更高级的Hash算法，它的计算速度和值跟计算机的硬件好坏有关，不同的硬件，值不一样。  \nAuthController中对用户密码的加密，就是用了Bcrypt；\n\n##加密##\n```\n$password = Hash::make($request->newPassword);\n```\n或者用Helper函数  \n```\n$password = bcrypt($request->newPassword);\n```\n###判断字符串是否与加密值匹配###\n```\nif (Hash::check(''plain-text'', $hashedPassword)) {\n    // The passwords match...\n}\n```\n##重新加密##\n```\nif (Hash::needsRehash($hashed)) {\n    $hashed = Hash::make(''plain-text'');\n}\n```\n如果你硬件条件变了，可以考虑重新加密，Laravel可以判断出加密值是否和当前用户匹配；  \n说实在，到现在我还没发现有什么必要这样做。', '2015-10-31 06:55:48', '2016-07-14 23:22:35', 29, 1, 1549, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发,哈希加密(Hash)', '', NULL),
(54, 'Laravel 5.1 文档攻略 —— 辅助函数', '##说明##\r\nLaravel 从4.2升级到5.0的时候，把很多常用的Facade方法变成了全局函数，非常方便。\r\n\r\n##常用函数##\r\n下面列出我经常使用的函数：\r\n```\r\npublic_path()  \r\nroute()  \r\nconfig()\r\ncsrf_field()\r\ncsrf_token()\r\nredirect()\r\ndd()\r\nview()\r\n```\r\n##自定义Helper##\r\n很多人问，官网没讲；\r\n方法：  \r\napp文件夹里随便找个地方新建一个helper.php文件，在里面定义方法，类似这样： \r\n```\r\nif (! function_exists(''csrf_field'')) {\r\n    /**\r\n     * Generate a CSRF token form field.\r\n     *\r\n     * @return string\r\n     */\r\n    function csrf_field()\r\n    {\r\n        return new Illuminate\\View\\Expression(''<input type="hidden" name="_token" value="''.csrf_token().''">'');\r\n    }\r\n}\r\n```\r\n然后...然后就可以了，这个文件会被composer自动加载到。\r\n', '2015-10-31 07:38:03', '2016-07-14 23:22:39', 29, 1, 1350, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(55, 'Laravel 5.1 文档攻略 ——事件', '##概述##\r\n事件是一种常见的观察者模式的应用。简单的来说，就是当...干...。这个当...和干...在Laravel 事件中分别对应：  \r\n``当(event)...干(listener)...``  \r\n放置event和listener文件的位置分别是：  \r\n``app/Events``  \r\n``app/Listeners``\r\n\r\n对于产品经理来说，事件主要用来规范你的业务逻辑，使支线逻辑与主线逻辑独立分拆。对于程序员来说，事件可以让Controller变得非常简洁，解耦，可维护。\r\n\r\n##定义事件(Event)##\r\n用Artisan命令可以快速生成一个模板：  \r\n``php artisan event:generate``  \r\n```\r\n<?php\r\n\r\nnamespace App\\Events;\r\n\r\nuse App\\Podcast;\r\nuse App\\Events\\Event;\r\nuse Illuminate\\Queue\\SerializesModels;\r\n\r\nclass PodcastWasPurchased extends Event\r\n{\r\n    use SerializesModels;\r\n\r\n    public $podcast;\r\n\r\n    /**\r\n     * Create a new event instance.\r\n     *\r\n     * @param  Podcast  $podcast\r\n     * @return void\r\n     */\r\n    public function __construct(Podcast $podcast)\r\n    {\r\n        $this->podcast = $podcast;\r\n    }\r\n}\r\n```\r\n这样就定义了一个事件，这个事件里没有任何业务逻辑，就是一个数据传输层DTL（Data Transpotation Layer）,记住这个概念，在很多设计模式中都需要涉及到。\r\n\r\n##定义事件的侦听和处理器（Listener and Handler）##\r\n\r\n你在用artisan命令生成Event的时候，对应的Listner也一并生成好了：  \r\n```\r\n<?php\r\n\r\nnamespace App\\Listeners;\r\n\r\nuse App\\Events\\PodcastWasPurchased;\r\nuse Illuminate\\Queue\\InteractsWithQueue;\r\nuse Illuminate\\Contracts\\Queue\\ShouldQueue;\r\n\r\nclass EmailPurchaseConfirmation\r\n{\r\n    /**\r\n     * Create the event listener.\r\n     *\r\n     * @return void\r\n     */\r\n    public function __construct()\r\n    {\r\n        //\r\n    }\r\n\r\n    /**\r\n     * Handle the event.\r\n     *\r\n     * @param  PodcastWasPurchased  $event\r\n     * @return void\r\n     */\r\n    public function handle(PodcastWasPurchased $event)\r\n    {\r\n        // Access the podcast using $event->podcast...\r\n    }\r\n}\r\n\r\n```\r\nhandler里就是写业务逻辑的地方了，这里可以用type-hint依赖注入的方式，注入任何你需要的类。\r\n\r\n##将Event和Listener绑定并注册##\r\n这里就用到Service Provider:\r\n``providers/EventServiceProvider.php``\r\n注册事件和Listener：  \r\n```\r\nprotected $listen = [\r\n    ''App\\Events\\PodcastWasPurchased'' => [\r\n        ''App\\Listeners\\EmailPurchaseConfirmation'',\r\n    ],\r\n];\r\n```\r\n\r\n##触发事件##\r\n经过上面的设置，你的事件和事件处理器就可以在controller里使用了：  \r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Event;\r\nuse App\\Podcast;\r\nuse App\\Events\\PodcastWasPurchased;\r\nuse App\\Http\\Controllers\\Controller;\r\n\r\nclass UserController extends Controller\r\n{\r\n    /**\r\n     * Show the profile for the given user.\r\n     *\r\n     * @param  int  $userId\r\n     * @param  int  $podcastId\r\n     * @return Response\r\n     */\r\n    public function purchasePodcast($userId, $podcastId)\r\n    {\r\n        $podcast = Podcast::findOrFail($podcastId);\r\n\r\n        // Purchase podcast logic...\r\n\r\n        Event::fire(new PodcastWasPurchased($podcast));\r\n    }\r\n}\r\n\r\n```\r\n``Event::fire(new PodcastWasPurchased($podcast));``就是触发事件的写法，程序运行到这里，就会触发跟这个事件绑定的listener(handler)。  \r\n``Event::fire()``有个辅助函数可以简写：  \r\n```\r\nevent(new PodcastWasPurchased($podcast));\r\n```\r\n\r\n##将事件加入队列##\r\n如果要处理的事件很多，那么会影响当前进程的执行效率，这时我们需要把事件加入队列，让它延迟异步执行。\r\n\r\n定义队列执行是在Listener那里定义的：  \r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Listeners;\r\n\r\nuse App\\Events\\PodcastWasPurchased;\r\nuse Illuminate\\Queue\\InteractsWithQueue;\r\nuse Illuminate\\Contracts\\Queue\\ShouldQueue;\r\n\r\nclass EmailPurchaseConfirmation implements ShouldQueue\r\n{\r\n    //\r\n}\r\n```\r\n只要implements ShouldQueue一下就好了。  \r\n\r\n如果你想手动指定一下任务延迟执行的时间：  \r\n```\r\n<?php\r\n\r\nnamespace App\\Listeners;\r\n\r\nuse App\\Events\\PodcastWasPurchased;\r\nuse Illuminate\\Queue\\InteractsWithQueue;\r\nuse Illuminate\\Contracts\\Queue\\ShouldQueue;\r\n\r\nclass EmailPurchaseConfirmation implements ShouldQueue\r\n{\r\n    use InteractsWithQueue;\r\n\r\n    public function handle(PodcastWasPurchased $event)\r\n    {\r\n        if (true) {\r\n            $this->release(10);\r\n        }\r\n    }\r\n}\r\n```\r\n触发后延迟10秒执行。\r\n\r\n##事件订阅(Event Subscribers)\r\n\r\nEvent Subscribers是一种特殊的Listener,前面讲的是一个listener里只能放一个hander（），事件订阅可以把很多处理器（handler）放到一个类里面，然后用一个listner把它们集合起来，这样不同的事件只要对应一个listner就可以了。  \r\n```\r\n<?php\r\n\r\nnamespace App\\Listeners;\r\n\r\nclass UserEventListener\r\n{\r\n    /**\r\n     * Handle user login events.\r\n     */\r\n    public function onUserLogin($event) {}\r\n\r\n    /**\r\n     * Handle user logout events.\r\n     */\r\n    public function onUserLogout($event) {}\r\n\r\n    /**\r\n     * Register the listeners for the subscriber.\r\n     *\r\n     * @param  Illuminate\\Events\\Dispatcher  $events\r\n     * @return array\r\n     */\r\n    public function subscribe($events)\r\n    {\r\n        $events->listen(\r\n            ''App\\Events\\UserLoggedIn'',\r\n            ''App\\Listeners\\UserEventListener@onUserLogin''\r\n        );\r\n\r\n        $events->listen(\r\n            ''App\\Events\\UserLoggedOut'',\r\n            ''App\\Listeners\\UserEventListener@onUserLogout''\r\n        );\r\n    }\r\n\r\n}\r\n\r\n```\r\n看后面的subscribe()，每个事件和处理器是一一对应的。\r\n\r\n\r\n###绑定 Event Subscriber到Service Provider###\r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Providers;\r\n\r\nuse Illuminate\\Contracts\\Events\\Dispatcher as DispatcherContract;\r\nuse Illuminate\\Foundation\\Support\\Providers\\EventServiceProvider as ServiceProvider;\r\n\r\nclass EventServiceProvider extends ServiceProvider\r\n{\r\n    /**\r\n     * The event listener mappings for the application.\r\n     *\r\n     * @var array\r\n     */\r\n    protected $listen = [\r\n        //\r\n    ];\r\n\r\n    /**\r\n     * The subscriber classes to register.\r\n     *\r\n     * @var array\r\n     */\r\n    protected $subscribe = [\r\n        ''App\\Listeners\\UserEventListener'',\r\n    ];\r\n}\r\n```\r\n\r\n\r\n##究竟为什么要使用Event##\r\n使用Event一段时间后，你可以觉得比较麻烦，想知道到底有什么好处。  \r\n假设创建一个类 Event， 那么$event->sendWelcomeMessage($user) 这样去使用， 和用观察者模式的事件有啥区别，观察者模式好处在哪里？  \r\n\r\n首先你要明白，事件是一种『钩子』，Fire事件的位置就是放置钩子的地方。而上面那种写法是直接嵌入的，没有钩子，也就是说，上面的写法没有事件的概念，事件是不用管你怎么做的，事件只定义发生了什么事（当...时），这样就可以解耦。\r\n\r\n区别就在于，在主逻辑线上的事件，没有做任何事情，它只是说有这样一件事，对于这件事，你可以做点事情，也可以什么都不做。而$event->sendWelcomeMessage($user)这种写法就是hardcoding了，到了那个地方必须发生sendWelcomeMessage这个行为。\r\n\r\n作为团队的一个leader，你可以把主逻辑定义后，然后在主逻辑线上设计事件节点，然后把具体怎么处理这些事件的事务交给团队里的成员去做，成员根本不用管主逻辑和插入事件（钩子）的地方，成员只用写触发事件时要处理的逻辑就可以了。\r\n\r\n这样是不是很方便合理啊，如果把所有处理逻辑都写在Event类里面，那多人处理的时候岂不是要同时修改一个文件，这样就会有版本冲突问题。\r\n\r\n另外Event还可以异步队列执行，这也是好处之一。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2015-10-31 18:17:50', '2016-07-15 00:09:34', 29, 1, 1728, 0, 1, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发，事件，Laravel 5.1 文档攻略', '', NULL),
(56, 'Laravel 5.1 文档攻略 —— 分页', '##概述##\r\n这又是一个比较贴心的功能，处理麻烦的分页。而且分页的视图模块已经做好了，和Bootstrap兼容。\r\n\r\n\r\n##生成一个带分页的Query Builder对象##\r\n\r\n有两个类需要注意：  \r\n```\r\nIlluminate\\Database\\Query\\Builder\r\n\r\nIlluminate\\Database\\Eloquent\\Builder\r\n```\r\n因为分页的方法paginator()就在这两个类里面，也就是说你要分页，必须先得到这两个类的实例。\r\n\r\n```\r\n$users = DB::table(''users'')->paginate(15);\r\n```\r\n这样得到的$users 就是带分页的Collection；注意，这里DB::table(''users'')得到的是``Illuminate\\Database\\Query\\Builder``的实例，你如果写App\\User::paginate(15)，也是一样，它是基于``Illuminate\\Database\\Eloquent\\Builder``这个类。  \r\n\r\n\r\n```\r\n$users = DB::table(''users'')->get();\r\n```\r\n这样得到的就是不带分页Collection；\r\n\r\n```\r\n$users = DB::table(''users'')->get()->paginate(15);\r\n```\r\n这样写是不行的，会报错，因为paginator()必须在get collection以前执行，Collection类里面并没有paginator()的方法。\r\n\r\n###简单分页###\r\n```\r\n$users = DB::table(''users'')->simplePaginate(15);\r\n```\r\n简单分页在视图里渲染出来只有上一页，下一页，的确简单。\r\n\r\n##在视图里渲染分页##\r\n\r\n非常简单：\r\n\r\n```\r\n{!!$users->render()!!}\r\n\r\n```\r\n\r\n##Paginate对象的一些function##\r\n\r\n```\r\n$users = DB::table(''users'')->paginate(15);\r\n```\r\n这样$users就是是一个Paginate对象，精确的说，它是``Illuminate\\Pagination\\LengthAwarePaginator``的实例。  \r\n当然还有  \r\n```\r\n$users = DB::table(''users'')->simplePaginate(15);\r\n```\r\n它是``Illuminate\\Pagination\\Paginator``的实例。\r\n\r\n这两个实例自带一些比较实用的功能，我们来看一下：  \r\n###更改分页的URL###\r\n```\r\n $users->setPath(''custom/url'');\r\n```\r\n\r\n###在分页URL里增加一些参数###\r\n增加类似这样的参数``&sort=votes``  \r\n\r\n```\r\n {!! $users->appends([''sort'' => ''votes''])->render() !!}\r\n```\r\n增加类似这样的参数``#foo``  \r\n```\r\n{!! $users->fragment(''foo'')->render() !!}\r\n```\r\n**其他的functions**\r\n```\r\n$results->count()\r\n$results->currentPage()\r\n$results->hasMorePages()\r\n$results->lastPage() (Not available when using simplePaginate)\r\n$results->nextPageUrl()\r\n$results->perPage()\r\n$results->previousPageUrl()\r\n$results->total() (Not available when using simplePaginate)\r\n$results->url($page)\r\n```\r\n##把结果转化成Json格式##\r\n写Api的时候需要用到Json格式，好在Paginate类（2个类）实现了Illuminate\\Contracts\\Support\\JsonableInterface接口，可以直接转换：  \r\n```\r\nRoute::get(''users'', function () {\r\n    return App\\User::paginate();\r\n});\r\n``` \r\n你只要return一下就是json了；\r\n或者你这样也可以：  \r\n```\r\nApp\\User::paginate()->toJson();\r\n```\r\n', '2015-10-31 22:07:23', '2016-07-15 00:48:29', 29, 1, 2064, 3, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发，分页', '', NULL),
(57, 'Laravel 5.1 文档攻略 —— Collections', '##简介##\r\n我们知道Php有一大特色，就是数组的处理能力超级强大。``Illuminate\\Support\\Collection``这个类，其实就是对象化的数组，它是一个对象的集合，因为在面向对象框架里，单纯用数组来处理数据，显然不方便。\r\n\r\n一个Collection对象的方法可以进行链式操作，熟悉Jequry的朋友就会知道，这是因为每个Collection对象的方法都return一个新的Collection对象。\r\n\r\n##手动创建一个新的Collection##\r\n在Laravel的数据处理中，Collection一般由Query Builder或Eloquent Builder对象通过get()方法生成。\r\n然而，就像你可以手动生成一个数组一样，你也可以创建一个Collection对象。\r\n``\r\n$collection = collect([1, 2, 3]);\r\n``\r\n\r\n##Collection的方法##\r\n记住一点，Collection的方法是对查询后的数据进行处理，它和数据库已经没有关系了。\r\n\r\n我常用的方法：  \r\n```\r\nisEmpty()\r\nsortBy()\r\ncount()\r\ncontains()\r\ntoArray()\r\ntoJson()\r\nhas()\r\n```\r\n官网还有很多，仔细研究会对开发带来很大便捷。', '2015-11-01 16:03:28', '2016-07-14 23:26:13', 29, 1, 1344, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发, Collections', '', NULL),
(58, '代码：生成人类可读的文件尺寸', '系统对文件的计算都是按字节数来算的，前端显示的时候需要转化一下单位，方便阅读。\r\n\r\n一个小函数：\r\n\r\n```\r\nfunction humanFileSize($size,$unit="") {\r\n  if( (!$unit && $size >= 1<<30) || $unit == "GB")\r\n    return number_format($size/(1<<30),2)."GB";\r\n  if( (!$unit && $size >= 1<<20) || $unit == "MB")\r\n    return number_format($size/(1<<20),2)."MB";\r\n  if( (!$unit && $size >= 1<<10) || $unit == "KB")\r\n    return number_format($size/(1<<10),2)."KB";\r\n  return number_format($size)." bytes";\r\n}\r\n```\r\n第一个参数是以字节数存储的代码，第二个是你想把它转化的单位。\r\n\r\n', '2015-11-01 17:00:58', '2016-07-14 15:57:53', 29, 3, 1108, 0, 0, 0, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发，humanFileSize', '', NULL),
(59, 'Laravel 5.1 文档攻略 —— Session', '##概述##\r\nHttp的请求是无状态的，一次请求完毕后，所有数据都清零。PHP的Session提供了在多次请求之间共享一些数据的便利，最明显的例子就是用户的登录状态，用户登录的状态是保存在服务器端的Session里的。\r\n\r\n##配置##\r\n配置文件位置：``config/session.php``  \r\n\r\nSession的驱动，主要指的是Session的储存方式：  \r\n```\r\nfile - 存在文件里： storage/framework/sessions.\r\ncookie - 存在加密的cookies里.\r\ndatabase - 存数据库里。\r\nmemcached / redis - 存在这些缓存服务里，速度更快。\r\narray - 存在数组里，不能持久化，仅作调试用。\r\n```\r\n##需要注意的地方##\r\n* 存数据库里的话要先建一张表，具体看官网文档，不多说；\r\n* 存Redis要先安装Redis\r\n* Laravel的内部session使用``flash``这个键名，注意使用session的时候不要和它重名了。\r\n* 如果你不想让别人看到Session的内容，把encrypt选项改为true；\r\n\r\n##基本用法##\r\n\r\nSession的存取有3种写法：\r\n\r\n###下面是取Session的写法###\r\n\r\n```\r\n$request->session()->get(''name'')\r\n```   \r\n\r\n这是通过Request对象；  \r\n\r\n```\r\nSession::get(''name'')\r\n```  \r\n\r\n这是通过Facade    \r\n\r\n\r\n```\r\nsession(''name'')\r\n```  \r\n\r\n这是通过Helper   \r\n\r\n\r\n下面的示例只讲一种写法；\r\n\r\n###存Session###\r\n```\r\n$request->session()->put(''key'', ''value'');\r\n```  \r\n\r\n用Helper的话：  \r\n ```\r\n session([''key'' => ''value'']);\r\n ```\r\n \r\n \r\n###把值存进Session的一个数组值里###\r\n```\r\n$request->session()->push(''user.teams'', ''developers'');\r\n```\r\n\r\nuser.teamss是Session里面的一个数组。\r\n\r\n###重新生成Session ID###\r\n```\r\n$request->session()->regenerate();\r\n```\r\n\r\n##删除Session##\r\n\r\n###删除一个值###\r\n```\r\n$request->session()->forget(''key'');\r\n```\r\n###全部删除###\r\n```\r\n$request->session()->flush();\r\n```\r\n###取一个Session值，然后删除###  \r\n```\r\n$value = $request->session()->pull(''key'', ''default'');\r\n\r\n```  \r\n\r\n##一次性Session##\r\n一次性Session只对下一次请求有效，下一次请求走完后，Session值也就消失了。常常用于消息提示：  \r\n```\r\n$request->session()->flash(''status'', ''Task was successful!'');\r\n```  \r\n注意，这里是flash（短暂的闪光），不是上面的Flush（冲马桶）。\r\n\r\n###再『闪』一次###\r\n有时你需要在下下个请求保留上次一个请求的Flash Session，那么：  \r\n```\r\n$request->session()->reflash();\r\n```\r\n如果你只想保留其中某个特定的值：  \r\n```\r\n$request->session()->keep([''username'', ''email'']);\r\n```\r\n\r\n##自定义Session驱动##\r\n\r\n现在mongo DB很火，官网介绍了怎么用MongoDB来存Session，具体看官网就好，不展开了。\r\n\r\n##提示##\r\n要玩转Session，装一个Debugbar是必不可少的：  \r\n![\\debugbar.jpg][0.67975944140926]\r\n\r\n  [0.67975944140926]: http://laravelbase.com/uploads/editor/e9c72b95a860b4d271a2c197d853ee19.jpg\r\n  \r\n  [Github地址][1]\r\n\r\n  [1]: https://github.com/barryvdh/laravel-debugbar', '2015-11-02 08:18:24', '2016-07-14 23:29:26', 9, 1, 1911, 0, 1, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发,Session', '', NULL),
(60, '用Google的Prettify.js使代码高亮', '经试用，Google的Prettify.js是比较简单可行，速度较快的代码。\r\n\r\n##项目地址##  \r\n\r\n[https://github.com/google/code-prettify][3]  \r\n\r\ngoogle-code-prettify建议采用快速嵌入的方式，\r\n```\r\n<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>\r\n```\r\n**不要使用这种方式，因为google在国内无法访问**\r\n\r\n##正确的方法## \r\n1. 准备Html代码：  \r\n```\r\n<pre class="prettyprint">\r\nsource code here\r\n</pre>\r\n```\r\n2. 嵌入CSS和Js\r\n```\r\n<link href="prettify.css" type="text/css" rel="stylesheet" />\r\n<script type="text/javascript" src="prettify.js"></script>\r\n```\r\n[下载地址][1]  \r\n\r\n3. 启动JS\r\n```\r\n<body onload="prettyPrint()">\r\n```\r\n\r\n##对于Markdown##\r\nMarkdown或者其他编辑器你无法加入``class="prettyprint"``这样的代码，那么就用Jquery来加：  \r\n```\r\n$(function() {\r\n  $(''pre'').addClass(''prettyprint linenums'').attr(''style'', ''overflow:auto'');\r\n});\r\n```\r\n \r\n##更多高亮主题##\r\n[http://jmblog.github.io/color-themes-for-google-code-prettify/][2]\r\n\r\n  [1]: https://raw.githubusercontent.com/google/code-prettify/master/distrib/prettify-small.tgz\r\n  [2]: http://jmblog.github.io/color-themes-for-google-code-prettify/\r\n  [3]: https://github.com/google/code-prettify', '2015-11-02 20:44:37', '2016-07-15 00:06:18', 9, 2, 2001, 0, 8, 0, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发，代码高亮，Prettify.js，Google', '', NULL),
(61, 'Laravel 5.1 文档攻略 —— 邮件', '##简介##\r\n文档开头讲了一堆外国第三方邮件服务，估计用起来都不顺手，所以直接跳过，这里主要讲Php自身的邮件功能。\r\n\r\n##配置邮件##\r\n主要有两个配置文件:  \r\n``config/mail.php``  \r\n``.env``  \r\n.env覆盖mail.php里的值，因此配置.env就可以了：  \r\n```\r\nMAIL_DRIVER=smtp\r\nMAIL_HOST=smtp.mxhichina.com\r\nMAIL_PORT=25\r\nMAIL_USERNAME=postmaster@host.com\r\nMAIL_PASSWORD=xxoo\r\nMAIL_ENCRYPTION=null\r\n```\r\n照着这样配置。\r\n\r\n##发邮件##\r\n直接先看代码：  \r\n```\r\npublic function sendEmailReminder(Request $request, $id)\r\n    {\r\n        $user = User::findOrFail($id);\r\n\r\n        Mail::send(''emails.reminder'', [''user'' => $user], function ($m) use ($user) {\r\n            $m->to($user->email, $user->name)->subject(''Your Reminder!'');\r\n        });\r\n    }\r\n```\r\nMail::send()主要有三个参数：  \r\n1. 邮件的视图，这个和其他Blade视图一样，放在``resources/views``;\r\n2. 第二个是传进邮件的数据，这个和Controller里传数据到视图是一样的；  \r\n\r\n3.  第三个是个闭包，主要是一些邮件设置，主题，收件人，抄送，密送这些；\r\n\r\n**注意：email的视图有点特殊，一个$message对象会默认传入，所以你自己的数据就不要起message这个名字了。**  \r\n\r\n\r\n最后插一句，function ($m) 这个$m就是$message对象；use ($user)，如果你的闭包要用外部数据，就要这样写才能传入。\r\n\r\n##关于邮件的设置##\r\n```\r\nMail::send(''emails.welcome'', $data, function ($message) {\r\n     $message->from(''us@example.com'', ''Woody'');\r\n\r\n    $message->to(''foo@example.com'')->cc(''bar@example.com'');\r\n});\r\n```\r\n这个就是例子了。\r\n```\r\n$message->from($address, $name = null);\r\n$message->sender($address, $name = null);\r\n$message->to($address, $name = null);\r\n$message->cc($address, $name = null);\r\n$message->bcc($address, $name = null);\r\n$message->replyTo($address, $name = null);\r\n$message->subject($subject);\r\n$message->priority($level);\r\n```\r\n这些是邮件里经常用到的设置，自行选用吧。\r\n\r\n\r\n###发送附件##\r\n```\r\n$message->attach($pathToFile);\r\n```\r\nattach()里面写文件的完整路径。  \r\n\r\n\r\n高级一点的设置：  \r\n```\r\n$message->attach($pathToFile, [''as'' => $display, ''mime'' => $mime]);\r\n```\r\n可以改文件的显示名称和文件的邮件传输类型；\r\n\r\n\r\n###邮件内插入图片###\r\n邮件有一些特殊，你直接按照Blade Html的方式插入图片，发送后图片显示是一个叉。  \r\n插图片要这样写：  \r\n```\r\n<img src="<?php echo $message->embed($pathToFile); ?>">\r\n\r\n```\r\n记得上面讲过的吗？$message在邮件的视图里是默认的存在。\r\n\r\n如果你想在文本中内嵌个word文档，应该可以这样写（尚未验证，哪位验证过麻烦留个言）  \r\n```\r\n<?php echo $message->embed($pathToFile); ?>\r\n\r\n```\r\n有时候我们处理图片或文件，玩的不是文件，而是一堆数字化代码(Raw Data)，这个时候可以这样嵌入：  \r\n```\r\n<img src="<?php echo $message->embedData($data, $name); ?>">\r\n```\r\n\r\n同理的，如果你要插入的是正常的附件，那么可以  \r\n```\r\n// Attach a file from a raw $data string...\r\n$message->attachData($data, $name, array $options = []);\r\n\r\n```  \r\n\r\n###让视图变成无Html的纯文本底版###\r\n```\r\nMail::send([''text'' => ''view''], $data, $callback);\r\n```\r\n\r\n###直接发送字符串###\r\n```\r\nMail::raw(''Text to e-mail'', function ($message) {\r\n    //\r\n});\r\n```\r\n\r\n##邮件队列##\r\n邮件是典型的使用队列服务的对象之一。发一个有很多附件的邮件，难道要让用户等着发完后才能继续浏览网页吗？显然这里需要异步执行。\r\n\r\n```\r\nMail::queue(''emails.welcome'', $data, function ($message) {\r\n    //\r\n});\r\n```\r\n建议通常情况下都这么写；\r\n\r\n###队列延迟发送###\r\n```\r\nMail::later(5, ''emails.welcome'', $data, function ($message) {\r\n    //\r\n});\r\n```\r\n###加入指定队列###\r\n针对上面讲的2个，你还可以指定一个特定的队列：  \r\n```\r\nMail::queueOn(''queue-name'', ''emails.welcome'', $data, function ($message) {\r\n    //\r\n});\r\n\r\nMail::laterOn(''queue-name'', 5, ''emails.welcome'', $data, function ($message) {\r\n    //\r\n});\r\n```\r\n\r\n###邮件的本地调试###\r\n开发的时候要测试邮件，但是你不能总是发垃圾邮件给别人。文档介绍了3种模拟发送的方式，经过测试，只有第二种最简单，最接近真实情况： \r\n\r\n找到配置文件``config/mail.php``:  \r\n加上：  \r\n```\r\n''to'' => [\r\n    ''address'' => ''dev@domain.com'',\r\n    ''name'' => ''Dev Example''\r\n],\r\n```\r\n这样无论你怎么发，邮件都只会发到这个指定的邮箱上，生产环境把这个代码注释掉就行了。\r\n', '2015-11-03 06:09:54', '2016-07-15 01:12:02', 9, 1, 1619, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发，邮件', '', NULL),
(62, 'Laravel 5.1 文档攻略 —— 缓存', '##概述##\r\n我们知道，数据库读写是靠硬盘的，请求并发多的时候，硬盘吃不消了。然后我们发现，有些数据每次请求都一样的，比如博客的文章，没事不会老去改的，那么我们就可以把它缓存一下。\r\n\r\n第一种方法是放到一个文件里，虽然还是读硬盘，但是会快些，因为省去了查询计算的过程，特别是关系复杂，有很多循环的查询。\r\n\r\n第二种方法，你肯定想到了，内存快啊，放内存里吧，这就是Memcache和Redis的基础原理，它们严格来说也是一种数据库，这个数据库只有1张表，2个键值，一个key，一个value。由于Memcache和Redis只能放在内存里存东西，内存一断电就清空，所以我们只好把它们叫做『缓存服务了』。\r\n\r\n注意，如果你只有一台服务器，就别上Memcache和Redis了，因为它们一般要占用大量内存，一台机器恐怕吃不消，实在要用，也把Memcache和Redis独立出来放另一台机器上。Memcache和Redis一般是部署在分布式系统中的。\r\n\r\n缓存可以提高速度，但是它也会把你的变动给覆盖掉，令其无法生效，直到缓存过期为止。\r\n\r\nLaravel优化的第一步应该是Eager Loading，减少查询次数，第二部就应该是搞缓存了。\r\n\r\n##配置##\r\n在这里：  \r\n\r\n``config/cache.php``\r\n\r\n系统默认采用文件缓存。  \r\n\r\n##要注意的一些地方##\r\n1.  你也可以用数据库来做缓存，原理和文件缓存一样，不过你需要先在数据库里按照官网要求建一张表。  \r\n想想Session，其实本质上也差不多。\r\n\r\n2.  使用Memcache和Redis都需要安装插件。\r\n\r\n##存储缓存##\r\n```\r\nCache::put(''key'', ''value'', $minutes);\r\n```\r\n注意，同一个key存两次，后面的会覆盖前面的；\r\n\r\n如果你要避免覆盖：\r\n```\r\nCache::add(''key'', ''value'', $minutes);\r\n```\r\n\r\n###不过期缓存###\r\n```\r\nCache::forever(''key'', ''value'');\r\n```\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n##获取缓存的值##\r\n```\r\n$value = Cache::get(''key'');\r\n```\r\n如果缓存中没有这个值，那么会返回null；\r\n```\r\n$value = Cache::get(''key'', ''default'');\r\n```\r\n也可以设定一个缺省值，替代null；\r\n\r\n```\r\n$value = Cache::get(''key'', function() {\r\n    return DB::table(...)->get();\r\n});\r\n\r\n```\r\n缺省的地方可以放个闭包，这样就可以从数据库来设定缺省值了。\r\n\r\n###从不同的缓存驱动取值###\r\n```\r\n$value = Cache::store(''redis'')->get(''foo'');\r\n```\r\n除了默认的缓存驱动，你还可以指定其他的缓存取值，前提是你在里面存过值。\r\n\r\n###判断某key是否存在###\r\n```\r\nif (Cache::has(''key'')) {\r\n    //\r\n}\r\n```\r\n\r\n###增减整数值###\r\n如果你在缓存里记录了整数值，有个很方便的方法可以增减它的数值；  \r\n这个方法最适宜的场景是计数器：  \r\n```\r\nCache::increment(''key'');\r\n\r\nCache::increment(''key'', $amount);\r\n\r\nCache::decrement(''key'');\r\n\r\nCache::decrement(''key'', $amount);\r\n\r\n```\r\n注意，默认步长值是1，你也可以在后面指定一个步长值。\r\n\r\n###取某值，没有就新建（更新）Cache###\r\n\r\n比如这个：  \r\n```\r\n$value = Cache::remember(''users'', $minutes, function() {\r\n    return DB::table(''users'')->get();\r\n});\r\n```\r\n取所有用户，设定一个失效时间，没有就取到就到数据库去取。\r\n\r\n如果不让缓存失效，那就这样写：  \r\n```\r\n$value = Cache::rememberForever(''users'', function() {\r\n    return DB::table(''users'')->get();\r\n});\r\n```\r\n\r\n###取了就删###\r\n```\r\n$value = Cache::pull(''key'');\r\n```\r\n\r\n\r\n###删除缓存###\r\n```\r\nCache::forget(''key'');\r\n```\r\n全部删除  \r\n```\r\nCache::flush();\r\n```\r\n\r\n##自定义Cache驱动##\r\n这里和Session一样，官网文档讲了MongoDB驱动的安装，就不多说了。\r\n\r\n##Cache 标签##\r\n\r\n打标签其实就是给keys 分个类；它的作用主要是删除的时候可以批量删；\r\n**注意：这个功能只适合Memcache和Redis驱动，文件和数据库驱动不支持**  \r\n\r\n###存###\r\n```\r\nCache::tags([''people'', ''artists''])->put(''John'', $john, $minutes);\r\n\r\nCache::tags([''people'', ''authors''])->put(''Anne'', $anne, $minutes);\r\n```\r\n\r\n###取###\r\n```\r\n$john = Cache::tags([''people'', ''artists''])->get(''John'');\r\n\r\n$anne = Cache::tags([''people'', ''authors''])->get(''Anne'');\r\n```\r\n\r\n###全删###\r\n```\r\nCache::tags([''people'', ''authors''])->flush();\r\n```\r\n\r\n```\r\nCache::tags(''people'')->flush();\r\n```\r\n\r\n###只删一个标签下的内容###\r\n```\r\nCache::tags(''authors'')->flush();\r\n```\r\n\r\n###缓存事件###\r\n缓存事件写在``EventServiceProvider`` boot()里：  \r\n```\r\npublic function boot(DispatcherContract $events)\r\n{\r\n    parent::boot($events);\r\n\r\n    $events->listen(''cache.hit'', function ($key, $value) {\r\n        //\r\n    });\r\n\r\n    $events->listen(''cache.missed'', function ($key) {\r\n        //\r\n    });\r\n\r\n    $events->listen(''cache.write'', function ($key, $value, $minutes) {\r\n        //\r\n    });\r\n\r\n    $events->listen(''cache.delete'', function ($key) {\r\n        //\r\n    });\r\n}\r\n```\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2015-11-05 08:24:57', '2016-07-15 01:08:15', 9, 1, 2242, 0, 1, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发，缓存', '', NULL),
(63, 'Laravel 5.1 系统优化快速了解', '系统开发完毕后，要开始考虑优化的事情。我们有很多手段，比如eager loading来减少查询次数，cache类来缓解数据库查询压力。  \r\nLaravel在系统方面，也就是文件方面，其实做了很方便的功能，能够大大提高**加载**速度。  \r\n\r\n##常用类缓存##\r\n```\r\nphp artisan optimize\r\n```\r\n这个命令会把一些常用的类打包成一个文件，这样就不要执行很多次include，从而提高速度，缓存的位置在：  \r\n``bootstrap/cache/compiled.php``\r\n你可以在这里``config/compile.php``增加需要进行缓存的类。  \r\n本命令只会在生产环境有效，除非你加 --force后缀强制执行；\r\n\r\n这个命令还会生成一个文件:``bootstrap/cache/services.json``  \r\n这主要是来优化Service Provider加载的；\r\n\r\n\r\n解除：\r\n```\r\nphp artisan clear-compiled\r\n```\r\n这个命令会把\r\n``bootstrap/cache/compiled.php``\r\n``bootstrap/cache/services.json``\r\n这连个文件删掉\r\n\r\n\r\n\r\n##配置文件缓存##\r\n```\r\nartisan config:cache\r\n```\r\n把所有配置文件压缩成一个文件，位置在：  \r\n``bootstrap/cache/config.php``\r\n\r\n解除：  \r\n```\r\nphp artisan config:clear\r\n```\r\n\r\n##路由缓存##\r\n```\r\nphp artisan route:cache\r\n```\r\n据说这个文件的加载速度可以提高100倍。\r\n缓存位置也是在：  \r\n``bootstrap/cache/routes.php``\r\n解除：  \r\n```\r\nphp artisan route:clear\r\n```\r\n\r\n##视图缓存清除##\r\nblade模板本来就是自动生成html缓存的，缓存位置在``storage/framework/views/``，如果你想清除，运行：  \r\n```\r\nphp artisan view:clear\r\n\r\n```\r\n\r\n\r\n', '2015-11-06 07:35:08', '2016-07-14 20:23:50', 9, 1, 1999, 0, 3, 0, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(64, 'Laravel 5.1 文档攻略 —— 表单验证', '##简介##\r\n由表单提交上来的数据需要经过验证，才能符合格式要求以及安全性要求。验证分为前台js验证和后台验证，前台验证主要是交互上做得用户体验更好，比如你可以用ajax在不刷新页面的情况下返回错误信息，但前台可以把javascript关掉。无论怎样，后台对提交上来的数据进行验证是必须的，因为只有这样才是安全的。  \r\nLaravel的Base Controller里包含了一个``ValidatesRequests ``trait，提供强大的表单验证功能，尤其是制定了完备的表单验证规则。  \r\n\r\n##快速验证##\r\n验证通常写在Controller里：  \r\n```\r\npublic function store(Request $request)\r\n{\r\n    $this->validate($request, [\r\n        ''title'' => ''required|unique:posts|max:255'',\r\n        ''body'' => ''required'',\r\n    ]);\r\n\r\n    // The blog post is valid, store in database...\r\n}\r\n```\r\n$this->validate 我们知道这个是来自于``ValidatesRequests ``这个trait，所以可以这样写。  \r\n```\r\n''title'' => ''required|unique:posts|max:255'',\r\n        ''body'' => ''required'',\r\n```\r\n        \r\n这个是表单字段的名称和对应的规则。  \r\n\r\n如果验证通过，则程序继续执行。如果验证失败，则会有2种情况：  \r\n1.  如果请求是http，那么会产生一个重定向的响应，返回表单填写页面并输出错误信息。\r\n2.  **如果请求是ajax请求，那么则会返回一个包含错误信息的json响应，http code 是422 。**  \r\n\r\n###显示验证错误###\r\n\r\n如果验证失败，laravel会自动生成对应的错误信息，并存在session中。这个时候你需要在视图中添加代码将其显示出来（不添加不显示）。  \r\n```\r\n@if (count($errors) > 0)\r\n    <div class="alert alert-danger">\r\n        <ul>\r\n            @foreach ($errors->all() as $error)\r\n        \r\n        <li>{{ $error }}</li>\r\n            @endforeach\r\n        </ul>\r\n    </div>\r\n@endif\r\n\r\n<!-- 下面是你的表单 -->\r\n```\r\n\r\n**注意，$errors是一个视图中默认一直存在的变量，你不需要通过controller传入。**\r\n\r\n###改变$errors的格式###\r\n文档这里是一个大坑，不解释一下你根本不知道它在说啥。  \r\n上面这个例子的$errors是一个Collection，所以$errors->all()这里你需要处理一下才能取到所有的errors，它是怎么来的呢？看源码：  \r\n```\r\n    protected function formatValidationErrors(Validator $validator)\r\n    {\r\n        return $validator->errors()->getMessages();\r\n    }\r\n    //这里返回的是一个collection\r\n```\r\n文档所谓的转换格式，就是把返回collection变成直接返回数组；方法就是在Controller类里覆盖``ValidatesRequests ``这个trait的``formatValidationErrors``方法： \r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Illuminate\\Foundation\\Bus\\DispatchesJobs;\r\nuse Illuminate\\Contracts\\Validation\\Validator;\r\nuse Illuminate\\Routing\\Controller as BaseController;\r\nuse Illuminate\\Foundation\\Validation\\ValidatesRequests;\r\n\r\nabstract class Controller extends BaseController\r\n{\r\n    use DispatchesJobs, ValidatesRequests;\r\n\r\n    /**\r\n     * {@inheritdoc}\r\n     */\r\n    protected function formatValidationErrors(Validator $validator)\r\n    {\r\n        return $validator->errors()->all();\r\n    }\r\n    //这个all()就是返回一个扁平化的数组\r\n}\r\n```\r\n这样你就不用在视图里再all()一下了。\r\n\r\n##其他验证方法##\r\n###手动创建验证对象###\r\n``ValidatesRequests ``这个trait的validator快速验证的方法第一个参数是Request对象，并且直接封装了重定向和保留上一次表单值的session，有时你没有使用Request对象，只是使用了Input这种方式来获取表单值，并且想自定义一下重定向后返回的数据，那么就可以来手动创建一下验证对象。\r\n```\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse Validator;\r\nuse Illuminate\\Http\\Request;\r\nuse App\\Http\\Controllers\\Controller;\r\n\r\nclass PostController extends Controller\r\n{\r\n    /**\r\n     * Store a new blog post.\r\n     *\r\n     * @param  Request  $request\r\n     * @return Response\r\n     */\r\n    public function store(Request $request)\r\n    {\r\n        $validator = Validator::make($request->all(), [\r\n            ''title'' => ''required|unique:posts|max:255'',\r\n            ''body'' => ''required'',\r\n        ]);\r\n\r\n        if ($validator->fails()) {\r\n            return redirect(''post/create'')\r\n                        ->withErrors($validator)\r\n                        ->withInput();\r\n        }\r\n\r\n        // Store the blog post...\r\n    }\r\n}\r\n```\r\n注意这里的$request->all()，你也可以换成Input::all();  \r\n最后的withErrors()，它将决定视图里面的$errors变量的内容，你可以传入一个 验证对象，或MessageBag对象，或者一个Php数组。\r\n\r\n\r\n##将错误信息分组##\r\n有时候你的视图里有两个表单，并且表单的字段名称是有重复的，而$error变量只有一个，这样在返回错误信息的时候，就有重复的错误信息显示。为了解决这个问题，我们可以将错误信息分组：  \r\n```\r\nreturn redirect(''register'')\r\n            ->withErrors($validator, ''login'');\r\n```\r\n这样就在读取的时候，就可以：  \r\n```\r\n{{ $errors->login->first(''email'') }}\r\n```\r\n\r\n指定读取特定的错误信息了。\r\n**这个方法典型的应用就是把登录和注册放在一个页面的场景**\r\n\r\n###验证对象的after方法###\r\n\r\n```\r\n$validator = Validator::make(...);\r\n\r\n$validator->after(function($validator) {\r\n    if ($this->somethingElseIsInvalid()) {\r\n        $validator->errors()->add(''field'', ''Something is wrong with this field!'');\r\n    }\r\n});\r\n\r\nif ($validator->fails()) {\r\n    //\r\n}\r\n```\r\n也就是在验证后可以加一些自定义的错误信息进去的功能。\r\n\r\n\r\n###Form Request 验证##\r\n\r\n请记住Form Request（表单请求）这个名字，我们之前的验证是放在controller里的，\r\nForm Request验证则是放在一个表单专属的请求对象里面进行。  \r\n\r\n在命令行里面输入：  \r\n```\r\nphp artisan make:request StoreBlogPostRequest\r\n\r\n```\r\n这样就会在``app/Http/Requests``里面生成一个StoreBlogPostRequest.php文件，这个StoreBlogPostRequest其实是``App\\Http\\Requests\\Request``的一个扩展。  \r\n\r\n然后在里面的：  \r\n```\r\npublic function rules()\r\n{\r\n    return [\r\n        ''title'' => ''required|unique:posts|max:255'',\r\n        ''body'' => ''required'',\r\n    ];\r\n}\r\n```\r\n这里添加验证规则，controller的方法里把StoreBlogPostRequest注入进去：  \r\n\r\n\r\n```\r\npublic function store(StoreBlogPostRequest $request)\r\n{\r\n    // The incoming request is valid...\r\n}\r\n```\r\n\r\n这样就可以自动验证，验证通过往下执行，验证失败，同样的分两种情况，上面讲过，就不重复讲了。  \r\n\r\n同样，你的视图中应该添加显示错误的代码，才能把错误信息显示出来。  \r\n\r\n这样，你的controller变得更整洁了（同时不熟悉的新手变得更迷惑了）。  \r\n\r\n\r\n##表单请求授权###\r\n\r\n有了上面说的这个StoreBlogPostRequest，你还可以对单个表单请求进行权限设置，确保万无一失。  \r\n```\r\npublic function authorize()\r\n{\r\n    $commentId = $this->route(''id'');\r\n\r\n    return Comment::where(''id'', $commentId)\r\n                  ->where(''user_id'', Auth::id())->exists();\r\n}\r\n```\r\n\r\n官网这里举了个应用的例子，Request对象里面有个方法可以取到路由参数的值：  \r\n```\r\n$this->route(''id'')\r\n```\r\n\r\n然后下面的语句就是判断是否有这个id对应的评论，没有的话就返回false，那么表单就不允许提交了。\r\n\r\n换句话说，这个authorize()必须return一个true才能让表单提交通过，你用命令行自动生成StoreBlogPostRequest.php的时候，这里默认的是``return false``, 记得改成``return true``哦，否则一个403错误会告诉你没权限。**这是一个常见的坑**\r\n\r\n\r\n###改变$errors的格式###\r\n这里和controller那里讲的是一样的，只不过把覆盖的方法写在了``App\\Http\\Requests\\Request``这个基础request对象里。  \r\n方法名称也有点不一样：  \r\n```\r\nprotected function formatErrors(Validator $validator)\r\n{\r\n    return $validator->errors()->all();\r\n}\r\n\r\n```\r\n感想：验证这一块知识坑真多。\r\n\r\n###自定义错误信息###\r\n在StoreBlogPostRequest这个扩展对象里，你可以写上： \r\n\r\n```\r\npublic function messages()\r\n{\r\n    return [\r\n        ''title.required'' => ''A title is required'',\r\n        ''body.required''  => ''A message is required'',\r\n    ];\r\n}\r\n```\r\n\r\n这里注意字段和规则要配合起来写。\r\n\r\n##处理错误信息##\r\n\r\n在一个验证对象（$validator）运行errors()方法，可以得到一个``Illuminate\\Support\\MessageBag``, \r\n这个MessageBag里的方法可多了，可以灵活的处理错误信息。\r\n\r\n###获取某个字段第一个错误信息###\r\n\r\n```\r\n$messages = $validator->errors();\r\n\r\necho $messages->first(''email'');\r\n```\r\n一个字段有多个验证规则，那么就会有多个对应的错误信息。first()就是取第一个错误信息。\r\n\r\n\r\n###取某个字段所有错误信息###\r\n\r\n```\r\nforeach ($messages->get(''email'') as $message) {\r\n    //\r\n}\r\n\r\n```\r\n不难理解。\r\n\r\n###取所有错误信息###\r\n\r\n```\r\nforeach ($messages->all() as $message) {\r\n    //\r\n}\r\n\r\n```\r\n注意，这就是快速方法下laravel的默认操作，它把$messages直接取到视图中的$errors里面去了。\r\n\r\n\r\n###判断是否有某一字段的错误信息###\r\n```\r\nif ($messages->has(''email'')) {\r\n    //\r\n}\r\n\r\n```\r\n###获取带Html格式的错误信息###\r\n\r\n```\r\necho $messages->first(''email'', ''<p>:message</p>'');\r\n```\r\n第二个参数就是把html代码加进去。\r\n\r\n```\r\nforeach ($messages->all(''<li>:message</li>'') as $message) {\r\n    //\r\n}\r\n\r\n```\r\n这是针对所有信息的写法。\r\n\r\n\r\n##自定义错误信息##\r\n需要理解的是$validator这个对象是自带错误信息的，不管你是否自定义错误信息，或者没有生成错误信息，它都会把一个$errors变量发送到视图里。  \r\n所以自定义错误信息就是在$validator发送$errors这个变量之前对$errors进行一些修改。\r\n\r\n\r\n```\r\n$messages = [\r\n    ''required'' => ''The :attribute field is required.'',\r\n];\r\n\r\n$validator = Validator::make($input, $rules, $messages);\r\n```\r\n\r\n用这个``Validator::make``就可以重行封装一个$validator对象，$messages照着重写就好了，注意``:attribute``只是一个字符串的占位符，用来进行字符串替换用的。\r\n\r\n还有一些其他的占位符，你可以研究一下：  \r\n```\r\n$messages = [\r\n    ''same''    => ''The :attribute and :other must match.'',\r\n    ''size''    => ''The :attribute must be exactly :size.'',\r\n    ''between'' => ''The :attribute must be between :min - :max.'',\r\n    ''in''      => ''The :attribute must be one of the following types: :values'',\r\n];\r\n```\r\n\r\n###指定一个特定字段、特定规则下的错误信息###\r\n\r\n```\r\n$messages = [\r\n    ''email.required'' => ''We need to know your e-mail address!'',\r\n];\r\n```\r\n\r\n###错误信息的中文化###\r\n其实大家最关心的是怎样把英文的错误信息变成中文的错误信息，非常简单：  \r\n把``resources/lang/en/validation.php``复制到``resources/lang/zh/validation.php``翻译里面的错误信息，然后在``config/app.php``里面改下地理位置：  \r\n\r\n```\r\n''locale'' => ''zh'',\r\n\r\n```\r\n这样输出的就是中文的错误信息了。\r\n\r\n\r\n##验证规则##\r\n叹为观止，自己看文档，不多说了。\r\n\r\n\r\n\r\n\r\n##有条件的验证##\r\n\r\n有时候有这种情况，一个用户帐号，可能是通过email注册生成的，这里的email是required的，也有可能是通过open auth帐号生成的，通过Open Auth的方法生成的帐号一般没有email，这样岂不是要写两套规则？\r\n\r\n有个简单的办法：  \r\n```\r\n$v = Validator::make($data, [\r\n    ''email'' => ''sometimes|required|email'',\r\n]);\r\n```\r\n\r\n加个sometimes进入验证规则，那么只有在提交的input数组中有email字段才验证，没有就不验证。\r\n\r\n**解释：如果不加sometimes，那么不管你有没有email这个字段，系统都会要求你提供这个字段。**\r\n\r\n\r\n###复杂的有条件的验证###\r\n这下牛B了，Laravel把这个验证玩出了新境界：\r\n\r\n```\r\n$v->sometimes(''reason'', ''required|max:500'', function($input) {\r\n    return $input->games >= 100;\r\n});\r\n```\r\n解释一下这段代码，''reason''是要验证的目标字段，''required|max:500''是预设的规则，后面的闭包必须返回true，预设的规则才能生效，闭包里面有个$input变量，它是``Illuminate\\Support\\Fluent``的实例，可以用来读取提交的各个字段值。\r\n\r\n这样你就可以设置各种复杂的验证规则了。\r\n\r\n你还可以批量设置：  \r\n```\r\n$v->sometimes([''reason'', ''cost''], ''required'', function($input) {\r\n    return $input->games >= 100;\r\n});\r\n```\r\n\r\n\r\n\r\n##自定义规则##\r\n系统自带的规则已经非常完备了，高级玩家需要自定义规则看文档吧，写得很清楚，这里就不啰嗦了。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2015-11-13 08:55:17', '2016-07-14 23:59:04', 9, 1, 3897, 0, 1, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL);
INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `category_id`, `views`, `comments`, `likes`, `collection_id`, `isext`, `seo_keywords`, `seo_description`, `deleted_at`) VALUES
(65, 'Laravel 5.1 文档攻略 —— 数据库：基础', '##概述##\r\n\r\nLaravel 支持4种数据库： \r\n1. MySQL\r\n2. Postgres\r\n3. SQLite \r\n4. SQL Server\r\n\r\nLaravel 对数据库库的操作方式一共有3种：\r\n1. 写原生的SQL语句；\r\n2. Query Builder；\r\n3. Eloquent ORM;\r\n\r\n其中第一，第二种，都是对数据表进行操作，第一种是写原生的SQL语句，第二种是用Laravel封装的方法对数据表进行操作（这些方法最终会转化为SQL语句）。  \r\n而第三种方法，也就是Eloquent ORM，则是对模型（数据对象）进行操作，是一种完全面向对象的数据操作方式（ORM），ORM使得数据操作变得更直观，更简单，更强大，例如建立表间关系，ORM有着明显的优势。\r\n\r\n建议先学习第一，第二种方法。在实际中使用第三种方法。\r\n\r\n##配置数据库连接##\r\n\r\n配置文件：``config/database.php``  \r\n找到Mysql的部分：   \r\n```\r\n        ''mysql'' => [\r\n            ''driver''    => ''mysql'',\r\n            ''host''      => env(''DB_HOST'', ''localhost''),\r\n            ''database''  => env(''DB_DATABASE'', ''forge''),\r\n            ''username''  => env(''DB_USERNAME'', ''forge''),\r\n            ''password''  => env(''DB_PASSWORD'', ''''),\r\n            ''charset''   => ''utf8'',\r\n            ''collation'' => ''utf8_unicode_ci'',\r\n            ''prefix''    => '''',\r\n            ''strict''    => false,\r\n        ],\r\n```\r\n我们注意到``''host''      => env(''DB_HOST'', ''localhost''),``这句，说明，.env文件有优先配置的权利，我们到.env中把数据库的关键信息填了：  \r\n```\r\nDB_HOST=localhost\r\nDB_DATABASE=larabase\r\nDB_USERNAME=root\r\nDB_PASSWORD=root\r\n\r\n```\r\n\r\n好了，这样就行了，你已经可以连接和使用数据库了。\r\n\r\n###数据库读写分离###\r\n\r\n为了提高数据库读写效率，服务器常常会进行读写分离的部署：\r\n![][0.5534871835261583]\r\n\r\n\r\n\r\n  [0.5534871835261583]: http://my.csdn.net/uploads/201205/29/1338293588_6347.jpg\r\n  \r\n  在laravel中配置读写分离超级简单：\r\n  \r\n  ```\r\n  ''mysql'' => [\r\n    ''read'' => [\r\n        ''host'' => ''192.168.1.1'',\r\n    ],\r\n    ''write'' => [\r\n        ''host'' => ''196.168.1.2''\r\n    ],\r\n    ''driver''    => ''mysql'',\r\n    ''database''  => ''database'',\r\n    ''username''  => ''root'',\r\n    ''password''  => '''',\r\n    ''charset''   => ''utf8'',\r\n    ''collation'' => ''utf8_unicode_ci'',\r\n    ''prefix''    => '''',\r\n],\r\n```\r\n\r\n看到读（read）写（write）两个字了吗，在下面配置服务器信息就OK了，如果这两个数据库有共用的信息，你可以把它们写在外面，例如用户名密码这些都是读写数据库共用的。如果要使用独立的，就写到读写数组里面去。\r\n\r\n太简单了，是因为不能更简单了。\r\n\r\n##执行原生的SQL查询##\r\n\r\n我们先来了解一下SQL语句的分类：\r\n首先就是对数据的操作：『查改增删』\r\nselect, update, insert, delete；  \r\n然后就是对数据表和数据结构的一些操作（statement），例如删除一个表等等。\r\n\r\n\r\n好，我们来看看laravel中怎样写这些语句：\r\n\r\n###查###\r\n```\r\n$users = DB::select(''select * from users where active = ?'', [1]);\r\n\r\n```\r\n后面那个1是参数，很好理解。\r\n\r\n需要了解一下$users查出来的是一个什么东西，$user查出来是一个数组，数组里的每个值都是一个标准PHP对象，这样你就可以读取对象中的属性，实际用例：  \r\n```\r\nforeach ($users as $user) {\r\n    //查出来后你就可以直接读取用户的名字\r\n    echo $user->name;\r\n}\r\n```\r\n\r\n***指定参数的键名***  \r\n```\r\n$results = DB::select(''select * from users where id = :id'', [''id'' => 1]);\r\n```\r\n\r\n和上面写参数的方法对比一下就好，你可以看到要给参数加键名应该怎么写，这种情况适合有很多参数的情况使用。\r\n\r\n###增###\r\n\r\n```\r\nDB::insert(''insert into users (id, name) values (?, ?)'', [1, ''Dayle'']);\r\n```\r\n\r\n显而易见，不解释了。注意后面的参数是按顺序注入的。\r\n\r\n###改###\r\n\r\n```\r\n$affected = DB::update(''update users set votes = 100 where name = ?'', [''John'']);\r\n```\r\n\r\n###删###\r\n\r\n```\r\n$posts = DB::delete(''delete from posts where id = ?'', [3]);\r\n```\r\n\r\n###普通的SQL Statement###\r\n对于不返回任何数据的SQL，这样写：\r\n```\r\nDB::statement(''drop table users'');\r\n```\r\n\r\n##监听SQL事件##\r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Providers;\r\n\r\nuse DB;\r\nuse Illuminate\\Support\\ServiceProvider;\r\n\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n    /**\r\n     * Bootstrap any application services.\r\n     *\r\n     * @return void\r\n     */\r\n    public function boot()\r\n    {\r\n        DB::listen(function($sql, $bindings, $time) {\r\n            //\r\n        });\r\n    }\r\n\r\n    /**\r\n     * Register the service provider.\r\n     *\r\n     * @return void\r\n     */\r\n    public function register()\r\n    {\r\n        //\r\n    }\r\n}\r\n```\r\n\r\n放置事件侦听的位置在provider的boot()方法里，\r\n这玩意儿有啥用呢？看闭包里的三个参数，每次有sql语句执行的时候，你都可以在这里获得 sql具体的语句，参数，以及执行时间，你可以把它们写到log里面去，主要用来调试和debug用。\r\n当然，我在使用了无比强大的``barryvdh/laravel-debugbar``后，也就没怎么用过这个功能。\r\n\r\n##SQL语句批处理（Database Transactions）##\r\n\r\n所谓transaction，就是像交易一样一笔一笔的来处理。\r\n\r\n\r\n```\r\nDB::transaction(function () {\r\n    DB::table(''users'')->update([''votes'' => 1]);\r\n\r\n    DB::table(''posts'')->delete();\r\n});\r\n```\r\n\r\n如果你需要执行多个相关语句，可以写到transaction这个闭包参数里面。它有个好处就是如果这其中任何一条sql报错，它都会回滚到初始状态，只有全部无错通过了，才会写数据库。\r\n\r\n\r\n***注意``DB::transaction(function () {});``对后面要讲的QueryBuilder和Eloquent ORM也是适用的。***\r\n\r\n###Transaction的手动写法###\r\n\r\n官网写得太简单了，看得有点晕，其实是这样的：\r\n\r\n```\r\nDB::beginTransaction();\r\n```\r\n\r\n写了这句话后，下面所有的Sql语句都不会写数据库。\r\n\r\n\r\n除非你在最后加上：\r\n\r\n```\r\nDB::commit();\r\n```\r\n\r\n看着怎么有点像git：）\r\n\r\n\r\n在上面两者之间的过程中，你可以用条件语句加入：\r\n```\r\nDB::rollBack();\r\n```\r\n\r\n万一有什么不测的地方，就可以回滚。\r\n\r\n\r\n###连接多个数据库###\r\n\r\n有时候想调用其他数据库的内容：\r\n\r\n```\r\n$users = DB::connection(''foo'')->select(...);\r\n```\r\n前提是这个''foo''数据库，你之前在配置文件中配置过。\r\n\r\n\r\n另外，这个connection对象还可以用来返回一个PDO对象：\r\n\r\n```\r\n$pdo = DB::connection()->getPdo();\r\n```', '2015-11-28 16:39:01', '2016-07-14 23:56:23', 9, 1, 4823, 1, 2, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(66, 'Laravel 5.1 文档攻略 —— Eloquent ORM：起步', '##概述##\r\n有很多朋友问，MCV的M是在哪里介绍的，这里就是介绍M的地方了。\r\nLaravel有一个强大的数据库ORM Eloquent，它的原理是每张数据表对应一个Model，对Model的操作就对应数据库的操作，你只用管对model的操作，而数据库的操作是自动的（意味着你不用写SQL语句）。\r\n\r\nEloquent采用了Active Record的模式，表映射到类，记录映射到对象。它的特点是简单直观，但解耦方面稍弱。还有一种叫做Data Mapping（以Doctrine为代表），它对象操作和数据操作是完全分离的，有兴趣可以google一下。\r\n\r\n使用Eloquent之前，先配置一下数据库连接。\r\n\r\n\r\n##定义数据模型（Models）##\r\n\r\n新装好的Laravel App目录下，你会发现已经有一个User.php的模型文件了，在这里会出现一个无数人问的问题：为什么把模型文件放在这里？没有一个Models的目录吗？\r\n\r\n我想Taylor可能是觉得组织Model的方式有很多种，把选择权交给大家吧；\r\n\r\n按照我自己的习惯，我是会把Model放进app目录下新建的Models文件夹里，怎么弄呢？\r\n\r\n你只需要改一下User Model命名空间即可：\r\n\r\n```\r\nnamespace App\\Models;\r\n\r\nuse ...\r\n\r\n\r\nclass User extends Model implements AuthenticatableContract, CanResetPasswordContract\r\n{\r\n...\r\n\r\n}\r\n```\r\n\r\n不过User 模型因为与Auth还有点关系，所以在`config/auth.php`里，你还需要修改一下命名空间：\r\n\r\n```\r\n''model'' =>App\\Models\\User::class,\r\n```\r\n\r\n\r\n###用artisan生成Model文件###\r\n\r\n```\r\nphp artisan make:model User\r\n```\r\n\r\n如果像刚才讲的一样，喜欢吧model放到models文件夹里，就这样写：\r\n\r\n```\r\nphp artisan make:model Models\\User\r\n\r\n```\r\n同时，比较好的习惯是后面再带一个migration，因为建立好模型后就要去建表了，所以生成Model的正确姿势是：\r\n\r\n```\r\nphp artisan make:model Models\\User --migration\r\n\r\nphp artisan make:model Models\\User -m\r\n\r\n```\r\n\r\n\r\n##定义模型的内容##\r\n\r\n用artisan自动生成model以后，典型的内容应该是这样的：\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n    //\r\n}\r\n```\r\n\r\n下面我们就来看可以在里面写点啥：\r\n\r\n**表名**\r\n\r\n首先第一个肯定是关联表了，否则怎么使用ORM呢？\r\n\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n    \r\n    protected $table = ''my_flights'';\r\n}\r\n```\r\n\r\n这样就把Flight这个模型和my_flights这张表以及表里的字段联系起来了，表的字段会自动成为Flight这个模型对象的属性。\r\n\r\n**主关键字（Primary Keys）**\r\n\r\nLaravel默认自增id字段为主Key，当然你也可以指定其他的字段：\r\n\r\n```\r\n$primaryKey =''user_name'';\r\n```\r\n\r\n**时间戳（Timestamps）**\r\n\r\n一般情况下，Laravel默认你的表中自带`created_at`和`updated_at`这两个字段，并会在生成数据的时候自动填充。\r\n\r\n如果你的表中没有这两个字段或者不想自动管理它们，可以像下面这样关掉：\r\n\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n   \r\n\r\n    public $timestamps = false;\r\n}\r\n```\r\n\r\n你还可以改时间戳在数据库中的存储格式（默认从年存到秒），还有从数据库中读出来的显示格式：\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n    \r\n    protected $dateFormat = ''U'';\r\n}\r\n```\r\n\r\n文档这里又是个啃爹货，你以为每个人都懂`''U''`是什么意思吗？写成`''Y-m-d''`这种大家都能理解的不好吗？关于`''U''`是什么意思，以及一共有多少种时间格式，请参阅：\r\n\r\n[http://php.net/manual/en/datetime.createfromformat.php\r\n](http://php.net/manual/en/datetime.createfromformat.php)\r\n\r\n**数据库连接**\r\n\r\n一般不写的话是连接默认数据库，但是你也可以把某个模型关联到其他数据库（当然，这个数据库你必须事先在config里面配置过）：  \r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n   \r\n    protected $connection = ''connection-name'';\r\n}\r\n```\r\n\r\n##获取模型集合##\r\n所谓获取模型集合就是获取多条数据库记录对应的模型。***获取的方法和数据库查询器（DQB）的方法完全一样的***，只不过指定的类名不是DB，而是相应的模型：\r\n\r\n```\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse App\\Flight;\r\nuse App\\Http\\Controllers\\Controller;\r\n\r\nclass FlightController extends Controller\r\n{\r\n   \r\n    public function index()\r\n    {\r\n        $flights = Flight::all();\r\n\r\n        return view(''flight.index'', [''flights'' => $flights]);\r\n    }\r\n}\r\n\r\n```\r\n\r\n这个All()在这里就是把全部记录取出来，也就是自动把对应的模型对象集合全部取出来了。\r\n\r\n**读取模型属性**\r\n\r\n字段和字段值就是模型对象的属性和属性值：\r\n\r\n```\r\nforeach ($flights as $flight) {\r\n    echo $flight->name;\r\n}\r\n```\r\n**进一步筛选数据**\r\n\r\n```\r\n$flights = App\\Flight::where(''active'', 1)\r\n               ->orderBy(''name'', ''desc'')\r\n               ->take(10)\r\n               ->get();\r\n```\r\n看过DQB后，这些都是最基本的内容了。\r\n\r\n**Collections**\r\n\r\n像all()和get()这种会返回多条数据的方法，在Eloquent里面会返回一个collection对象集合（对象装在对象里），而不是像DQB的数组结果集合（对象装在数组里）。Collection其实前面已经讲过了，它是在数据查询出来后，提供了一系列处理数据的方法，非常强大实用。\r\n\r\n当然，collection结果集也是可以直接遍历的：\r\n\r\n```\r\nforeach ($flights as $flight) {\r\n    echo $flight->name;\r\n}\r\n```\r\n\r\n**切片化处理结果（chunk）**\r\n\r\n处理海量数据的时候，你可以把数据切片化处理，这样节省内存：\r\n\r\n```\r\nFlight::chunk(200, function ($flights) {\r\n    foreach ($flights as $flight) {\r\n        //\r\n    }\r\n});\r\n```\r\n\r\n方法和DQB一样，这里就不多说了。\r\n\r\n\r\n##获取单个模型对象（单条数据）##\r\n\r\n取单个对象，用`find()`和`first()`方法：\r\n\r\n```\r\n// 这个是通过ID查找\r\n$flight = App\\Flight::find(1);\r\n\r\n// 这个是在结果集中取第一个记录\r\n$flight = App\\Flight::where(''active'', 1)->first();\r\n```\r\nfind()方法还可以用于查询多条记录，用数组就行：\r\n\r\n```\r\n$flights = App\\Flight::find([1, 2, 3]);\r\n```\r\n\r\n**找不到记录怎么办**\r\n\r\n很多情况下，你希望找不到记录的时候自动报错，这时候就使用`findOrFail()`和`firstOrFail()`方法，这两个方法首先会去找第一条记录，找不到就会抛出一个`Illuminate\\Database\\Eloquent\\ModelNotFoundException`类指定的错误，如果这个错误没有被指定抛出，就会自动抛出一个http 404错误：\r\n\r\n```\r\n$model = App\\Flight::findOrFail(1);\r\n\r\n$model = App\\Flight::where(''legs'', ''>'', 100)->firstOrFail();\r\n```\r\n\r\n###结果计算(Aggregates)###\r\n和DQB一样，用于结果计算的count，sum，max这些方法都可以用，不过这些方法返回是数字而不是对象哦：\r\n\r\n```\r\n$count = App\\Flight::where(''active'', 1)->count();\r\n\r\n$max = App\\Flight::where(''active'', 1)->max(''price'');\r\n```\r\n\r\n##模型的增删改##\r\n\r\n##增##\r\n\r\n```\r\nnamespace App\\Http\\Controllers;\r\n\r\nuse App\\Flight;\r\nuse Illuminate\\Http\\Request;\r\nuse App\\Http\\Controllers\\Controller;\r\n\r\nclass FlightController extends Controller\r\n{\r\n    \r\n    public function store(Request $request)\r\n    {\r\n\r\n        $flight = new Flight;\r\n\r\n        $flight->name = $request->name;\r\n\r\n        $flight->save();\r\n    }\r\n}\r\n\r\n```\r\n\r\n这个就是最简单的通过模型新增数据库记录的方法了，在`save()`之前，都是在操作模型数据对象，`save()`后，模型的属性就被写到数据库的字段里了，注意`id，created_at,updated_at`字段是默认生成的，不用手动指定；\r\n\r\n除了用save()方法,还有一个方法create(),这个方法可以批量更新属性,并直接写入数据库：\r\n\r\n```\r\npublic function store(Request $request)\r\n    {\r\n\r\n        $flight = Flight::create([\r\n        	''name''=>''MH370'',\r\n        	''passengers''=>''227'',\r\n        	''from''=>''KL'',\r\n        	''to''=>''BJ'',\r\n        	''status''=>''missing''            \r\n        ]);\r\n       \r\n    }\r\n```    \r\n\r\n如果你的$request对象刚好就是下面那个数组（当然实际不是的，还需要处理一下，具体看**请求**那一章节），你可以这样写：\r\n\r\n```\r\npublic function store(Request $request)\r\n    {\r\n\r\n        $flight = Flight::create($request);\r\n       \r\n    }\r\n``` \r\n\r\n是不是变得非常简单了？\r\n\r\n但是，有一个问题：\r\n\r\n**批量更新注入（Mass Assignment）**\r\n\r\n这个$request是表单或者url参数提交过来的，所以用户可以自由设置的.万一你的模型中有这样一个属性`''is_admin''`, 黑客直接把这个参数改为1，然后通过create方法写入数据库，那你不就傻X了么。\r\n\r\n所以，为了预防这个问题的发生，在写入数据库之前，还需要校验一下哪些字段是可以通过create()方法批量改的（也就是用户有权利自由改的），哪些是不能外部参数直接改的，必须手动指定属性，然后save()的；\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n    \r\n\r\n    protected $fillable = [''name'',''passengers''];\r\n}\r\n```\r\n`$fillable`顾名思义就是可以填的字段，是个白名单；一般不能填写的字段占少数，为了填写方便，还有个黑名单`$guarded`:\r\n\r\n```\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n\r\n    protected $guarded = [''status''];\r\n}\r\n```\r\n也就是说，除了status不能批量更新，其他字段都能批量更新；\r\n\r\n***注意了：如果你使用了`create()`方法，但又没有添加上面说的写保护属性，那么会报Mass Assignment的错误，这是无数人遇到过的问题。***\r\n\r\n\r\n\r\n##改##\r\n\r\n```\r\n$flight = App\\Flight::find(1);\r\n\r\n$flight->name = ''New Flight Name'';\r\n\r\n$flight->save();\r\n```\r\n原理都是很简单的，改属性，然后存数据库。\r\n\r\n\r\n**批量更新**\r\n\r\n还有一个`update（）`方法，可以对多条数据同时更新：\r\n\r\n```\r\nApp\\Flight::where(''active'', 1)\r\n          ->where(''destination'', ''Shanghai'')\r\n          ->update([''delayed'' => 1]);\r\n```\r\n          \r\n上面的意思是：所有在飞上海的航班，延误状态改为1；\r\n\r\n这个update（）和 create()一样，也是对mass assignment写保护是有要求的；\r\n\r\n###其他生成记录的方法###\r\n还有一些常用的逻辑，laravel也封装好了:\r\n\r\n```\r\n// 先找第一条记录，如果没有就新建一条记录（写数据库）\r\n$flight = App\\Flight::firstOrCreate([''name'' => ''Flight 10'']);\r\n\r\n// 先找第一条记录，如果没有就新建一个对象（不写数据库）\r\n$flight = App\\Flight::firstOrNew([''name'' => ''Flight 10'']);\r\n```\r\n如果你一直在看这个文档攻略，现在你应该熟悉laravel的语义，一看到create这种词，就知道是拿数据库开刀的。\r\n\r\n##删##\r\n\r\n```\r\n$flight = App\\Flight::find(1);\r\n\r\n$flight->delete();\r\n```\r\n有save()就有delete()，道理很简单，delete()也是直接操作数据库。\r\n\r\n**通过ID删除记录**\r\n\r\n```\r\nApp\\Flight::destroy(1);\r\n\r\nApp\\Flight::destroy([1, 2, 3]);\r\n\r\nApp\\Flight::destroy(1, 2, 3);\r\n```\r\n\r\n上面的步骤是先找后删除，有个简写的方法，destroy(),你把一个id或多个id输入进去，就可以在数据库中直接删除数据了；\r\n\r\n**按条件删除**\r\n\r\n```\r\n$deletedRows = App\\Flight::where(''active'', 0)->delete();\r\n```\r\n似乎是理所当然的事情，不解释。\r\n\r\n###软删除###\r\n软删除其实就是假删除，数据都还在，只不过是看不见了，这是非常常用的功能。\r\n\r\n要使用软删除，首先要做一下设置：\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\nuse Illuminate\\Database\\Eloquent\\SoftDeletes;\r\n\r\nclass Flight extends Model\r\n{\r\n    use SoftDeletes;\r\n\r\n    protected $dates = [''deleted_at''];\r\n}\r\n```\r\n\r\n在模型中引入一个`Illuminate\\Database\\Eloquent\\SoftDeletes` PHP Trait，然后添加一个属性`''deleted_at''`；\r\n\r\n当然，只是模型有`''deleted_at''`还不够，数据库也必有对应的字段，migration提供了一个方便的写法：\r\n\r\n```\r\nSchema::table(''flights'', function ($table) {\r\n    $table->softDeletes();\r\n});\r\n```\r\n\r\n现在就可以使用软删除了，使用delete()方法时，不是真删，而是假删。\r\n\r\n如果你要判断某个模型是否处被软删除了，可以：\r\n\r\n```\r\nif ($flight->trashed()) {\r\n    //\r\n}\r\n```\r\n\r\n显而易见，就是trashed()这个方法，也就是暂时丢进回收站，还可以回收的。\r\n\r\n###查询被软删除(回收站里）的记录###\r\n\r\n**查全部数据**\r\n\r\n默认情况下，被trashed的记录都不会被查询出来，如果要查*全部数据*，加个方法`withTrashed()`就行了：\r\n\r\n\r\n```\r\n$flights = App\\Flight::withTrashed()\r\n                ->where(''account_id'', 1)\r\n                ->get();\r\n```                \r\n                \r\n**只查回收站里的数据**\r\n\r\n```\r\n$flights = App\\Flight::onlyTrashed()\r\n                ->where(''airline_id'', 1)\r\n                ->get();\r\n```\r\n显而易见，onlyTrashed()。\r\n\r\n\r\n**还原回收站数据**\r\n\r\n```\r\n$flight->restore();\r\n```\r\n这个还原整个模型被软删除的数据；\r\n\r\n\r\n```\r\nApp\\Flight::withTrashed()\r\n        ->where(''airline_id'', 1)\r\n        ->restore();\r\n```\r\n这个是还原指定条件的数据；\r\n\r\n                \r\n**强制永久性删除**\r\n\r\n设置了软删除后，如果要强制删除，可以:\r\n\r\n```\r\n$flight->forceDelete();\r\n\r\n```\r\n\r\n##Query Scopes##\r\n\r\n这个scope是范围的意思，Query Scopes讲的就是查询范围，是用来限制模型的读取范围的。\r\n软删除就是个很好的Query Scopes的例子，它默认只查出那些没被软删除的记录；\r\n\r\n我们可以自己来定义scope： \r\n\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    \r\n    public function scopePopular($query)\r\n    {\r\n        return $query->where(''votes'', ''>'', 100);\r\n    }\r\n\r\n   \r\n    public function scopeActive($query)\r\n    {\r\n        return $query->where(''active'', 1);\r\n    }\r\n}\r\n\r\n```\r\n\r\n`scopePopular`是个魔术方法，这样就定义了一个名为Popular的Scope；\r\n\r\n**使用scope**\r\n\r\n```\r\n$users = App\\User::popular()->active()->orderBy(''created_at'')->get();\r\n```\r\n只要在模型后跟上那么scope的名字即可；\r\n\r\n**动态Scope**\r\n\r\n有时候你需要把数据筛选条件变成动态的，很简单，加个参数就好：\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n       public function scopeOfType($query, $type)\r\n    {\r\n        return $query->where(''type'', $type);\r\n    }\r\n}\r\n\r\n```\r\n\r\n用的时候这样用：\r\n\r\n```\r\n$users = App\\User::ofType(''admin'')->get();\r\n\r\n```\r\n\r\nLaravel 5.2 Query Scope 改进了很多，变得十分强大和方便，请关注我的后续文章。\r\n\r\n\r\n##模型事件##\r\n\r\n模型事件就是模型在进行数据读写时候发生的事件，例如`creating, created, updating, updated, saving, saved, deleting, deleted, restoring, restored.`这些。你可以在发生这些行为的时候执行而外的代码逻辑。\r\n\r\n\r\n不像JS的事件是初始化就会自动侦听的，laravel的事件一般需要预置一个侦听器（listener），如果你要全局侦听，最好的地方就是放在Service Provider的boot()方法里：\r\n\r\n```\r\n<?php\r\n\r\nnamespace App\\Providers;\r\n\r\nuse App\\User;\r\nuse Illuminate\\Support\\ServiceProvider;\r\n\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n    \r\n    public function boot()\r\n    {\r\n        User::creating(function ($user) {\r\n            if ( ! $user->isValid()) {\r\n                return false;\r\n            }\r\n        });\r\n    }\r\n\r\n        public function register()\r\n    {\r\n        //\r\n    }\r\n}\r\n```\r\n\r\n一旦有模型新建记录的事件发生，就会先运行闭包里的代码。\r\n\r\n\r\n`creating, created, updating, updated, saving, saved, deleting, deleted, restoring, restored.`至于这些事件的具体定义，就不多说了，看字面意思就ok了。\r\n\r\n\r\n\r\n\r\n                \r\n\r\n\r\n', '2016-03-18 21:07:01', '2016-07-15 00:46:11', 9, 1, 3905, 2, 5, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(67, 'Laravel 5.1 文档攻略 —— Laravel Elixir 前端流处理工具', '##简介##\r\n\r\n你可能听说过和Ruby有点关系，基于Erlang虚拟机的那个Elixir语言，这里的Elixir和那个完全没关系。\r\n\r\nElixir这个东西呢，是个贴心的小工具。主要将Gulp集成到Laravel里，Gulp是流行的前端资源自动化处理工具，主要把一些预处理文件，比如Less，Sass，还有CoffeeScript这些东西按照任务流的形式编程成最后的css，js文件。\r\n\r\n如果你是前端，你应该很熟悉这些东西，如果不是，没关系很简单的，往下看。\r\n\r\n##安装##\r\n###安装Node环境###\r\n写Laravel到现在，如果你还没听说过node.js，我觉得不太可能。总之安装Gulp要先有node；在命令行里输入：\r\n```\r\nnode -v\r\n```\r\n有版本号出来就说明装过了，报错就去装一个；\r\n官网有客户端可以下载安装的，很简单。\r\n\r\n###安装Gulp###\r\nGulp就是node包管理工具npm（类似composer）下安装的一个依赖包而已。\r\n\r\nGulp可以安装在全局，所有项目都可以用，也可以安装在项目中，跟着项目走。（至于全局什么的配置文件在那里，用到的时候自己研究一下吧）\r\n```\r\nnpm install --global gulp\r\n```\r\n这个是装在全局的，如果要装在项目中，命令行切换到根目录输入：\r\n```\r\nnpm install --save-dev gulp\r\n```\r\n\r\n\r\n**小提示：鉴于国内网络经常抽风，可以百度一下cnpm，这个是在国内的源，下载速度会有提升。另外composer的啰嗦模式是 -vvv，npm 的啰嗦模式是 -d；**\r\n\r\n###安装Elixir###\r\n安装完gulp，其实你已经可以用了(如果你懂用的话），但是在Laravel下，再安装一个Elixir，会更方便，因为它已经帮你预先配置好了很多东西。\r\n刚刚安装好的Laravel根目录下有个package.json文件，它和composer.json是一个意思，只不过对应的是npm管理工具，里面已经配置好要下载的包了。\r\n就像composer一般把下载下来的包放在*vendor*文件夹里，npm一般把包放在*node_modules*里。\r\n```\r\nnpm install\r\n```\r\n\r\n安装完毕你就可以在根目录下看到*node_modules*这个文件夹，里面有各种模块化的包；\r\n\r\n##使用Elixir##\r\nElixir其实就是定制化的Gulp，最常用的3个命令：\r\n```\r\ngulp\r\n```\r\n开始按照你预定的脚本（没错，现在还没脚本，待会儿会讲到）编译；\r\n```\r\ngulp --production\r\n```\r\n开始按照你预定的脚本编译并压缩，你平时看到的.min.css,.min.js 就是这样来的；\r\n\r\n```\r\ngulp --watch\r\n\r\n```\r\n这个强大了，实时编译，你一改less，coffee script这些文件，系统就自动帮你编译出css，js文件了。对机器性能有点要求，可能会卡，我16G内存的机器跑起来没问题。\r\n\r\n##怎么搞CSS文件##\r\n刚才提到没有脚本，执行gulp命令其实什么也没发生。现在就来讲脚本，首先讲怎么处理Css的脚本。\r\n脚本写在根目录下gulpfile.js这个文件里，写完你再gulp就有效果了。\r\n\r\n###Less###\r\n对不知道Less的人来讲可能看到这里快受不了了，完全不知道搞上面这一堆东西有什么用。\r\n简单的说，Css一个一个手写好累，有很多地方的值其实是重复的，如果你的网站是模块化的，这些重复的地方尤为明显。Less提供了一个简单的编程语法，可以使用变量，可以简单的计算，写完了编译一下成为可用的css文件。以后你的网站要更改风格，比如说要从红色变成紫色，你只需要在less里改几个变量，再编译即可。大大方便了css的维护管理。\r\n\r\n有兴趣的话先去看看less的教程，没兴趣的话，下面的也没必要看了，你知道Elixir干什么的就行了，反正你也不用。\r\n\r\n```\r\nelixir(function(mix) {\r\n    mix.less(''app.less'');\r\n})\r\n```\r\n这个脚本就可以编译出一个app.css的文件了。\r\nLaravel在这里继续发扬*没有最傻瓜，只有更傻瓜*的风格。\r\n其实是省略配置了2个路径，默认情况下：\r\n你的Less文件放在`resources/assets/less`，你的css文件默认会被编译在：`public/css/app.css`\r\n\r\n```\r\nelixir(function(mix) {\r\n    mix.less([\r\n        ''app.less'',\r\n        ''controllers.less''\r\n    ]);\r\n});\r\n```\r\n搞个数组，就可以一次性编译多个less文件；\r\n\r\n```\r\nelixir(function(mix) {\r\n    mix.less(''app.less'', ''public/stylesheets'');\r\n});\r\n```\r\n怎么可以不让我指定输出的位置呢？加第二个参数就可以了；\r\n\r\n```\r\nelixir(function(mix) {\r\n    mix.less(''app.less'', ''public/stylesheets/style.css'');\r\n});\r\n```\r\n一般less文件名字和编译出来的名字是一一对应的，要改名，可以上面这样写，不过这种方法应该不适用批量编译（谁有空测试一下告诉我）。\r\n\r\n\r\n###Sass###\r\n\r\nSass和Less差不多，只是语法略有不同。在Elixir中使用完全一样。\r\n\r\n```\r\nelixir(function(mix) {\r\n    mix.sass(''app.scss'');\r\n});\r\n```\r\n```\r\nelixir(function(mix) {\r\n    mix.sass([\r\n        ''app.scss'',\r\n        ''controllers.scss''\r\n    ], ''public/assets/css'');\r\n});\r\n```\r\n###普通CSS文件###\r\n为什么要编译普通css文件？有时候你需要把几个散的css文件合并成一个css，这样加载速度会更快：\r\n\r\n```\r\nelixir(function(mix) {\r\n    mix.styles([\r\n        ''normalize.css'',\r\n        ''main.css''\r\n    ]);\r\n});\r\n```\r\n继续*没有最傻瓜，只有更傻瓜*，你需要编译的css文件放在`resources/assets/css`，你的css文件默认会被编译在：`public/css/all.css`，编译出来的文件名默认是 *all.css*。\r\n\r\n```\r\nelixir(function(mix) {\r\n    mix.styles([\r\n        ''normalize.css'',\r\n        ''main.css''\r\n    ], ''public/assets/css'');\r\n});\r\n```\r\n改变默认输出地址，如果要改变输出文件名，在后面跟个文件名就好。\r\n\r\n###Souece Map###\r\n这个玩意儿高大上了，source map有啥用，简单的说就是 你在浏览器调试css的时候，有时想知道这个css里面的某个项目是从哪个less文件编译过来的，这个时候如果css文件旁边放了一个对应的source map文件，那浏览器调试工具就可以直接追踪到less文件定义的位置！\r\n\r\n怎么生成source文件？Elixir来帮你，其实默认是在编译的时候自动生成source map文件的：\r\n\r\n```\r\nelixir.config.sourcemaps = false;\r\n\r\nelixir(function(mix) {\r\n    mix.sass(''app.scss'');\r\n});\r\n```\r\n如果你不需要，像这样把它关掉。\r\n\r\n\r\n打字打的好累，稍后会补充 处理 Js文件的方法，各种高大上。\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2016-03-11 02:33:54', '2016-07-14 23:21:36', 29, 1, 1121, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(68, 'Laravel 5.1 文档攻略 —— 数据库: Query Builder 数据库查询器（DQB）', '##概述##\r\n数据库查询器（database query builder，简称DQB），为操作数据库提供了简洁方便的语句接口（意味着不用在php中写原生sql），具有链式操作的特性，大多数数据库操作需求都能被满足，并且支持多个数据库。\r\n\r\n##查数据##\r\n\r\n###把一张表的数据全查出来###\r\n\r\n\r\n使用DQB，需要用到DB这个类，把一个表的数据取出来，是最简单的数据库操作：\r\n\r\n```\r\nnamespace App\\Http\\Controllers;\r\nuse DB;\r\nuse App\\Http\\Controllers\\Controller;\r\nclass UserController extends Controller\r\n{\r\n    /**\r\n     * Show a list of all of the application''s users.\r\n     *\r\n     * @return Response\r\n     */\r\n    public function index()\r\n    {\r\n        $users = DB::table(''users'')->get();\r\n        return view(''user.index'', [''users'' => $users]);\r\n    }\r\n}\r\n```\r\n`$users`取到的是一个数组集合，每一条记录都是一个标准的PHP对象，你可以在视图中用foreach对`$users`进行循环。\r\n\r\n```\r\nforeach ($users as $user) {\r\necho $user->name;\r\n}\r\n```\r\n\r\n###取单条数据###\r\n取单条数据，需要给一个条件，这里需要用到where语句：\r\n\r\n```\r\n$user = DB::table(''users'')->where(''name'', ''John'')->first();\r\n\r\necho $user->name;\r\n```\r\n\r\n注意，由于where条件可能取出的是多条数据，如果你只需要第一条，要用first()方法；假如你这样写：\r\n\r\n```\r\n$user = DB::table(''users'')->where(''name'', ''John'')->get();\r\n\r\necho $user−>name;\r\n```\r\n\r\n则是把所有数据都取出来了，这样`$user->name`就会报错，正确的写法是：\r\n\r\n```\r\n$users = DB::table(''users'')->where(''name'', ''John'')->get();\r\nforeach ($users as $user) {\r\n    echo $user->name;\r\n}\r\n```\r\n理解上面这一点，对官方文档接下来说的value方法，可以很好的理解，这里有个坑：\r\n\r\n```\r\n$email = DB::table(''users'')->where(''name'', ''John'')->value(''email'');\r\n```\r\n按照官方文档的说法，这个`value(''email'')`是取第一条记录的一个字段的记录值。我试验过，果然如此，即使where能匹配到多个结果，但value取出来的，仍然只是第一条记录的某个字段值。个人感觉有点小小的不严谨，应该取出来是一个数组集合才对。\r\n\r\n###切片查询###\r\n\r\n有时候你需要查询的数据有几万条记录，这样一次性查询客户端可能假死，或者服务器超时，Laravel提供一种方法，可以每次只查询指定数量的记录，然后循环往复，这在使用Artisan 命令的时候尤其有用。\r\n\r\n```\r\nDB::table(''users'')->chunk(100, function($users) {\r\n    foreach ($users as $user) {\r\n        //\r\n    }\r\n});\r\n```\r\n第二个参数是个闭包，你可以在里面对取出来的记录进行处理；\r\n`chunk`会循环执行，直到所有记录遍历完，你可以`return false`让它只执行一次。\r\n\r\n```\r\nDB::table(''users'')->chunk(100, function($users) {\r\n    // Process the records...\r\n    return false;\r\n});\r\n```\r\n###取一组记录中某个字段的值集合###\r\n\r\n还记得前面讲value这个方法我的吐槽吗，实际上如果你要取多个记录某个字段值的数组集合，laravel提供了单独的一个方法，叫做`lists()`:\r\n\r\n```\r\n$titles = DB::table(''roles'')->lists(''title'');\r\nforeach ($titles as $title) {\r\n    echo $title;\r\n}\r\n```\r\n取出来的`$titles`是个数组，你可以循环它；不过这个数组没有指定key，你可以用另一个字段作为这个数组的key，这就是`lists()`的第二个参数：\r\n\r\n```\r\n$roles = DB::table(''roles'')->lists(''title'', ''name'');\r\n\r\nforeach ($roles as $name => $title) {\r\n    echo $title;\r\n}\r\n```\r\n\r\n##计算##\r\n对于取出来的结果，常常会要进行一些简单的计算，比如统计记录总数(count)，取最大值(max)，最小值(min)，平均值(avg)，总计(sum)等；\r\n\r\n```\r\n$users = DB::table(''users'')->count();\r\n\r\n$price = DB::table(''orders'')->max(''price'');\r\n```\r\n\r\n注意，既然是计算，那么字段类型需要是数值型的。\r\n\r\n##Selects语句##\r\n\r\n`list()`方法只能获取一个字段的值集合，如果你要一次性取多个字段的集合，那么就得使用`select`语句了（不熟悉的去看看SQL基本语法）：\r\n\r\n```\r\n$users = DB::table(''users'')->select(''name'', ''email as user_email'')->get();\r\n```\r\n\r\n取出来的值可能有重复的，那么用distinct()方法去重：\r\n\r\n```\r\n$users = DB::table(''users'')->distinct()->get();\r\n```\r\n\r\n**如果你已经有一个DQB对象，在没有使用get()方法或其他最终取值方法之前，可以分开写多个查询：**\r\n\r\n```\r\n$query = DB::table(''users'')->select(''name'');\r\n\r\nusers=users=query->addSelect(''age'')->get();\r\n\r\n```\r\n\r\n这里用`addSelect()`追加了`select`字段，注意`$query`，链式操作可以分多行写，不用一句话写到底。\r\n\r\n###SQL原生表达式###\r\n\r\n有时候你想插入原生的SQL语句，非常简单：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n->select(DB::raw(''count(*) as user_count, status''))\r\n->where(''status'', ''<>'', 1)\r\n->groupBy(''status'')\r\n->get();\r\n```\r\n\r\n##Joins表间关系查询##\r\n\r\n###简介###\r\n上面讲了Select语句，Select是在一张表里指定特定的字段，如果要查询多张表，并且多张表之间有相互关系，这时候就要用到Join。不同的Join无非是不同的表字段合并后，怎么取记录的问题。\r\n\r\n###内连接查询###\r\n\r\n内连接是最基本的Join，合并不同表的字段，但取记录的时候，只取交集，也就是符合下面`''users.id'', ''='', ''contacts.user_id''`，`''users.id'', ''='', ''orders.user_id''`，条件的记录：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n->join(''contacts'', ''users.id'', ''='', ''contacts.user_id'')\r\n->join(''orders'', ''users.id'', ''='', ''orders.user_id'')\r\n->select(''users.*'', ''contacts.phone'', ''orders.price'')\r\n->get();\r\n```\r\n\r\n这段话只要能翻译出来能理解就行，意思是，要查users表的记录，条件1，`contacts`表中`user_id` 等于 `users`表中`id` 那些记录，条件2，`orders`表和上面的意思相同，最后一句`select`是说把`users`表中的全部字段，`contacts`中的`phone`字段，`orders`表中的`price`字段取出来；\r\n\r\n**注意：users.id 这种写法，"."叫做dot notion,在laravel很多地方有用到，是一种方便的连接写法。**\r\n\r\n###左连接查询###\r\n左连接查询就是合并不同表的字段，然后*左边*`DB::table(''users'')` users表的记录全部拉出来，然后*右边*`''users.id'', ''='', ''posts.user_id''`符合这个条件的，posts表的记录拉出来，最后两个记录去重，右边有值的记录，左边不再重复。\r\n\r\n```\r\n$users = DB::table(''users'')\r\n->leftJoin(''posts'', ''users.id'', ''='', ''posts.user_id'')\r\n->get();\r\n```\r\n你肯定会问那右连接查询呢，一样的，只不过把右边的记录全部取出来，左边的按照条件取；\r\n\r\n```\r\n$users = DB::table(''users'')\r\n->rightJoin(''posts'', ''users.id'', ''='', ''posts.user_id'')\r\n->get();\r\n```\r\n\r\nSQL这些左啊，右啊，内啊，外啊，对于初学者可能有点难以理解，最好的办法是用`php artisan tinker\r\n`多做试验观察。\r\n\r\n###高级Joins查询###\r\n所谓高级就是指在取记录时指定的条件更多更复杂，这个时候我们需要用一个闭包函数就搞定了：\r\n\r\n```\r\nDB::table(''users'')\r\n        ->join(''contacts'', function ($join) {\r\n            $join->on(''users.id'', ''='', ''contacts.user_id'')->orOn(...);\r\n        })\r\n        ->get();\r\n``` \r\n\r\n如果你有多个条件，就在后面接着加`on()`,如果条件之间是或者关系，就写成`orOn(）`。\r\n`on()`是比较2个字段，如果你想比较一个字段和一个固定的值，可以用`where`:\r\n\r\n```\r\nDB::table(''users'')\r\n        ->join(''contacts'', function ($join) {\r\n            $join->on(''users.id'', ''='', ''contacts.user_id'')\r\n                 ->where(''contacts.user_id'', ''>'', 5);\r\n        })\r\n        ->get();\r\n\r\n```\r\n一样的，如果条件之间是或者关系，就写成`orWhere(）`。\r\n\r\n##Unions##\r\nJoin是合并表的字段，而Union其实是合并表的查询条件, 如果A查询出5条记录，B查询出3条记录，那么Union就是把这些记录加起来，如果有重复，会自动去重，如果你不想去重，就用`unionAll` ：\r\n\r\n```\r\n$first = DB::table(''users'')\r\n            ->whereNull(''first_name'');\r\n\r\n$users = DB::table(''users'')\r\n            ->whereNull(''last_name'')\r\n            ->union($first)\r\n->get();\r\n```\r\n\r\n##Where 条件语句##\r\n###简单的where语句###\r\nwhere语句没啥好解释的，就是查询条件，有三个参数，第一个是字段名，第二个运算符，第三个是值：\r\n\r\n```\r\n$users = DB::table(''users'')->where(''votes'', ''='', 100)->get();\r\n```\r\n\r\n如果运算符是`''=''`， 也可以简写为：\r\n\r\n```\r\n$users = DB::table(''users'')->where(''votes'', 100)->get();\r\n```\r\n\r\n其他运算符举例：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                ->where(''votes'', ''>='', 100)\r\n                ->get();\r\n\r\n$users = DB::table(''users'')\r\n                ->where(''votes'', ''<>'', 100)\r\n                ->get();\r\n\r\n$users = DB::table(''users'')\r\n                ->where(''name'', ''like'', ''T%'')\r\n                ->get();\r\n```\r\n\r\n###orWhere逻辑###\r\n当你有2个以上where，需要表示*或者*关系时，就用orWhere():\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                    ->where(''votes'', ''>'', 100)\r\n                    ->orWhere(''name'', ''John'')\r\n                    ->get();\r\n```\r\n\r\n###特殊的where条件###\r\n**whereBetween**\r\n查询一个数字范围：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                    ->whereBetween(''votes'', [1, 100])->get();\r\n```\r\n\r\n**whereNotBetween**\r\n查询不在这个范围内的结果：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                    ->whereNotBetween(''votes'', [1, 100])\r\n                    ->get();\r\n```\r\n**whereIn / whereNotIn**\r\n查询是否在一个集合内 /集合外：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                    ->whereIn(''id'', [1, 2, 3])\r\n                    ->get();\r\n                    \r\n$users = DB::table(''users'')\r\n                    ->whereNotIn(''id'', [1, 2, 3])\r\n                    ->get();\r\n```\r\n**whereNull / whereNotNull**\r\n查询空/非空结果，这个很常用：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                    ->whereNull(''updated_at'')\r\n                    ->get();\r\n                    \r\n$users = DB::table(''users'')\r\n                    ->whereNotNull(''updated_at'')\r\n                    ->get();\r\n```\r\n\r\n##高级where查询##\r\n###查询参数组合###\r\n\r\n```\r\nDB::table(''users'')\r\n            ->where(''name'', ''='', ''John'')\r\n            ->orWhere(function ($query) {\r\n                $query->where(''votes'', ''>'', 100)\r\n                      ->where(''title'', ''<>'', ''Admin'');\r\n            })\r\n            ->get()\r\n```\r\n观察那个闭包，在那里可以组合查询条件。上面的语句翻译成SQL是：\r\n\r\n```\r\nselect * from users where name = ''John'' or (votes > 100 and title <> ''Admin'')\r\n```\r\n###Exists语句###\r\nexist这玩意儿在SQL里用来检查是否会返回值，返回的是布尔值，而不是具体的数据。\r\n\r\n```\r\nDB::table(''users'')\r\n            ->whereExists(function ($query) {\r\n                $query->select(DB::raw(1))\r\n                      ->from(''orders'')\r\n                      ->whereRaw(''orders.user_id = users.id'');\r\n            })\r\n            ->get();\r\n```\r\n翻译成SQL:\r\n```\r\nselect * from users\r\nwhere exists (\r\n    select 1 from orders where orders.user_id = users.id\r\n)\r\n```\r\n\r\n\r\n##Ordering, Grouping, Limit, & Offset##\r\n###说明###\r\n这些东西都是把数据查出来之后对数据进行一些处理；            \r\n###orderBy排序##\r\n排序这个大家都知道，按事件排序，按价格高低排序，按名字排序等等：\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                ->orderBy(''name'', ''desc'')\r\n                ->get();\r\n```\r\n\r\n###groupBy / having / havingRaw###\r\ngroupBy就是按照某个条件进行分组，having呢就是条件（和where基本一样，只不过查询前用where，查询后用having）。\r\n\r\n```\r\n$users = DB::table(''users'')\r\n                ->groupBy(''account_id'')\r\n                ->having(''account_id'', ''>'', 100)\r\n                ->get();\r\n```\r\nhavingRaw 可以插入原生的SQL语句\r\n\r\n```\r\n$users = DB::table(''orders'')\r\n                ->select(''department'', DB::raw(''SUM(price) as total_sales''))\r\n                ->groupBy(''department'')\r\n                ->havingRaw(''SUM(price) > 2500'')\r\n                ->get();\r\n```\r\n\r\n###skip / take###\r\n假如一共100个结果，要跳过前面5个，取后面跟着的6个，这样写：\r\n\r\n```\r\n$users = DB::table(''users'')->skip(5)->take(6)->get();\r\n```                  \r\n\r\n好，至此，增删改查的*查*我们讲完了。下面讲增删改。\r\n\r\n\r\n##Inserts （增）##\r\n```\r\nDB::table(''users'')->insert(\r\n    [''email'' => ''john@example.com'', ''votes'' => 0]\r\n);\r\n```\r\n可以一次插入多条数据： \r\n\r\n```\r\nDB::table(''users'')->insert([\r\n    [''email'' => ''taylor@example.com'', ''votes'' => 0],\r\n    [''email'' => ''dayle@example.com'', ''votes'' => 0]\r\n]);\r\n```\r\n\r\n###获取自增ID###\r\n如果数据表设置了自增ID，你可以用`insertGetId()` 来在生成记录的时候获取相应的自增ID，这个方法挺有用的：\r\n\r\n```\r\n$id = DB::table(''users'')->insertGetId(\r\n    [''email'' => ''john@example.com'', ''votes'' => 0]\r\n);\r\n```\r\n\r\n## Updates （改）##\r\n\r\n这也没什么好说的，改一行数据之前，请先用where指定它的唯一ID：\r\n\r\n```\r\nDB::table(''users'')\r\n            ->where(''id'', 1)\r\n            ->update([''votes'' => 1]);\r\n```\r\n\r\n###Increment / Decrement 递增/递减###\r\n这个不过是一个快速写法，把简单的加减运算写在 update里了：\r\n\r\n```\r\nDB::table(''users'')->increment(''votes'');\r\n\r\nDB::table(''users'')->increment(''votes'', 5);\r\n\r\nDB::table(''users'')->decrement(''votes'');\r\n\r\nDB::table(''users'')->decrement(''votes'', 5);\r\n\r\n```\r\n后面那个参数是步进值，不写的话默认为1；想想看这也挺方便的，在统计一些比如浏览量，一个文章被收藏，被喜欢的次数，一句话就ok。\r\n\r\n```\r\nDB::table(''users'')->increment(''votes'', 1, [''name'' => ''John'']);\r\n```\r\n官网还说了，除了递增/递减，你还可以增加其他字段一起更新掉。\r\n\r\n##Deletes（删）##\r\n\r\n```\r\nDB::table(''users'')->delete();\r\n```\r\n删除全部记录。\r\n\r\n```\r\nDB::table(''users'')->where(''votes'', ''<'', 100)->delete();\r\n```\r\n删除指定条件的记录；\r\n\r\n```\r\nDB::table(''users'')->truncate();\r\n```\r\n删表，意味着连表结构都删了，谨慎！\r\n\r\n\r\n##Pessimistic Locking （悲观锁定）##\r\n\r\n简单的来讲，悲观锁定和乐观锁定 是*数控库读写并发的控制机制*。\r\n\r\n很多人在操作同一条数据的时候，有可能会发生：\r\n\r\n**丢失更新**：一个事务的更新覆盖了其它事务的更新结果，就是所谓的更新丢失。例如：用户A把值从6改为2，用户B把值从2改为6，则用户A丢失了他的更新。\r\n\r\n**脏读**：当一个事务读取其它完成一半事务的记录时，就会发生脏读取。例如：用户A,B看到的值都是6，用户B把值改为2，用户A读到的值仍为6。\r\n\r\n###并发控制机制###\r\n**悲观锁**：假定会发生并发冲突，屏蔽一切可能违反数据完整性的操作。\r\n\r\n**乐观锁**：假设不会发生并发冲突，只在提交操作时检查是否违反数据完整性。 乐观锁不能解决脏读的问题。\r\n\r\n在实际生产环境里边,如果并发量不大且不允许脏读，可以使用悲观锁解决并发问题；但如果系统的并发非常大的话,悲观锁定会带来非常大的性能问题,所以我们就要选择乐观锁定的方法.\r\n\r\n###sharedLock()###\r\n\r\n```\r\nDB::table(''users'')->where(''votes'', ''>'', 100)->sharedLock()->get();\r\n```\r\n使用了sharedLock()后，在你没有get()之前，`where(''votes'', ''>'', 100)`选出来的记录都不能被其他请求修改。\r\n\r\n\r\n###lockForUpdate()###\r\n\r\n```\r\nDB::table(''users'')->where(''votes'', ''>'', 100)->lockForUpdate()->get();\r\n```\r\n\r\n你也可以用这个lockForUpdate()这个方法，这个方法不仅不让修改，连读都不让读（我只是看文档上说的，没实验过，谁知道请告诉我）。\r\n\r\n锁定的典型应用场景就是2个管理员，都在编辑一个文章，先编辑的管理员会锁定该文章，直到他更新完了，第二个管理员才能更新。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n            \r\n                                                                    \r\n                                        \r\n                    \r\n                    \r\n                            ', '2016-03-12 17:22:28', '2016-07-15 00:42:29', 29, 1, 1806, 5, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(69, 'Laravel 5.1 文档攻略 —— 数据库: Migrations 数据表设计/版本管理神器', '##简介##\r\nMigrations 这个东西太好了，用它来设计数据表，并做数据库版本管理。配合后面一节要讲的数据库填充，对于数据这一块，你将拥有无比的信心。\r\n\r\n很多新手觉得这一块很麻烦，不知道有什么用，你需要的是一点点耐心，记得每次都用这个工具生成数据表，不要一半用migration，一般手动生成，慢慢的，你会发现这个工具无比好用。\r\n\r\n##生成migration模板\r\n\r\n用artisan命令来生成一个migration模板，用来在数据库中创建一个表：\r\n\r\n```\r\nphp artisan make:migration create_posts_table\r\n```\r\n这样，就会在`database/migrations` 这个位置创建一个模板文件，里面有两个方法，`up()` 和 `down()`;\r\n\r\n如果你这样写：\r\n\r\n```\r\nphp artisan make:migration create_posts_table --create=posts\r\n```\r\n你会发现生成的模板多了一些东西：\r\n\r\n```\r\nuse Illuminate\\Database\\Schema\\Blueprint;\r\nuse Illuminate\\Database\\Migrations\\Migration;\r\n\r\nclass CreatePostsTable extends Migration\r\n{\r\n    \r\n    public function up()\r\n    {\r\n        Schema::create(''posts'', function (Blueprint $table) {\r\n            $table->increments(''id'');\r\n            $table->timestamps();\r\n        });\r\n    }\r\n\r\n   \r\n    public function down()\r\n    {\r\n        Schema::drop(''posts'');\r\n    }\r\n}\r\n```\r\n\r\n这个时候就就多了Schema这个类，这就是用来设计数据表的工具；它预备给你3个字段，一个是 `$table->increments(''id'');`,这个将生成自增ID，`$table->timestamps();` 这个将生成`created_at` 和 `updated_at` 两个时间戳字段。  除了这3个常见字段，其他字段你接着后面写就好了。\r\n在`down()`这个方法里，主要是用来回滚数据库的。\r\n\r\n\r\n##生成数据表##\r\nSchema设计好了后，接下来就真的要在数据库中生成表了，输入命令:\r\n\r\n```\r\nphp artisan migrate\r\n```\r\n\r\n###其他修改migration的命令###\r\n生成模板时，记住`--create=`这个参数一般带上，如果你已经生成一个数据表，要在这张表增加一个字段怎么办？：\r\n\r\n```\r\nphp artisan make:migration add_votes_to_users_table --table=users\r\n```\r\n\r\n这样会新建一个migration模板，这个模板里写入新增的字段，运行`php artisan migrate`就会把这个新增的字段添加至 指定的表中。\r\n\r\n其实我喜欢的方法是这样写的：\r\n\r\n```\r\nphp artisan make:model Post --migration\r\n\r\n```\r\n这样在建立模型的时候，同时也生成了一个migration模板；\r\n\r\n###强制migration###\r\n```\r\nphp artisan migrate --force\r\n```\r\n在运行`php artisan migrate`时，如果数据库有数据，系统会提示你是否要继续，以保护数据，如果你加个`--force`，就直接清数据生成表了。\r\n\r\n##数据库的回滚和重建##\r\n\r\n```\r\nphp artisan migrate:rollback\r\n```\r\n这个可以回滚上一次`php artisan migrate`的操作。\r\n\r\n```\r\nphp artisan migrate:reset\r\n```\r\n这个命令全部回滚。\r\n\r\n```\r\nphp artisan migrate:refresh\r\n\r\nphp artisan migrate:refresh --seed\r\n```\r\n前一个命令是全部回滚，然后再重建表；\r\n后一个命令是全部回滚，然后再重建表，然后再填充数据。（填充数据是需要脚本的，这个下一章讲）\r\n\r\n##定义字段##\r\n**定义字段，以及字段属性，还有索引字段**，请查阅官方文档，在此不再赘述。\r\n\r\n##一些数据库设计策略及方法##\r\n**判断Table / Column是否存在**\r\n\r\n```\r\nif (Schema::hasTable(''users'')) {\r\n    //\r\n}\r\n\r\nif (Schema::hasColumn(''users'', ''email'')) {\r\n    //\r\n}\r\n```\r\n**连接非默认数据库**\r\n```\r\nSchema::connection(''foo'')->create(''users'', function ($table) {\r\n    $table->increments(''id'');\r\n});\r\n```\r\n**更改数据库引擎类型**\r\n\r\n```\r\nSchema::create(''users'', function ($table) {\r\n    $table->engine = ''InnoDB'';\r\n\r\n    $table->increments(''id'');\r\n});\r\n```\r\n\r\n\r\n##重命名表和删除表##\r\n```\r\nSchema::rename($from, $to);\r\n```\r\n这是重命名表；\r\n\r\n```\r\nSchema::drop(''users'');\r\n\r\nSchema::dropIfExists(''users'');\r\n```\r\n这是删除表，当然你需要执行才会生效。\r\n\r\n\r\n##修改字段##\r\n###前置条件###\r\n设计字段需谨慎，改字段其实比较麻烦，你需要用composer安装一个依赖包：\r\n```\r\n"doctrine/dbal": "^2.5"\r\n```\r\n这个包会检测字段状态，并生成必要sql语句来完成修改；\r\n\r\n###修改字段属性###\r\n```\r\nSchema::table(''users'', function ($table) {\r\n    $table->string(''name'', 50)->change();\r\n});\r\n\r\nSchema::table(''users'', function ($table) {\r\n    $table->string(''name'', 50)->nullable()->change();\r\n});\r\n```\r\n前面是把字段长度从25修改到50，后面一个是把字段属性修改成nullable；\r\n\r\n###改字段名###\r\n\r\n```\r\nSchema::table(''users'', function ($table) {\r\n    $table->renameColumn(''from'', ''to'');\r\n});\r\n```\r\n\r\n###删除字段###\r\n```\r\nSchema::table(''users'', function ($table) {\r\n    $table->dropColumn(''votes'');\r\n});\r\n```\r\n```\r\nsers'', function ($table) {\r\n    $table->dropColumn([''votes'', ''avatar'', ''location'']);\r\n});\r\n```\r\n这是一次删除多个；\r\n\r\n\r\n##外键约束##\r\n外键约束就是定义主表和从表的完整性约束关系，应用场景最常见的是在删除一个主表项目的时候，会自动删除从表的内容。比如删除一个用户，会自动删除这个用户发表的文章。\r\n\r\n```\r\nSchema::table(''posts'', function ($table) {\r\n    $table->integer(''user_id'')->unsigned();\r\n\r\n    $table->foreign(''user_id'')->references(''id'')->on(''users'');\r\n});\r\n\r\n```\r\n这个是建立外键约束关系。\r\n\r\n```\r\n$table->foreign(''user_id'')\r\n      ->references(''id'')->on(''users'')\r\n      ->onDelete(''cascade'');\r\n```\r\n这个单独指定约束的行为，约束行为要么是删除，要么是更新。这里可以是`onDelete(）`和`onUpdate()`。\r\n注：其实外键约束的行为除了cascade还有多种，我还没进行过测试（没时间），对这块有研究的同学请邮件我。\r\n\r\n###解除外键约束###\r\n```\r\n$table->dropForeign(''posts_user_id_foreign'');\r\n```      \r\n\r\n\r\n', '2016-03-13 06:15:35', '2016-07-14 23:35:17', 29, 1, 1559, 0, 1, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(70, 'Laravel 5.1 文档攻略 —— 数据库填充（Seeding）', '##简介##\r\n数据填充（seeding）一般配合migration一起用，新手在使用migration时最怕的就是设计不好，操作不当数据丢失，而有了数据填充工具后，你会发现在开发阶段非常方便，一旦数据出了问题，一个命令所有数据都又回来了，而且可以一边设计表，一般填充数据，方便调试和测试。\r\n\r\n和migration一样，写数据填充是需要一定耐心的，请保持耐心，养成良好习惯。\r\n\r\n##编写填充类（seeder）##\r\n首先我们看看database目录，里面除了migrations,还有factories和seeds两个目录，seeds目录就是用来放置填充类的，里面已经放了一个默认的`DatabaseSeeder.php`,打开看看：\r\n\r\n```\r\nuse Illuminate\\Database\\Seeder;\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass DatabaseSeeder extends Seeder\r\n{\r\n    /**\r\n     * Run the database seeds.\r\n     *\r\n     * @return void\r\n     */\r\n    public function run()\r\n    {\r\n        Model::unguard();\r\n\r\n        // $this->call(UserTableSeeder::class);\r\n\r\n        Model::reguard();\r\n    }\r\n}\r\n\r\n```\r\n\r\n发现只有一个方法run(), 这个方法再稍后我们执行数据填充 artisan 命令的时候就会运行，我们看看里面怎么写：\r\n\r\n`Model::unguard(); Model::reguard();` 这两个方法一个放在最前面，一个放在最后，主要是用来解除模型的批量填充限制（记得Model的fillable限制吗？）而注释掉的一行`// $this->call(UserTableSeeder::class);`提示你可以引入其他seeder类，让它们顺序执行。比如，你可以这样：\r\n\r\n```\r\npublic function run()\r\n{\r\n    Model::unguard();\r\n\r\n    $this->call(UsersTableSeeder::class);\r\n    $this->call(PostsTableSeeder::class);\r\n    $this->call(CommentsTableSeeder::class);\r\n\r\n    Model::reguard();\r\n}\r\n```\r\n\r\n在DatabaseSeeder这个类中，你可以在`// $this->call(UserTableSeeder::class);`之后直接写数据填充的语句，不过为了代码整洁，我们还是新建一个UserTableSeeder类，让默认DatabaseSeeder类只是充当一个批处理工具吧。\r\n运行：\r\n\r\n```\r\nphp artisan make:seeder UsersTableSeeder\r\n```\r\n\r\n我们发现seeds目录下面多了一个`UsersTableSeeder.php`文件：\r\n\r\n```\r\nuse Illuminate\\Database\\Seeder;\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass UsersTableSeeder extends Seeder\r\n{\r\n    \r\n    public function run()\r\n    {\r\n        DB::table(''users'')->insert([\r\n            ''name'' => str_random(10),\r\n            ''email'' => str_random(10).''@gmail.com'',\r\n            ''password'' => bcrypt(''secret''),\r\n        ]);\r\n    }\r\n}\r\n```\r\n\r\n用DQB插入了一行数据（首先你得用migration工具生成users这张表），别忘了在DatabaseSeeder中用call方法引入UsersTableSeeder哦。\r\n\r\n##执行数据填充命令##\r\n\r\n```\r\nphp artisan db:seed\r\n```\r\n这样就会运行DatabaseSeeder run（）方法，所有数据都被写入数据了。\r\n\r\n```\r\nphp artisan db:seed --class=UsersTableSeeder\r\n```\r\n这个可以单独指定seeder来填充，而不是填充所有；\r\n\r\n```\r\nphp artisan migrate:refresh --seed\r\n```\r\n\r\n**这个命令最为强大，也最常用。意思是重新建表，然后填充数据。\r\n**\r\n\r\n##使用Model Factories填充##\r\n\r\n一行一行填充数据显然太慢了，我们得使用更高级的方法来批量填充。\r\n\r\n我们来看官网说的一个写法:\r\n\r\n```\r\npublic function run()\r\n{\r\n    factory(App\\User::class, 50)->create()->each(function($u) {\r\n        $u->posts()->save(factory(App\\Post::class)->make());\r\n    });\r\n}\r\n```\r\n翻译一下，这句话是说创建50个用户，然后每个用户发表一篇文章，让用户和文章自动关联。\r\n\r\n在seeder这边我们看到是非常高效的，但是这个用户怎么生成？这个文章又是怎么生成的？ 这就需要预先定义 Model Factories（模型工厂）了。\r\n\r\n\r\n## 定义Model Factories（模型工厂）##\r\n\r\n我们打开`database/factories/ModelFactory.php`这个文件，这里面就是定义模型工厂的地方:\r\n\r\n```\r\n$factory->define(App\\User::class, function (Faker\\Generator $faker) { \r\nreturn [ \r\n			''name'' => $faker->name, \r\n			''email'' => $faker->email, \r\n			''password'' => bcrypt(str_random(10)), 			''remember_token'' => str_random(10), \r\n		 ]; \r\n			\r\n});\r\n```\r\n\r\n注意define这个方法，指定一个模型，然后把它字段全部拉出来，填上想要生成的数据， 因为这个定义好的模型需要用来生成多个记录，所以填充的最好是随机数据，不然生成的记录全是一模一样的。\r\n\r\n为了生成随机数据，laravel引入了一个Faker类，这个类挺好用的，不过数据都是英文的，我一直想把它改成中文的，但是苦恼于没时间。\r\n\r\n当然搞个数据池还是有很多办法的，你可以用数据库，json文件，xml文件，甚至是配置文件来生成。\r\n\r\n**多个模型样式**\r\n\r\n上面基于User模型生成了一个填充样式，那如果需要根据这个模型生成多个不同的填充样式怎么办？\r\n\r\n起个别名就行了:\r\n\r\n```\r\n$factory->defineAs(App\\User::class, ''admin'', function ($faker) {\r\n    return [\r\n        ''name'' => $faker->name,\r\n        ''email'' => $faker->email,\r\n        ''password'' => str_random(10),\r\n        ''remember_token'' => str_random(10),\r\n        ''admin'' => true,\r\n    ];\r\n});\r\n```\r\n\r\n你看，一个是方法改成了`defineAs`,另一个是后面加了个参数`''admin''`, 这个就是别名。 回头使用这个填充样式的时候，带上这边别名就行了。\r\n\r\n另外，如果已经有了一个基准的填充样式（没有起别名的），那么我要生成其他样式，还要把原来的字段全部复制一遍，太麻烦了，官网提供了一种方法：\r\n\r\n```\r\n$factory->defineAs(App\\User::class, ''admin'', function ($faker) use ($factory) {\r\n    $user = $factory->raw(App\\User::class);\r\n\r\n    return array_merge($user, [''admin'' => true]);\r\n});\r\n```\r\n先用`row`方法把基准样式的字段取出来，然后再用`array_merge`将需要新定义的内容覆盖到原来的字段上。\r\n这样是不是快多了，Laravel欧巴你真是一个暖男，想得太周到体贴了。\r\n\r\n##使用Model Factories（详细解释）##\r\n\r\n前面我们已经在seeder里演示过一小段代码怎么使用model factory, 现在让我们来回顾一下：\r\n\r\n```\r\npublic function run()\r\n{\r\n    factory(App\\User::class, 50)->create()->each(function($u) {\r\n        $u->posts()->save(factory(App\\Post::class)->make());\r\n    });\r\n}\r\n```\r\n看`factory(App\\Post::class)->make()`这里，`make()`这个方法可以生成一个模型对象，再看`factory(App\\User::class, 50)->create()`，`create()`这个方法不得了了，可以写入数据库，将数据持久化。不但搞了对象，还有了结果生了娃。\r\n\r\n\r\nmake()和create()就是最基本2种使用model factory的方法，一个是生成对象，一个是写数据库。\r\n\r\n###更多用法###\r\n\r\n**临时改下数据**\r\n\r\n```\r\n$user = factory(App\\User::class)->make([\r\n    ''name'' => ''Abigail'',\r\n   ]);\r\n```\r\nmake里加个数组参数可以临时改下数据；\r\n\r\n\r\n**生成多个模型对象**\r\n\r\n```\r\n// 生成3个 App\\User 对象...\r\n$users = factory(App\\User::class, 3)->make();\r\n\r\n// 生成1个 an App\\User "admin" 对象...\r\n$user = factory(App\\User::class, ''admin'')->make();\r\n\r\n// 生成3个 App\\User "admin" 对象...\r\n$users = factory(App\\User::class, ''admin'', 3)->make();\r\n\r\n// 持久化3个 App\\User "admin" 对象...\r\n$users = factory(App\\User::class, ''admin'', 3)->create();\r\n\r\n```\r\n\r\n**添加模型间的关系**\r\n\r\n```\r\n$users = factory(App\\User::class, 3)\r\n           ->create()\r\n           ->each(function($u) {\r\n                $u->posts()->save(factory(App\\Post::class)->make());\r\n            });\r\n```\r\n\r\n就是在生成了若干个User对象的数据记录后，再用遍历把文章对象绑定上去。（前提是已经建立好模型关系）\r\n\r\n**用闭包直接写user_id**\r\n\r\n当然，如果你不喜欢玩Model，也可以直接写user_id;\r\n```\r\n$factory->define(App\\Post::class, function ($faker) {\r\n    return [\r\n        ''title'' => $faker->title,\r\n        ''content'' => $faker->paragraph,\r\n        ''user_id'' => function () {\r\n            return factory(App\\User::class)->create()->id;\r\n        }\r\n    ];\r\n});\r\n```  \r\n方法很明显，就是用闭包先生成一个User记录，然后把它的id 返回出来。\r\n\r\n下面是更高级的用法，我解释一下就好：\r\n\r\n```\r\n$factory->define(App\\Post::class, function ($faker) {\r\n    return [\r\n        ''title'' => $faker->title,\r\n        ''content'' => $faker->paragraph,\r\n        ''user_id'' => function () {\r\n            return factory(App\\User::class)->create()->id;\r\n        },\r\n        ''user_type'' => function (array $post) {\r\n            return App\\User::find($post[''user_id''])->type;\r\n        }\r\n    ];\r\n});\r\n```\r\n`array $post` 就是你现在正在制造的 Post对象，通过`$post[''user_id''] ` 上面生成的用户记录找到，然后把用户记录的`user_type`字段写到Post对象中，这样User和Post里面就同步了`user_type`这个字段。       \r\n\r\n   \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2016-03-17 19:15:55', '2016-07-15 00:37:24', 29, 1, 1081, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(71, 'Laravel 5.1 文档攻略 —— Eloquent Collection', '##简介##\r\n像all()和get(),还有一些处理模型关系这种会返回多条数据的方法，在Eloquent里面会返回一个collection对象集合（对象装在对象里），而不是像DQB的数组结果集合（对象装在数组里）。Collection其实前面已经讲过了，它是在数据查询出来后，提供了一系列处理数据的方法，非常强大实用。\r\n\r\n首先，所有的collection都可以遍历：\r\n\r\n```\r\n$users = App\\User::where(''active'', 1)->get();\r\n\r\nforeach ($users as $user) {\r\n    echo $user->name;\r\n}\r\n```\r\n\r\n但是，collection的能力远远不止于此，非常强大，例如：\r\n\r\n```\r\n\r\n$users = App\\User::all();\r\n\r\n$names = $users->reject(function ($user) {\r\n    return $user->active === false;\r\n})\r\n->map(function ($user) {\r\n    return $user->name;\r\n});\r\n\r\n```\r\n\r\n这段代码把所有非激活状态的用户去除，并把剩余用户的名字列出来；\r\n\r\n##Collection 方法##\r\n\r\n请参考官网。\r\n\r\n##在模型中自定义Collection##\r\n\r\n主要方法是覆盖`newCollection()`方法：\r\n\r\n```\r\nnamespace App;\r\n\r\nuse App\\CustomCollection;\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    \r\n    public function newCollection(array $models = [])\r\n    {\r\n        return new CustomCollection($models);\r\n    }\r\n}\r\n\r\n````\r\n\r\nCustomCollection()就是你自定义的一个类；在里面你可以组织返回collection的内容；\r\n\r\n目前这个方法只是对Usermodel适用，如果你想对所有适用，可以把覆盖方法放到一个所有模型都继承的基类中去。\r\n\r\n', '2016-03-18 23:59:07', '2016-07-15 00:53:44', 29, 1, 956, 0, 2, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL);
INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `category_id`, `views`, `comments`, `likes`, `collection_id`, `isext`, `seo_keywords`, `seo_description`, `deleted_at`) VALUES
(72, 'Laravel 5.1 文档攻略 ——  Eloquent: 读取器和修饰器', '##简介##\r\n这一章其实很简单，Model的属性不是和数据表的字段一一对应吗？\r\n\r\n那么在存储和呈现数据的时候，我们有时会需要预先对数据一些处理。比如为了保密，我们可以利用`Laravel encrypter `在数据库里存加密的数据，别人拿去也没用，我们可以把一段解密程序放在model里，只有通过model里的解密程序才能把数据解密并呈现出来；\r\n\r\n除了可以改模型的属性值，Eloquent还可以改属性（字段）的数据类型。\r\n\r\n\r\n##读取器和修饰器(Accessors & Mutators)##\r\n\r\n一看到这两个字，马上高大尚了，Accessors & Mutators 也就是 Getter 和 Setter, 是数据存储前后的一些预处理方法。这一般是Java，C#这些"高级"的语言说法，Taylor把它用在屌丝PHP这里了，然而并无违和感。\r\n\r\n###读取器###\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n\r\n\r\n    public function getFirstNameAttribute($value)\r\n    {\r\n        return ucfirst($value);\r\n    }\r\n}\r\n```\r\n既然是get，就是在从数据库读数据的时候对数据进行修改；\r\n\r\n注意`getFirstNameAttribute`这个写法，这是个魔术方法，FirstName是你的字段名，需要用驼峰命名法；\r\n\r\n方法内你就可以对字段值（属性值）进行处理；\r\n\r\n例子是把首字母转化为大写了。\r\n\r\n```\r\n$user = App\\User::find(1);\r\n\r\n$firstName = $user->first_name;\r\n```\r\n回头你在使用属性的时候，发现first_name的值首字母自动变成大写了。\r\n\r\n###修饰器###\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n   \r\n    public function setFirstNameAttribute($value)\r\n    {\r\n        $this->attributes[''first_name''] = strtolower($value);\r\n    }\r\n}\r\n```\r\n\r\n既然是set方法，那么肯定是写入数据之前对数据进行处理；\r\n\r\n上面这个例子是把名字全变成小写字母存入数据库（包括对象的属性也会自动转换为小写）。\r\n\r\n##日期修饰器（Mutators）##\r\n\r\nEloquent的模型会自动将日期类型字段进行修饰处理，例如默认的`created_at`和`updated_at`字段，在模型里，它们会自动转换成为Carbon类的对象，Carbon类里有很多用来处理时间方法。\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n      protected $dates = [''created_at'', ''updated_at'', ''deleted_at''];\r\n}\r\n```\r\n\r\n这里就指定了那些字段是属于日期类型的字段。\r\n\r\n在模型中指定为日期类型的字段后，你可以使用 UNIX 时间戳， date string (Y-m-d)格式，date-time string和Carbon类对象等方式给该字段赋值：\r\n\r\n```\r\n$user = App\\User::find(1);\r\n\r\n$user->deleted_at = Carbon::now();\r\n\r\n$user->save();\r\n\r\n```\r\n\r\n下面说一个比较特殊的点：\r\n\r\n```\r\n$user = App\\User::find(1);\r\n\r\nreturn $user->created_at->getTimestamp();\r\n```\r\n\r\n假设你打印`$user`,你会发现它大概是这样的：\r\n```\r\nApp\\Models\\User {#1270\r\n     id: 8,\r\n     name: "woody",\r\n     email: "72727921@qq.com",\r\n     active: 1,\r\n     created_at: "2015-08-05 07:27:09",\r\n     updated_at: "2015-09-16 01:34:36",\r\n   \r\n   }\r\n```   \r\n但是如果你打印`$user->created_at`, 你会发现它被自动转哈为Carbon对象：\r\n\r\n```\r\nCarbon\\Carbon {#1267\r\n     +"date": "2015-08-05 07:27:09.000000",\r\n     +"timezone_type": 3,\r\n     +"timezone": "UTC",\r\n   }\r\n```\r\n\r\n所以后面可以接Carbon的各种方法。但是，如果你在blade视图中直接使用`{{$user->created_at}}`, 出来将是字符串类型。\r\n\r\n默认的日期存储格式是`Y-m-d H:i:s`, 你可以改model的`$dateFormat`属性来改变格式：\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Flight extends Model\r\n{\r\n    \r\n    protected $dateFormat = ''U'';\r\n}\r\n```\r\n注意，这个格式不仅将影响日期在数据库中的存储格式，还将影响模型在转换成为数组或json时，日期字段的保存格式。\r\n\r\n\r\n##属性数值类型转换##\r\n\r\n从数据读出来的值，有时候你不仅希望改变它的值，还想改变它的数值类型。当然，你可以用accessor实现这一点，但laravel 提供了更直接的方法$cast。解释一下cast的语义，cast不是改变，而是暂时转换。\r\n假设is_admin是以0，1整数的形式在数据库中存储的，\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    \r\n    protected $casts = [\r\n        ''is_admin'' => ''boolean'',\r\n    ];\r\n}\r\n```\r\n\r\n那么，这样设置过后读出来将是布尔值；\r\n\r\n###数组类型转换###\r\n有一个应用场景很常见，就是有些字段我们是以json序列化格式存入数据的，比如一组图片，一批选项值；\r\n这个时候我们用这些值的时候要反序列化，每次都要处理很麻烦，这里我们可以用:\r\n\r\n```\r\n<?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    protected $casts = [\r\n        ''options'' => ''array'',\r\n    ];\r\n}\r\n```\r\n这样，对于options这个字段，每次读出来的就是一个数组了，方便在PHP里使用。\r\n\r\n```\r\n$user = App\\User::find(1);\r\n\r\n$options = $user->options;\r\n\r\n$options[''key''] = ''value'';\r\n\r\n$user->options = $options;\r\n\r\n$user->save();\r\n\r\n```\r\n\r\n看到没有，取出来当数组使用，存回去的时候数组存回去，存到数据库里面自动序列化变string。\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2016-03-21 08:14:55', '2016-07-15 00:04:27', 29, 1, 1241, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(73, 'Laravel 5.1 文档攻略 —— Eloquent:模型对象序列化', '在写api的时候，数据一般是以json格式进行传输的，没有对象可以直接使用。这个时候，对数据的序列化转换就很重要，Eloquent提供了很方便的方法和约定，不仅可以转换，还可以控制里面的键值。\r\n\r\n\r\n##基本用法##\r\n###将模型转化为数组###\r\n\r\n```\r\n$user = App\\User::with(''roles'')->first();\r\n\r\nreturn $user->toArray();\r\n\r\n```\r\n把一个模型转化成数组；\r\n\r\n```\r\n$users = App\\User::all();\r\n\r\nreturn $users->toArray();\r\n```\r\n把collection转化为数组；\r\n\r\n\r\n###将模型转化为Json###\r\n\r\n```\r\n$user = App\\User::find(1);\r\n\r\nreturn $user->toJson();\r\n```\r\n这个是手动函数；\r\n\r\n如果你直接返回一个模型或collection，那么系统会自动把它cast成json：\r\n\r\n```\r\nRoute::get(''users'', function () {\r\n    return App\\User::all();\r\n});\r\n```\r\n这个你可以用路由测试一下结果；\r\n\r\n\r\n##隐藏Json中的一些属性##\r\n像password这种字段，其实是不希望在json中出现给别人看到的，那么可以把它隐藏\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n   \r\n\r\n    protected $hidden = [''password''];\r\n}\r\n```\r\n这样写是黑名单；\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n   \r\n    protected $visible = [''first_name'', ''last_name''];\r\n}\r\n```\r\n这样写是白名单；\r\n\r\n文档用红字写到：\r\n\r\n```\r\nNote: When hiding relationships, use the relationship''s method name, not its dynamic property name.\r\n```\r\n意思是说，由于有些表是关联查询出来的，你可以隐藏这些表，但是填上面过滤字段的时候，不要填关联表里的字段，而是填模型表间关系的方法，这样就可以把整个表隐藏掉，如果你要隐藏关联表里的部分字段，那么到关联表里去隐藏。(本来想写个例子，老婆叫我去吃早饭了，就先不写了。）\r\n\r\n\r\n##增加Json中的一些属性##\r\n\r\n刚才说了去掉属性，显然有时候你也需要手动增加一些属性：\r\n\r\n第一步，增加一个Accessor：\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    \r\n\r\n    public function getIsAdminAttribute()\r\n    {\r\n        //return $this->attributes[''admin''] == ''yes'';\r\n        //官网是这样写的，何必增加理解难度，让人混淆呢，真是的；\r\n        //我简写成这样了\r\n         return ''yes'';\r\n    }\r\n}\r\n```\r\n第二步，把增加的字段添加到$appends这个数组里：\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    \r\n\r\n    public function getIsAdminAttribute()\r\n    {\r\n        //return $this->attributes[''admin''] == ''yes'';\r\n        //官网是这样写的，何必增加理解难度，让人混淆呢，真是的；\r\n        //我简写成这样了\r\n         return ''yes'';\r\n    }\r\n    \r\n     protected $appends = [''is_admin''];\r\n\r\n\r\n}\r\n\r\n```\r\n\r\n好，json里就多了一个`is_admin: "yes"`\r\n\r\n', '2016-03-21 17:01:37', '2016-07-15 00:05:36', 29, 1, 886, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(74, 'Laravel 5.1 文档攻略 —— Eloquent:模型关系', '##简介##\r\n其实大家都知道，数据表之间都是可以关联的，前面讲过了，Eloquent ORM是数据模型操作代替表操作，那么表的关联查询，在Eloquent这里也就是模型间的关联查询，这就是本章的主要内容；\r\n\r\nEloquent一个支持以下6种表间关系：\r\n\r\n* One To One（一对一）\r\n* One To Many（一对多）\r\n* Many To Many（多对多）\r\n* Has Many Through（跨表一对多）\r\n* Polymorphic Relations（belongsTo多态）\r\n* Many To Many Polymorphic Relations（belongsToMany多态）\r\n \r\n\r\n前三个关系是什么就不多解释了（请自行百度），这个地方需要很多耐心，努力让自己习惯对象思维，暂时先不要用sql，练一段时间就会发现非常好用；\r\n\r\n当然，也有人吐槽Eloquent由于过于强大，造成每次加载都带一大堆东西，影响效率（实际没啥影响，不服的拿数据跟我说），但是在代码的编写效率，可读性，可维护性上可以说是质的飞跃，所以还是强烈建议优先使用。\r\n\r\n这一章我是学得最早，但是教程是写的最晚的，因为各种关系比较复杂，好在我是做产品出身，应该可以把复杂的事情解释清楚，下面就让我们来认识一下这个星球上最强大的ORM：Eloquent\r\n\r\n##基本概念##\r\n先看看是怎么使用的吧：\r\n\r\n```\r\n$user->posts()->where(''active'', 1)->get();\r\n```\r\n\r\n这个就是通过`$user`对象查出他一共发布了多少篇文章（状态为已发布的）。\r\n\r\n我们看到`posts()`在这里是 `$user` 的一个方法，所以要使用关联查询，得先在`$user`模型里定义关系（方法）；\r\n\r\n\r\n##一对一##\r\n\r\n![\\oneToOne.png][0.517175262213531]\r\n\r\n\r\n从这张图中，我们可以看到要使用Eloquent 模型关系，第一步要在模型里定义模型关系，第二步数据库要准备正确的表；第三部分使用 查询的方法，第四部分是使用绑定和解除绑定的方法，我们后续的模型关系都按照这个流程理解和解释；\r\n\r\n***要点：反复观察图！***\r\n\r\n###定义模型###\r\n\r\n**定义User模型**\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    \r\n    public function phone()\r\n    {\r\n        return $this->hasOne(''App\\Phone'');\r\n    }\r\n}\r\n```\r\n**定义Phone模型**\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Phone extends Model\r\n{\r\n\r\n    public function user()\r\n    {\r\n        return $this->belongsTo(''App\\User'');\r\n    }\r\n}\r\n```\r\n\r\n注意：定义模型的时候方法名注意单复数，“一”就用单数，“多”就用复数，这样不容易混淆搞错。`hasOne（）` 类似这个关系绑定方法有很多，需要在使用中慢慢熟悉，注意观察。\r\n\r\n###数据表###\r\n\r\n主要是注意，外键和中间表这些东西，本例中没有中间表；\r\n\r\n###关系查询###\r\n\r\n**模型关系方法查询**\r\n\r\n```\r\n$user->posts()->where(''active'', 1)->get();\r\n```\r\n\r\n这就是模型方法查询，`$user->posts()` 这里查出来是个DQB对象，后面可以接各种数据库查询方法；\r\n\r\n**动态属性查询**\r\n\r\n```\r\n$user->posts;\r\n\r\n```\r\n你可以把关系当做属性用，直接查出来一个collection集；缺点是后面不能跟DQB方法了。\r\n\r\n这两种方法都很常用，酌情使用；（下同，不再解释）\r\n\r\n###关系绑定和解除###\r\n\r\n通用的绑定方法就是save(); \r\n\r\n通用的解除方法，对于belongsTo的关系是dissociate(); 对于belongsToMany的关系是detach();\r\n\r\n还有一些特定的绑定解除方法，我们再单独的关系模型中讲；\r\n\r\n\r\n##一对多##\r\n\r\n![\\OneToMany.png][0.944608217494364]\r\n\r\n###反绑###\r\n如果你要通过belongsTo关系绑定，可以用associate()来绑定，最后要save()一下，如图；\r\n\r\n\r\n##多对多##\r\n\r\n![\\manyToMany.png][0.3595625691092723]\r\n\r\n由于belongsTo换成了belongsToMany, 所以对应的绑定方法换成了attach()和detach();注意这里面填对象ID，可以用数组形式批量绑定；\r\n\r\nsave()方法仍然适用与关系绑定；\r\n\r\n###对中间表的操作###\r\n\r\n由于多对多关系多了一张中间表，Eloquent除了默认对这里面的外键进行操作以外，还可以对中间表的其他字段进行操作，看示例：\r\n\r\n```\r\nApp\\User::find(1)->roles()->save($role, [''expires'' => $expires]);\r\n```\r\n\r\n```\r\n$user->roles()->attach($roleId, [''expires'' => $expires]);\r\n```\r\n\r\n```\r\n$user->roles()->attach([1 => [''expires'' => $expires], 2, 3]);\r\n```\r\n\r\n```\r\n$user->roles()->sync([1 => [''expires'' => true], 2, 3]);\r\n```\r\n\r\n###sync()方法###\r\nsync就是同步，意思是说中间表会同步成sync()里面参数一样，没有写在参数里的都会移除，因此可以用来解除绑定；\r\n\r\n\r\n##Has Many Through（跨表一对多）##\r\n![\\hasManyThrough.png][0.3360897856273106]\r\n\r\n其实这只是一种快速查询方法，看图，本来可以先通过Conuntry查User，然后通过User查Post，现在你可以通过Country直接查Post；\r\n\r\n通常Country和User，User和Post的表间关系都是事先建立好的，这个时候你再使用hasManyThrough;\r\n\r\n\r\n\r\n##Polymorphic Relations（belongsTo多态）##\r\n\r\n![\\morphTo.png][0.4521743810840484]\r\n\r\n本来belongsTo只能属于一种对象的，就像女朋友只能属于男朋友；现在好了，女朋友不仅可以属于男朋友，还可以属于干爹了。\r\n\r\n开玩笑的，最常见的应用还是图片，可以属于多种模型，看图；\r\n\r\n我们发现这里的动词变成了morphTo(), morphMany();\r\n\r\n先上一小段英语课，提升一下语感： \r\n\r\nmorph这个词的意思是改变形态，简称变态；这个和变形金刚的那个transform是不一样的，那个主要是改变形状；\r\n\r\nmorphTo(), morphMany(); 其实就是belongsTo() 和 hasMany() 多态形式，多态就是不仅拥有男票，还有干爹，有点“变态”；\r\n\r\n###关于绑定和解绑###\r\n\r\nassociate()不适用用于morphTo()；所以只能单向的用save()绑定了；\r\n\r\n**关于解绑，dissociate()也不适用用于morphTo()；所以，只能把Photo实例删除！！删除了就没任何关系了（因为没有中间表）**\r\n\r\n感觉有点不是很自然的设计，不过目前调查下来情况就是这样；\r\n\r\n##Many To Many Polymorphic Relations（belongsToMany多态）##\r\n\r\n![\\morphToMany.png][0.577058420855338]\r\n\r\n这个最典型的应用就是标签了，标签要涉及多对多的关系，还涉及对应不同类型的模型的问题，所以就是belongsToMany+多态；\r\n\r\n\r\n看图，可绑定，可解绑；\r\n\r\n\r\n##查询有关联关系的模型##\r\n这里查的不是对方，而是自己的模型中，有多少和对方发生过关系的记录；\r\n\r\n```\r\n$posts = App\\Post::has(''comments'')->get();\r\n```\r\n\r\n比如这里就是查所有文章中有评论的那些文章有多少。\r\n\r\n```\r\n$posts = Post::has(''comments'', ''>='', 3)->get();\r\n\r\n```\r\n这是查所有文章中有评论的，并且评论数大于等于3那些文章有多少。\r\n\r\n```\r\n$posts = Post::has(''comments.votes'')->get();\r\n```\r\n嵌套查询，查询至少有1条评论，并且评论是被顶过或踩过的文章；\r\n\r\n```\r\n$posts = Post::whereHas(''comments'', function ($query) {\r\n    $query->where(''content'', ''like'', ''foo%'');\r\n})->get();\r\n```\r\n更强大的反查，对于关联模型，可以设置更多查询条件；\r\n\r\n**提示：这一小节极其有用，所以我把它单独拎出来了；**\r\n\r\n\r\n##Eager Loading（预加载）##\r\n\r\n这个问题很简单，看个实例你就懂了：\r\n\r\n```\r\n$books = App\\Book::all();\r\n\r\nforeach ($books as $book) {\r\n    echo $book->author->name;\r\n}\r\n\r\n```\r\n\r\n万一books有一万本，那么循环就要1万次，每次循环，因为用了关联查询`$book->author->name;`,都会读数据库一次，意味着至少读数据库一万次，数据库哭了。\r\n\r\n\r\nEager Loading 就是让数据库读取发生在循环之前：\r\n\r\n```\r\n$books = App\\Book::with(''author'')->get();\r\n\r\nforeach ($books as $book) {\r\n    echo $book->author->name;\r\n}\r\n\r\n```\r\n\r\n看，加了个神奇的with()后，所有数据在foreach前都读出来了，后面循环的只是读出来的数据，一共查询数据库2次！！\r\n\r\n**Eager Loading可以极大的缓解数据库查询压力，是性能优化的重要手段！**\r\n\r\n**Eager Loading 多个关系**\r\n\r\n就是一次多加几张关联表而已；\r\n\r\n```\r\n$books = App\\Book::with(''author'', ''publisher'')->get();\r\n```\r\n**嵌套 Eager Loading**\r\n\r\n```\r\n$books = App\\Book::with(''author.contacts'')->get();\r\n```\r\n\r\n把书的作者读出来，顺便把作者的联系方式读出来。\r\n\r\n\r\n###有条件的 Eager Loading###\r\n\r\n上面说的是整张表整张表的读出来，太土豪了，其实有时候我们只需要表里的部分记录：\r\n\r\n```\r\n$users = App\\User::with([''posts'' => function ($query) {\r\n    $query->where(''title'', ''like'', ''%first%'');\r\n\r\n}])->get();\r\n```\r\n\r\n这中闭包的写法我们讲过多次，就是加个条件而已；\r\n\r\n\r\n###Lazy Eager Loading###\r\n\r\n这标题难道不是自相矛盾吗？又Lazy，又Eager？\r\n\r\n哦，原来是在lazy的流程里判断需不需要eager loading一下：\r\n\r\n```\r\n$books = App\\Book::all();\r\n\r\nif ($someCondition) {\r\n    $books->load(''author'', ''publisher'');\r\n}\r\n```\r\n\r\n```\r\n$books->load([''author'' => function ($query) {\r\n    $query->orderBy(''published_date'', ''asc'');\r\n}]);\r\n```\r\n\r\n注意这个load()，这是对collection用的；\r\n\r\n\r\n##跨模型更新时间戳##\r\n\r\n简单的来说，就是一条评论更新的时候，顺便把文章的''updated_at''字段也更新了；\r\n\r\n```\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Comment extends Model\r\n{\r\n    /**\r\n     * All of the relationships to be touched.\r\n     *\r\n     * @var array\r\n     */\r\n    protected $touches = [''post''];\r\n\r\n    /**\r\n     * Get the post that the comment belongs to.\r\n     */\r\n    public function post()\r\n    {\r\n        return $this->belongsTo(''App\\Post'');\r\n    }\r\n}\r\n```\r\n\r\n设置$touches这个属性；\r\n\r\n然后你更新Comment的时候，就会把Post的''updated_at''字段也更新了；\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n  [0.517175262213531]: http://laravelbase.com/uploads/editor/061f8c6fb1435f745be2f401842f97fa.png\r\n\r\n  [0.944608217494364]: http://laravelbase.com/uploads/editor/fa39299e112f5a84d4f2f958d92bba9f.png\r\n\r\n  [0.3595625691092723]: http://laravelbase.com/uploads/editor/8a217629b8fb0a8b74c134e559c44543.png\r\n\r\n  [0.3360897856273106]: http://laravelbase.com/uploads/editor/cf0a7e58c6a2f612318d4195323c9c5b.png\r\n\r\n  [0.4521743810840484]: http://laravelbase.com/uploads/editor/3cc7da5f55a2defda87a4d57e6e6c255.png\r\n\r\n  [0.577058420855338]: http://laravelbase.com/uploads/editor/2dddc0fa92a6571ab0cdba4a0c0dcf00.png', '2016-03-24 01:53:11', '2016-07-15 00:53:48', 29, 1, 2235, 4, 2, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(75, 'Laravel 5.1 文档攻略 —— Artisan CLI 命令行工具', '##简介##\r\n这个功能基于Symfony框架强大的Console组件开发，命令行工具在实际开发中很有用，特别是提高代码开发效率方面；\r\n\r\n现代化的框架一般都具备CLI命令行工具；\r\n\r\n也许你也经使用过`php artisan` 这个命令行工具了，查看所有系统预设的命令：\r\n\r\n```\r\nphp artisan list\r\n```\r\n想知道某条命令的使用方法,比如 migrate命令：\r\n\r\n```\r\nphp artisan help migrate\r\n```\r\n或\r\n\r\n```\r\nphp artisan  migrate -h\r\n\r\n```\r\n\r\n##编写自定义命令##\r\n\r\n除了系统自带的命令，真正强大的地方在于可以自定义命令；\r\n一般，自定义命令存放于`app/Console/Commands`，当然，你可以在任何地方放置命令文件，只要你在composer.json里将其自动加载；\r\n\r\n```\r\nphp artisan make:console SendEmails\r\n```\r\n这个命令将会生成以下文件：\r\n\r\n```\r\napp/Console/Commands/SendEmails.php\r\n```\r\n\r\n如果给上面的命令加个参数：\r\n\r\n```\r\nphp artisan make:console SendEmails --command=emails:send\r\n\r\n```\r\n`emails:send` 就是调用命令文件functions的artisan指令；\r\n\r\n##命令文件结构##\r\n\r\n```\r\n\r\nnamespace App\\Console\\Commands;\r\n\r\nuse App\\User;\r\nuse App\\DripEmailer;\r\nuse Illuminate\\Console\\Command;\r\n\r\nclass SendEmails extends Command\r\n{\r\n    /**\r\n     * The name and signature of the console command.\r\n     *\r\n     * @var string\r\n     */\r\n    protected $signature = ''email:send {user}'';\r\n\r\n    /**\r\n     * The console command description.\r\n     *\r\n     * @var string\r\n     */\r\n    protected $description = ''Send drip e-mails to a user'';\r\n\r\n    /**\r\n     * The drip e-mail service.\r\n     *\r\n     * @var DripEmailer\r\n     */\r\n    protected $drip;\r\n\r\n    /**\r\n     * Create a new command instance.\r\n     *\r\n     * @param  DripEmailer  $drip\r\n     * @return void\r\n     */\r\n    public function __construct(DripEmailer $drip)\r\n    {\r\n        parent::__construct();\r\n\r\n        $this->drip = $drip;\r\n    }\r\n\r\n    /**\r\n     * Execute the console command.\r\n     *\r\n     * @return mixed\r\n     */\r\n    public function handle()\r\n    {\r\n        $this->drip->send(User::find($this->argument(''user'')));\r\n    }\r\n}\r\n\r\n```\r\n一个`handle()`方法，另加两个属性：`$signature`和`$description`；\r\n\r\n`handle()`是处理命令执行的逻辑的地方；\r\n`$signature` 是artisan 命令名称，我们看到这里有个参数{user},后面会讲到；\r\n`$description` 是命令描述；\r\n\r\n\r\n##命令IO##\r\n###定义输入参数###\r\n\r\n```\r\nprotected $signature = ''email:send {user}'';\r\n```\r\n这里user 就是个必填参数，就像\r\n\r\n```\r\nphp artisan make:controller\r\n\r\n```\r\n\r\n如果你后面不填参数，就会报错；\r\n\r\n你可以吧user变成选填，或设定默认值：\r\n\r\n```\r\n// 变成选填...\r\nemail:send {user?}\r\n\r\n// 设定默认值...\r\nemail:send {user=foo}\r\n```\r\n\r\n###定义参数选项###\r\n\r\n\r\n举个例子：\r\n\r\n```\r\nphp artisan make:controller HomeController --resource\r\n\r\n```\r\n\r\n`--resource` 就是参数选项；\r\n\r\n\r\n定义参数选项的方法是：\r\n\r\n```\r\nprotected $signature = ''email:send {user} {--queue}'';\r\n\r\n```\r\n`--queue` 这个选项起到一个开关的作用；\r\n\r\n使用的时候，大概是这样：\r\n\r\n\r\n```\r\nphp artisan email:send 1 --queue\r\n```\r\n\r\n你可以指定这个选项必须传入一个参数：\r\n\r\n```\r\nprotected $signature = ''email:send {user} {--queue=}'';\r\n```\r\n\r\n例如像这样使用：\r\n\r\n```\r\nphp artisan email:send 1 --queue=default\r\n\r\n```\r\n\r\n你也可以在设计命令的时候为这个选项参数设定一个默认值：\r\n\r\n```\r\nemail:send {user} {--queue=default}\r\n\r\n```\r\n有时候这个选项，我们会有个简写形式，比如-help, 就经常写成-h,你可以像这样来指定简写形式:\r\n\r\n```\r\nemail:send {user} {--Q|queue}\r\n```\r\n\r\n**添加输入参数和选项描述**\r\n\r\n别人打-help的时候，总得看得到你这些命令都是什么意思啊，所以你可以添加一些描述：\r\n\r\n```\r\nprotected $signature = ''email:send\r\n                        {user : The ID of the user}\r\n                        {--queue= : Whether the job should be queued}'';\r\n                        \r\n```\r\n\r\n###获取输入参数信息（传参）###\r\n\r\n用户输入了参数和选项信息，你总得使用吧，在哪里使用呢？ 在handel()里：\r\n\r\n```\r\n\r\npublic function handle()\r\n{\r\n    //获取名字为user的参数的值\r\n    $userId = $this->argument(''user'');\r\n\r\n    //获取所有参数的键值，形式为数组\r\n    $arguments = $this->argument();\r\n    \r\n    // 获取名字为queue的选项的值\r\n	$queueName = $this->option(''queue'');\r\n\r\n	// 获取所有选项的键值，形式为数组\r\n	$options = $this->option();\r\n}\r\n\r\n```\r\n如果参数或选项不存在，上述方法将返回一个空值null;\r\n\r\n\r\n###在命令执行过程中提示用户输入参数###\r\n\r\n有时候，你需要在命令执行过程中提示用户输入参数，而不是直接返回执行结果：\r\n\r\n```\r\npublic function handle()\r\n{\r\n    $name = $this->ask(''What is your name?'');\r\n}\r\n```\r\n用`ask()`这个方法，这样，用户输入的内容就会返回到`$name` 中；\r\n\r\n如果你要求用户输入的内容不能明文显示，比如密码，那么可以这样：\r\n\r\n```\r\n$password = $this->secret(''What is the password?'');\r\n\r\n```\r\n`secret()`就可以让用户输入内容不可见；\r\n\r\n**请求用户确认**\r\n\r\n```\r\nif ($this->confirm(''Do you wish to continue? [y|N]'')) {\r\n    //\r\n}\r\n```\r\n`confirm()`这个方法是让用户选择yes或no，直接回车是no（false），按y回车是yes（true）；\r\n\r\n\r\n**让用户选择**\r\n\r\n```\r\n$name = $this->choice(''What is your name?'', [''Taylor'', ''Dayle''], false);\r\n```\r\n`choice()`让用户选择数组参数里定义的选项，如果没有选择，则返回false；\r\n\r\n```\r\n$name = $this->anticipate(''What is your name?'', [''Taylor'', ''Dayle'']);\r\n\r\n```\r\n在`anticipate()`里，`[''Taylor'', ''Dayle'']` 只是参考提示，用户可以不选，而填写自己的答案；\r\n\r\n\r\n##编写命令输出##\r\n\r\n输出命令有这些`line, info, comment, question 和 error `，这些命令输出内容的时候，会对内容加上不同的颜色以示区分；\r\n\r\n**info()**\r\n\r\n用于输出信息文字，文字颜色为绿色：\r\n\r\n```\r\npublic function handle()\r\n{\r\n    $this->info(''操作成功！'');\r\n}\r\n```\r\n\r\n**error()**\r\n\r\n用于输出错误提示，文字颜色为红色：\r\n\r\n```\r\npublic function handle()\r\n{\r\n    $this->error(''您的操作有误，请重试！'');\r\n}\r\n```\r\n\r\n**line()**\r\n\r\n用于输出普通信息，文字颜色为普通文字颜色：\r\n\r\n```\r\npublic function handle()\r\n{\r\n    $this->line(''以下是您查询结果'');\r\n}\r\n```\r\n\r\n###表格布局###\r\n\r\n```\r\n$headers = [''Name'', ''Email''];\r\n\r\n$users = App\\User::all([''name'', ''email''])->toArray();\r\n\r\n$this->table($headers, $users);\r\n```\r\n你需要准备一个数组，和一个表头信息，就可以让 这个数组按照表格的形式显示出来；\r\n\r\n\r\n###进度条###\r\n\r\n```\r\n$users = App\\User::all();\r\n\r\n$bar = $this->output->createProgressBar(count($users));\r\n\r\nforeach ($users as $user) {\r\n    $this->performTask($user);\r\n\r\n    $bar->advance();\r\n}\r\n\r\n$bar->finish();\r\n```\r\n\r\n先要创建一个进度条，创建的时候要告诉它一个数字，这个数字是定义一共有多少个步骤；\r\n\r\n然后在程序进行的过程中（上面是在循环过程中），要告诉创建的进度条对象进行步进（进度前进），上面的例子就是说，循环一次，前进一格；\r\n\r\n最后循环完了，别忘了把进度条这个对象销毁；\r\n\r\n更多高级用法，请参阅：[Symfony进度条文档](http://symfony.com/doc/2.7/components/console/helpers/progressbar.html)\r\n\r\n##注册命令##\r\n\r\n```\r\napp/Console/Kernel.php\r\n```\r\n注册地方在这个核心文件这里；\r\n\r\n在里面的$commands属性写入：\r\n\r\n```\r\nprotected $commands = [\r\n    Commands\\SendEmails::class\r\n];\r\n```\r\n\r\n这样就可以使用命令了。\r\n\r\n\r\n##在代码中调用artisan命令##\r\n\r\n```\r\nRoute::get(''/foo'', function () {\r\n    $exitCode = Artisan::call(''email:send'', [\r\n        ''user'' => 1, ''--queue'' => ''default''\r\n    ]);\r\n\r\n    //\r\n});\r\n```\r\n写得很清楚不是吗？\r\n\r\n你还可以队列执行artisan命令：\r\n\r\n```\r\nRoute::get(''/foo'', function () {\r\n    Artisan::queue(''email:send'', [\r\n        ''user'' => 1, ''--queue'' => ''default''\r\n    ]);\r\n\r\n    //\r\n});\r\n\r\n```\r\n\r\n如果选项或参数的值是布尔值，直接输入true或false:\r\n\r\n```\r\n$exitCode = Artisan::call(''migrate:refresh'', [\r\n    ''--force'' => true,\r\n]);\r\n```\r\n\r\n##在命令执行中调用其他artisan命令##\r\n\r\n```\r\npublic function handle()\r\n{\r\n    $this->call(''email:send'', [\r\n        ''user'' => 1, ''--queue'' => ''default''\r\n    ]);\r\n\r\n    //\r\n}\r\n```\r\n和在controller里调用artisan 命令是一样的，不过2个命令合到一块儿写，有时候你希望只保留一个命令的输出结果，而让另一个命令的输出结果不显示：\r\n\r\n```\r\n$this->callSilent(''email:send'', [\r\n    ''user'' => 1, ''--queue'' => ''default''\r\n]);\r\n```\r\n`callSilent()`就能让`''email:send''`这个命令静默执行。\r\n\r\n\r\n                        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2016-03-24 17:15:39', '2016-07-15 01:25:11', 29, 1, 1293, 0, 1, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(76, 'Laravel 5.1 文档攻略 —— 错误和日志', '##简介##\r\n\r\n这一章也是属于文档写得比较混乱的一章，所以我决定重新组织一下内容结构；\r\n\r\n##配置##\r\n\r\n###debug配置###\r\n我们都知道，开发环境应该把debug打开，生产环境应该把debug关闭；\r\n这个设置在`config/app.php`文件里，找到这一项：\r\n\r\n```\r\n''debug'' => env(''APP_DEBUG'', false),\r\n```\r\n优先配置.env的值，后面是默认值。 true把debug打开，false关闭；\r\n\r\n\r\n###log模式配置###\r\n同样在`config/app.php`文件里，找到：\r\n\r\n```\r\n ''log'' => ''single'',\r\n```\r\n\r\n这里一个有4个可用选项值：` "single", "daily", "syslog", "errorlog",` 他们分别是：\r\n\r\n* 单文件日志；\r\n* 每日一文件日志；\r\n* 系统日志；\r\n* 错误日志；\r\n\r\n##处理错误对象及报错信息##\r\n\r\n看`app\\Exceptions\\handler.php`这个文件，这是处理所有错误信息的关键文件：\r\n\r\n```\r\nnamespace App\\Exceptions;\r\n\r\nuse Exception;\r\nuse Symfony\\Component\\HttpKernel\\Exception\\HttpException;\r\nuse Illuminate\\Foundation\\Exceptions\\Handler as ExceptionHandler;\r\n\r\nclass Handler extends ExceptionHandler\r\n{\r\n    \r\n    protected $dontReport = [\r\n        HttpException::class,\r\n    ];\r\n\r\n    \r\n    public function report(Exception $e)\r\n    {\r\n        return parent::report($e);\r\n    }\r\n\r\n \r\n    public function render($request, Exception $e)\r\n    {\r\n        return parent::render($request, $e);\r\n    }\r\n}\r\n\r\n```\r\n\r\n一个属性，2个方法;\r\n\r\n**$dontReport**\r\n\r\n先来看`$dontReport`属性，意思是不要log的错误信息，这里面填了` HttpException::class`, 也就是说，404这种错误, 如果你在这里设置HttpException，laravel会触发，但不会记录的。\r\n\r\n你还可以添加更多不报告的错误类；\r\n\r\n\r\n**report()**\r\n\r\n这个只是把错误对象传递一下，传到基类`ExceptionHandler`中去，你也可以在这里面把错误类型发布到一些外部服务。\r\n\r\n不明白什么意思就跳过，这里不常用；\r\n\r\n\r\n**render()**\r\n\r\n`render()`是渲染错误视图的地方，我们主要的自定义逻辑写在这里；\r\n\r\n我们最常见的错误类型可能就是： \r\n\r\n```\r\nModelNotFoundException\r\n```\r\n![\\error.jpg][0.977441645200458]\r\n\r\n于是我们可以这样写：\r\n\r\n```\r\npublic function render($request, Exception $e)\r\n   {\r\n       switch($e){\r\n\r\n           case ($e instanceof ModelNotFoundException):\r\n\r\n               return response()->view(''errors.404'', [], 404);\r\n               break\r\n\r\n           default:\r\n\r\n               return parent::render($request, $e);\r\n\r\n       }\r\n   }\r\n   \r\n```\r\n\r\n这样遇到这个`ModelNotFoundException`错误类的时候，就会触发`''errors.404''`这个视图；\r\n\r\n##自定义错误类##\r\n\r\n首先，在`app\\Exceptions\\`里建立一个自定义类：\r\n\r\n```\r\n\r\n\r\nnamespace App\\Exceptions;\r\n\r\nclass CustomException extends \\Exception\r\n{\r\n	\r\n}\r\n\r\n```\r\n\r\n然后，在`handler.php` 的`handler()`方法内，判断并处理`CustomException`，显示相应的视图；\r\n\r\n```\r\npublic function render($request, Exception $e)\r\n   {\r\n       switch($e){\r\n\r\n           case ($e instanceof ModelNotFoundException):\r\n\r\n               return response()->view(''errors.404'', [], 404);\r\n               break\r\n           case ($e instanceof CustomException):\r\n\r\n               return response()->view(''errors.custom'',[''exception''=>$e]);\r\n               break\r\n\r\n           default:\r\n\r\n               return parent::render($request, $e);\r\n\r\n       }\r\n   }\r\n   \r\n```\r\n\r\n**触发自定义错误类**\r\n\r\n```\r\ntry{\r\n\r\n App\\User::find(-1);\r\n\r\n}catch(){\r\n	throw new App\\Exceptions\\CustomException;\r\n	\r\n}\r\n\r\n```\r\n\r\n**错误视图常用的一些显示错误的方法**\r\n\r\n```\r\n@extends(''template.master'')\r\n\r\n@section(''content'')\r\n    <h1>\r\n        @{{ $exception->getStatusCode() }}\r\n    </h1>\r\n\r\n    <p>\r\n        @if(!empty($exception->getMessage()))\r\n            @{{ $exception->getMessage() }}\r\n        @else\r\n            @{{ \\Symfony\\Component\\HttpFoundation\\Response::$statusTexts[$exception->getStatusCode()] }}\r\n        @endif\r\n    </p>\r\n\r\n@endsection\r\n```\r\n\r\n##HTTP错误##\r\n\r\n**自定义http错误页面**\r\n\r\n发生http错误时，系统会先在`resources/views/errors/`这个文件夹内找与http错误代码同名的blade文件，比如400错误就会找`resources/views/errors/404.blade.php`, 所以自定义http错误显示页面，只要在`resources/views/errors/`按照http错误代码号建立对应的blade文件就行了。\r\n\r\n**抛出http错误代码**\r\n\r\n一般，服务器上会设置什么时候抛出http错误代码，但你也可以手动抛出，方法是：\r\n\r\n```\r\nabort(401); abort(500);abort(403)\r\n\r\n```\r\n填上对应的错误代码号即可，这个方法在request的整个生命周期内都可用；\r\n\r\n##Logging##\r\n\r\nLaravel的日志功能基于强大的 Monolog 类库，默认情况下是每天生成一个日志文件的模式，日子文件存储在`storage/logs`；\r\n\r\n\r\n###插入log信息###\r\n\r\n你可以在代码中向log日志插入信息，一共有这些方法可以使用：\r\n\r\n```\r\nLog::emergency($error);\r\nLog::alert($error);\r\nLog::critical($error);\r\nLog::error($error);\r\nLog::warning($error);\r\nLog::notice($error);\r\nLog::info($error);\r\nLog::debug($error);\r\n```\r\n\r\n代码示例：\r\n\r\n```\r\npublic function showProfile($id)\r\n    {\r\n        Log::info(''Showing user profile for user: ''.$id);\r\n\r\n        return view(''user.profile'', [''user'' => User::findOrFail($id)]);\r\n    }\r\n```\r\n\r\n###上下文信息###\r\n\r\n```\r\nLog::info(''User failed to login.'', [''id'' => $user->id]);\r\n```\r\n你可以像这样插入第二个参数，数组内的信息将会被格式化，在log显示出来；\r\n\r\n###获取Monolog对象##\r\n\r\n```\r\n$monolog = Log::getMonolog();\r\n```\r\n像这样获取Monolog对象，Monolog对象中有很多方法可以操作log信息。    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n  [0.977441645200458]: http://laravelbase.com/uploads/editor/1f218d0d5c4204a76ad7c0b7f53677aa.jpg', '2016-03-25 08:12:58', '2016-07-15 00:59:15', 29, 1, 1062, 1, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(77, 'Laravel 5.1 文档攻略 ——文件系统和云存储', '##简介##\r\nLaravel提供了基于Flysystem用于操作文件读写存储的抽象层API，使你可以像使用Linux一样用PHP来操作文件，功能非常强大。laravel的文件系统还支持云存储操作，当然，在我大天朝，Amazon S3,Rackspace,DropBox神马的都是浮云，好在我们可以编写驱动使用阿里云。\r\n\r\n##配置##\r\n\r\n配置文件在`config/filesystems.php`，打开看一下：\r\n\r\n```\r\n/*\r\n    |--------------------------------------------------------------------------\r\n    | Default Filesystem Disk\r\n    |--------------------------------------------------------------------------\r\n    |\r\n    | Here you may specify the default filesystem disk that should be used\r\n    | by the framework. A "local" driver, as well as a variety of cloud\r\n    | based drivers are available for your choosing. Just store away!\r\n    |\r\n    | Supported: "local", "ftp", "s3", "rackspace"\r\n    |\r\n    */\r\n\r\n    ''default'' => ''local'',\r\n\r\n    /*\r\n    |--------------------------------------------------------------------------\r\n    | Default Cloud Filesystem Disk\r\n    |--------------------------------------------------------------------------\r\n    |\r\n    | Many applications store files both locally and in the cloud. For this\r\n    | reason, you may specify a default "cloud" driver here. This driver\r\n    | will be bound as the Cloud disk implementation in the container.\r\n    |\r\n    */\r\n\r\n    ''cloud'' => ''s3'',\r\n\r\n    /*\r\n    |--------------------------------------------------------------------------\r\n    | Filesystem Disks\r\n    |--------------------------------------------------------------------------\r\n    |\r\n    | Here you may configure as many filesystem "disks" as you wish, and you\r\n    | may even configure multiple disks of the same driver. Defaults have\r\n    | been setup for each driver as an example of the required options.\r\n    |\r\n    */\r\n\r\n    ''disks'' => [\r\n\r\n        ''local'' => [\r\n            ''driver'' => ''local'',\r\n            ''root''   => storage_path(''app''),\r\n        ],\r\n\r\n        ''ftp'' => [\r\n            ''driver''   => ''ftp'',\r\n            ''host''     => ''ftp.example.com'',\r\n            ''username'' => ''your-username'',\r\n            ''password'' => ''your-password'',\r\n\r\n            // Optional FTP Settings...\r\n            // ''port''     => 21,\r\n            // ''root''     => '''',\r\n            // ''passive''  => true,\r\n            // ''ssl''      => true,\r\n            // ''timeout''  => 30,\r\n        ],\r\n\r\n        ''s3'' => [\r\n            ''driver'' => ''s3'',\r\n            ''key''    => ''your-key'',\r\n            ''secret'' => ''your-secret'',\r\n            ''region'' => ''your-region'',\r\n            ''bucket'' => ''your-bucket'',\r\n        ],\r\n\r\n        ''rackspace'' => [\r\n            ''driver''    => ''rackspace'',\r\n            ''username''  => ''your-username'',\r\n            ''key''       => ''your-key'',\r\n            ''container'' => ''your-container'',\r\n            ''endpoint''  => ''https://identity.api.rackspacecloud.com/v2.0/'',\r\n            ''region''    => ''IAD'',\r\n            ''url_type''  => ''publicURL'',\r\n        ],\r\n\r\n    ],\r\n\r\n```\r\n###磁盘###\r\n这里会有一个概念，叫做磁盘，我们先要设置磁盘，以后的文件就指定存在设置的磁盘目录下；\r\n\r\n先看下最下面的**Filesystem Disks**的''disks''，这里面就指定了很多磁盘，比如第一个名字叫做local, 看它的drive是`''local''`，表明它是一个本地磁盘，`''root''   => storage_path(''app'')`,表示它的本地存储根目录在storage目录的app目录下；\r\n\r\n你可以建多个本地磁盘;\r\n\r\n然后接下来是ftp驱动的一个磁盘，你也可以配置ftp；\r\n\r\n下面是2个外国的云盘，国内没法使用，就不多说了，稍后我们来看看怎么配阿里云的OSS；\r\n\r\n###默认磁盘###\r\n\r\n定义好磁盘，我们还需要定义默认使用哪个磁盘，这样就不用每次都指定磁盘；\r\n\r\n这个就是指定默认磁盘：\r\n\r\n```\r\n''default'' => ''local'',\r\n```\r\n\r\n除了默认磁盘，Laravel还允许你指定，第二块特殊的默认磁盘，这块磁盘必须是云盘，如果你指定了，在发生磁盘操作的时候，2块磁盘将会被同时写入；\r\n\r\n这样做的原因是有很多人喜欢本地磁盘写一次，云盘再备份一次；\r\n\r\n```\r\n''cloud'' => ''s3'',\r\n```\r\n\r\n##文件系统使用基础##\r\n\r\n```\r\n$disk = Storage::disk(''s3'');\r\n\r\n```\r\n获取一个磁盘实例，注意我们这里手动选择了磁盘s3;\r\n\r\n```\r\n$contents = Storage::disk(''local'')->get(''file.jpg'')\r\n```\r\n选择后，后面可以跟各种磁盘操作方法；\r\n\r\n```\r\n$contents = Storage::get(''file.jpg'')\r\n```\r\n如果我们后面没用`disk()`选择磁盘，那系统会自动选择配置文件中指定的默认磁盘；\r\n\r\n\r\n##获取文件##\r\n\r\n**获取文件内容**\r\n\r\n```\r\n$contents = Storage::get(''file.jpg'');\r\n```\r\n\r\n注意，这样是获取文件的内容，比如,jpg文件就是获取二进制字符内容，如果是文本文件，获取的就是字符串内容；\r\n\r\n**判断文件是否存在**\r\n\r\n用我们非常熟悉的has()方法；\r\n```\r\n$exists = Storage::disk(''s3'')->has(''file.jpg'');\r\n```\r\n\r\n**获取文件信息**\r\n\r\n```\r\n$size = Storage::size(''file1.jpg'');\r\n```\r\n\r\n获取文件尺寸大小；如果你需要把bytes转化成MB，这里有个小函数可能可以节约你5分钟时间：[http://laravelbase.com/show/58](http://laravelbase.com/show/58 "代码：生成人类可读的文件尺寸")\r\n\r\n```\r\n$time = Storage::lastModified(''file1.jpg'');\r\n```\r\n获取文件最后一次被修改的 UNIX timestamp时间；\r\n\r\n\r\n\r\n##存储文件##\r\n\r\n\r\n**写入文件内容**\r\n\r\n```\r\n\r\nStorage::put(''file.jpg'', $contents);\r\n\r\nStorage::put(''file.jpg'', $resource);\r\n\r\n```\r\n\r\n`put()`是把内容写入文件，例子中，第一个$contents是字符串形式的图片二进制代码； 第二个$resource，文档意思是说这里可以支持PHP的资源型变量，但是什么是资源型变量，文档再一次令人发指的沉默了；\r\n\r\n*PHP资源型变量解释*\r\n*在PHP中，资源类型保存了到外部资源的一个引用，实质其实就是为外部资源建立的特殊句柄，比如数据库连接、打开文件、图形画布区域等。资源类型其实仅仅是一个整数，而内核可以根据这个整数值去一个类似资源池的地方寻找最终需要的数据。*\r\n\r\n大概就是这个意思；\r\n\r\n\r\n**复制和移动文件**\r\n\r\n```\r\nStorage::copy(''old/file1.jpg'', ''new/file1.jpg'');\r\n```\r\n\r\n```\r\nStorage::move(''old/file1.jpg'', ''new/file1.jpg'');\r\n```\r\n\r\n复制和移动文件的时候可以顺便改文件名，在第二个参数直接改即可；\r\n\r\n\r\n\r\n**追加文件内容**\r\n\r\n```\r\n\r\nStorage::prepend(''file.log'', ''Prepended Text'');\r\n\r\nStorage::append(''file.log'', ''Appended Text'');\r\n\r\n```\r\n\r\n这2个方法，一个是在文件开头追加内容，一个是在文件末尾追加内容；\r\n\r\n##删除文件##\r\n\r\n```\r\nStorage::delete(''file.jpg'');\r\n\r\nStorage::delete([''file1.jpg'', ''file2.jpg'']);\r\n```\r\n删除单个文件和批量删除文件；\r\n\r\n\r\n##文件目录的操作##\r\n\r\n\r\n**获取某个目录中的所有文件列表**\r\n\r\n```\r\n$files = Storage::files($directory);\r\n\r\n$files = Storage::allFiles($directory);\r\n\r\n```\r\n前面那个files()是获取当前文件夹下所有文件的列表，返回一个数组；\r\n\r\n后面那个allFiles()是获取当前文件夹以及所有子文件夹下的所有文件列表；\r\n\r\n\r\n**获取某个目录中的所有文件夹列表**\r\n\r\n```\r\n\r\n$directories = Storage::directories($directory);\r\n\r\n// 递归获取...\r\n$directories = Storage::allDirectories($directory);\r\n\r\n```\r\n类似上面的，这里是列出所有文件夹；\r\n\r\n**创建目录**\r\n\r\n```\r\nStorage::makeDirectory($directory);\r\n```\r\n\r\n**删除目录**\r\n\r\n```\r\nStorage::deleteDirectory($directory);\r\n```\r\n*注意，删除目录将会把该目录下的子文件夹以及所有文件删除！*\r\n\r\n\r\n\r\n##自定义文件驱动##\r\n\r\n\r\n除了默认支持的驱动，用户还可以自定义驱动，详情请参阅文档；\r\n\r\n\r\n文件管理这个类其实还有很多方法，具体请参阅：[http://flysystem.thephpleague.com/](http://flysystem.thephpleague.com/ "http://flysystem.thephpleague.com/")\r\n\r\n\r\n\r\n\r\n', '2016-03-27 00:02:48', '2016-07-14 23:57:19', 29, 1, 1737, 0, 0, 1, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(78, 'Laravel与Repository Pattern(仓库模式)——概念篇', '# 为什么要学习Repository Pattern(仓库模式)\r\nRepository 模式主要思想是建立一个数据操作代理层，把controller里的数据操作剥离出来，这样做有几个好处：\r\n\r\n- 把数据处理逻辑分离使得代码更容易维护\r\n- 数据处理逻辑和业务逻辑分离，可以对这两个代码分别进行测试\r\n- 减少代码重复\r\n- 降低代码出错的几率\r\n- 让controller代码的可读性大大提高\r\n\r\n然而，据很多同学反应，这一部分很难学。确实，要独立一个操作层出来，确实会增加大量代码，非常繁琐。如果你是小项目，未必需要使用这一模式。但如果是4-5年以上的复杂大型项目，这种模式的好处就比较明显了。\r\n\r\n如果你是纯新手，建议你暂时不要往下看，先把laravel用得比较熟练后再回来学习。\r\n\r\n学习Repository Pattern的意义不只是为了使用它，更会让你深入思考框架的分层思想，你开始不仅关注怎么使用一个框架，还会想了解怎样设计一个框架，也许会成为你往高阶段编程的入口。\r\n\r\n\r\n# 什么是Repository Pattern\r\n虽然说设计模式和语言及框架无关，但是脱离了语言及框架，我们很难理解，所以我们还是在laravel的语境下来学习吧：\r\n\r\n```\r\npublic function index()\r\n   {\r\n       $posts = Post::whereIn(''category_id'',[1,2])->where(''is_draft'',0)->orderBy(''created_at'', ''desc'')->take(5)->get();\r\n\r\n       return view(''front.index'',compact(''posts''));\r\n\r\n   }\r\n```\r\n以上是典型的Eloquent数据查询代码，如果你编程经验丰富，你会发现这种代码在控制器里到处都是，而且有很多是重复的，可读性很差；我们的目标是把它精简：\r\n\r\n仔细观察\r\n```\r\nPost::whereIn(''category_id'',[1,2])->where(''is_draft'',0)->orderBy(''created_at'', ''desc'')->take(5)->get();\r\n```\r\n其实它由3部分组成，第一是`Post`,数据模型；第二个是`whereIn(''category_id'',[1,2])->where(''is_draft'',0)->orderBy(''created_at'', ''desc'')->take(5)`，数据操作条件；第三个是`get()`，数据获取的方法；\r\n\r\n我们知道，Eloquent里有个Query Scope，可以用来把第二部分，也就是查询条件精简。所以，在使用了Query Scope后，我们可以把精简成：\r\n\r\n```\r\nPost::ofCategory([1,2])->isDraft()->orderBy(''created_at'', ''desc'')->take(5)->get();\r\n```\r\n\r\n咋一看上去，好像也没怎么精简啊，但实际上你已经实现代码解耦和复用了，比如说`isDraft()`, 这个代码可以到处用，而不用担心耦合问题。\r\n\r\n精简程度和你的逻辑抽象程度有关，比如说你完全可以写成：\r\n\r\n```\r\nPost::findPosts([1,2],0,''desc'',5)->get();\r\n```\r\n\r\n在轻型项目中，强烈推荐使用`Query Scope`，这是一种良好的编程习惯。\r\n\r\n在更复杂的项目中，`Query Scope`就不够用了，因为它和数据模型还是一种强耦合，Repository Pattern就是要把第一，第二，第三部分全部解耦；\r\n\r\n说到解耦，我们在Laravel的文档攻略中讲过，第一神器就是PHP中的接口（Interface），下面来看例子：\r\n\r\n**第一步——建立文件夹**\r\n\r\n- app\r\n  - Repositories\r\n    - Interfaces\r\n    - Implements\r\n\r\nInterfaces里面用来放接口，Implements用来放接口的实现；\r\n\r\n**第二步——建立一个接口**\r\n\r\n在上面的`Interfaces`目录新建一个文件`PostInterface.php`:\r\n\r\n```\r\nnamespace App\\Repositories\\Interfaces;\r\n\r\nInterface PostInterface{\r\n  \r\n  public function findPosts(Array $cat_id,$is_draft,$order,$take){\r\n    \r\n  }\r\n  \r\n  \r\n}\r\n\r\n```\r\n**第三步——建立一个接口对应的实现**\r\n\r\n在上面的`Implements`目录新建一个文件`PostRepository.php`:\r\n\r\n```\r\nnamespace App\\Repositories\\Implements;\r\n\r\nuse Post;\r\n\r\nclass PostRepository Implements PostInterface{\r\n  \r\n  public function findPosts(Array $cat_id,$is_draft,$order,$take){\r\n    \r\n    $query = Post::whereIn(''category_id'',$cat_id)->where(''is_draft'',$is_draft)->orderBy(''created_at'', $order)->take($take)->get();\r\n    \r\n    return $query;\r\n    \r\n  }\r\n  \r\n}\r\n\r\n```\r\n\r\n看这里，很明显，仓库指的就是一个仓库接口的实现；这里定义你的业务逻辑；\r\n\r\n**第四步——在ServiceProvider中绑定接口**\r\n\r\n打开`app/Providers/AppServiceProvider`, 在`register() `加入代码：\r\n\r\n```\r\n<?php\r\nnamespace App\\Providers;\r\nuse Illuminate\\Support\\ServiceProvider;\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n    \r\n    public function boot()\r\n    {\r\n    }\r\n    \r\n    public function register()\r\n    {\r\n        $this->app->bind(''App\\Repositories\\Interfaces\\PostInterface'', ''App\\Repositories\\Implements\\PostRepository'');\r\n    }\r\n}\r\n```\r\n我们知道，ServiceProvider是Laravel IOC容器实现动态换接口实现的地方，所以我们在这里绑定一下，这样我们在使用的时候，不直接使用接口实现，而是用ioc容器解析接口，它会帮你自动找到对应好的实现。\r\n这就意味着，以后需要更换实现，可以在这里更换；\r\n\r\n**第五步——使用仓库**\r\n\r\n回到我们的controller里来：\r\n\r\n```\r\nuse App\\Repositories\\Interfaces\\PostInterface;\r\n\r\nclass PostController extends BaseController{\r\n  \r\n    public function __construct(PostInterface $post){\r\n      \r\n        $this->postRepo = $post;\r\n    }\r\n    \r\n    public function index(){\r\n      \r\n      $this->postRepo->findPosts([1,2],0,''desc'',5);\r\n    }\r\n  \r\n}\r\n\r\n```\r\n\r\n这样你看，第一，我们的业务逻辑变得非常精简，完全不用管查询；第二，现实了数据查询部分的解耦；\r\n\r\n到这里，有同学就会问了，一开始说好的三个部分解耦呢，你这里只实现了第二部分啊；\r\n\r\n确实，为了最快让大家明白什么是Repository，我把第一和第二部分的解耦省略了，我们放到这篇文章的系列后续讲。\r\n\r\n你或许还有不少疑惑，我费那么大劲，写成最后这个样子，好像也没什么区别啊。聪明的同学可能想到一点，如果采用Repository Pattern的话，是不是意味着以后我可以先在controller里写成`$this->postRepo->findPosts([1,2],0,''desc'',5);` 具体的查询逻辑先不写，然后我快速先把 整个应用的业务逻辑先跑一遍，然后再回头一个一个写接口实现来支持业务逻辑；（哇擦，太NB了，妈妈再也不用担心SB客户/PM改变需求了）;\r\n\r\n恭喜，你已经进入高级编程里说的DDD（Domain Driven Design 领域驱动设计）大门了，事实上，整个Laravel框架的核心架构就是这样干的，IOC+接口，我们会在后续系列文章里介绍；\r\n', '2016-04-05 17:03:16', '2016-07-15 00:59:10', 29, 4, 2566, 1, 3, 0, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL),
(79, '解释清楚Laravel的Service Container, Service Provider，Contracts和Facade之间的关系', '# 简述 #\r\n当你接触一段时间Laravel的Service Container, Service Provider，Contracts和Facade后，也许已经知道它们是什么了，但是对于如何使用，在什么时候使用，以及它们之间的关系是什么，还不是非常清楚。\r\n而关键是如果你反复看文档，你会被它坑死，因为文档有些部分不但没有解释清楚，反而有误导的内容；\r\n现在我们就来一次性把它们搞定；\r\n\r\n# 基本概念 #\r\n在继续本教程之前，你需要先对以上概念有基本了解，知道它们是什么；\r\n## Service Container和 Service Provider ##\r\n\r\nService Container，也就是IOC容器的使用**并不依赖Service Provider**，例如：\r\n\r\n```\r\n$app->make(''App\\Models\\Post'');\r\n\r\n```\r\n这句话和 `new App\\Models\\Post；` 的结果完全一样；\r\n另外你在控制器里使用构造函数，type-hint进行依赖注入，也完全和Service Provider没有半毛钱关系。\r\n\r\n总之，你可以完全不使用Service Provider；\r\n\r\n## Service Provider 和Contracts##\r\n\r\n如果说IOC容器的使用**并不依赖Service Provider**，那么为什么我们用composer下载扩展包的时候总是要在`config/app.php`里绑定一下Service Provider呢，有时候还需要绑定一下Facade;\r\n\r\n理解的思路是这样的，Laravel核心类(Services)都是用接口(contracts)+实现来构成的, 如果不理解这个概念，仔细看文档接口那一章。而你在使用的时候，如果要拿到某个接口实现的实例的话，需要用到Service Container，而要用Service Container去解析一个接口，而不是直接解析一个类，这时就要用到`Service Provider`了，可以说，**Service Provider的主要功能，就是来绑定接口的**。\r\n\r\n下我准备要讲坑爹的事情了，在讲接口绑定前，先了解一些基本的事实：\r\n\r\n### 一些事实 ###\r\n\r\n```\r\n$app->make(''App\\Models\\Post'');\r\n\r\n```\r\n你可以这样写，\r\n\r\n```\r\n$app->make(''post'');\r\n\r\n```\r\n也可以这样写，这里的post是一个别名，这个别名是造成混淆的主要地方；\r\n这个时候你肯定在想，这样写有啥用，我去哪里关联这个别名到`App\\Models\\Post`呢？\r\n\r\n### Service Provider 的 bind方法 ###\r\n\r\n对，就是在Service Provider里用bind方法来绑定别名：\r\n\r\n```\r\n$this->app->bind(''post'', function ($app) {\r\n    return new App\\Models\\Post;\r\n});\r\n\r\n```\r\n这样绑定后你就可以`$app->make(''post'');`这样写了；然而搞个别名到目前为止也没什么卵用。没关系，稍后会讲到，它和Facade有关系；我们先来解释文档坑爹的地方：\r\n\r\n文档是这样写这个bind方法的：\r\n\r\n```\r\n$this->app->bind(''HelpSpot\\API'', function ($app) {\r\n    return new HelpSpot\\API($app[''HttpClient'']);\r\n});\r\n```\r\n哇擦，您的这第一个参数到底填的啥啊，事实上，第一个参数可以填类的全称，但是如果不是填简称，我这样绑定有任何意义么？ 后面再返回一个一样的类实例？ 咦？$app[''HttpClient'']这个是什么？？ 其实它是告诉你可以在解析类的时候可以再接着注入一个其他类的实例；文档大哥，拜托你解释一下好不好，能不能举个靠谱点的例子...\r\n\r\n如果你到其他的扩展包中去看别人的bind的写法，你会发现千奇百怪的绑定写法，先不管他们，现在我们来看Service Provider对接口的使用方法，最最基本的原理是这样的：\r\n\r\n```\r\n//给一个接口起个别名\r\n$this->app->bind(''event_pusher'', function ($app) {\r\n    return new App\\Contracts\\EventPusher;\r\n});\r\n\r\n//指定这个接口应该解析的实例\r\n$this->app->bind(''App\\Contracts\\EventPusher'', ''App\\Services\\RedisEventPusher'');\r\n\r\n```\r\n\r\n通过这两步，我们让这个接口有了别名，也有了解析时对应的实现；\r\n\r\n这样，我们就可以：\r\n\r\n```\r\n$app->make(''event_pusher'');\r\n\r\n```\r\n得到`App\\Services\\RedisEventPusher`;\r\n\r\n\r\n \r\n## Service Provider 和 Facades ##\r\n我们来看Facade的写法,比如说*Illuminate\\Support\\Facades\\Cache*：\r\n\r\n```\r\nclass Cache extends Facade\r\n{\r\n   \r\n    protected static function getFacadeAccessor() { return ''cache''; }\r\n}\r\n\r\n```\r\n这个cache就是上面提到过的别名；\r\n\r\n下面我们来看Facade的对应关系图：\r\n\r\n| Facade Name  | Facade Class  |  Resolved Class |  Service Provider Binding Alias|\r\n| ------------- |:-------------:|:-----:| :-----:|\r\n| Cache      | Illuminate\\Support\\Facades\\Cache | Illuminate\\Cache\\Repository|cache|\r\n\r\n\r\n----------\r\n\r\n\r\n所以你调用Cache::get(''user_id'')的时候，实际上是调用了**Illuminate\\Support\\Facades\\Cache** 这个类，get并不是这个类的静态方法，事实上，get这个方法在Facade这个类里根本不存在，这正是它设计的本意，当get这个方法不存在的时候，它就会调用Facade基类里的**__callStatic**魔术方法（需要提前了解这个魔术方法），这个方法中就会把Service Provider中绑定的类（或接口）解析并返回出来，本例中也就是**Illuminate\\Cache\\Repository** 这个类，所以get其实是**Illuminate\\Cache\\Repository**这个类的方法;\r\n\r\n然后我们在再看文档，有的Facade怎么没有别名呢？比如：\r\n\r\n| Facade Name  | Facade Class  |  Resolved Class |  Service Provider Binding Alias|\r\n| ------------- |:-------------:|:-----:| :-----:|\r\n| Response      | Illuminate\\Support\\Facades\\Response | Illuminate\\Contracts\\Routing\\ResponseFactory| |\r\n\r\n----------\r\n\r\n是的，你可以直接写类的全称，而不是别名，如果你看这个**Illuminate\\Support\\Facades\\Response**源码，它是这样写的：\r\n\r\n```\r\nclass Response extends Facade\r\n{\r\n\r\n       protected static function getFacadeAccessor()\r\n    {\r\n        return ''Illuminate\\Contracts\\Routing\\ResponseFactory'';\r\n    }\r\n}\r\n```\r\n可以直接返回该类；\r\n\r\n## Facade的命名空间到底是什么 ##\r\n\r\n我们发现，在使用**Cache::get(''user_id'')**的时候，你可以使用`use Cache`; 也可以使用`use Illuminate\\Support\\Facades\\Cache`;\r\n\r\n这是为什么呢？\r\n\r\n别忘了，你在`config/app.php`里面Class Aliases 那里绑定过 Facade 别名，也就是：\r\n\r\n```\r\n ''Cache''     => Illuminate\\Support\\Facades\\Cache::class,\r\n```\r\n\r\n这样绑定过，你就可以直接`use Cache`来使用Facade了；\r\n\r\n\r\n', '2016-04-22 20:39:06', '2016-07-15 01:41:20', 29, 1, 1686, 1, 2, 0, '', 'Laravel,PHP, Fullstack，全栈，程序员，开发，web开发', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `post_likes`
--

CREATE TABLE IF NOT EXISTS `post_likes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `post_id` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `post_likes`
--

INSERT INTO `post_likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(8, 10, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 10, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 10, 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 10, 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 13, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 13, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 13, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 18, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 69, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 69, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 69, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 76, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 84, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 85, 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 85, 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 85, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 85, 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 99, 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 100, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 120, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 122, 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 129, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 136, 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 143, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 160, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 162, 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 162, 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 162, 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 166, 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 168, 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 174, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 29, 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 178, 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 178, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 179, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 29, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 182, 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 187, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 184, 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 184, 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 184, 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 191, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 194, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 202, 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 203, 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 206, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 209, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 210, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 212, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 221, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 226, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 244, 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 245, 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 264, 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 276, 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 29, 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 29, 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 190, 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 284, 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 286, 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', '管理员', '网站最高权限', '2015-10-16 00:55:29', '2015-10-16 00:55:29'),
(3, 'ordinary_user', '普通用户', '新注册的普通用户', '2015-10-16 00:55:29', '2015-10-16 00:55:29'),
(4, 'hahaha', '哈哈哈', '大三大四', '2016-04-22 02:39:55', '2016-04-22 02:39:55');

-- --------------------------------------------------------

--
-- 表的结构 `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(9, 1),
(10, 1),
(13, 1),
(29, 1),
(14, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(30, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(44, 3),
(54, 3),
(55, 3),
(56, 3),
(58, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(156, 3),
(157, 3),
(158, 3),
(159, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(168, 3),
(169, 3),
(170, 3),
(171, 3),
(172, 3),
(173, 3),
(174, 3),
(175, 3),
(176, 3),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(182, 3),
(183, 3),
(184, 3),
(185, 3),
(186, 3),
(187, 3),
(188, 3),
(189, 3),
(190, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(195, 3),
(196, 3),
(197, 3),
(198, 3),
(199, 3),
(200, 3),
(201, 3),
(202, 3),
(203, 3),
(204, 3),
(205, 3),
(206, 3),
(207, 3),
(208, 3),
(209, 3),
(210, 3),
(211, 3),
(212, 3),
(213, 3),
(214, 3),
(215, 3),
(216, 3),
(217, 3),
(218, 3),
(219, 3),
(220, 3),
(221, 3),
(222, 3),
(223, 3),
(224, 3),
(225, 3),
(226, 3),
(227, 3),
(228, 3),
(229, 3),
(230, 3),
(231, 3),
(232, 3),
(233, 3),
(234, 3),
(235, 3),
(236, 3),
(237, 3),
(238, 3),
(239, 3),
(240, 3),
(241, 3),
(242, 3),
(243, 3),
(244, 3),
(245, 3),
(246, 3),
(247, 3),
(248, 3),
(249, 3),
(250, 3),
(251, 3),
(252, 3),
(253, 3),
(254, 3),
(255, 3),
(256, 3),
(257, 3),
(258, 3),
(259, 3),
(260, 3),
(261, 3),
(262, 3),
(263, 3),
(264, 3),
(265, 3),
(266, 3),
(267, 3),
(268, 3),
(269, 3),
(270, 3),
(271, 3),
(272, 3),
(273, 3),
(274, 3),
(275, 3),
(276, 3),
(277, 3),
(278, 3),
(279, 3),
(280, 3),
(281, 3),
(282, 3),
(283, 3),
(284, 3),
(285, 3),
(286, 3),
(287, 3),
(288, 3);

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`key`, `value`) VALUES
('claim', 's:1:" ";'),
('contact', 's:1:" ";'),
('copyright', 's:32:"Larabase Copyright © 2014-2015 ";'),
('description', 's:319:"LaraBase是一个围绕Laravel框架展开的全栈开发者以及远程工作者社区。  本网站使用Laravel 5.1独立开发，实现了CMS类社区的几乎所有功能。  Laravel强大而友好的框架，精通后仅需一人就能充分支持一般中小型公司的在线业务，有很高的学习价值。";'),
('favicon', 's:46:"/assets_home/main/back/uploads/img/favicon.png";'),
('logo', 's:49:"/assets_home/main/back/uploads/img/logo_white.png";'),
('logo_front', 's:55:"/assets_home/main/back/uploads/img/logo_white_front.png";'),
('logo-retina', 's:52:"/assets_home/main/back/uploads/img/logo_white_2x.png";'),
('logo-retina-front', 's:58:"/assets_home/main/back/uploads/img/logo_white_2x_front.png";'),
('mail_address', 's:1:" ";'),
('mail_driver', 's:5:" smtp";'),
('mail_host', 's:1:" ";'),
('mail_name', 's:1:" ";'),
('mail_password', 's:0:"";'),
('mail_port', 's:1:" ";'),
('mail_username', 's:1:" ";'),
('null', 's:6:"保存";'),
('seo_key_words', 's:52:"Laravel,PHP, 全栈，程序员，开发，web开发";'),
('site_name', 's:35:"LaraBase——全栈工程师之家";');

-- --------------------------------------------------------

--
-- 表的结构 `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `sites`
--

INSERT INTO `sites` (`id`, `name`, `description`, `url`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Laravel 官网', '正宗好官网', 'http://laravel.com/', '2015-09-20 16:42:38', '2015-09-20 16:42:38', 65),
(2, 'Composer', '强大的Composer的官网，Php的希望！', 'https://getcomposer.org/', '2015-10-27 19:25:21', '2015-10-27 19:25:21', 65),
(3, 'Packagist', 'Composer的默认包库，php代码弹药库。', 'https://packagist.org/explore/', '2015-10-27 19:25:59', '2015-10-27 19:25:59', 65),
(5, 'Laracasts', '最强大的Laravel视频教程，绝对没有之一。', 'https://laracasts.com/', '2015-10-27 19:32:45', '2015-10-27 19:32:45', 65),
(13, 'Lumen', 'Taylor官方出品，Laravel姊妹，世界上最快的微框架。', 'http://lumen.laravel.com/', '2015-10-27 19:42:16', '2015-10-27 19:42:16', 65),
(14, 'Laravel News', 'Laravel 动态权威发布', 'https://laravel-news.com/', '2015-10-27 19:43:34', '2015-10-27 19:43:34', 65),
(16, 'Vue.js', '我最喜欢的前端框架，和Laravel绝配。', 'http://vuejs.org/', '2015-10-27 19:47:52', '2015-10-27 19:47:52', 65),
(17, 'socket.io', '要使用Laravel开发聊天程序，用它', 'http://socket.io/', '2015-10-27 19:49:43', '2015-10-27 19:49:43', 65),
(18, 'Bootstrap', '最受欢迎的前端模板', 'http://getbootstrap.com/', '2015-10-27 19:50:22', '2015-10-27 19:50:22', 65),
(19, 'Symfony2', '最强大的工业级PHP框架，Laravel的师父，深入学习Laravel需要了解', 'http://symfony.com/', '2015-10-27 19:52:38', '2015-10-27 19:52:38', 65),
(20, 'Laravel中文网', '提供教程，程序包，cdn等服务', 'http://www.golaravel.com/', '2015-10-27 19:55:58', '2015-10-27 19:55:58', 65),
(21, 'PHPhub ', 'PHP & Laravel 开发者社区', 'https://phphub.org/', '2015-10-27 19:59:07', '2015-10-27 19:59:07', 65),
(22, 'SIMCU – 华丽之作,一切从简', '群里高手朋友的博客', 'http://blog.simcu.com', '2015-10-28 04:55:03', '2015-10-28 04:55:03', 66),
(23, 'Enda Blog', 'github上的Laravel中文明星开发者', 'http://www.phpyc.com/', '2015-10-28 04:57:30', '2015-11-03 01:14:25', 66),
(24, '吾爱的博客', '群里一位经验丰富的朋友博客', 'http://www.ekan001.com/', '2015-11-03 01:13:42', '2015-11-03 01:13:42', 66),
(25, 'SOFTonSOFA', '只能说非常牛，来自波兰的编程老手', 'http://softonsofa.com/', '2015-12-11 09:08:11', '2015-12-11 09:08:28', 68),
(26, 'Ryan是菜鸟', 'LNMP技术栈，web架构学习笔记', 'http://www.yuansir-web.com/', '2016-05-05 23:11:40', '2016-05-05 23:19:45', 66);

-- --------------------------------------------------------

--
-- 表的结构 `taggable_taggables`
--

CREATE TABLE IF NOT EXISTS `taggable_taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `taggable_taggables`
--

INSERT INTO `taggable_taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(11, 49, 'Modules\\Blog\\Entities\\Post', '2015-10-26 06:58:34', '2015-10-26 06:58:34'),
(5, 28, 'Modules\\Blog\\Entities\\Post', '2015-10-27 19:11:59', '2015-10-27 19:11:59'),
(11, 47, 'Modules\\Blog\\Entities\\Post', '2015-11-02 08:59:04', '2015-11-02 08:59:04'),
(10, 43, 'Modules\\Blog\\Entities\\Post', '2015-11-11 01:25:20', '2015-11-11 01:25:20'),
(9, 37, 'Modules\\Blog\\Entities\\Post', '2016-01-23 17:45:34', '2016-01-23 17:45:34');

-- --------------------------------------------------------

--
-- 表的结构 `taggable_tags`
--

CREATE TABLE IF NOT EXISTS `taggable_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `normalized` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `taggable_tags`
--

INSERT INTO `taggable_tags` (`tag_id`, `name`, `normalized`, `created_at`, `updated_at`) VALUES
(1, 'ada', 'ada', '2015-09-05 17:27:26', '2015-09-05 17:27:26'),
(2, '大大', '大大', '2015-09-05 17:27:26', '2015-09-05 17:27:26'),
(3, 'Cairo', 'cairo', '2015-09-05 17:27:26', '2015-09-05 17:27:26'),
(4, 'Washington', 'washington', '2015-09-05 17:27:26', '2015-09-05 17:27:26'),
(5, 'CRUD', 'crud', '2015-09-09 04:46:46', '2015-09-09 04:46:46'),
(6, 'Javascript', 'javascript', '2015-09-09 22:28:27', '2015-09-09 22:28:27'),
(7, 'Php', 'php', '2015-09-09 22:31:26', '2015-09-09 22:31:26'),
(8, 'xxxxx', 'xxxxx', '2015-09-11 18:52:49', '2015-09-11 18:52:49'),
(9, '中间件', '中间件', '2015-10-19 19:11:17', '2015-10-19 19:11:17'),
(10, '视图', '视图', '2015-10-25 17:06:56', '2015-10-25 17:06:56'),
(11, '容器', '容器', '2015-10-26 04:20:07', '2015-10-26 04:20:07');

-- --------------------------------------------------------

--
-- 表的结构 `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recipients` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `threads`
--

INSERT INTO `threads` (`id`, `subject`, `recipients`, `created_at`, `updated_at`, `deleted_at`) VALUES
(38, '辅导费', 'a:4:{i:0;s:1:"8";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";}', '2015-08-21 00:54:54', '2015-10-24 07:09:33', '2015-10-24 07:09:33'),
(39, 'asdasdasd', 'a:4:{i:0;s:1:"8";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";}', '2015-08-21 00:55:07', '2015-10-24 07:09:31', '2015-10-24 07:09:31'),
(40, 'vvcxvcxvxcv大苏打', 'a:4:{i:0;s:1:"8";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";}', '2015-08-21 00:55:54', '2015-10-24 07:09:29', '2015-10-24 07:09:29'),
(41, '系统消息', '', '2015-10-23 18:34:45', '2015-10-24 17:12:20', '2015-10-24 17:12:20'),
(42, '系统消息', '', '2015-10-24 00:08:37', '2015-10-24 06:48:14', '2015-10-24 06:48:14'),
(43, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:43:35', '2015-10-24 04:43:35', NULL),
(44, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:44:23', '2015-10-24 04:44:23', NULL),
(45, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:44:55', '2015-10-24 04:44:55', NULL),
(46, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:45:47', '2015-10-24 04:45:47', NULL),
(47, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:47:23', '2015-10-24 04:47:23', NULL),
(48, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:47:49', '2015-10-24 04:47:49', NULL),
(49, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:47:56', '2015-10-24 04:47:56', NULL),
(50, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:48:12', '2015-10-24 04:48:12', NULL),
(51, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:48:21', '2015-10-24 04:48:21', NULL),
(52, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:48:58', '2015-10-24 04:48:58', NULL),
(53, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:49:48', '2015-10-24 04:49:48', NULL),
(54, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:50:19', '2015-10-24 04:50:19', NULL),
(55, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:50:35', '2015-10-24 04:50:35', NULL),
(56, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:51:08', '2015-10-24 04:51:08', NULL),
(57, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:51:24', '2015-10-24 04:51:24', NULL),
(58, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:53:38', '2015-10-24 04:53:38', NULL),
(59, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:54:21', '2015-10-24 07:05:03', '2015-10-24 07:05:03'),
(60, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英', '', '2015-10-24 04:57:59', '2015-10-24 07:04:02', '2015-10-24 07:04:02'),
(61, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:08:36', '2015-10-24 06:52:59', '2015-10-24 06:52:59'),
(62, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:15:31', '2015-10-24 05:15:31', NULL),
(63, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:15:59', '2015-10-24 05:15:59', NULL),
(64, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:16:28', '2015-10-24 05:16:28', NULL),
(65, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:17:01', '2015-10-24 05:17:01', NULL),
(66, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:17:26', '2015-10-24 05:17:26', NULL),
(67, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:17:43', '2015-10-24 05:17:43', NULL),
(68, 'admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...', '', '2015-10-24 05:18:04', '2015-10-24 06:50:22', '2015-10-24 06:50:22'),
(69, '<a href="http://test/forum/1-ddd/2-cccc">tangsi回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...</a>', '', '2015-10-24 07:06:02', '2015-10-24 17:12:05', '2015-10-24 17:12:05'),
(70, '<a href="http://test/forum/1-ddd/2-cccc">China回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...</a>', '', '2015-10-24 07:10:12', '2015-10-24 17:12:09', '2015-10-24 17:12:09'),
(71, '<a href="http://test/forum/1-ddd/2-cccc">admin回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...</a>', '', '2015-10-24 07:13:15', '2015-10-24 17:12:12', '2015-10-24 17:12:12'),
(72, '<a href="http://test/forum/1-ddd/2-cccc">China回复了你的帖子：习近平接受路透社采访时强调 共同开启中英...</a>', '', '2015-10-24 19:12:39', '2015-10-24 19:12:39', NULL),
(73, '系统消息', '', '2015-10-24 19:15:25', '2015-10-24 19:15:25', NULL),
(74, '<a href="http://test/forum/1-ddd/4-cccc">tangsi 回复了你的帖子：怎样获取当前的路由和路由路径啊？...</a>', '', '2015-10-27 21:35:06', '2015-10-27 21:35:06', NULL),
(75, '<a href="http://test/forum/1-ddd/4-cccc">China 回复了你的帖子：怎样获取当前的路由和路由路径啊？...</a>', '', '2015-10-27 21:42:20', '2015-10-27 21:42:20', NULL),
(76, '<a href="http://laravelbase.com/forum/1-ddd/4-cccc">woodytang 回复了你的帖子：怎样获取当前的路由和路由路径啊？...</a>', '', '2015-10-28 23:21:16', '2015-10-28 23:21:16', NULL),
(77, '<a href="http://laravelbase.com/forum/1-ddd/8-cccc">可伶可俐 回复了你的帖子：有没有会b-jui的...</a>', '', '2015-11-06 23:48:30', '2015-11-06 23:48:30', NULL),
(78, '<a href="http://laravelbase.com/forum/1-ddd/4-cccc">可伶可俐 回复了你的帖子：怎样获取当前的路由和路由路径啊？...</a>', '', '2015-11-06 23:57:07', '2015-11-06 23:57:07', NULL),
(79, '<a href="http://laravelbase.com/forum/1-ddd/8-cccc">可伶可俐 回复了你的帖子：有没有会b-jui的...</a>', '', '2015-11-07 00:06:24', '2015-11-07 00:06:24', NULL),
(80, '<a href="http://laravelbase.com/forum/1-ddd/8-cccc">可伶可俐 回复了你的帖子：有没有会b-jui的...</a>', '', '2015-11-07 00:06:29', '2015-11-07 00:06:29', NULL),
(81, '<a href="http://laravelbase.com/forum/1-ddd/4-cccc">可伶可俐 回复了你的帖子：怎样获取当前的路由和路由路径啊？...</a>', '', '2015-11-07 19:29:20', '2015-11-07 19:29:20', NULL),
(82, '<a href="http://laravelbase.com/forum/1-ddd/4-cccc">公仔糖 回复了你的帖子：怎样获取当前的路由和路由路径啊？...</a>', '', '2015-11-07 21:16:08', '2015-11-07 21:16:08', NULL),
(83, '<a href="http://laravelbase.com/forum/1-ddd/8-cccc">公仔糖 回复了你的帖子：有没有会b-jui的...</a>', '', '2015-11-07 21:17:30', '2015-11-07 21:17:30', NULL),
(84, '<a href="http://laravelbase.com/forum/1-ddd/8-cccc">可伶可俐 回复了你的帖子：有没有会b-jui的...</a>', '', '2015-11-08 03:38:14', '2015-11-08 03:38:14', NULL),
(85, '<a href="http://laravelbase.com/forum/1-ddd/8-cccc">可伶可俐 回复了你的帖子：有没有会b-jui的...</a>', '', '2015-11-15 18:51:58', '2015-11-15 18:51:58', NULL),
(86, '<a href="http://laravelbase.com/forum/1-ddd/8-cccc">可伶可俐 回复了你的帖子：有没有会b-jui的...</a>', '', '2015-11-15 20:19:27', '2015-11-15 20:19:27', NULL),
(87, '<a href="http://laravelbase.com/forum/1-ddd/9-cccc">公仔糖 回复了你的帖子：楼主想请教你个问题...</a>', '', '2015-12-08 17:06:52', '2015-12-08 17:06:52', NULL),
(88, '<a href="http://laravelbase.com/forum/1-ddd/10-cccc">透支 回复了你的帖子：为了作者辛苦，赞一个。...</a>', '', '2015-12-18 05:10:06', '2015-12-18 05:10:06', NULL),
(89, '<a href="http://laravelbase.com/forum/1-ddd/11-cccc">公仔糖 回复了你的帖子：请问楼主，你的这个项目有没有放到gith...</a>', '', '2016-01-23 17:18:40', '2016-01-23 17:18:40', NULL),
(90, '<a href="http://laravelbase.com/forum/1-ddd/12-cccc">公仔糖 回复了你的帖子：顶你...</a>', '', '2016-01-23 17:19:09', '2016-01-23 17:19:09', NULL),
(91, '<a href="http://laravelbase.com/forum/1-ddd/10-cccc">公仔糖 回复了你的帖子：为了作者辛苦，赞一个。...</a>', '', '2016-01-23 17:21:34', '2016-01-23 17:21:34', NULL),
(92, '<a href="http://laravelbase.com/forum/1-ddd/15-cccc">坐禅入定 回复了你的帖子：新人请问生成URL相关函数？...</a>', '', '2016-02-21 06:47:06', '2016-02-21 06:47:06', NULL),
(93, '<a href="http://laravelbase.com/forum/1-ddd/16-cccc">公仔糖 回复了你的帖子：楼主什么开源本站...</a>', '', '2016-03-11 22:23:04', '2016-03-11 22:23:04', NULL),
(94, '<a href="http://laravelbase.com/forum/1-ddd/15-cccc">公仔糖 回复了你的帖子：新人请问生成URL相关函数？...</a>', '', '2016-03-11 22:25:43', '2016-03-11 22:25:43', NULL),
(95, '<a href="http://laravelbase.com/forum/1-ddd/17-cccc">公仔糖 回复了你的帖子：Thank you for doing ...</a>', '', '2016-03-19 00:31:38', '2016-03-19 00:31:38', NULL),
(96, '<a href="http://laravelbase.com/forum/1-/21-">公仔糖 回复了你的帖子：站长辛苦了！...</a>', '', '2016-04-20 21:08:36', '2016-04-20 21:08:36', NULL),
(97, '<a href="http://laravelbase.com/forum/1-/16-">tanglonglong 回复了你的帖子：楼主什么开源本站...</a>', '', '2016-05-13 05:18:47', '2016-05-13 05:18:47', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notify` enum('y','n') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'y',
  `avatar_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `oa_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oa_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `activation_code`, `active`, `remember_token`, `created_at`, `updated_at`, `settings`, `notify`, `avatar_path`, `deleted_at`, `oa_id`, `oa_type`) VALUES
(9, '公仔糖', 'woody_tang@qq.com', '$2y$10$xZze8RRMqz90usmYcYCSfenWpkmwefPfzv62ms551wcBy/oN8SNYO', '', 1, 'DQH2vjEiCkwtnYUwAHgxXVQlMLynMlNg0hvEOGkFlChHDoUsRNaxx1Ra02wO', '2015-08-11 00:35:32', '2016-01-23 17:47:15', '', 'y', '/assets_home/temp/ecodry_151018094137.jpg', NULL, '0', ''),
(10, 'admin', 'woody_tang@163.com', '$2y$10$4vHPkF8QdMOcC38MSYRGke9EM6zUIXQ3dcPvebaD.CT51oEH40DjG', '', 1, 'DJORG8dIeU9PUnDELB0XzAh7kgckvDiv0nU63Z91s0ECNOJ1UuSed5JCHg0z', '2015-08-15 16:08:54', '2015-10-27 20:45:02', '', 'y', '/uploads/avatar/Drr45lPLUJWfFQbBRnuZZA9rIhbEKeO1ucqTa8wU.jpg', NULL, '0', ''),
(13, 'tangsi', '72727910@qq.com', '$2y$10$ZbfhRM0BoCwM5y43Tmyxvu883HlbwSyA578O0lo8ClkXtxhdFstMK', 'DgOhpCuUY4aRpUx8CferKEE4cSQh74A1dOKOsZSGeXd1oQmPe8HVUHoWvtmI7272791@qq.com', 1, 'zZzW4hQoLqREZWOIsNxMQ0UT1dcbpJpmhHwxihotlUdU0ZVFoGe5zdWgrzcm', '2015-09-19 18:39:50', '2015-10-28 06:34:07', '', 'y', '/assets_home/main/upload/avatar/default/078.png', NULL, '0', ''),
(14, 'woodytang', 'woody_tang@112.com', '$2y$10$OqkJ3WmAQwgY2qYD/kDc.uzo.umtpaBtQQ5bUhegkbEuwzZGad09.', '3pNUKqNY6BOOmHwTp7G02J5c5r4IfHZjoZrrrZvkiNMlclrbYHennijY3SZNwoody_tang@112.com', 0, NULL, '2015-10-26 23:04:48', '2015-10-26 23:04:48', '', 'y', '/assets_home/main/upload/avatar/default/046.png', NULL, '0', ''),
(15, 'woodytang', 'woody_tang@1632.com', '$2y$10$yeGrz15RNPe0JyVzvQkFDuY9KUz6hqO3wxz/ZW79Kdu2LTGIngS8K', 'Sf09uHbakWBQrmkkfalNbMmmU1phJZ3FKKTcsXtIwcXPpD2r55ylxpO6uCcawoody_tang@1632.com', 0, NULL, '2015-10-27 00:18:34', '2015-10-27 00:18:34', '', 'y', '/assets_home/main/upload/avatar/default/046.png', NULL, '0', ''),
(16, 'woodytang', 'woody_tang@16332.com', '$2y$10$WXKQH0mbzngLJOLr7bJ.zOsNAjOvbFPwvSCMLAj6bqhUsnDgxgwpe', 'Jzz2WSvQW4M9I5ckkfFwaThk3b7cmWaKFze6rEcboxJaSrai03AiFMYM7BHRwoody_tang@16332.com', 1, 'KU7DdRvTciqHPWmXHDymmSkoxlgIs4MnaEtyFgh1SukAh7IUAYIiVDglwR3R', '2015-10-27 00:21:57', '2015-10-27 00:29:42', '', 'y', '/assets_home/main/upload/avatar/default/089.png', NULL, '0', ''),
(17, '江左盟', '2132@11.com', '$2y$10$CDMjtoCOmB1kX5wwKTMVMejIZgsF1fhPyi8RUm/MV31HE2RWMyC9a', 'JypuT0a2EBvLFBQUlQUKyvNSO3Bmqy8wFppUzUoRQm9NUGaYSviIm14EkYTo2132@11.com', 0, NULL, '2015-10-27 00:31:16', '2015-10-27 00:31:16', '', 'y', '/assets_home/main/upload/avatar/default/034.png', NULL, '0', ''),
(18, 'Refactor', 'larabot1@qq.com', '$2y$10$ZdVtOQYMCZXj5KynbkSeeuH8d6iwNKlnsA6abxRFGC6fu0guRnkU6', 'O9658zbxy3AhL6fF9oujdLPAMeORDDmQf7WPKPrX8GkDZ13CVBG55gWZg6fnlarabot1@qq.com', 1, 'l73ZuaE3Aq0Oyx3zfvjUsTl1ZGnj23g9rtkxoI4g0S7303mnXQax2uAchypc', '2015-10-27 00:35:21', '2015-11-04 00:04:34', '', 'y', '/assets_home/main/upload/avatar/default/033.png', NULL, '0', ''),
(19, 'phperist', 'larabot2@qq.com', '$2y$10$l2BOpXEOSsIhEJpnYWgD3.xSSCgS9K9aGufqyHyIUcaysAAZZRyy.', 'oR7sFtV4SYTlMWKwlZWDX3n6B5nW75u7mfLNdosJ2y3PgcIdYtCc1Kxf7xOblarabot2@qq.com', 1, NULL, '2015-10-27 00:42:49', '2015-10-27 00:43:58', '', 'y', '/assets_home/main/upload/avatar/default/096.png', NULL, '0', ''),
(29, '公仔糖', '7272791@qq.com', '$2y$10$VW2Cdu5OQIlxROc8VDMp7e5tscR9BZROSVbFNg1mBBAPBhbQw3D42', '', 1, '1ew8lPdSeosyZFSBUfSzctltfdPiBOUKu7oupIF2L8lKtDi2XmuEHjBXyNjD', '2015-10-28 22:58:04', '2016-04-20 22:43:54', '', 'y', '/uploads/avatar/0xpH30M3TSp6PVOK6nFuljHfPodQeX86FuxqM1la.jpg', NULL, '6992045', 'qq'),
(30, 'woodytang', '', '', '', 1, 'hqA7UKmKUx1YnR2Eq1uofjCysgmSOdCavoT4Dsq9AHOZSVMncbrfTBEQ2LgA', '2015-10-28 23:13:13', '2015-11-07 19:43:43', '', 'y', 'https://avatars.githubusercontent.com/u/8010705?v=3', NULL, '8010705', 'github'),
(37, 'mooxx209', 'tangsi@outlook.com', '$2y$10$UyGS2mdN3dGznJ3U22TEeebiW38.Sbe..MP2F7zU5IbbvRxwCkRre', 'VZJR2pM4eeCsy2j39K1QfFUqy0HXSlULdlokhrwSFggOwcu6CisYE5QQuePFtangsi@outlook.com', 1, '5DnSkm7pNzewpcpYxBRkWhkQS6j9ujlVI872qYk7sc752o2yCkfgEUucvfLr', '2015-11-01 04:26:23', '2015-12-08 17:01:41', '', 'y', '/assets_home/main/upload/avatar/default/010.png', NULL, '0', ''),
(38, 'Kojia', 'dev.shijun@gmail.com', '$2y$10$KVuxtbO5IQWgSpYYwdVFy.rpyqEj5AsRYFR7C.H/TCjIdjUCQ8msq', 'TTjuVI7GOguRrtF7Xp9FPckpDenTTyvj4AFUDh194RjQgjQI78kcX8TLhcNtdev.shijun@gmail.com', 1, NULL, '2015-11-01 04:46:42', '2015-11-01 04:48:43', '', 'y', '/assets_home/main/upload/avatar/default/002.png', NULL, '0', ''),
(39, 'zhangbing', '460611929@qq.com', '$2y$10$d5luOFCbNO0J/CUwTpi0P.PD2F1GtgT/gpXshsRNaKkC6GvUncSaK', 'gHPg1BsCOaZv4aTcEKqMkKd9LbQWAmWdxIZhD2OzJPkdzDdFq3haEHiDQGlJ460611929@qq.com', 1, NULL, '2015-11-01 19:37:54', '2015-11-01 19:38:11', '', 'y', '/assets_home/main/upload/avatar/default/035.png', NULL, '0', ''),
(40, 'xuxq1213', '163_xxq@163.com', '$2y$10$h0y9FAb81mmhIAzIEennXOXveKUso/PqyKoVJC6omrgf1s8iUjJXe', 'xmY5b6A1F5rBzkOdk3S16OryKBjQR2L4P6yE5X3vBlePiksEkLG0r06SxxMB163_xxq@163.com', 1, NULL, '2015-11-01 20:30:54', '2015-11-01 20:31:07', '', 'y', '/assets_home/main/upload/avatar/default/047.png', NULL, '0', ''),
(44, '工仔', 'zhengkewen@163.com', '$2y$10$Yvs.gPHFNcNeyonlvoLsROjZ1ZUo9lJgibLYaCwa00cGS8M6zxoGa', 'dFjkLQelQ3gnicO7Pymgt38hSJ765aw91nmFyaifDA7k8eG0AJwe8nZkoTfwzhengkewen@163.com', 1, NULL, '2015-11-02 00:37:43', '2015-11-02 00:38:47', '', 'y', '/assets_home/main/upload/avatar/default/044.png', NULL, '0', ''),
(54, 'marlti7', NULL, '', '', 1, NULL, '2015-11-02 18:52:39', '2015-11-02 18:52:39', '', 'y', 'https://avatars.githubusercontent.com/u/15121155?v=3', NULL, '15121155', 'github'),
(55, 'lygiser', NULL, '', '', 1, NULL, '2015-11-03 06:26:19', '2015-11-03 06:26:19', '', 'y', 'https://avatars.githubusercontent.com/u/15118010?v=3', NULL, '15118010', 'github'),
(56, 'paulyim', '786544279@qq.com', '$2y$10$s55dBagEyPnZEfYnmKR87uZVSH21nztfQV96yIUjs847xRNJZdBMa', 'KvKfyaB4DCtlEikGGiXwGbo1MSsoXmvWSL4PMDHop8wQ7GNMbiGjIVAC9yof786544279@qq.com', 1, NULL, '2015-11-03 21:49:51', '2015-11-03 22:06:23', '', 'y', '/uploads/avatar/HPk2mqmOh3NWDpAKWkwxtoAzddFX6zt4IDibWe3e.jpg', NULL, '0', ''),
(58, 'hayabusa_7', NULL, '', '', 1, 'Lgj3vYAm0L85uHUZrchGB2xqMpYDlpZMXfEVgD62KxhoA1ltxJtaNFup5K6e', '2015-11-04 10:48:16', '2015-11-04 10:49:45', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/49500EB9F7E2695FDE3C869D18B40645/100', NULL, '49500', 'qq'),
(66, '再见葫芦娃', NULL, '', '', 1, 'DyfpGxotHcWBMYiQEGT0FL7KUaZnNHUU2Xet8ueM2SIihNfy685LcudxhdGQ', '2015-11-05 16:33:22', '2015-11-05 16:51:41', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/DD1CF1DFBC2C9E02EAFDC9ABAA4049A6/100', NULL, 'DD1CF1DFBC2C9E02EAFDC9ABAA4049A6', 'qq'),
(67, '請逺灕↘佌囡孑', NULL, '', '', 1, NULL, '2015-11-05 16:54:14', '2015-11-05 16:54:14', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/856B42F25F9C2A9739D77EE135F35D9B/100', NULL, '856B42F25F9C2A9739D77EE135F35D9B', 'qq'),
(68, '王兵', NULL, '', '', 1, NULL, '2015-11-06 01:41:49', '2015-11-06 01:41:49', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/0052811DE1A4E5B8DFAAFFE114AEC6DD/100', NULL, '0052811DE1A4E5B8DFAAFFE114AEC6DD', 'qq'),
(69, '可伶可俐', 'klausyin@163.com', '$2y$10$FMY7tQuAzrUy09PB4Hq2A.SBJ7ratPI.2iR2BGY3YP.WnrELPlMyO', 'CzLwfj5TwbyBdiIh0Fhi8VfE7Izn7DvdrMDF4f0JpCfx7pojVIG3PMBpYof8klausyin@163.com', 1, 'd4iGrkdYG5BkCam8HjF0HMJWkDZauwJqhn4zF3JPLudTlPGBIeajJpWMjj1G', '2015-11-06 23:37:53', '2015-11-11 22:45:46', '', 'y', '/assets_home/main/upload/avatar/default/009.png', NULL, '', ''),
(70, '彬', NULL, '', '', 1, NULL, '2015-11-13 18:23:23', '2015-11-13 18:23:23', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/8A1FD94A7A6BA0CE43037D90575216FF/100', NULL, '8A1FD94A7A6BA0CE43037D90575216FF', 'qq'),
(71, 'JonyHo', '13177664@qq.com', '$2y$10$W1/2xKPztBdl0hXzuLtny.HsfpP7ltcoQW2YmNUNhhfB4OPLG/iYO', 'gtMQVlJz2VOkctUKpVS3lUAlHs3ufukgIN4wgWQtTG0hmfuQGDWltSfQ4OM113177664@qq.com', 1, NULL, '2015-11-13 18:40:57', '2015-11-13 18:41:16', '', 'y', '/assets_home/main/upload/avatar/default/061.png', NULL, '', ''),
(72, '人类最强小短腿', '275130418@qq.com', '$2y$10$rTZdIXmlkW/c30os4onTFOqSyJus3mZIzMDOFS4vkIqbXoR2oFL4u', 'iHe86M1lfHBjdxycvmUbB6gCKX2Ei922ddTrZiaicnyBaYkmzpeTgGwBIIH7275130418@qq.com', 1, NULL, '2015-11-14 02:01:32', '2015-11-14 02:05:45', '', 'y', '/assets_home/main/upload/avatar/default/021.png', NULL, '', ''),
(73, '163', 'stevejobsii@163.com', '$2y$10$DP5hV9d1cqiedlcoUfET4.L3INZ5OxwqSNZdgN.6g1dRwUw8P9dlC', 'kLLtUtwsv5xXgre52AqVI05XvHurUyS5fAU7x85hKTABra5ivNrdLCSQAq2nstevejobsii@163.com', 1, 'W8B2XARdWvze0RfnunNBKbTjXVfMokeAavtkqhVfnCq9bJ3X9pPr2N0pssnn', '2015-11-17 00:15:48', '2015-11-19 21:44:33', '', 'y', '/uploads/avatar/gYG4op5n5x63pB3gQy3P5Xq3Fn8IklxJALvi2ik9.jpg', NULL, '', ''),
(74, '公仔糖', NULL, '', '', 1, '29sDtFXcAmxZ5DgnGEpXdSqFqe9ThZv0rHMnMPXxwtgQrKtFJ5LFB1kAK6qt', '2015-11-17 03:00:15', '2016-03-19 22:10:41', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/6992045AD2435312975C87E03BB1C27F/100', NULL, '6992045AD2435312975C87E03BB1C27F', 'qq'),
(75, 'bunsEn', '7560445@qq.com', '$2y$10$TVUEQERYAdbLePrRKVwOweTrjOub9Ib.KWsaXaYs9C5nFyl9Lieou', 'XvPMsc6lX0ClnJdtNK1fVExx9ma7Q2iPY6UwyBYv3UqOeZ2GbEgEW0I03Ih87560445@qq.com', 1, NULL, '2015-11-17 23:27:21', '2015-11-17 23:28:04', '', 'y', '/assets_home/main/upload/avatar/default/049.png', NULL, '', ''),
(76, '追寻如风', NULL, '', '', 1, NULL, '2015-11-17 23:47:34', '2015-11-17 23:47:34', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/56268F85A05C24AE49D41828157B8BBC/100', NULL, '56268F85A05C24AE49D41828157B8BBC', 'qq'),
(77, 'lzllzllzl', '491707516@qq.com', '$2y$10$WgtoFprQc4nSTaBZx76ZgOUHObelKafaHuPXM806aO3q.7ZZksdI6', 'lnDGvWDMIlmOQd8y58KEx8UXAHCAfFgdepAaapYQVubfHeif7n6prVbHZbNx491707516@qq.com', 1, NULL, '2015-11-18 01:00:17', '2015-11-18 01:00:51', '', 'y', '/assets_home/main/upload/avatar/default/009.png', NULL, '', ''),
(78, '笨小孩', NULL, '', '', 1, '04rADbL6JsISBEDJ1wyNvHpIHBKMMJQVWir9nnvr3TuITyZ76zIjFvZYCVgf', '2015-11-19 06:02:47', '2015-11-19 06:04:04', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D612AB0FDA6F3B76864D151C1EB43308/100', NULL, 'D612AB0FDA6F3B76864D151C1EB43308', 'qq'),
(79, '许博-道生教育', NULL, '', '', 1, 'Vg71VZNexzggXwy4kbz239aF81Gn9rhe41kWLMZHUEzKVDU3dVuKt6TtmhRI', '2015-11-19 18:00:57', '2015-11-19 18:01:46', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/061CA5F9C228180CA3CCAF004C32F0A7/100', NULL, '061CA5F9C228180CA3CCAF004C32F0A7', 'qq'),
(80, 'skidu', 'ski@skidu.me', '$2y$10$qCcrK6Ly2t9zm9SBM6LVeOKHf9dkApZ6b8atOZIwJ603H6bMGSmcS', 'BMHtzJblSQoKIM80rettDQlKszqfUN4asv2nPKTBrgQdeAeYt2XnvtmtBE7dski@skidu.me', 1, NULL, '2015-11-19 20:09:56', '2015-11-19 20:10:07', '', 'y', '/assets_home/main/upload/avatar/default/028.png', NULL, '', ''),
(81, 'FreshAir', 'xxxxxx@x.x', '$2y$10$X/gShZUv/dRqzLsc6gP34epPGCrKrT7dU32Vco2Rx6qEuYR6VUGT2', '', 1, 'JODafRIKQ5jTVGDdmxLjx9AWUJ1tpmqEXIARnrCuarSYVkD4bKFBx41YKAHy', '2015-11-19 21:44:21', '2015-11-28 18:45:19', '', 'y', '/uploads/avatar/rbE4xClovR9yRx1ON6MG6kLvB39ltfTl81MkzuPt.jpg', NULL, 'EFDD22CEC2AE3970D62D13B9FE010E4D', 'qq'),
(82, '无为', NULL, '', '', 1, NULL, '2015-11-19 23:51:16', '2015-11-19 23:51:16', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/27610966BBD1DBB7B2BFEB5F8AD64128/100', NULL, '27610966BBD1DBB7B2BFEB5F8AD64128', 'qq'),
(83, 'merlinfeng', 'feng_qiang@yeah.net', '$2y$10$khffYEvU/l7riAAZrjwRTuXqYSADhcJ9azxNtIA356yQtW7NmNNYa', '37nS3DZX9od4WEzIonMrvK9ddgJVTdMVTOF6PLmy2LSDIeR00FG83yPbGozIfeng_qiang@yeah.net', 1, NULL, '2015-11-20 02:05:19', '2015-11-20 02:06:17', '', 'y', '/assets_home/main/upload/avatar/default/006.png', NULL, '', ''),
(84, 'icbc8', 'icbc8@qq.com', '$2y$10$bC4chAU03MryTnHSe7oMEeA9AeXdyKZgD9bYfcWVlLR3HvJBek9u.', 'vxBAFfP25g93U5dE1j7HRqg75ElGCZS4BiCbnpmwLvKD14hjQhfGOHokKEDHicbc8@qq.com', 1, NULL, '2015-11-21 10:23:35', '2015-11-21 10:23:49', '', 'y', '/assets_home/main/upload/avatar/default/040.png', NULL, '', ''),
(85, 'sguoe', 'lightnoway@qq.com', '$2y$10$wTlFq8rpA3Uo6Ay767LMb.EVXAy07OfNSJ.cAYOuIuc1l9moe9x6e', '', 1, NULL, '2015-11-22 00:53:04', '2015-11-22 22:39:04', '', 'y', 'https://avatars.githubusercontent.com/u/6335161?v=3', NULL, '6335161', 'github'),
(86, '         H.K', NULL, '', '', 1, NULL, '2015-11-22 08:24:36', '2015-11-22 08:24:36', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/697B4E19D8ECDFB9AA917AD90435EACF/100', NULL, '697B4E19D8ECDFB9AA917AD90435EACF', 'qq'),
(87, 'July Miss You ', NULL, '', '', 1, NULL, '2015-11-24 00:01:59', '2015-11-24 00:01:59', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/5D0A535566EF785591C8A4ED9068B7CA/100', NULL, '5D0A535566EF785591C8A4ED9068B7CA', 'qq'),
(88, 'Quine', NULL, '', '', 1, 'ZaLpzFESWAnAcoYIaq0MhG2PCKWsfTbczsaSnAtgRqLULC1QTb1YUdxi4g8X', '2015-11-24 00:49:08', '2015-11-24 00:49:17', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/169654238C9A4202590B2D822E420C36/100', NULL, '169654238C9A4202590B2D822E420C36', 'qq'),
(89, 'weiheli', NULL, '', '', 1, NULL, '2015-11-25 21:02:21', '2015-11-25 21:02:21', '', 'y', 'https://avatars.githubusercontent.com/u/5600837?v=3', NULL, '5600837', 'github'),
(90, 'overlords', NULL, '', '', 1, NULL, '2015-11-26 00:04:21', '2015-11-26 00:04:21', '', 'y', 'https://avatars.githubusercontent.com/u/3174601?v=3', NULL, '3174601', 'github'),
(91, 'Tony', NULL, '', '', 1, NULL, '2015-11-26 00:04:42', '2015-11-26 00:04:42', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/306F1DBC59CEBC4054520697594073E5/100', NULL, '306F1DBC59CEBC4054520697594073E5', 'qq'),
(92, 'php-唐守健', NULL, '', '', 1, NULL, '2015-11-28 00:08:35', '2015-11-28 00:08:35', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D7958DCAEBE78FD369233505EBCBE563/100', NULL, 'D7958DCAEBE78FD369233505EBCBE563', 'qq'),
(93, '好人坏人', NULL, '', '', 1, NULL, '2015-11-28 20:31:04', '2015-11-28 20:31:04', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/AEACA0D9CFEAB78449587FBF39BED709/100', NULL, 'AEACA0D9CFEAB78449587FBF39BED709', 'qq'),
(94, 'yuhr123', 'yuhr123@sohu.com', '$2y$10$Pd8by1vwHD48blQiPN6KFOqaIbMrrIk.Vh0SpCCuBKTwxG5RVk5da', '42rSvoCFJ79hlcRuNa0xFexSJZT9GaSCAHe05iNHvxEwTQm9b0ueMnYxmYdfyuhr123@sohu.com', 1, NULL, '2015-11-29 02:52:37', '2015-11-29 02:53:19', '', 'y', '/assets_home/main/upload/avatar/default/060.png', NULL, '', ''),
(95, '1617030412@qq.com', '1617030412@qq.com', '$2y$10$vI4nga8eEJSU4z9GstGvoeOBV5s7NrP2pFmYbMcZNCDOoMr5T679q', 'UFglCwvNczrKpijYs9Po5P6abSE5Imrf3PpoQqrQecYLzZHqpV4E2UW35IQU1617030412@qq.com', 0, NULL, '2015-11-29 18:51:26', '2015-11-29 18:51:26', '', 'y', '/assets_home/main/upload/avatar/default/029.png', NULL, '', ''),
(96, 'Walter', NULL, '', '', 1, NULL, '2015-11-29 23:13:46', '2015-11-29 23:13:46', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/F4A2F1B66DECA894E86847824DF6D8B7/100', NULL, 'F4A2F1B66DECA894E86847824DF6D8B7', 'qq'),
(97, 'Laravel', 'root@laravel.cm', '$2y$10$M2KP2ELtJEEcNdLCwwq8JOe.7115g77MfR8.qFwnmnSbt1yaoHKtG', 'oobEs1wSNg4rcJtWOiUNER6KhteZWkAQjYLkywtEEU8rZedS8uQ8ZWNZizsNroot@laravel.cm', 1, 'uv5NBXo4A3fAO5JbDJLnZvhri3bYMG8gzlYxbHkgeieoq7s5D6vapj8gd21S', '2015-11-29 23:27:50', '2015-11-29 23:31:26', '', 'y', '/assets_home/main/upload/avatar/default/025.png', NULL, '', ''),
(98, 'byhongda', 'byhongda@163.com', '$2y$10$Vgkw1hJSSlx9hGWddKfx/eXN3Q.bjd/iEjNGuj/12GcPJaC8flYpy', 'feGRzotvguespdbIW6rJX8DMjzr1z6O1X2sT87iuoVjCzHy9eF56tkmFxxwRbyhongda@163.com', 1, NULL, '2015-11-30 02:19:33', '2015-11-30 02:33:22', '', 'y', '/assets_home/main/upload/avatar/default/054.png', NULL, '', ''),
(99, 'Ｃccc沫子', NULL, '', '', 1, NULL, '2015-11-30 17:39:46', '2015-11-30 17:39:46', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/E0899306A19003ABA4666EC4727C9A3A/100', NULL, 'E0899306A19003ABA4666EC4727C9A3A', 'qq'),
(100, 'Kim', NULL, '', '', 1, NULL, '2015-12-02 00:50:25', '2015-12-02 00:50:25', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/944D09DDE3FF413667E924134BEFE3F3/100', NULL, '944D09DDE3FF413667E924134BEFE3F3', 'qq'),
(101, '导演', NULL, '', '', 1, NULL, '2015-12-03 06:56:59', '2015-12-03 06:56:59', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/FEEF6DD63C9B42B5B64560EBA5A724E1/100', NULL, 'FEEF6DD63C9B42B5B64560EBA5A724E1', 'qq'),
(102, '小五', NULL, '', '', 1, NULL, '2015-12-03 08:07:33', '2015-12-03 08:07:33', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D5E0D29D9FB3611BA7CF915BC450B123/100', NULL, 'D5E0D29D9FB3611BA7CF915BC450B123', 'qq'),
(103, 'foolish egg', NULL, '', '', 1, NULL, '2015-12-04 22:42:10', '2015-12-04 22:42:10', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/E158BF4B5D6CF1421F9F93DCE558E21B/100', NULL, 'E158BF4B5D6CF1421F9F93DCE558E21B', 'qq'),
(104, 'web书生', NULL, '', '', 1, NULL, '2015-12-06 06:45:52', '2015-12-06 06:45:52', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/C2D8975C59E3A8EBBA3647EF612C3FFD/100', NULL, 'C2D8975C59E3A8EBBA3647EF612C3FFD', 'qq'),
(105, 'loko35387417', NULL, '', '', 1, NULL, '2015-12-06 08:52:41', '2015-12-06 08:52:41', '', 'y', 'https://avatars.githubusercontent.com/u/4104855?v=3', NULL, '4104855', 'github'),
(106, '吴长建18236992212', NULL, '', '', 1, NULL, '2015-12-08 00:58:48', '2015-12-08 00:58:48', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/137E1A07CB37A9BB8700C862BCD6FE02/100', NULL, '137E1A07CB37A9BB8700C862BCD6FE02', 'qq'),
(107, '坏男孩', NULL, '', '', 1, NULL, '2015-12-09 19:20:08', '2015-12-09 19:20:08', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/5064EE9F2CE8CBC027A5FF9F142208A4/100', NULL, '5064EE9F2CE8CBC027A5FF9F142208A4', 'qq'),
(108, 'H', NULL, '', '', 1, NULL, '2015-12-12 01:36:53', '2015-12-12 01:36:53', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/ED7D9D8D719EC5CEB2F2E77CC8810950/100', NULL, 'ED7D9D8D719EC5CEB2F2E77CC8810950', 'qq'),
(109, 'web', '260022594@qq.com', '$2y$10$wqTGMi2aDlR74QUl2MFnsePGyWWp8BOlFjMnt.WZHiqWHBhlczxsW', 'mNY2RgRlf7pPZOKPONBUujxB3wVGggtLj31bRgQygOrM44ffAO0lKPcOA1Px260022594@qq.com', 1, NULL, '2015-12-12 02:34:34', '2015-12-12 02:34:51', '', 'y', '/assets_home/main/upload/avatar/default/002.png', NULL, '', ''),
(110, '战神悟空', NULL, '', '', 1, NULL, '2015-12-13 08:47:40', '2015-12-13 08:47:40', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/A8C74C2621EFD02BDE1EE4E6C3ADA6F1/100', NULL, 'A8C74C2621EFD02BDE1EE4E6C3ADA6F1', 'qq'),
(111, 'wangan77', '541175593@qq.com', '$2y$10$MyKbkKxfrgrVrUBdukgki.u9q.Dwv44LOEsyRGvGT.LG6JoiL8XH6', 'JbmiXSdTSaSYD1TUKozUzhohg3WRxIwvhAQJ7KAMK2TARWWQNVqebal5QF4h541175593@qq.com', 0, NULL, '2015-12-14 17:29:45', '2015-12-14 17:29:45', '', 'y', '/assets_home/main/upload/avatar/default/019.png', NULL, '', ''),
(112, '鸡仔', NULL, '', '', 1, NULL, '2015-12-15 02:24:12', '2015-12-15 02:24:12', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/4DDABD76E9E6ABF99D2A9AF28BA1B116/100', NULL, '4DDABD76E9E6ABF99D2A9AF28BA1B116', 'qq'),
(113, '隔壁小罗', NULL, '', '', 1, NULL, '2015-12-15 19:05:07', '2015-12-15 19:05:07', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/6330A1648E5D8B62D96F958D5489CD18/100', NULL, '6330A1648E5D8B62D96F958D5489CD18', 'qq'),
(114, 'ah_K', 'deecho@126.com', '$2y$10$4rkghqh4Xs5ckRh.KmcfN.nRxa0mQoJ07ar13chwUPgUY.4v6y6B2', 'Jgsgv1z2jy1Kk8Fyyj2a4dWJyxIkW9nUt22MA2lLmVqIysSDlCMGYsfiEfI0deecho@126.com', 1, NULL, '2015-12-16 01:00:39', '2015-12-16 01:01:29', '', 'y', '/assets_home/main/upload/avatar/default/049.png', NULL, '', ''),
(115, '透支', NULL, '', '', 1, NULL, '2015-12-18 04:27:54', '2015-12-18 04:27:54', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/1584C4D1D12E815C833DC526F00E475D/100', NULL, '1584C4D1D12E815C833DC526F00E475D', 'qq'),
(116, '笔尖', NULL, '', '', 1, NULL, '2015-12-24 08:38:54', '2015-12-24 08:38:54', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/423F063B28B637D8C7886FBF525AE7A3/100', NULL, '423F063B28B637D8C7886FBF525AE7A3', 'qq'),
(117, 'jhonson', 'richiekinglI@163.com', '$2y$10$mhb/TE2DP7CHajukGdST4uf/oyvNeaQLgk79Ck.b3JXMAFNI4Lv6q', 'oJ83I8kLgOkqioWcSR6JqYPZzPymHCm51NbPLh1hpfaVDvamgGimqxCqdNn8richiekinglI@163.com', 0, NULL, '2015-12-24 18:01:00', '2015-12-24 18:01:00', '', 'y', '/assets_home/main/upload/avatar/default/007.png', NULL, '', ''),
(118, 'a416237796', 'a416237796@126.com', '$2y$10$pwGrqzfqgBIzCZWunk9wMORPaKYOZm5KuOko4RrE0HwY4KFWL6ErK', 'nytKc1RTw17lGXI5CIjebgzhP7iHVCOfqUVfqEytdYFpmdMJJGXc5UHEO4k8a416237796@126.com', 1, 'rKoo5gRo0JJHUbo3fLAtAf6U8OoYcvj1904LfUT2KeB43epwEKZbLOAuUgF4', '2015-12-27 17:35:22', '2015-12-28 01:13:39', '', 'y', '/assets_home/main/upload/avatar/default/006.png', NULL, '', ''),
(119, 'test', '2582228328@qq.com', '$2y$10$DUWlSK6sqiX4iyzaFDNjqu.UGluMYBUgRhQ6ZYRHCwrdgrbgeE7RG', 'Ght9Ym1CzCF0efZlg7g99fz8cQGIRIwcTNKNyOp9AsMsoNHHQojltdQOIsfU2582228328@qq.com', 1, 'cNmhLYSZoxzlpefO02wEslsBO0WoiiWROnzpKmoBuK9n99d6gKTJnbKaSDGY', '2015-12-28 18:24:56', '2015-12-28 18:25:22', '', 'y', '/assets_home/main/upload/avatar/default/026.png', NULL, '', ''),
(120, 'dengyongbin', NULL, '', '', 1, NULL, '2015-12-29 02:33:22', '2015-12-29 02:33:22', '', 'y', 'https://avatars.githubusercontent.com/u/4222743?v=3', NULL, '4222743', 'github'),
(121, '巴比伦', '1311909965@qq.com', '$2y$10$m6GT7aiBgeopmkTS3td6juHxn5kMTl7ZnPzKQRSnuj95Od2Adn4QO', '', 1, NULL, '2015-12-29 03:35:52', '2015-12-29 03:37:12', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/5D574D232127997175C086F6C61D254A/100', NULL, '5D574D232127997175C086F6C61D254A', 'qq'),
(122, '雲月冠上', NULL, '', '', 1, NULL, '2015-12-29 05:36:35', '2015-12-29 05:36:35', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/235E9F5AFE40176A3D8CC499772AABC4/100', NULL, '235E9F5AFE40176A3D8CC499772AABC4', 'qq'),
(123, 'csz', NULL, '', '', 1, NULL, '2015-12-29 23:18:25', '2015-12-29 23:18:25', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/9139548723E0B3B8BA8B06F46C9EFABE/100', NULL, '9139548723E0B3B8BA8B06F46C9EFABE', 'qq'),
(124, 'yijiepifu', NULL, '', '', 1, NULL, '2015-12-30 23:02:44', '2015-12-30 23:02:44', '', 'y', 'https://avatars.githubusercontent.com/u/8278902?v=3', NULL, '8278902', 'github'),
(125, 'cszhi', NULL, '', '', 1, NULL, '2016-01-03 22:42:26', '2016-01-03 22:42:26', '', 'y', 'https://avatars.githubusercontent.com/u/4081852?v=3', NULL, '4081852', 'github'),
(126, '南哥', NULL, '', '', 1, NULL, '2016-01-04 22:19:31', '2016-01-04 22:19:31', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/023169B4A89377927C82BE9C2B36018D/100', NULL, '023169B4A89377927C82BE9C2B36018D', 'qq'),
(127, 'wedojava', NULL, '', '', 1, NULL, '2016-01-06 01:08:20', '2016-01-06 01:08:20', '', 'y', 'https://avatars.githubusercontent.com/u/9837993?v=3', NULL, '9837993', 'github'),
(128, 'Kevin Ding', NULL, '', '', 1, NULL, '2016-01-06 21:58:06', '2016-01-06 21:58:06', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/7D66DFFF1A7F1FDD57CB57A8CF1895F9/100', NULL, '7D66DFFF1A7F1FDD57CB57A8CF1895F9', 'qq'),
(129, '神喻之上帝邀请函', NULL, '', '', 1, 'anIuUP2IQFUdc1rculSEablCoHFqQ1IjWrcgv2olpHsHbzgEz8lLm4yZ66va', '2016-01-10 22:16:46', '2016-01-13 00:39:03', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/18EAB8ED773AEEBAA4EFDE9E1C7F7AEE/100', NULL, '18EAB8ED773AEEBAA4EFDE9E1C7F7AEE', 'qq'),
(130, 'lovelaravel', 'tempchen@126.com', '$2y$10$zmnJkCRYlTntRpDWSYc9QunCIcZtQTsJgz9BdEIUcVSWWS88iicyi', 'B5wnYBwGIVQHYDqN9glELLWx7tgoQ2ltymZNKlBvAzJWzOuo5A6p5ZJuvcm2tempchen@126.com', 1, '4C6F1MDoRyY0uZhFKu1IMNZS2olESsQG2om6PpJwXsZ93EmZdjCu4cRHNWZb', '2016-01-12 16:35:27', '2016-01-12 23:30:02', '', 'y', '/assets_home/main/upload/avatar/default/052.png', NULL, '', ''),
(131, '上玄月', NULL, '', '', 1, NULL, '2016-01-12 19:28:27', '2016-01-12 19:28:27', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/F18077EC354E89673862F97C0E3A4B5A/100', NULL, 'F18077EC354E89673862F97C0E3A4B5A', 'qq'),
(132, '北京欢迎你154', NULL, '', '', 1, 'y9u1JejXUOVHyaUGB4uYQjt6xBphMfu3fi3TtEle31N0ktof3U1EvJ4LWZN1', '2016-01-13 00:16:19', '2016-01-13 00:16:28', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/96E3BF6B780E1CDF586697FD4AB1552F/100', NULL, '96E3BF6B780E1CDF586697FD4AB1552F', 'qq'),
(133, '离开、謓快乐', NULL, '', '', 1, NULL, '2016-01-13 02:25:28', '2016-01-13 02:25:28', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/ED2358385C96BC39CD069950A52925AB/100', NULL, 'ED2358385C96BC39CD069950A52925AB', 'qq'),
(134, '练武术的流氓', 'adk@adki.me', '$2y$10$8vIesqDHXiIay4lCDj7OF.17ptQcl5JAJmApt5pxNJCmbllB7O9pu', '', 1, NULL, '2016-01-15 06:04:06', '2016-01-15 06:05:27', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/FE91FDF7F8BB98205DD5E6F1A1D57E3D/100', NULL, 'FE91FDF7F8BB98205DD5E6F1A1D57E3D', 'qq'),
(135, '风儿沁香', NULL, '', '', 1, NULL, '2016-01-15 18:27:37', '2016-01-15 18:27:37', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/8085A0240CDC108C40F789F0A71EC4B7/100', NULL, '8085A0240CDC108C40F789F0A71EC4B7', 'qq'),
(136, '哇靠', NULL, '', '', 1, NULL, '2016-01-19 17:51:56', '2016-01-19 17:51:56', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/67F1861B89AE4B951A098EAFD6D0526E/100', NULL, '67F1861B89AE4B951A098EAFD6D0526E', 'qq'),
(137, 'linuxof', 'linuxof@163.com', '$2y$10$KHCdkvNjVkyHAnqhcnVF2uRShnT6qzAjjIxPwkzv.n/XvW4T8t9q6', 'YQaPfZxMRKElJXeDkpd4ldodLTqyNwO1PAr8Wa0Ay0ayECRfWvl63KBQ1My0linuxof@163.com', 1, NULL, '2016-01-21 01:24:05', '2016-01-21 01:24:41', '', 'y', '/assets_home/main/upload/avatar/default/083.png', NULL, '', ''),
(138, 'LitoMore', NULL, '', '', 1, NULL, '2016-01-21 23:16:15', '2016-01-21 23:16:15', '', 'y', 'https://avatars.githubusercontent.com/u/8186898?v=3', NULL, '8186898', 'github'),
(139, '地球儀', NULL, '', '', 1, NULL, '2016-01-23 18:03:30', '2016-01-23 18:03:30', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/3F2D72BAFA65FE73BCAE86B105D960FB/100', NULL, '3F2D72BAFA65FE73BCAE86B105D960FB', 'qq'),
(140, 'andytang', 'andytang@vip.sina.com', '$2y$10$MpY4KFK/qPRMKG2IKqCJ1.58qvbCqYAoGlYyBZbewxZjWWrGDqS4S', 'QP6ujB3WkKEw7NrJM2MpFVoajWoPizb12GNkUqTj2CjEXQFW0HRRtACmA97iandytang@vip.sina.com', 1, NULL, '2016-01-24 09:47:40', '2016-01-24 09:48:01', '', 'y', '/assets_home/main/upload/avatar/default/090.png', NULL, '', ''),
(141, 'sywee', 'sywee@163.com', '$2y$10$qWhnfpxvPZ0fzhyu8d7eOeQbJrKnc4nU.bq5.29ozU5PgWX/eUBfO', 'uCou25HXscNsDyfTsqXNmVTXzzZSaMJgMuw9pS0jivujPf3dHa0svYwWWkG7sywee@163.com', 1, NULL, '2016-01-26 19:13:03', '2016-01-26 19:14:11', '', 'y', '/uploads/avatar/Uu45p40Ac5RBAbHlIyta3Km4gGm3kbQdcZe43LCK.jpg', NULL, '', ''),
(142, '123123saa', '123123saa@qq.com', '$2y$10$OpHFzxNXzq6wporDA6PRVeymkqpkA5fYvD2SlvQJe7W98i/.74upG', 'hOvD1HnRemhGZM54tcKZY4bmOW4sRyiWEzb75MWM81QroQ4Kba5y2Pu4gid6123123saa@qq.com', 0, NULL, '2016-01-27 07:21:33', '2016-01-27 07:21:33', '', 'y', '/assets_home/main/upload/avatar/default/090.png', NULL, '', ''),
(143, '那年看过流星雨', NULL, '', '', 1, NULL, '2016-01-27 19:41:02', '2016-01-27 19:41:02', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/A87AB47C738687849B34F920169445DE/100', NULL, 'A87AB47C738687849B34F920169445DE', 'qq'),
(144, '小新', '1371606921@qq.com', '$2y$10$JOydf9yKN6p2DDqRtrv1pe45le1JMEgeFY1z8SGQ56XJg.Jzb5V7a', 'aX6HIztswNog17UZWntxz0W3cAoj4nvGKaESki8XkOy1I5xj4ptVZpFySzGi1371606921@qq.com', 1, NULL, '2016-01-28 18:48:37', '2016-01-28 18:48:59', '', 'y', '/assets_home/main/upload/avatar/default/014.png', NULL, '', ''),
(145, 'musicsnap', 'musicsnap@163.com', '$2y$10$VtqRPXYGH4nTm1b53I1UEOeVCbxeluec9LEYelC2lgB4gAskScXIe', 'UidSGhC5RluW4W2AoPYZM1rq3WbqYfVqL29e6QQdcOLOGjRWGiIciYdXgJHZmusicsnap@163.com', 1, NULL, '2016-01-30 02:52:31', '2016-01-30 02:55:10', '', 'y', '/assets_home/main/upload/avatar/default/068.png', NULL, '', ''),
(146, 'keroppi', 'yami@365sy.com', '$2y$10$QME4Un3w.6rTKs3G8DDs1.syBobmNnpQTeeIhXsfWKf9ufa590cUa', 'RnZs3PutUecXchXeXMEi0fk5KKNb0GX1dEfm1YN064hxAMdx6eHjcwgKN9uoyami@365sy.com', 1, 'vUUkrVwNtJW9EPAEVUGp6EqKGdJfycMCxiLDcrnB6YfkBND7IkkIRCu9clkZ', '2016-01-30 12:20:32', '2016-01-30 20:57:47', '', 'y', '/assets_home/main/upload/avatar/default/060.png', NULL, '', ''),
(147, 'zhangyongyu', NULL, '', '', 1, NULL, '2016-01-30 19:24:49', '2016-01-30 19:24:49', '', 'y', 'https://avatars.githubusercontent.com/u/14832529?v=3', NULL, '14832529', 'github'),
(148, '夏木_乾', NULL, '', '', 1, NULL, '2016-01-31 01:54:33', '2016-01-31 01:54:33', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/8AE4346AD9C099745E5D164ACBEEB569/100', NULL, '8AE4346AD9C099745E5D164ACBEEB569', 'qq'),
(149, '∨、文文。', NULL, '', '', 1, NULL, '2016-01-31 02:44:11', '2016-01-31 02:44:11', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/DA73D0BC870E277CD754B755A6E2B6E9/100', NULL, 'DA73D0BC870E277CD754B755A6E2B6E9', 'qq'),
(150, 'Walter_Wan', '1017207277@qq.com', '$2y$10$RztWCIEcKdbuIzyKJWnOcOe6HD1RPm6./ObvgaebyDEQlkKd7z/NO', 'ZM3uNrw7Qu0iP0Uiyitk4GA3XfGa9B6wshJ3ukEAMKfdNtXfywE0cENiuS8L1017207277@qq.com', 1, NULL, '2016-02-01 02:18:46', '2016-02-01 02:19:56', '', 'y', '/assets_home/main/upload/avatar/default/063.png', NULL, '', ''),
(151, '小旻', NULL, '', '', 1, NULL, '2016-02-01 21:32:21', '2016-02-01 21:32:21', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/64BDC02839B219D019467D7B031C0338/100', NULL, '64BDC02839B219D019467D7B031C0338', 'qq'),
(152, 'luckyjiet', 'luckyjiet@gmail.com', '$2y$10$8JSE0doK4I7DEYQPqfsq2.inveOIrzZCdpIZjzBRDMkXrmIIf.O/C', 'CtJyt59hurOMaKFqQMdOUaBdn5dqdkkBaPVi9gPY9Ogz05txrxWZWziEkulFluckyjiet@gmail.com', 1, NULL, '2016-02-02 22:43:18', '2016-02-02 22:44:43', '', 'y', '/assets_home/main/upload/avatar/default/010.png', NULL, '', ''),
(153, 'nevermore', 'adxhyt@126.com', '$2y$10$1ZZAf8eaEvK1e9/niITDE.KjfdQkTTsbneuwfqf72mkoay1ZTvLRO', 'HlK37DSA8JRh7XTwt94tGur0zCRbZSkL7ax8ebq4IkoRrGNNhp9fOsDSFpH7adxhyt@126.com', 1, 'cLSLSwKaLr7b6rrMirGvuqQvPJP2atbmiO6cCpsGdBE6xQZFzfkZSmv14gxf', '2016-02-03 06:38:26', '2016-02-03 06:40:39', '', 'y', '/assets_home/main/upload/avatar/default/074.png', NULL, '', ''),
(154, 'yoqu', NULL, '', '', 1, NULL, '2016-02-04 01:01:50', '2016-02-04 01:01:50', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/9AABF80BA21E5957C7D62E313BD17422/100', NULL, '9AABF80BA21E5957C7D62E313BD17422', 'qq'),
(155, '低音', NULL, '', '', 1, NULL, '2016-02-09 21:52:33', '2016-02-09 21:52:33', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/CDDF596F1E4A4BA6351A4EF98175B214/100', NULL, 'CDDF596F1E4A4BA6351A4EF98175B214', 'qq'),
(156, 'POPO', '2362768054@qq.com', '$2y$10$1X63MCbu0EfxiHUF79E0Bukl4Idc4xbTWv9zNUrQVe4qScxkNb8BW', 'mJCWjpJv9okQfOX2lMHVmX0NzKEeRDJXU4TKfosljtL0e99ctfeDIHy3Un3J2362768054@qq.com', 1, NULL, '2016-02-13 23:17:47', '2016-02-13 23:18:03', '', 'y', '/assets_home/main/upload/avatar/default/055.png', NULL, '', ''),
(157, 'puz_zle', 'happypuzzle@126.com', '$2y$10$gXifLdVSlArj1KkkNLh1u.x6ZjswA5lbfcH1YIi.wW12xsaARPITu', 'hvCdW4fNKWPhIhL1fKuN0pf96IgQcdmWsfnxIhzFaZMK4hxoSdrrkq3LJIc3happypuzzle@126.com', 1, NULL, '2016-02-16 07:25:01', '2016-02-16 07:26:18', '', 'y', '/assets_home/main/upload/avatar/default/036.png', NULL, '', ''),
(158, 'linf', 'linf@xiaomingzuoye.com', '$2y$10$7A0Re6aRMQAPv8e4qrJXqO4nSZ7Dou7DO2Jv5VDK5.s5utuR31Wj6', 'JN0DVRoGFuWsXUtjg4riAUpSibd6Kq9sz5iBGW3EfSWcA4sGZJ0Abf21LYZRlinf@xiaomingzuoye.com', 1, NULL, '2016-02-18 19:16:40', '2016-02-18 19:17:29', '', 'y', '/assets_home/main/upload/avatar/default/009.png', NULL, '', ''),
(159, '小炎菌', NULL, '', '', 1, NULL, '2016-02-20 03:59:33', '2016-02-20 03:59:33', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/8318D78D57D69EB9AAE887359F578689/100', NULL, '8318D78D57D69EB9AAE887359F578689', 'qq'),
(160, '坐禅入定', '941343139@qq.com', '$2y$10$Robql3xHTZAfBKRpARqJVOZtHZZ6w/YeJQw4WJ6Nfg2wKQsmvF2hu', 'rniFo1fEuGImFG8UuhFIQtIFCJXdwEk3c04k8DqfBNzymSnOiNWAcjrNftAe941343139@qq.com', 1, 'mYq5WAG8mwLk3PtdYqzG6lEeSjAN8gZFWODVFf2s0z4lRPXHZ8jXnzlNSKo3', '2016-02-20 05:59:48', '2016-05-22 23:39:44', '', 'y', '/uploads/avatar/m7isGU55G05ej0cOLDgh6ItJEUqBxX0sshLnitaO.jpg', NULL, '', ''),
(161, 'zhuyinglinfeng', NULL, '', '', 1, NULL, '2016-02-23 18:40:06', '2016-02-23 18:40:06', '', 'y', 'https://avatars.githubusercontent.com/u/10265389?v=3', NULL, '10265389', 'github'),
(162, '', NULL, '', '', 1, NULL, '2016-02-25 02:14:39', '2016-02-25 02:14:39', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/9B63ABCEEA5491820C74BEF2459B2D33/100', NULL, '9B63ABCEEA5491820C74BEF2459B2D33', 'qq'),
(163, '亿尾', NULL, '', '', 1, NULL, '2016-02-26 23:25:53', '2016-02-26 23:25:53', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/410475A9AFE20933D2D4460AE7955DD9/100', NULL, '410475A9AFE20933D2D4460AE7955DD9', 'qq'),
(164, 'Jensen', NULL, '', '', 1, 'jQZmW0w6pe2HCBRhIVWDeWufCkDz0OWjuot4UP7LsJj8UFwU10yE2OMtJl4p', '2016-02-27 23:49:10', '2016-02-27 23:50:32', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/71DB4CD43E6426FD8D80161795981FDF/100', NULL, '71DB4CD43E6426FD8D80161795981FDF', 'qq'),
(165, 'xw340721', NULL, '', '', 1, 'tM7ZB5hHsU6L50oH1STZ0eWiC25W0QNAVfpnGcVv2zYyio0BNWzqPkc4HtMm', '2016-03-01 05:44:34', '2016-03-01 05:47:15', '', 'y', 'https://avatars.githubusercontent.com/u/11242534?v=3', NULL, '11242534', 'github'),
(166, '人在旅途', NULL, '', '', 1, NULL, '2016-03-03 00:36:08', '2016-03-03 00:36:08', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D9FC5DF9FEB45E4D5068CEC134174E1A/100', NULL, 'D9FC5DF9FEB45E4D5068CEC134174E1A', 'qq'),
(167, '08CMS程序黎', NULL, '', '', 1, 'KGT6yGxjoTaz1GdVFRQRXYS93CiQrJvueAnGWkSO7OKmoqbl2boJ6oohdm7N', '2016-03-03 01:38:42', '2016-03-03 01:41:02', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/59163F8F8D5BD18F7035318F4E13F96D/100', NULL, '59163F8F8D5BD18F7035318F4E13F96D', 'qq'),
(168, 'maxwell', 'lw@weilogs.com', '$2y$10$A6jHz1kIOHg4OXvrDN2XwuIOy0n.XSY15ZGVdl.S9he9MdZF6pApu', 'wnlFqsS0uS85gH2DZPs7QT2InZ5WxS03t8vmJX0AX9FMBB7M10r9psRdcFxClw@weilogs.com', 1, 'upG9Ndpy08CC3GC5HvZiBn26JmRPiImUeJRcvCOx7RKERASVoXO2h8QNjC6R', '2016-03-04 07:04:47', '2016-03-04 07:07:08', '', 'y', '/assets_home/main/upload/avatar/default/099.png', NULL, '', ''),
(169, '蝶恋灬紫', NULL, '', '', 1, NULL, '2016-03-05 21:31:37', '2016-03-05 21:31:37', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/ABD49FE86E64A056AEE061140B294972/100', NULL, 'ABD49FE86E64A056AEE061140B294972', 'qq'),
(170, 'Torll dead family', NULL, '', '', 1, NULL, '2016-03-06 07:59:07', '2016-03-06 07:59:07', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/ABB1748DB7D4402C32E112C3F81D9198/100', NULL, 'ABB1748DB7D4402C32E112C3F81D9198', 'qq'),
(171, '说时依旧', NULL, '', '', 1, NULL, '2016-03-08 00:25:23', '2016-03-08 00:25:23', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/E4898E045DEA95666CCC35EF2C733930/100', NULL, 'E4898E045DEA95666CCC35EF2C733930', 'qq'),
(172, 'gaoyl101', '774597026@qq.com', '$2y$10$XXhTEKhJoYzdyhPQhSESjOs1N223awDtUyu3MFHQHfO95fobRSAIu', 'ClOc4ON7N1aas0vpJ3KYzz10yhxL39n80JjW5q6swB9HOqMbtgsb6hXHUPZj774597026@qq.com', 1, NULL, '2016-03-13 22:25:53', '2016-03-13 22:26:19', '', 'y', '/assets_home/main/upload/avatar/default/051.png', NULL, '', ''),
(173, '琛衣国际cyintl时尚王', NULL, '', '', 1, NULL, '2016-03-14 03:09:18', '2016-03-14 03:09:18', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/E9E91D7EB59781051F94B435FFD3DA9A/100', NULL, 'E9E91D7EB59781051F94B435FFD3DA9A', 'qq'),
(174, '~~', NULL, '', '', 1, NULL, '2016-03-15 23:19:30', '2016-03-15 23:19:30', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/45DC66B8C3A0A5E08EA9CEA131BF0C9C/100', NULL, '45DC66B8C3A0A5E08EA9CEA131BF0C9C', 'qq'),
(175, 'wk1025', 'wk1025@126.com', '$2y$10$1FLzAsYXk9NjE5G3.f1okOVZvdm2169SwsjWoh..vr5s7QBNipb5.', 'iHGszjNZ27Ao9JWo9AJs518QPLkLi0myzf1bwkXgu3alKDbLCoJs5h5aZk9Fwk1025@126.com', 1, NULL, '2016-03-16 07:54:56', '2016-03-16 07:55:14', '', 'y', '/assets_home/main/upload/avatar/default/028.png', NULL, '', ''),
(176, 'Action', NULL, '', '', 1, NULL, '2016-03-17 16:18:55', '2016-03-17 16:18:55', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/7E226670DC3B9DEC8F39C4217034E037/100', NULL, '7E226670DC3B9DEC8F39C4217034E037', 'qq'),
(177, 'zhao', '980899048@qq.com', '$2y$10$zB9CwjYquZHbSkQ4KOzs8O5hAhuKlJ9WQpvz4GkIK.mYg3tvyMHZC', 'iLwGbvCqSqtONIzBWCfiU9Z3ddClQYhNf1HPUkSnAMDAFoENdeidk3t87PMj980899048@qq.com', 1, NULL, '2016-03-19 23:33:17', '2016-03-19 23:33:36', '', 'y', '/assets_home/main/upload/avatar/default/068.png', NULL, '', ''),
(178, '赵志强', NULL, '', '', 1, NULL, '2016-03-20 10:21:46', '2016-03-20 10:21:46', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/CACCCA9D8F3B6DC52B2B0C8DC22D2DB3/100', NULL, 'CACCCA9D8F3B6DC52B2B0C8DC22D2DB3', 'qq'),
(179, '解颂祥', '578801306@qq.com', '$2y$10$kWsFkyz5r.YhUoZs70n1De8Cc.mdOytevVynqBuFMlBslCAWqVd8G', 'HqruSSStDap750lkZNKfD9C22Py10gwx8QRqYFlXOo4i2n3wcwdW5Rs4fMkF578801306@qq.com', 1, '70WiR6obTd79oJlSSvpMxywCBcKo2MbAmsxbfSxhcYfuhHOTjb7hUj9OCDtN', '2016-03-20 23:17:22', '2016-03-20 23:18:37', '', 'y', '/assets_home/main/upload/avatar/default/013.png', NULL, '', ''),
(180, 'shao5438', '404937886@qq.com', '$2y$10$re5oZBoanR0LC9PeHr99ZOYK22e04xQTqgxKRvRQEL5OpVuzEHFzy', 'M3Dm5BZ6ynWM7TPaylvjUWwPgj8WjPqaX60iSi3AAIIRn32l3f2qHHxrx8Gb404937886@qq.com', 1, NULL, '2016-03-21 22:49:26', '2016-03-21 22:49:40', '', 'y', '/assets_home/main/upload/avatar/default/055.png', NULL, '', ''),
(181, '龙卷风', NULL, '', '', 1, NULL, '2016-03-23 06:37:36', '2016-03-23 06:37:36', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/63E754560FC3A6F7826FC2938C67E2D3/100', NULL, '63E754560FC3A6F7826FC2938C67E2D3', 'qq'),
(182, 'abcdcba', 'liugefeng@ccjmu.com', '$2y$10$ZQdf3mzId0S5RL.nuGKsYO20HnhXLsw1hRo/u2XOPurntk5Db.baO', '0Gv6mc21NiOiSo8HdsahVyy4iXcUIEkedrtxKC7PxnuOLGC7FvRD399vGaLVliugefeng@ccjmu.com', 1, 'w7d86He4LK47gmBq0Yz0GYDwnblv8TDOKIyvprgyzTqARoTL6NNp2TMQbEDo', '2016-03-23 19:27:08', '2016-03-23 19:35:32', '', 'y', '/assets_home/main/upload/avatar/default/036.png', NULL, '', ''),
(183, 'Amber', NULL, '', '', 1, 'vC8eX8kG8AHivrTVeFp336bDIi4jguGjgXS4zjZT2xW47lAFYHsPune4pJ7b', '2016-03-23 20:05:19', '2016-03-23 23:42:21', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/B099936B9421C5AC23B25D27269115EF/100', NULL, 'B099936B9421C5AC23B25D27269115EF', 'qq'),
(184, '000', NULL, '', '', 1, NULL, '2016-03-24 02:21:27', '2016-03-24 02:21:27', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/3525FF5116250C319FBEA3165AEB5358/100', NULL, '3525FF5116250C319FBEA3165AEB5358', 'qq'),
(185, 'itmuzi', NULL, '', '', 1, NULL, '2016-03-24 03:28:14', '2016-03-24 03:28:14', '', 'y', 'https://avatars.githubusercontent.com/u/11394103?v=3', NULL, '11394103', 'github'),
(186, '贵阳人', 'guizhou.lihuaiyu@foxmail.com', '$2y$10$m4fageYvqC/HKb2xXvk4..rQYbsuWSqXrdioNXuehs89ew6tQW6OK', '', 1, NULL, '2016-03-24 03:28:36', '2016-03-24 03:29:07', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/1BF38E158868775F8377F3E883FD0345/100', NULL, '1BF38E158868775F8377F3E883FD0345', 'qq'),
(187, '李中堂', NULL, '', '', 1, NULL, '2016-03-24 08:03:45', '2016-03-24 08:03:45', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/A096EA9AA98EB7290EB89DF70412532F/100', NULL, 'A096EA9AA98EB7290EB89DF70412532F', 'qq'),
(188, '张平阳', 'friendlymenfolk@gmail.com', '$2y$10$rG6QOpnV/0DxmpKiq6tTDujnMa0XLM3okUPmpfQY8DMSwF7tCXIoG', 'kAqN3aEkNBIjCpevqw52QUrRmRPCSgptnmv9Fv0tBHjOGoqSpGO9STUHgd2Rfriendlymenfolk@gmail.com', 1, 'UtgR2EH4JiEdw4yha2wKGDIm4Dnob0UaIpBdZXA3rMoLvsMtjA8UdEcRIMed', '2016-03-24 22:06:33', '2016-03-27 16:35:53', '', 'y', '/uploads/avatar/6Xz1WvoHNVNYZBx1f9zDnHT8lVqUIn3fcarBiRmo.jpg', NULL, '', ''),
(189, '梦回+1', NULL, '', '', 1, NULL, '2016-03-25 01:13:09', '2016-03-25 01:13:09', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/C03C93D266F6D2B6EA6374F5F801BD3D/100', NULL, 'C03C93D266F6D2B6EA6374F5F801BD3D', 'qq'),
(190, '2642375043', '2642375043@qq.com', '$2y$10$RoRamO4FjDmkLfXookPMDO7DrxG0kDUtx5OkgOX15j0P1hgJdXitS', 'krfh3iVH374hknBkMTu0KNgKJbC1NsKf2YCedXU9ucjzAuLRv5esKNYXsbVg2642375043@qq.com', 1, 'YomQwHJnqvH7705m1L0Mx3YIbZ7xK5ne4HdBi0O26mWFhAmXI3CF7ZqDC0KE', '2016-03-27 18:04:23', '2016-06-30 22:43:38', '', 'y', '/assets_home/main/upload/avatar/default/056.png', NULL, '', ''),
(191, 'LiLiKiLL', NULL, '', '', 1, NULL, '2016-03-29 00:52:14', '2016-03-29 00:52:14', '', 'y', 'https://avatars.githubusercontent.com/u/5565131?v=3', NULL, '5565131', 'github'),
(192, 'Jax_小', NULL, '', '', 1, NULL, '2016-03-29 18:13:05', '2016-03-29 18:13:05', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/891D4A3EB6E7389E3BCBE2534ACC6056/100', NULL, '891D4A3EB6E7389E3BCBE2534ACC6056', 'qq'),
(193, 'stoensin', NULL, '', '', 1, NULL, '2016-03-30 03:47:53', '2016-03-30 03:47:53', '', 'y', 'https://avatars.githubusercontent.com/u/8474954?v=3', NULL, '8474954', 'github'),
(194, '黑名单', NULL, '', '', 1, NULL, '2016-03-30 06:46:20', '2016-03-30 06:46:20', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/202A5A20668F5A55D301708A0BBA6A34/100', NULL, '202A5A20668F5A55D301708A0BBA6A34', 'qq'),
(195, ' vice^-^', NULL, '', '', 1, NULL, '2016-03-30 20:51:03', '2016-03-30 20:51:03', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/A326A7C779309442DF4F5A676D1937CD/100', NULL, 'A326A7C779309442DF4F5A676D1937CD', 'qq'),
(196, 'v', NULL, '', '', 1, NULL, '2016-03-30 22:47:44', '2016-03-30 22:47:44', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/5AD84A736B1CB394AE2D1720F1E34FBE/100', NULL, '5AD84A736B1CB394AE2D1720F1E34FBE', 'qq'),
(197, 'tangbaobao', '1443675842@qq.com', '$2y$10$kOuMiHGviXPVIOoR2Syr3.V2gHp17gY1lx2hLoehyyMPV1chHYboy', 'P2xYCwXxaAJeCwJK0w9zbedydzWYRpYDVpZDKfZL0othnNUUR4P5CYvxEPe81443675842@qq.com', 1, '4E4oncxnwDuKZfaLxzOJEwu1TMYTfAlHZMHwR4aaM2hUpTWuMM1bIwh8amhY', '2016-03-31 18:14:40', '2016-03-31 18:18:41', '', 'y', '/assets_home/main/upload/avatar/default/047.png', NULL, '', ''),
(198, '゛梨涡浅笑╮╯', NULL, '', '', 1, NULL, '2016-03-31 18:19:51', '2016-03-31 18:19:51', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/FA717DF253A9A38547D55A4F7EBB6169/100', NULL, 'FA717DF253A9A38547D55A4F7EBB6169', 'qq'),
(199, 'IF YOU', NULL, '', '', 1, NULL, '2016-03-31 23:20:06', '2016-03-31 23:20:06', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/338913BE326A2CB1F62341899C62A4E4/100', NULL, '338913BE326A2CB1F62341899C62A4E4', 'qq'),
(200, 'Aliety', 'aliety@163.com', '$2y$10$YswTTqyvZFSeuUsUXnXltOvR6NOhm1t.lQvMI9Kj0.UzEIu1zZJ42', 'Nvfz9nIom1mhtZ6fg2e8kCKNXLorEvCOK48lmmBa0o7o6eOBBxyh11SdihBJaliety@163.com', 1, NULL, '2016-04-01 17:19:07', '2016-04-01 17:19:44', '', 'y', '/assets_home/main/upload/avatar/default/055.png', NULL, '', ''),
(201, 'overtrue', NULL, '', '', 1, NULL, '2016-04-02 03:49:33', '2016-04-02 03:49:33', '', 'y', 'https://avatars.githubusercontent.com/u/1472352?v=3', NULL, '1472352', 'github'),
(202, 'adriancobb', 'adrian@dynamsoft.com', '$2y$10$dXLpYMu0k04WZL94gqq2M.lA4UYK604.nTVwXDro5kN9YYdZ/2sxS', '2pySGKRg3MUSqLcWySJogEEucePxQJ2VX3Gqf7Wkk5hQVzEHSIBFBYYb0K6vadrian@dynamsoft.com', 1, 'ALrrXSBVElg1rP2w6Bj67JwfN2fUNY7JWnTmSJZ3BcFFkcJKSrMSOfyel98k', '2016-04-05 21:43:35', '2016-04-07 18:37:59', '', 'y', '/assets_home/main/upload/avatar/default/090.png', NULL, '', ''),
(203, '落地无声', NULL, '', '', 1, NULL, '2016-04-06 00:22:39', '2016-04-06 00:22:39', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/420EEF2CE0FA601925B95924B76D5103/100', NULL, '420EEF2CE0FA601925B95924B76D5103', 'qq'),
(204, 'alspxl', 'woaiganz@163.com', '$2y$10$v3AmzAOEwKX9Oa7PRh0HXuR0AkrGNXVsOd7UjTrrqmaHCaTKAw8ji', 'r312Hb9UnNmvfG1wEzlws0IlQ14esFMWOI2CwlJcr4AJmUvuWPwOfyUZIdUhwoaiganz@163.com', 1, NULL, '2016-04-06 13:37:21', '2016-04-06 13:38:01', '', 'y', '/assets_home/main/upload/avatar/default/053.png', NULL, '', ''),
(205, '蚂蚁', NULL, '$2y$10$m/jfrHTSbeMOzT9CCy45c.igifo6ihGlXKFo07qtJeI7V8Ni.CcDi', '', 1, NULL, '2016-04-06 21:31:50', '2016-04-07 06:03:37', '', 'y', '/uploads/avatar/Z34yM6dGqs3THRNVsXmIZxwTa3XZl5tSoONBK6Ow.jpg', NULL, '86A9AD48FD436B63FC33774ED2C729E9', 'qq'),
(206, 'chunjingqiu', NULL, '', '', 1, NULL, '2016-04-06 23:37:36', '2016-04-06 23:37:36', '', 'y', 'https://avatars.githubusercontent.com/u/14174491?v=3', NULL, '14174491', 'github'),
(207, 'devin', 'liujiangyi1@sina.com', '$2y$10$ZCggwccdypvE8xq5835Xk.SR72TYPBRUi5utwSNKanySqjyeMuceW', '4MpsYnVQubrBjMFcotHwLMfItqoZWtF6KTuKoJi47tVFYe2p07ITZTcDO0MTliujiangyi1@sina.com', 1, NULL, '2016-04-06 23:51:53', '2016-04-06 23:53:51', '', 'y', '/assets_home/main/upload/avatar/default/064.png', NULL, '', ''),
(208, 'skywingfs', NULL, '', '', 1, NULL, '2016-04-07 09:50:27', '2016-04-07 09:50:27', '', 'y', 'https://avatars.githubusercontent.com/u/12905834?v=3', NULL, '12905834', 'github'),
(209, 'Mr.G', NULL, '', '', 1, NULL, '2016-04-10 22:46:05', '2016-04-10 22:46:05', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/2F82B8DEF9C2EF25843487480FBFBA72/100', NULL, '2F82B8DEF9C2EF25843487480FBFBA72', 'qq'),
(210, 'cake654326', NULL, '', '', 1, NULL, '2016-04-10 23:21:06', '2016-04-10 23:21:06', '', 'y', 'https://avatars.githubusercontent.com/u/2568474?v=3', NULL, '2568474', 'github'),
(211, '豆爸-逃逸的风', NULL, '', '', 1, NULL, '2016-04-12 17:57:01', '2016-04-12 17:57:01', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/5D58854220256D12952873135AA92BC9/100', NULL, '5D58854220256D12952873135AA92BC9', 'qq'),
(212, '独季', NULL, '', '', 1, NULL, '2016-04-13 01:16:23', '2016-04-13 01:16:23', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D23464C8A9D5179E8268BE4F3A816D46/100', NULL, 'D23464C8A9D5179E8268BE4F3A816D46', 'qq'),
(213, '简单', NULL, '', '', 1, NULL, '2016-04-14 21:39:48', '2016-04-14 21:39:48', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/F7C89555EA0E86CC5B6E891935A85273/100', NULL, 'F7C89555EA0E86CC5B6E891935A85273', 'qq'),
(214, '夏天', NULL, '', '', 1, NULL, '2016-04-14 22:32:43', '2016-04-14 22:32:43', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D9E9C94CA2F3112FBCE696611BA2B415/100', NULL, 'D9E9C94CA2F3112FBCE696611BA2B415', 'qq'),
(215, '库拉索小生', NULL, '', '', 1, NULL, '2016-04-15 01:51:26', '2016-04-15 01:51:26', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D477FF90CF75ECE359E6FAFD58E72F3D/100', NULL, 'D477FF90CF75ECE359E6FAFD58E72F3D', 'qq'),
(216, 'cevin', 'cevin.cheung@gmail.com', '$2y$10$83RZtKskHuXuzVv3rPYaNO5K26AlgmovUV2b3TZl0uqKggWfYiJau', 'hI6rEW711lSifuYST4MhO8782r4G7hxgXnm8zN4q07MY0gXxw3JYUO9yCeLfcevin.cheung@gmail.com', 1, NULL, '2016-04-16 06:21:52', '2016-04-16 06:24:38', '', 'y', '/assets_home/main/upload/avatar/default/092.png', NULL, '', ''),
(217, 'a゛❥゛.韩宇', NULL, '', '', 1, NULL, '2016-04-18 19:54:02', '2016-04-18 19:54:02', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/668BD84260F688C5383CC25B3D3CA52C/100', NULL, '668BD84260F688C5383CC25B3D3CA52C', 'qq'),
(218, 'Ivan（一凡）', '1184795629@qq.com', '$2y$10$g9wrXuHU0odWN0wtXAUTLO.zcULD/qv0i9Z6jED2B4dYEEOVsYRSy', '', 1, NULL, '2016-04-19 21:43:48', '2016-04-19 21:44:24', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/67D57BB5CD6B8D5775F1CBCB4DCD7C6D/100', NULL, '67D57BB5CD6B8D5775F1CBCB4DCD7C6D', 'qq'),
(219, 'd8q8', 'd8q8@163.com', '$2y$10$aX.UYQirSzweVrik/.wLOOyNV5DPF6VbMyhMA2HGqsncCX18/vbsa', '', 1, NULL, '2016-04-19 23:20:17', '2016-04-19 23:20:55', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/227567E4160096D7F449D9CDE57228FF/100', NULL, '227567E4160096D7F449D9CDE57228FF', 'qq'),
(220, 'hzh1990', NULL, '', '', 1, NULL, '2016-04-20 05:17:09', '2016-04-20 05:17:09', '', 'y', 'https://avatars.githubusercontent.com/u/4394948?v=3', NULL, '4394948', 'github'),
(221, '飘花弄柳', NULL, '', '', 1, NULL, '2016-04-20 18:38:06', '2016-04-20 18:38:06', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/120BA37A89B498A0312E0F5AABD9094F/100', NULL, '120BA37A89B498A0312E0F5AABD9094F', 'qq'),
(222, 'zengdongbao', NULL, '', '', 1, NULL, '2016-04-26 19:32:02', '2016-04-26 19:32:02', '', 'y', 'https://avatars.githubusercontent.com/u/265074?v=3', NULL, '265074', 'github'),
(223, 'connor_php', 'connor_php@163.com', '$2y$10$Nj14TlmHtVB2bQAx7W.YLeyDooJwnTRy2VSsZ0wvwOimP7EnwOb16', 'THk0R8zvvKQJ4vu2GfbhC12ehjfbLUzF8Y4fa4HA31vPC1S6pKPyM4YMj8yfconnor_php@163.com', 0, NULL, '2016-04-27 22:32:21', '2016-04-27 22:32:21', '', 'y', '/assets_home/main/upload/avatar/default/003.png', NULL, '', ''),
(224, '弈', NULL, '', '', 1, NULL, '2016-04-28 19:53:28', '2016-04-28 19:53:28', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/EEB172593D243616C5B65D7D6438EE95/100', NULL, 'EEB172593D243616C5B65D7D6438EE95', 'qq'),
(225, 'liuquanalways', NULL, '', '', 1, NULL, '2016-04-29 04:46:18', '2016-04-29 04:46:18', '', 'y', 'https://avatars.githubusercontent.com/u/10722316?v=3', NULL, '10722316', 'github'),
(226, '刘忱', NULL, '', '', 1, NULL, '2016-04-30 04:33:34', '2016-04-30 04:33:34', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/C19F04F7F45C87CD14E35CBA5BA320D2/100', NULL, 'C19F04F7F45C87CD14E35CBA5BA320D2', 'qq'),
(227, '好儿郎', NULL, '', '', 1, NULL, '2016-04-30 18:55:39', '2016-04-30 18:55:39', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/88CBFAA6D240E8AFD5595E757B2914FC/100', NULL, '88CBFAA6D240E8AFD5595E757B2914FC', 'qq'),
(228, 'Meepo校园科技', NULL, '', '', 1, NULL, '2016-05-04 06:53:03', '2016-05-04 06:53:03', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/04D6A77F0D9E49E1D3DFC8B07D08A9C1/100', NULL, '04D6A77F0D9E49E1D3DFC8B07D08A9C1', 'qq'),
(229, '.', NULL, '', '', 1, NULL, '2016-05-04 23:24:26', '2016-05-04 23:24:26', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/02DD149AE7F6D86DD2BDEFB1E1EAC202/100', NULL, '02DD149AE7F6D86DD2BDEFB1E1EAC202', 'qq'),
(230, 'sniperTon', NULL, '', '', 1, NULL, '2016-05-05 19:13:05', '2016-05-05 19:13:05', '', 'y', 'https://avatars.githubusercontent.com/u/19178287?v=3', NULL, '19178287', 'github'),
(231, 'superyuyue', NULL, '', '', 1, NULL, '2016-05-05 21:57:49', '2016-05-05 21:57:49', '', 'y', 'https://avatars.githubusercontent.com/u/2368504?v=3', NULL, '2368504', 'github'),
(232, 'yuansir', NULL, '', '', 1, NULL, '2016-05-05 23:01:14', '2016-05-05 23:01:14', '', 'y', 'https://avatars.githubusercontent.com/u/1848702?v=3', NULL, '1848702', 'github'),
(233, 'Black-Bug', NULL, '', '', 1, NULL, '2016-05-06 21:38:18', '2016-05-06 21:38:18', '', 'y', 'https://avatars.githubusercontent.com/u/8360778?v=3', NULL, '8360778', 'github'),
(234, '清风自来', NULL, '', '', 1, NULL, '2016-05-09 00:30:26', '2016-05-09 00:30:26', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/F69A116A054A1397C9CC9C11F5ED64EF/100', NULL, 'F69A116A054A1397C9CC9C11F5ED64EF', 'qq'),
(235, 'Luis', '2794408425@qq.com', '$2y$10$u/en8m4Ou57NbK39jOWstO.PVpY65fMo9h3OdVX.Hkb3OHVdwTeri', 'dAglaWfNOXr0vPhTrqtyORjeANEr4LmfGjgytKSBQvqhs61D6rC6JjdLFrZS2794408425@qq.com', 1, NULL, '2016-05-10 19:29:01', '2016-05-10 19:32:35', '', 'y', '/assets_home/main/upload/avatar/default/036.png', NULL, '', ''),
(236, 'ningmer', NULL, '', '', 1, NULL, '2016-05-11 01:35:07', '2016-05-11 01:35:07', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/0B3D82183CF5C2A69CE2F2C5C42E41E7/100', NULL, '0B3D82183CF5C2A69CE2F2C5C42E41E7', 'qq'),
(237, 'tanglonglong', '318521514@qq.com', '$2y$10$V9Aay1UJikdS3itQZ/i/NuCTeLCQjLZvU2b3ie3sZrYfKt.To8t2m', 'TugvA8VdcWVyOQ11HV0e8Z4bvrwy1vAbfWzmcHjKliHEeYyvJRipw73y4IeC318521514@qq.com', 1, NULL, '2016-05-13 05:17:18', '2016-05-13 05:17:37', '', 'y', '/assets_home/main/upload/avatar/default/050.png', NULL, '', ''),
(238, 'wlstpgo', NULL, '', '', 1, NULL, '2016-05-15 17:51:49', '2016-05-15 17:51:49', '', 'y', 'https://avatars.githubusercontent.com/u/8254247?v=3', NULL, '8254247', 'github'),
(239, '优加生活-钟宝', NULL, '', '', 1, NULL, '2016-05-15 22:10:49', '2016-05-15 22:10:49', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/9649A654568566E99D4BC978ECF530B4/100', NULL, '9649A654568566E99D4BC978ECF530B4', 'qq'),
(240, 'buer2202', 'buer2202@163.com', '$2y$10$4Da.hcqd2uQbiJchZzaDte6g1/qNV244YdxennC.gyi0gmMq1ZhfW', '7XDQ9H9pJsgpSC3YWjlfbvLMgx8ECRq1TUGUqsCvhseJEfDdvpeXyjFXFCVubuer2202@163.com', 1, NULL, '2016-05-17 00:29:58', '2016-05-17 00:30:34', '', 'y', '/assets_home/main/upload/avatar/default/045.png', NULL, '', '');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `activation_code`, `active`, `remember_token`, `created_at`, `updated_at`, `settings`, `notify`, `avatar_path`, `deleted_at`, `oa_id`, `oa_type`) VALUES
(241, '暮落枫', NULL, '', '', 1, NULL, '2016-05-17 18:30:05', '2016-05-17 18:30:05', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/1B08279B67CC032521E164CB6F1C7AEB/100', NULL, '1B08279B67CC032521E164CB6F1C7AEB', 'qq'),
(242, 'huangzi2009', NULL, '', '', 1, NULL, '2016-05-17 19:33:34', '2016-05-17 19:33:34', '', 'y', 'https://avatars.githubusercontent.com/u/17724029?v=3', NULL, '17724029', 'github'),
(243, 'yanqing6628780', NULL, '', '', 1, NULL, '2016-05-19 01:24:21', '2016-05-19 01:24:21', '', 'y', 'https://avatars.githubusercontent.com/u/8479740?v=3', NULL, '8479740', 'github'),
(244, 'huangzi2009', 'huangzi2009@126.com', '$2y$10$AOqzB4VL3ygR5YtnS7TjIeLruxUagqC8Kx3cpSCGeoRBFMJbXvpXi', 'rDI87S36UWA2Qj9a4o2zKHEEXFE41xZyPiJHi8cEFoUN6Iz3guTRJMjRNhiehuangzi2009@126.com', 1, NULL, '2016-05-19 06:11:24', '2016-05-19 06:15:08', '', 'y', '/assets_home/main/upload/avatar/default/016.png', NULL, '', ''),
(245, '宝葫芦', NULL, '', '', 1, NULL, '2016-05-21 04:43:35', '2016-05-21 04:43:35', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/B416C1A942F1918E440C376E0D481928/100', NULL, 'B416C1A942F1918E440C376E0D481928', 'qq'),
(246, 'chentingting123', '2539131080@qq.com', '$2y$10$dZmomiZYfp1WMFnqXDl0ZeKsPtWj3UXfgAphWcRgCGgrw7ENC8IMu', 'ha4pz3IIGyeX3e6UPldjAMdCQhsGI1KLfA2xUUNjtlMkX0tsG0C85uCETDnl2539131080@qq.com', 1, NULL, '2016-05-22 07:26:43', '2016-05-22 07:27:08', '', 'y', '/assets_home/main/upload/avatar/default/046.png', NULL, '', ''),
(247, 'x24545', '1114605096@qq.com', '$2y$10$nX/TNC/rkV4Jz71/l1G0Q.84LfXIJtj80P/3j8e2Sd5cf35EGxB3e', 'SXKsxSZl6Z7qQmD3BlfqiJyLLgmhvoTvsa9NE2eLVNBWHZyv5lLh1PYkEoSP1114605096@qq.com', 1, '4qSF8RP6KvgQjFQS2ut9incuePc4xLgB01gS8ml4L6f5xRgu77gRreFfC5H1', '2016-05-22 22:03:54', '2016-05-23 00:53:52', '', 'y', '/assets_home/main/upload/avatar/default/081.png', NULL, '', ''),
(248, '幻灭', '87491332@qq.com', '$2y$10$7XF4acZNdcONRVFm4I3n4.419WurZw1dn0ufhbqHWaZcZPYdbA/mq', '5hAjkJ8rvVhCDLCayzRSFkB1xuc11i44NYH3uzmlIoZZCsJL5StVitN4seXm87491332@qq.com', 0, NULL, '2016-05-23 00:20:26', '2016-05-23 00:20:26', '', 'y', '/assets_home/main/upload/avatar/default/021.png', NULL, '', ''),
(249, '董冻', NULL, '', '', 1, NULL, '2016-05-23 18:06:09', '2016-05-23 18:06:09', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/C5849799C3DD19F22CD08A24F8B0906D/100', NULL, 'C5849799C3DD19F22CD08A24F8B0906D', 'qq'),
(250, 'shglgaoli', 'shglgaoli@163.com', '$2y$10$oqbZh2Tvv5HYP1b5d6ert.yLThbZb2c18ukffzy6Cdvo0RAsN.Wt.', 'u4NRnS8L9y0UpjN026K5ZMFX9k5gbjpBBgd42CQbbfUxfnCHbU5x7L5H9eMTshglgaoli@163.com', 1, NULL, '2016-05-23 23:14:33', '2016-05-23 23:15:13', '', 'y', '/assets_home/main/upload/avatar/default/012.png', NULL, '', ''),
(251, '一壶茶水', NULL, '', '', 1, NULL, '2016-05-24 03:45:35', '2016-05-24 03:45:35', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/7F1425D56A286904F5C1F9656D8B0549/100', NULL, '7F1425D56A286904F5C1F9656D8B0549', 'qq'),
(252, 'hancock', '1115769342@qq.com', '$2y$10$2K.LYfJV5.W0vy2PLTUPmeF4tf9Fbj0kFr.Golc8bwEp3J2/CISci', 'pE4rzb4vEKGMiKHo6AMZhtCUDpc6szFrUm8maK11Z4ko10QWUNlzLt5J6Yft1115769342@qq.com', 1, NULL, '2016-05-24 23:27:38', '2016-05-24 23:30:13', '', 'y', '/assets_home/main/upload/avatar/default/068.png', NULL, '', ''),
(253, '喵小猫', '108725426@qq.com', '$2y$10$GNdnWWQnjsO8HG2bVK/.0u3.XSsWotu3LviNJILk77SAffySKueqO', 'EO4qEHapFBDLju81ydsCxeTctEVsg9bhMMGBtsDxe2fiKOJu1pjeH9wi03v0108725426@qq.com', 1, '0ttCt5cbW1z6XzG5j07Kptb9ovrT1wiYJS4Psgw9G2lwaTqYQv0TFCWyth4P', '2016-05-25 00:25:34', '2016-05-25 17:03:34', '', 'y', '/assets_home/main/upload/avatar/default/077.png', NULL, '', ''),
(254, '追梦', NULL, '', '', 1, NULL, '2016-05-26 05:25:25', '2016-05-26 05:25:25', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/4794A58F91E9031FDE11B90722629527/100', NULL, '4794A58F91E9031FDE11B90722629527', 'qq'),
(255, '欧莱雅', NULL, '', '', 1, NULL, '2016-05-29 04:22:18', '2016-05-29 04:22:18', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/C375FFAE5BBD09C24A861D37A6199D67/100', NULL, 'C375FFAE5BBD09C24A861D37A6199D67', 'qq'),
(256, '落叶', NULL, '', '', 1, NULL, '2016-05-29 18:57:25', '2016-05-29 18:57:25', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/8B7133F38C02E713A8A8565B9EA23E75/100', NULL, '8B7133F38C02E713A8A8565B9EA23E75', 'qq'),
(257, '最懒进化', 'chenyuanqi90s@163.com', '$2y$10$r4RHbSqcBKDQQdwa6DI1NuHd4N2vrmFQiB2g8IoWp23R6jwyfMD4S', '07p2rascifH0V2YNDdIBmJaNq4zCxo7Z8D4HQiH1xgCUsRVVVGKCGdh75nLUchenyuanqi90s@163.com', 1, NULL, '2016-05-30 08:22:31', '2016-05-30 08:24:00', '', 'y', '/assets_home/main/upload/avatar/default/044.png', NULL, '', ''),
(258, '胡搞', 'whahuzhihao@126.com', '$2y$10$eGQevyYE/9ESYuhFTCX04eEXYC9FindqI26EL4GxHrf5b01xnrIXG', '6WnoVBbY5Abq5dWjvIBJIeDcqFlJ2Rgagg1x80qtC9Usi7Z1IJgb90OTXcL2whahuzhihao@126.com', 1, NULL, '2016-05-31 02:40:16', '2016-05-31 02:41:19', '', 'y', '/assets_home/main/upload/avatar/default/008.png', NULL, '', ''),
(259, 'hickff', NULL, '', '', 1, NULL, '2016-05-31 19:03:17', '2016-05-31 19:03:17', '', 'y', 'https://avatars.githubusercontent.com/u/6949719?v=3', NULL, '6949719', 'github'),
(260, 'yjlisoft', 'yjlimail@163.com', '$2y$10$yFrHrkA4s2831hr9n/ttMOvOmaYOZteNPYDof854lAQxtfBZp7Oiu', 'MhmFFYRWn7WDaS1r84JozZz6vSMdI7QSxsdAKUJqO6LKDfW5TxhXkLyPCOfVyjlimail@163.com', 0, 'osb1bf3TTMO96mLFGlH0FBWEQjyuO0iJTf8gXgWy9km46Zu9UxDrsoAZdBmU', '2016-06-02 06:29:58', '2016-06-02 06:30:19', '', 'y', '/assets_home/main/upload/avatar/default/053.png', NULL, '', ''),
(261, 'Assassin', NULL, '', '', 1, NULL, '2016-06-04 23:39:44', '2016-06-04 23:39:44', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/C83C0C4465E382919F1D796A31A135E9/100', NULL, 'C83C0C4465E382919F1D796A31A135E9', 'qq'),
(262, 'dengyun', '52046253@qq.com', '$2y$10$0BGawO0Tm0di0EaMrevAM.w1UbOZIjHH8iTHgE7Z/qTzfdD4VgxNm', 'AQSIwThRYISN2g2UflSxDEHeBEXR02GIKHPPMG0woTXtjO3sRp8oSLUIFJeK52046253@qq.com', 1, NULL, '2016-06-05 19:55:55', '2016-06-05 21:49:30', '', 'y', '/assets_home/main/upload/avatar/default/004.png', NULL, '', ''),
(263, '乐页网', NULL, '', '', 1, NULL, '2016-06-09 21:05:18', '2016-06-09 21:05:18', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/EDB5F9ED99FE3EE7BCF5A52AECEABC3C/100', NULL, 'EDB5F9ED99FE3EE7BCF5A52AECEABC3C', 'qq'),
(264, '牛牛', NULL, '', '', 1, NULL, '2016-06-10 20:31:01', '2016-06-10 20:31:01', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/D6E95C2B3F1BEB7DE2FD4EE44CED0204/100', NULL, 'D6E95C2B3F1BEB7DE2FD4EE44CED0204', 'qq'),
(265, 'lings7788', '3528444@qq.com', '$2y$10$OWZCPPI8a6C8JK9REk.fOOjxFAA9Nnm5dDuvV2/tLjjU.sTZlhjD6', 'yo4ATHkzN1FzBbCvsXtstfKZ0cPyntLfPNbL7FH69MuQhKOushVsSXDtHJ2H3528444@qq.com', 1, NULL, '2016-06-10 23:45:01', '2016-06-10 23:47:07', '', 'y', '/uploads/avatar/PLNI4xylKjjfDjzd4DJ2G34ZspzzfR79diFNV2Eb.jpg', NULL, '', ''),
(266, '胡子', NULL, '', '', 1, NULL, '2016-06-11 05:56:58', '2016-06-11 05:56:58', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/AC7AB65F1DCFB85E9241A53D00890B1F/100', NULL, 'AC7AB65F1DCFB85E9241A53D00890B1F', 'qq'),
(267, 'soon365', '386348494@qq.com', '$2y$10$Pjxf.rpbZUEIGuIPPWW3j.d4n.u3QMBtd9wRfN.AnoXucL/iN6iHi', '6EIHqxR5iXtFrEgObfE9Q2rKP3dtQRGnnmQiJahB2HiJ5iujssYjsWm4K1oj386348494@qq.com', 1, NULL, '2016-06-11 18:25:10', '2016-06-11 18:25:27', '', 'y', '/assets_home/main/upload/avatar/default/080.png', NULL, '', ''),
(268, 'leolord', 'fortomorrow@163.com', '$2y$10$pY4BSWI3MzgHoH1pL.EfyuRyrKMnU0RGLb9omlxINLsYT9cZ5Qxn2', 'N6gXKwiTjya7pg3wovzExM2OZiCEfRGmQHGTwkKx5I2FjRO4L7emprjiKsvYfortomorrow@163.com', 1, NULL, '2016-06-11 22:27:02', '2016-06-11 22:27:25', '', 'y', '/assets_home/main/upload/avatar/default/099.png', NULL, '', ''),
(269, 'fujie', NULL, '', '', 1, NULL, '2016-06-16 07:52:28', '2016-06-16 07:52:28', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/96E8CC65D6295386D051D733524E6542/100', NULL, '96E8CC65D6295386D051D733524E6542', 'qq'),
(270, '技术宅', NULL, '', '', 1, NULL, '2016-06-19 07:17:39', '2016-06-19 07:17:39', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/300381FB71C743D71EE6A635BAFADB98/100', NULL, '300381FB71C743D71EE6A635BAFADB98', 'qq'),
(271, 'zhoufei', '596740325@qq.com', '$2y$10$I1AVQiyNbKH29zJAtUIoDunBPoIeEa42aKH07CjLEw.YrzySDQkOO', 'q3oZ3YOoIzybve4PFGOApEFNTmWLWEFXeYiOvDAER04eWucTktEQ628lIo0x596740325@qq.com', 1, NULL, '2016-06-19 19:03:17', '2016-06-19 19:03:34', '', 'y', '/assets_home/main/upload/avatar/default/029.png', NULL, '', ''),
(272, '可乐', 'wqy1032@163.com', '$2y$10$DR7J/jvdBagzekeCD561VeNC9yZJUzxs0uFmTx.4Rc9t6ZOMnUOOG', 'I7K0B7GS0Dj374EdO3oe3NYCx0a4Z2oVeS0qvp52t7DHBNMmjVieDb0Ow3BFwqy1032@163.com', 1, NULL, '2016-06-22 00:58:42', '2016-06-22 00:59:17', '', 'y', '/assets_home/main/upload/avatar/default/099.png', NULL, '', ''),
(273, 'PHP开发攻城狮', NULL, '', '', 1, NULL, '2016-06-22 07:37:14', '2016-06-22 07:37:14', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/838CE5E1E680A098116BFA663EE9A440/100', NULL, '838CE5E1E680A098116BFA663EE9A440', 'qq'),
(274, '打谷', NULL, '', '', 1, NULL, '2016-06-23 18:57:19', '2016-06-23 18:57:19', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/5F1AEE86135245EFB41504E3CEFBE05E/100', NULL, '5F1AEE86135245EFB41504E3CEFBE05E', 'qq'),
(275, 'cgzo', NULL, '', '', 1, NULL, '2016-06-23 22:12:56', '2016-06-23 22:12:56', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/49EF26228BB65811502C6AD895D14540/100', NULL, '49EF26228BB65811502C6AD895D14540', 'qq'),
(276, 'Berry', 'gdlr51@163.com', '$2y$10$lzM2jXg2/o0kf0w62DDnZuZei4.AaglnFYfsmGH7S5B8fTkh6awbe', 'wQCxseWS8EHgDiRekzcOuTlxhKBPX1mCjYjJ5lJj8oc5shY94iOhgUu086ktgdlr51@163.com', 1, NULL, '2016-06-26 01:59:28', '2016-06-26 01:59:44', '', 'y', '/assets_home/main/upload/avatar/default/052.png', NULL, '', ''),
(277, 'k80', '1245779022@qq.com', '$2y$10$iJPo5MChh6Uyo192j2CyL.yo15leOr23W00sBNR.3DEmO6QVEKWRy', 'piVX9V8qUAHVJYjoWL6YJShzqIgvWeysSQHYgTNOrwiikfoy43a85xbZD4lR1245779022@qq.com', 1, 'B0vngPWxrQ5yGgqjSVTXXqwlOgKCuUmNxnEIiQWqxKjhuvQgjjjTo18tgvyt', '2016-06-28 17:50:45', '2016-06-28 18:02:18', '', 'y', '/uploads/avatar/yeC4JjRu4uganKVyLPaXNfQBd8U23pEHIeUGjWZO.jpg', NULL, '', ''),
(278, '自然萌', NULL, '', '', 1, NULL, '2016-06-29 22:55:41', '2016-06-29 22:55:41', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/F283AFAC77369D5157849CBB1383179B/100', NULL, 'F283AFAC77369D5157849CBB1383179B', 'qq'),
(279, 'wzhystar', '88472960@qq.com', '$2y$10$RfJozYaTYH6m66vC4I9fb.C.fTC64xRliYMjg4URUv5c2zjHbE95O', 'V7ucCZpUx65dc5WXRVDWZbDT9RtO0qBRtnwvj5TuI1xwtYWDPDsqcc5woKzP88472960@qq.com', 1, NULL, '2016-06-29 23:42:32', '2016-06-29 23:43:03', '', 'y', '/assets_home/main/upload/avatar/default/033.png', NULL, '', ''),
(280, 'bengder', 'frankie@bengder.cc', '$2y$10$L4HNfw2V82aTFcXxBJ8cTOpqwPJjFVDzlkbxSnYLUD.o8llQhbEd2', 'ejOAjnnPYAC95coVsYPxCtcvQe0W22L3d86uZ9gbpjr3KsHtbF9mKclir8iCfrankie@bengder.cc', 1, NULL, '2016-06-30 08:01:17', '2016-06-30 08:01:58', '', 'y', '/assets_home/main/upload/avatar/default/050.png', NULL, '', ''),
(281, '瀚海。', NULL, '', '', 1, NULL, '2016-07-01 00:04:54', '2016-07-01 00:04:54', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/0341EFBB1D80710BD43FDD8170C88588/100', NULL, '0341EFBB1D80710BD43FDD8170C88588', 'qq'),
(282, 'wingofsky', 'vvingofsky@gmail.com', '$2y$10$l6oVzNd8xlaAKQ3XpZeHYOaZ2YrQJ9TC9vlaPw1ACrKfYywUQB3eK', 'vUtIaV2E189CJ01IJKaK0RtPh8iFW2irygyqQJ8TRifhpGvPGRatesFFHiw4vvingofsky@gmail.com', 1, NULL, '2016-07-05 03:57:00', '2016-07-06 00:04:57', '', 'y', '/assets_home/main/upload/avatar/default/028.png', NULL, '', ''),
(283, '栖竹', '2217231728@qq.com', '$2y$10$Vy8olNeAlsr6ZwprUSnbDO0N4zVEWv2JoOV0i34.6W5TrqvXCDJ5K', '', 1, NULL, '2016-07-06 22:37:17', '2016-07-06 22:38:40', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/5A0F23FF7B54EE4511FDB90B57DC27E8/100', NULL, '5A0F23FF7B54EE4511FDB90B57DC27E8', 'qq'),
(284, '洋', 'xxxxxx.9312@gmail.com', '$2y$10$RuvXnDSNZjQe2iANevdanO7DSrknyl1nzVk6LFYLL3mkQ00xNoniW', 'ysgmvbPYA1vDDou2kbpArkD0o56AqaBltBuTviBXg5AK23U4es0eLa2jvBmXxxxxxx.9312@gmail.com', 1, NULL, '2016-07-08 00:53:36', '2016-07-08 00:54:32', '', 'y', '/assets_home/main/upload/avatar/default/031.png', NULL, '', ''),
(285, 'Brave', '773822091@qq.com', '$2y$10$LS3hBvMmiU83kMTI7/kCPOnojVYVu4yclUvxPin1qIbwrowZHAps.', 'O3SqPoUNDRmPVfdn6Oyg6mvNtk5yuESIK6qm885tzSJ1pv7O1aQdVo8gBrPD773822091@qq.com', 1, NULL, '2016-07-10 18:59:07', '2016-07-10 18:59:37', '', 'y', '/assets_home/main/upload/avatar/default/027.png', NULL, '', ''),
(286, 'Tomorrow', NULL, '', '', 1, NULL, '2016-07-10 20:15:08', '2016-07-10 20:15:08', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/1EE00F1121F6A88461F631F3E5014EF8/100', NULL, '1EE00F1121F6A88461F631F3E5014EF8', 'qq'),
(287, 'nicelxm', 'nicelxm93@163.com', '$2y$10$ywAzNyZBdNN46ZV8l4WOQ.k7LFoT.O55xZ1nzVtj2Zb8QpTpWsbBC', 'Zdt7fAlXSM8VoUvluuNBVnyYzcLqCuVfHDJht7G4hKT5RVDWl3oQB2hcLII3nicelxm93@163.com', 1, NULL, '2016-07-11 15:37:28', '2016-07-11 15:37:44', '', 'y', '/assets_home/main/upload/avatar/default/003.png', NULL, '', ''),
(288, '竹轩清风', NULL, '', '', 1, NULL, '2016-07-11 22:47:47', '2016-07-11 22:47:47', '', 'y', 'http://q.qlogo.cn/qqapp/101256781/BED8067056065CD975EFBAE9486F9D7E/100', NULL, 'BED8067056065CD975EFBAE9486F9D7E', 'qq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_lft_index` (`lft`),
  ADD KEY `categories_rgt_index` (`rgt`);

--
-- Indexes for table `categorysets`
--
ALTER TABLE `categorysets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_lft_index` (`lft`),
  ADD KEY `comments_rgt_index` (`rgt`);

--
-- Indexes for table `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_threads`
--
ALTER TABLE `forum_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_index` (`parent_id`),
  ADD KEY `menus_lft_index` (`lft`),
  ADD KEY `menus_rgt_index` (`rgt`);

--
-- Indexes for table `menusets`
--
ALTER TABLE `menusets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_thread_id_foreign` (`thread_id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participants_thread_id_foreign` (`thread_id`),
  ADD KEY `participants_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggable_taggables`
--
ALTER TABLE `taggable_taggables`
  ADD KEY `taggable_taggables_taggable_id_index` (`taggable_id`);

--
-- Indexes for table `taggable_tags`
--
ALTER TABLE `taggable_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `categorysets`
--
ALTER TABLE `categorysets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `forum_threads`
--
ALTER TABLE `forum_threads`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `menusets`
--
ALTER TABLE `menusets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `taggable_tags`
--
ALTER TABLE `taggable_tags`
  MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=289;
--
-- 限制导出的表
--

--
-- 限制表 `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
