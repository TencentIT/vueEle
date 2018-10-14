-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-13 15:29:02
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xz`
--
CREATE DATABASE IF NOT EXISTS `xz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `xz`;

-- --------------------------------------------------------

--
-- 表的结构 `xz_index_carousel`
--

CREATE TABLE `xz_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_index_carousel`
--

INSERT INTO `xz_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(9, 'img/index/banner1.png', '轮播广告商品1', 'product_details.html?lid=28'),
(10, 'img/index/banner2.png', '轮播广告商品2', 'product_details.html?lid=19'),
(11, 'img/index/banner3.png', '轮播广告商品3', 'lookforward.html'),
(12, 'img/index/banner4.png', '轮播广告商品4', 'lookforward.html');

-- --------------------------------------------------------

--
-- 表的结构 `xz_index_product`
--

CREATE TABLE `xz_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_index_product`
--

INSERT INTO `xz_index_product` (`pid`, `title`, `details`, `pic`, `price`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
(8, 'Apple MacBook Air系列', '酷睿双核i5处理器|256GB SSD|8GB内存|英特尔HD显卡620含共享显卡内存', 'img/index/study_computer_img1.png', '6988.00', 'product_details.html?lid=1', 1, 1, 1),
(9, '小米Air 金属超轻薄', '酷睿双核i5处理器|512GB SSD|2GB内存|英特尔HD独立显卡', 'img/index/study_computer_img2.png', '3488.00', 'product_details.html?lid=5', 2, 2, 2),
(10, '联想E480C 轻薄系列', '酷睿双核i7处理器|256GB SSD|4GB内存|英特尔HD显卡680M', 'img/index/study_computer_img3.png', '5399.00', 'product_details.html?lid=9', 3, 3, 3),
(11, '华硕RX310 金属超极本', '酷睿双核i5处理器|512GB SSD|4GB内存|英特尔HD游戏级显卡', 'img/index/study_computer_img4.png', '4966.00', 'product_details.html?lid=13', 4, 4, 4),
(12, '联想小新700 电竞版游戏本', '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD显卡620含共享显卡内存', 'img/index/study_computer_img5.png', '6299.00', 'product_details.html?lid=17', 5, 5, 5),
(13, '戴尔灵越燃7000 轻薄窄边', '酷睿双核i5处理器|512GB SSD|2GB内存|英特尔HD显卡', 'img/index/study_computer_img3.png', '5199.00', 'product_details.html?lid=19', 6, 6, 6),
(14, '神州战神Z7M 高性价比游戏本', '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD游戏机独立显卡', 'img/index/study_computer_img4.png', '5799.00', 'product_details.html?lid=38', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xz_laptop`
--

CREATE TABLE `xz_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `resolution` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `cpu` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_laptop`
--

INSERT INTO `xz_laptop` (`lid`, `family_id`, `title`, `subtitle`, `price`, `promise`, `spec`, `lname`, `os`, `memory`, `resolution`, `video_card`, `cpu`, `video_memory`, `category`, `disk`, `details`, `shelf_time`, `sold_count`, `is_onsale`) VALUES
(1, 1, 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)', '5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航', '6988.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/128GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150123456789, 2968, 1),
(2, 1, 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/256GB SSD闪存 MMGG2CH/A)', '5月焕新季，领券买新机！神券满8000减800！一体成型金属机身，纤薄轻巧，长达12小时续航', '8268.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/256GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150223456789, 1922, 0),
(3, 1, 'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/128GB SSD闪存 Z0TA0002L)', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7488.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/128G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150323456789, 733, 0),
(4, 1, 'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/256GB SSD闪存 Z0TA0002L)', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7888.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/256G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150323456789, 105, 0),
(5, 2, '小米(MI)Air 13.3英寸全金属超轻薄笔记本(i5-6200U 8G 256G PCIE固态 940MX独显 FHD WIN10)银', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '4999.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '小米Air', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '1G', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 154123456789, 1527, 1),
(6, 2, '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win10)银', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5银色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 153123456789, 115, 0),
(7, 2, '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win10)金', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5金色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 156123456789, 812, 1),
(8, 2, '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-6Y30 4G 128G SSD固态硬盘 全高清屏 WIN10) 银', '【FHD窄边框】库存紧张 128G固态硬盘 支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5英寸】M-6Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 157123456789, 1081, 0),
(9, 3, '联想(ThinkPad)轻薄系列E480c(20H3A00GCD)14英寸笔记本(i3-6006U 4G 500G 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i3 4G 500G独显', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i3', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 150423456789, 1461, 1),
(10, 3, '联想(ThinkPad)轻薄系列E480c(20H3A000CD)14英寸笔记本(i5-6200U 4G 500G 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 500G', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 151423456789, 733, 0),
(11, 3, '联想(ThinkPad)轻薄系列E480c(20H3A002CD)14英寸笔记本(i5-6200U 4G 256G SSD 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5399.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 256GSSD', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 152423456789, 913, 1),
(12, 3, '联想(ThinkPad)轻薄系列E480c(20H3A001CD)14英寸笔记本电脑(i5-6200U 8G 256G SSD 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 8G 256GSSD', 'ThinkPadE480c', 'Windows10', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 153423456789, 112, 0),
(13, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I3-7100U/4G/128G固态', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I3-7100U/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 151123456789, 1197, 1),
(14, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/4G/128G固态', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 152123456789, 137, 0),
(15, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/4G/256G/2G独显', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '4G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 153123456789, 21, 0),
(16, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/8G/256G/2G独显', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/8G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 152423456789, 981, 0),
(17, 5, '联想(Lenovo)小新700电竞版 15.6英寸游戏笔记本电脑(i5-6300HQ 8G 500G+128G SSD GTX950M 4G IPS)黑', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i5 双硬盘 GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i5标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', 149123456789, 192, 1),
(18, 5, '联想(Lenovo)小新700电竞版 15.6英寸游戏笔记本电脑(i7-6700HQ 8G 500G GTX950M 4G FHD IPS Office)黑', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i7 8G 500G GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i7标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', 151523456789, 260, 0),
(19, 6, '戴尔DELL灵越燃7000 R1525S 14.0英寸轻薄窄边框笔记本电脑(i5-7200U 4G 128GSSD+500G 940MX 2G独显 FHD)银', '【轻薄微边框、燃7000】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【流光银】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', 151923456789, 911, 0),
(20, 6, '戴尔DELL灵越燃7000 R1725G 14.0英寸轻薄窄边框笔记本电脑(i7-7500U 8G 128GSSD+1T 940MX 2G独显 FHD)金', '【轻薄微边框、燃7000】七代i7双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '6599.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【溢彩金】i7-7500u 8G 128 1T', '戴尔燃7000', 'Windows 10', '8G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', 150823456789, 1930, 1),
(21, 6, '戴尔DELL灵越燃7000 R1525P 14.0英寸轻薄窄边框笔记本电脑(i5-7200U 4G 128GSSD+500G 2G独显 FHD)元気粉', '【轻薄微边框、燃7000元気粉】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【元気粉】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', 151023456789, 987, 1),
(22, 7, '戴尔DELL灵越游匣15PR-5745B 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)黑', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5745B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 148123456789, 1901, 1),
(23, 7, '戴尔DELL灵越游匣15PR-5645SE 15.6英寸游戏笔记本电脑(i5-7300HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)枪弹版', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 153123456789, 1231, 0),
(24, 7, '戴尔DELL灵越游匣15PR-5745SE 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)枪弹版', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '7999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1539923456789, 221, 0),
(25, 7, '戴尔DELL灵越游匣15PR-3848B 15.6英寸游戏笔记本电脑(i7-6700HQ 4G 128GSSD+500G GTX960M 4G FHD)黑', '【强力散热保性能】 960M 4G独显 预装128SSD 双硬盘游戏更劲爽 我们比大多数产品 散热好一些', '6099.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i7-6700HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1519123456789, 711, 1),
(26, 7, '戴尔DELL灵越游匣15PR-2648B 15.6英寸游戏笔记本电脑(i5-6300HQ 4G 128SSD+500G GTX960M 4G独显 FHD)黑', '【选游戏本还得看散热】960M 4G独显 预装128SSD 双硬盘游戏更劲爽 ！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i5-6300HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1529123456789, 319, 0),
(27, 7, '戴尔DELL灵越游匣15PR-5645B 15.6英寸游戏笔记本电脑(i5-7300HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)黑', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1511123456789, 2110, 0),
(28, 8, '联想(ThinkPad)轻薄系列E470c(20H3A000CD)14英寸笔记本电脑(i5-6200U 4G 500G 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '3998.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 500G', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 150123456789, 117, 1),
(29, 8, '联想(ThinkPad)轻薄系列E470c(20H3A004CD)14英寸笔记本电脑(i5-6200U 8G 500G 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '4699.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 500G', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 151123456789, 1862, 0),
(30, 8, '联想(ThinkPad)轻薄系列E470c(20H3A003CD)14英寸笔记本电脑(i5-6200U 8G 1T 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 1TB', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 152123456789, 812, 1),
(31, 8, '联想(ThinkPad)轻薄系列E470c(20H3A002CD)14英寸笔记本电脑(i5-6200U 4G 256G SSD 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5399.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 256GSSD', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 153123456789, 162, 0),
(32, 8, '联想(ThinkPad)轻薄系列E470c(20H3A001CD)14英寸笔记本电脑(i5-6200U 8G 256G SSD 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 256GSSD', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 154123456789, 1180, 0),
(33, 9, '华硕(ASUS)顽石电竞版FH5900 15.6英寸游戏笔记本电脑(i7-6700HQ 4G 1TB +128G SSD NV940MX 2G 独显 FHD)', '顽石血统 标压电竞版 强劲动力带你畅快遨游', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '【高速】顽石游戏本i74G1T128SSD', '华硕FH5900V', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1450123456789, 1231, 0),
(34, 9, '华硕(ASUS) 顽石四代尊享版 15.6英寸笔记本电脑(i7-7500U 8G 1TB NV940MX 2G独显 深蓝 FHD )', '第七代i7处理器，8G超大内存与1T硬盘，快无止境、大无止境', '4699.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石经典【高配i7 8G 1T 深蓝】', '华硕FL5900UQ', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1550123456789, 1231, 1),
(35, 9, '华硕(ASUS) 顽石四代旗舰版FL5900 15.6英寸笔记本电脑(i7-7500U 4G 1TB +128GBSSD NV940MX 深蓝 FHD)', '混合硬盘，1T搭载128G固态，读取速度更快，智能散热不烫手！！', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石双盘【i7 4G 1t加128SSD】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1531023456789, 221, 0),
(36, 9, '华硕(ASUS)顽石四代疾速版 FL5900 15.6英寸笔记本电脑(i7-6500U 4G 512GB SSD NV940M 2G独显 红色)', '【同样配置看主板，搭配华硕主板让您放心，屏幕无坏点保证】办公，游戏无压力！！！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i7-4G 512SSD 炫红】', '华硕FL5900U', 'Windows 10', '4G', '全高清屏(1920*1080)', 'GT940M', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1510123456789, 103, 1),
(37, 9, '华硕(ASUS) 顽石四代疾速版FL5900 15.6英寸笔记本电脑(i7-6500U 4G 512G SSD NV940MX 2G独显 红色 FHD)', '疾速版，就是要你快！512G固态硬盘，第六代i7处理器搭载2G独显！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i74G512SSD NV940MX】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1450123456789, 341, 0),
(38, 10, '神舟(HASEE)战神Z7M-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti 1080P)IPS屏', '超强性价比！！', '6199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z7M GT【i7 128G+1T GTX1050Ti】', '神舟战神Z7M-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050Ti', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 151123456789, 441, 0),
(39, 10, '神舟(HASEE)战神Z7M-SL7D2 15.6英寸游戏本笔记本电脑(i7-6700HQ 8G 1T+128GB SSD GTX965M 1080P)IPS', '六代i7 SSD GTX965M还预装WIN10，一步到位，你赢了！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i7 GTX965M】', '神舟战神Z7M', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 152123456789, 1289, 1),
(40, 10, '神舟(HASEE)战神Z7M-SL5D1 15.6英寸游戏本笔记本电脑(i5-6300HQ 8G 1TB GTX965M 1080P)IPS屏', '超强性价比！！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i5 GTX965M】', '神舟战神Z7M-SL5D1', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '2G', '游戏本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 153123456789, 231, 0),
(41, 10, '神舟(HASEE)战神Z6-KP5GT 15.6英寸游戏本笔记本电脑(i5-7300HQ 8G 1T+128G SSD GTX1050 1080P)黑色', '超强性价比！！', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i5 128G+1T GTX1050】', '神舟战神Z6-KP5GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 154123456789, 469, 1),
(42, 10, '神舟(HASEE) 战神G6-SL7S2 17.3英寸游戏笔记本(i7-6700HQ 8G 256G SSD GTX960M 2G独显 1080P)黑色', '17.3英寸大屏游戏本，纯固态硬盘，秒速开启超神之路！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神G6【17.3英寸 GTX960M】', '神舟战神G6', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '256固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 155123456789, 1223, 0),
(43, 10, '神舟(HASEE)战神Z6-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050 1080P)黑色', '预约享5499抢！【128G SSD+1T HDD】双硬盘，春风“十”里，期待是你！', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i7 128G+1T GTX1050】', '神舟战神Z6-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 156123456789, 1844, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xz_laptop_family`
--

CREATE TABLE `xz_laptop_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_laptop_family`
--

INSERT INTO `xz_laptop_family` (`fid`, `fname`) VALUES
(1, 'AppleMacBookAir'),
(2, '小米Air'),
(3, 'ThinkPadE480C'),
(4, '华硕RX310UQ'),
(5, '联想小新700'),
(6, '戴尔燃7000'),
(7, '戴尔灵越15PR-5745B'),
(8, 'ThinkPadE470 C'),
(9, '华硕FH5900V'),
(10, '神舟战神Z7M-KP7GT');

-- --------------------------------------------------------

--
-- 表的结构 `xz_laptop_pic`
--

CREATE TABLE `xz_laptop_pic` (
  `pid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_laptop_pic`
--

INSERT INTO `xz_laptop_pic` (`pid`, `laptop_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(2, 1, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(3, 1, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(4, 2, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(5, 2, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(6, 2, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(7, 3, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(8, 3, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(9, 3, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(10, 4, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(11, 4, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(12, 4, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(13, 5, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(14, 5, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(15, 5, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(16, 5, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(17, 5, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(18, 5, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(19, 5, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(20, 6, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(21, 6, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(22, 6, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(23, 6, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(24, 6, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(25, 6, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(26, 6, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(27, 7, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(28, 7, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(29, 7, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(30, 7, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(31, 7, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(32, 7, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(33, 7, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(34, 8, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(35, 8, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(36, 8, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(37, 8, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(38, 8, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(39, 8, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(40, 8, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(41, 9, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(42, 9, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(43, 9, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(44, 9, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(45, 9, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(46, 9, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(47, 9, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(48, 9, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(49, 10, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(50, 10, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(51, 10, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(52, 10, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(53, 10, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(54, 10, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(55, 10, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(56, 10, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(57, 11, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(58, 11, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(59, 11, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(60, 11, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(61, 11, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(62, 11, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(63, 11, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(64, 11, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(65, 12, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(66, 12, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(67, 12, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(68, 12, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(69, 12, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(70, 12, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(71, 12, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(72, 12, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(73, 13, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(74, 13, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(75, 13, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(76, 13, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(77, 13, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(78, 13, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(79, 14, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(80, 14, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(81, 14, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(82, 14, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(83, 14, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(84, 14, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(85, 15, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(86, 15, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(87, 15, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(88, 15, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(89, 15, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(90, 15, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(91, 16, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(92, 16, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(93, 16, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(94, 16, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(95, 16, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(96, 16, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(97, 17, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(98, 17, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(99, 17, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(100, 17, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(101, 17, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(102, 17, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(103, 17, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(104, 18, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(105, 18, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(106, 18, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(107, 18, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(108, 18, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(109, 18, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(110, 18, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(111, 19, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(112, 19, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(113, 19, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(114, 19, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(115, 19, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(116, 19, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(117, 19, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(118, 20, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(119, 20, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(120, 20, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(121, 20, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(122, 20, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(123, 20, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(124, 20, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(125, 21, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(126, 21, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(127, 21, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(128, 21, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(129, 21, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(130, 21, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(131, 21, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(132, 22, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(133, 22, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(134, 22, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(135, 22, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(136, 22, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(137, 22, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(138, 22, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(139, 23, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(140, 23, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(141, 23, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(142, 23, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(143, 23, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(144, 23, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(145, 23, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(146, 24, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(147, 24, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(148, 24, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(149, 24, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(150, 24, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(151, 24, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(152, 24, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(153, 25, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(154, 25, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(155, 25, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(156, 25, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(157, 25, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(158, 25, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(159, 25, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(160, 26, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(161, 26, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(162, 26, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(163, 26, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(164, 26, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(165, 26, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(166, 26, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(167, 27, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(168, 27, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(169, 27, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(170, 27, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(171, 27, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(172, 27, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(173, 27, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(174, 28, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(175, 28, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(176, 28, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(177, 28, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(178, 28, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(179, 28, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(180, 28, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(181, 28, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(182, 29, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(183, 29, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(184, 29, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(185, 29, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(186, 29, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(187, 29, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(188, 29, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(189, 29, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(190, 30, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(191, 30, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(192, 30, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(193, 30, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(194, 30, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(195, 30, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(196, 30, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(197, 30, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(198, 31, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(199, 31, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(200, 31, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(201, 31, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(202, 31, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(203, 31, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(204, 31, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(205, 31, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(206, 32, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(207, 32, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(208, 32, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(209, 32, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(210, 32, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(211, 32, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(212, 32, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(213, 32, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(214, 33, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(215, 33, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(216, 33, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(217, 33, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(218, 33, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(219, 33, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(220, 33, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(221, 34, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(222, 34, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(223, 34, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(224, 34, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(225, 34, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(226, 34, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(227, 34, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(228, 35, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(229, 35, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(230, 35, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(231, 35, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(232, 35, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(233, 35, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(234, 35, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(235, 36, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(236, 36, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(237, 36, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(238, 36, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(239, 36, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(240, 36, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(241, 36, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(242, 37, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(243, 37, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(244, 37, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(245, 37, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(246, 37, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(247, 37, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(248, 37, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(249, 38, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(250, 38, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(251, 38, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(252, 38, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(253, 38, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(254, 38, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(255, 38, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(256, 38, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(257, 39, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(258, 39, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(259, 39, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(260, 39, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(261, 39, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(262, 39, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(263, 39, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(264, 39, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(265, 40, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(266, 40, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(267, 40, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(268, 40, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(269, 40, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(270, 40, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(271, 40, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(272, 40, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(273, 41, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(274, 41, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(275, 41, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(276, 41, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(277, 41, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(278, 41, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(279, 41, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(280, 41, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(281, 42, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(282, 42, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(283, 42, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(284, 42, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(285, 42, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(286, 42, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(287, 42, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(288, 42, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(289, 43, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(290, 43, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(291, 43, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(292, 43, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(293, 43, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(294, 43, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(295, 43, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(296, 43, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `xz_order`
--

CREATE TABLE `xz_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xz_order_detail`
--

CREATE TABLE `xz_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xz_receiver_address`
--

CREATE TABLE `xz_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xz_shoppingcart_item`
--

CREATE TABLE `xz_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_shoppingcart_item`
--

INSERT INTO `xz_shoppingcart_item` (`iid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES
(1, 10, 17, 1, 0),
(2, 11, 11, 1, 0),
(3, 12, 1, 1, 1),
(4, 13, 3, 9, 0),
(5, 14, 1, 1, 0),
(13, 20, 1, 1, 1),
(14, 22, 17, 11, 1),
(15, 20, 28, 1, 0),
(16, 25, 2, 1, 1),
(17, 3, 28, 1, 1),
(18, 3, 14, 1, 1),
(19, 28, 1, 99997, 0),
(20, 29, 31, 1, 1),
(25, 3, 18, 1, 0),
(26, 32, 13, 1, 0),
(27, 32, 5, 1, 0),
(28, 32, 19, 1, 0),
(29, 33, 1, 1, 0),
(31, 3, 1, 1, 0),
(32, 35, 20, 1, 0),
(33, 2, 19, 1, 1),
(34, 39, 19, 1, 1),
(35, 1, 5, 15, 1),
(36, 1, 28, 2, 1),
(37, 1, 9, 1, 1),
(38, 45, 22, 1, 0),
(39, 46, 1, 1, 0),
(40, 48, 28, 1, 1),
(41, 1, 1, 6, 1),
(42, 50, 28, 1, 1),
(43, 52, 28, 1, 1),
(44, 51, 5, 1, 1),
(45, 54, 1, 1, 1),
(46, 56, 28, 1, 1),
(47, 59, 5, 1, 0),
(48, 59, 9, 1, 0),
(49, 59, 19, 1, 0),
(50, 31, 1, 1, 1),
(51, 59, 1, 2, 0),
(52, 60, 28, 1, 1),
(53, 46, 21, 1, 0),
(54, 1, 12, 2, 1),
(55, 61, 5, 1, 1),
(56, 61, 6, 1, 0),
(57, 70, 1, 1, 1),
(58, 71, 1, 1, 1),
(59, 1, 4, 3, 1),
(60, 36, 17, 1, 1),
(61, 35, 17, 7, 0),
(62, 35, 5, 13, 0),
(63, 72, 9, 1, 1),
(64, 82, 1, 1, 1),
(65, 83, 17, 1, 1),
(66, 35, 28, 4, 0),
(67, 65, 40, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xz_user`
--

CREATE TABLE `xz_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_user`
--

INSERT INTO `xz_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(25, '1234', '111111', '734713428@qq.com', '18061920422', NULL, 'jerry', 1),
(26, 'qwe1234500', '123123', '1191769510@qq.com', '15234010643', NULL, 'jerry', 1),
(27, '海贼王123', '000000', 'hxxcrocky@qq.com', '18826450879', NULL, 'jerry', 0),
(28, 'hanrufuyun00..', '000000', '458205630@qq.com', '13853114827', NULL, 'jerry', 1),
(29, 'li99999912', '000000', 'limingdir@163.com', '18557512311', NULL, 'jerry', 0),
(30, '11..11111', '123456', '1057631733@qq.com', '1527515887', NULL, 'jerry', 0),
(31, 'tom', '123456', 'tom@tedu.cn', '13801234568', NULL, NULL, NULL),
(32, 'zhouzhi...', '000000', '2206344145@qq.com', '17600587478', NULL, 'jerry', 0),
(33, 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', NULL, NULL, NULL),
(34, 'yangtao', '123456', '250737026@qq.com', '18256953222', NULL, NULL, NULL),
(35, 'tarena', '123456', '783664829@qq.com', '17711625897', NULL, 'jkvjk', 0),
(36, 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', NULL, 'lulu', 0),
(37, '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', NULL, NULL, NULL),
(38, '胖王二二', 'woaidoubi1.', '1179524522@qq.com', '13269195181', NULL, 'jkjhk', 0),
(39, 'Yeye ', '123456', '1610608370@qq.com', '15062394551', NULL, NULL, NULL),
(40, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(41, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(42, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(43, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(44, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(45, 'hjh', '958030', 'hjh@126.com', '17812344567', NULL, NULL, NULL),
(46, 'ewq', '123456', '1234567890@qq.com', '12345678909', NULL, NULL, NULL),
(47, 'pipi', '123456', '78@qq.com', '12367889993', NULL, NULL, NULL),
(48, 'Lovica', '309418727', '1684707021@qq.com', '18435130456', NULL, NULL, NULL),
(49, 'htt0908', '19920908', '418720482@qq.com', '15244691033', NULL, NULL, NULL),
(50, 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', NULL, NULL, NULL),
(51, 'zhong', '123456', '123456789@126.com', '13120211111', NULL, NULL, NULL),
(52, '金豆豆', '123456789', '1170363143@qq.com', '15738619097', NULL, NULL, NULL),
(53, 'wangjunfei', '123456', '396225880@qq.com', '13205935797', NULL, NULL, NULL),
(54, 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', NULL, NULL, NULL),
(55, 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', NULL, NULL, NULL),
(56, 'xiaoming123', '123456', '54646@qq.com', '13553688534', NULL, NULL, NULL),
(57, 'yuanzhi', '123456', '270096123@qq.com', '15962573639', NULL, NULL, NULL),
(58, 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', NULL, NULL, NULL),
(59, 'fengkuang', '123456', '113577976@qq.com', '18559132248', NULL, NULL, NULL),
(60, 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', NULL, NULL, NULL),
(61, 'linlei0001', '58874439', '876056078@qq.com', '13390922939', NULL, NULL, NULL),
(62, 'superman', '1314520', '904202099@qq.com', '12345678910', NULL, NULL, NULL),
(63, 'tom222', '123456', '1@163.com', '13456789012', NULL, NULL, NULL),
(64, 'tom1234', '123456', '2@163.com', '13423456789', NULL, NULL, NULL),
(65, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, '左天', 1),
(66, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, NULL, NULL),
(67, '李白李白', '123456', '125365@163.com', '13986273022', NULL, NULL, NULL),
(68, 'dingdong', '123456', '15194898156@qq.com', '15112316516', NULL, NULL, NULL),
(69, 'wenjinhua', '236239', '461677613@qq.com', '13516574786', NULL, NULL, NULL),
(70, 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', NULL, NULL, NULL),
(71, 'zhangsan', 'add123456', 'add@qq.com', '12234324223', NULL, NULL, NULL),
(72, '高渐离', '123456', '935263676@qq.com', '18352501250', NULL, NULL, NULL),
(73, 'lifan', '123456', '18092034652@163.com', '18092933456', NULL, NULL, NULL),
(74, 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', NULL, NULL, NULL),
(75, 'tingDING', '123456', '12345678@qq.com', '13548525468', NULL, NULL, NULL),
(76, 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', NULL, NULL, NULL),
(77, 'weiyiwei', '123456', '598475405@qq.com', '15923741956', NULL, '韦祎伟', 1),
(78, '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', NULL, NULL, NULL),
(79, 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', NULL, NULL, NULL),
(81, 'hushuang', '123456', '850248813@qq.com', '15802507525', NULL, NULL, NULL),
(82, 'test713', '2017713', '12458148@qq.com', '13596542654', NULL, NULL, NULL),
(83, 'fhr9588', '000009588', '111111111@qq.com', '12345666666', NULL, NULL, NULL),
(84, 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', NULL, NULL, NULL),
(85, 'tom10', '123456', '123@163.com', '12323456', NULL, NULL, NULL),
(86, '12121', '121212', '516898@qq.com', '15163222922', NULL, NULL, NULL),
(87, 'qwer', 'qwer123', '519808982@qq.com', '15163222923', NULL, NULL, NULL),
(88, '芳芳。。', '111111', '627265@qq.com', '17704622223', NULL, NULL, NULL),
(89, 'smm123456', '963852741', '974255093@qq.com', '15098807312', NULL, NULL, NULL),
(90, '11111@qq.com', '', '', '', NULL, NULL, NULL),
(91, '11111@qq.com', '123456', '11111@qq.com', '4544545454', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xz_index_carousel`
--
ALTER TABLE `xz_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `xz_index_product`
--
ALTER TABLE `xz_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `xz_laptop`
--
ALTER TABLE `xz_laptop`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `xz_laptop_family`
--
ALTER TABLE `xz_laptop_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `xz_laptop_pic`
--
ALTER TABLE `xz_laptop_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `xz_order`
--
ALTER TABLE `xz_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `xz_order_detail`
--
ALTER TABLE `xz_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `xz_receiver_address`
--
ALTER TABLE `xz_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `xz_shoppingcart_item`
--
ALTER TABLE `xz_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `xz_user`
--
ALTER TABLE `xz_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `xz_index_carousel`
--
ALTER TABLE `xz_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `xz_index_product`
--
ALTER TABLE `xz_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `xz_laptop`
--
ALTER TABLE `xz_laptop`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- 使用表AUTO_INCREMENT `xz_laptop_family`
--
ALTER TABLE `xz_laptop_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `xz_laptop_pic`
--
ALTER TABLE `xz_laptop_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;
--
-- 使用表AUTO_INCREMENT `xz_order`
--
ALTER TABLE `xz_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `xz_order_detail`
--
ALTER TABLE `xz_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `xz_receiver_address`
--
ALTER TABLE `xz_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `xz_shoppingcart_item`
--
ALTER TABLE `xz_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- 使用表AUTO_INCREMENT `xz_user`
--
ALTER TABLE `xz_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
