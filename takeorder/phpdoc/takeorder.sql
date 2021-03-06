﻿-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2010 年 03 月 25 日 14:39
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `takeorder`
--

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_a_user`
--

CREATE TABLE `takeorder_a_user` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `login_name` varchar(20) NOT NULL default '',
  `login_pass` varchar(50) NOT NULL default '',
  `tname` varchar(20) NOT NULL default '',
  `create_time` int(10) unsigned NOT NULL default '0',
  `update_time` int(10) unsigned NOT NULL default '0',
  `mac_address` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `takeorder_a_user`
--

INSERT INTO `takeorder_a_user` (`user_id`, `login_name`, `login_pass`, `tname`, `create_time`, `update_time`, `mac_address`) VALUES
(1, '123', '123', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_customer`
--

CREATE TABLE `takeorder_customer` (
  `id` int(11) NOT NULL auto_increment,
  `no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 导出表中的数据 `takeorder_customer`
--

INSERT INTO `takeorder_customer` (`id`, `no`, `name`, `phone`, `mobile`, `status`) VALUES
(2, '00000001', 'Robel hat', '134324567', '1456423466', 'normal'),
(4, '00000002', 'steven', '321332', '13213213', 'normal'),
(6, '00000003', 'kit', '321354532', '1321da3213', 'normal'),
(8, '00000004', 'fat', '321354ds532', '13213214353', 'normal'),
(10, '00000005', 'jack', '321354fds532', '13213213', 'normal'),
(12, '00000006', 'rose', '321354532', '13213213', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_item`
--

CREATE TABLE `takeorder_item` (
  `id` int(11) NOT NULL auto_increment,
  `sortname` varchar(100) default NULL,
  `itemname` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(2) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 导出表中的数据 `takeorder_item`
--

INSERT INTO `takeorder_item` (`id`, `sortname`, `itemname`, `price`, `status`) VALUES
(1, 'Cider', '', 0, '1'),
(2, 'Apertiff ogLikoor', '', 0, '1'),
(3, 'Apertiff ogLikoor', 'Bristol Cream', 30.5, '1'),
(4, 'Apertiff ogLikoor', 'Bristol Cream 8CL', 20.8, '1'),
(5, 'Apertiff ogLikoor', 'Cinzanu Bianco.4', 18, '1'),
(6, 'Apertiff ogLikoor', 'Cinzano Bianc', 54.7, '1'),
(7, 'Apertiff ogLikoor', 'Campari Bitte', 34, '1'),
(8, 'Apertiff ogLikoor', 'WarnickAsvoc', 18.7, '1'),
(9, 'Apertiff ogLikoor', 'ewew', 3, '1'),
(10, 'Apertiff ogLikoor', 'fhr yhtrtr.0', 54, '1'),
(11, 'Apertiff ogLikoor', 'rewrv yt', 18.7, '1'),
(12, 'Apertiff ogLikoor', 'qwq', 0, '1'),
(13, 'Apertiff ogLikoor', 'rwr', 5, '1'),
(14, 'Apertiff ogLikoor', 'ewew', 4, '1'),
(15, 'Alkoholfrie', '', 0, '1'),
(16, 'Tobakk', '', 0, '1'),
(17, 'Chanpagne', '', 0, '1'),
(18, 'Poeng', '', 0, '1'),
(19, 'hhhhh', '', 0, '1'),
(20, 'aaaaaaa', '', 0, '1'),
(21, 'bbbbbbbbbb', '', 0, '1'),
(22, 'cccccccccc', '', 0, '1'),
(23, 'ddddddddd', '', 0, '1'),
(24, 'eeeeeeeee', '', 0, '1'),
(25, 'fffffffffffff', '', 0, '1'),
(26, 'gggggggggg', '', 0, '1'),
(27, 'hhhhhhhhh', '', 0, '1'),
(28, 'iiiiiiiiiiii', '', 0, '1');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_kind`
--

CREATE TABLE `takeorder_kind` (
  `id` int(11) NOT NULL auto_increment,
  `classname` varchar(100) collate utf8_bin NOT NULL,
  `status` char(1) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- 导出表中的数据 `takeorder_kind`
--

INSERT INTO `takeorder_kind` (`id`, `classname`, `status`) VALUES
(1, '中国菜', '1'),
(2, '韩国菜', '1'),
(3, '日本菜', '1'),
(4, '泰国菜', '1'),
(5, '法国菜', '1'),
(6, '印度菜', '1'),
(7, '西班牙菜', '1'),
(8, '意大利菜', '1');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_kind_sub`
--

CREATE TABLE `takeorder_kind_sub` (
  `k_id` int(11) NOT NULL auto_increment,
  `id` int(11) NOT NULL,
  `name` varchar(100) collate utf8_bin NOT NULL,
  `price` varchar(100) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `takeorder_kind_sub`
--

INSERT INTO `takeorder_kind_sub` (`k_id`, `id`, `name`, `price`) VALUES
(1, 1, '热干面', '12'),
(2, 1, '肉丸汤', '14'),
(3, 1, '鸡肉饭汤', '14'),
(4, 2, '韩国烤肉', '12'),
(5, 2, '韩国冷面', '12'),
(6, 2, '韩国年糕', '12');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_main`
--

CREATE TABLE `takeorder_main` (
  `id` int(11) NOT NULL auto_increment,
  `no` varchar(50) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `disc` varchar(50) NOT NULL,
  `lineamt` varchar(50) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL,
  `info` varchar(20) NOT NULL,
  `customize` varchar(50) NOT NULL,
  `totalqty` varchar(50) NOT NULL,
  `grossamt` varchar(50) NOT NULL,
  `normal` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `addin` varchar(50) NOT NULL,
  `netamount` varchar(50) NOT NULL,
  `importer` varchar(50) NOT NULL,
  `salesman` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `delete` varchar(50) NOT NULL,
  `single` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `customeerno` varchar(50) NOT NULL,
  `hold` varchar(50) NOT NULL,
  `rethold` varchar(50) NOT NULL,
  `reprint` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `function` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `exit` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='主界面字段录入' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `takeorder_main`
--

INSERT INTO `takeorder_main` (`id`, `no`, `itemname`, `price`, `qty`, `disc`, `lineamt`, `tax`, `r`, `info`, `customize`, `totalqty`, `grossamt`, `normal`, `discount`, `addin`, `netamount`, `importer`, `salesman`, `customer`, `name`, `class`, `delete`, `single`, `b`, `c`, `customeerno`, `hold`, `rethold`, `reprint`, `remark`, `function`, `payment`, `exit`) VALUES
(1, 'No', 'Item Name', 'Price', 'QTY', 'Disc', 'LineAmt', 'Tax', 'R', 'Info', 'Customize', 'TotalQTY', 'GrossAmt', 'Normal', 'DisCount', 'Add In', 'NetaMount', 'Importer', 'SalesMan', 'Customer', 'Name', 'Class', 'Delete', 'Single', 'B', 'C', 'CustomerNo', 'Hold', 'Rethold', 'Reprint', 'Remark', 'Function', 'Payment', 'Exit');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_menu_list`
--

CREATE TABLE `takeorder_menu_list` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `class_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `price` decimal(5,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 导出表中的数据 `takeorder_menu_list`
--

INSERT INTO `takeorder_menu_list` (`k_id`, `class_id`, `name`, `price`) VALUES
(1, 1, '热干面', '0.00'),
(2, 1, '土豆', '0.00'),
(3, 2, '香蕉', '0.00'),
(4, 2, '香蕉', '0.00'),
(5, 1, 'skwk', '0.00'),
(6, 1, 'sina', '0.00'),
(7, 1, 'skwk', '0.00'),
(8, 1, 'sina', '0.00'),
(9, 1, 'skwk', '0.00'),
(10, 1, 'sina', '0.00'),
(11, 1, 'skwk', '0.00'),
(12, 1, 'sina', '0.00'),
(13, 1, 'skwk', '0.00'),
(14, 1, 'sina', '0.00'),
(15, 1, 'skwk', '0.00'),
(16, 1, 'sina', '0.00'),
(17, 1, 'skwk', '0.00'),
(18, 1, 'sina', '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_menu_remark`
--

CREATE TABLE `takeorder_menu_remark` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '0',
  `action` varchar(50) NOT NULL default '',
  `remark` varchar(500) NOT NULL default '',
  `seq_id` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `takeorder_menu_remark`
--

INSERT INTO `takeorder_menu_remark` (`k_id`, `order_id`, `action`, `remark`, `seq_id`) VALUES
(1, 1, 'Pig', 'Small', 1),
(2, 1, 'Cow', 'None', 1);

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_order`
--

CREATE TABLE `takeorder_order` (
  `id` int(11) NOT NULL auto_increment,
  `customize` varchar(20) NOT NULL default '0',
  `no` varchar(100) NOT NULL,
  `num` int(11) NOT NULL default '0',
  `itemid` int(11) NOT NULL default '0',
  `remarkid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `takeorder_order`
--

INSERT INTO `takeorder_order` (`id`, `customize`, `no`, `num`, `itemid`, `remarkid`) VALUES
(1, '7', '5', 5, 8, 0),
(2, '7', '11', 1, 5, 0),
(3, '7', '2', 1, 5, 0),
(4, '7', '3', 1, 5, 0),
(5, '7', '3', 1, 3, 0),
(6, '8', '6', 1, 13, 0),
(7, '8', '3', 1, 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_order_detail`
--

CREATE TABLE `takeorder_order_detail` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '1' COMMENT '关联主表的k_id',
  `client_id` int(10) unsigned NOT NULL default '1',
  `menu_id` int(10) unsigned NOT NULL default '0' COMMENT '对应菜单项表中的k_id',
  `qty` int(10) unsigned NOT NULL default '1',
  `remark_id` int(10) unsigned NOT NULL default '0',
  `fact_price` decimal(6,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=211 ;

--
-- 导出表中的数据 `takeorder_order_detail`
--

INSERT INTO `takeorder_order_detail` (`k_id`, `order_id`, `client_id`, `menu_id`, `qty`, `remark_id`, `fact_price`) VALUES
(8, 21, 1, 5, 1, 0, '0.00'),
(9, 21, 1, 7, 1, 0, '0.00'),
(10, 22, 2, 6, 2, 0, '0.00'),
(11, 22, 2, 2, 6, 0, '0.00'),
(12, 22, 2, 3, 7, 0, '0.00'),
(13, 23, 1, 1, 1, 0, '0.00'),
(14, 23, 1, 5, 1, 0, '0.00'),
(15, 0, 2, 1, 1, 0, '0.00'),
(16, 25, 1, 1, 1, 0, '0.00'),
(17, 25, 1, 4, 1, 0, '0.00'),
(18, 27, 1, 1, 1, 0, '0.00'),
(19, 27, 1, 4, 1, 0, '0.00'),
(20, 27, 2, 1, 4, 0, '0.00'),
(21, 27, 4, 5, 1, 0, '0.00'),
(22, 27, 1, 1, 7, 0, '0.00'),
(23, 31, 2, 1, 1, 0, '0.00'),
(24, 32, 1, 1, 1, 0, '0.00'),
(25, 32, 1, 1, 1, 0, '0.00'),
(26, 34, 1, 1, 1, 0, '0.00'),
(27, 34, 1, 2, 1, 0, '0.00'),
(28, 34, 1, 1, 1, 0, '0.00'),
(29, 34, 1, 1, 1, 0, '0.00'),
(30, 34, 2, 1, 1, 0, '0.00'),
(31, 34, 1, 1, 1, 0, '0.00'),
(32, 34, 1, 1, 1, 0, '0.00'),
(33, 34, 1, 1, 7, 0, '0.00'),
(34, 34, 1, 4, 5, 0, '0.00'),
(35, 34, 1, 1, 1, 0, '0.00'),
(36, 34, 1, 4, 1, 0, '0.00'),
(37, 34, 2, 1, 6, 0, '0.00'),
(38, 34, 2, 4, 6, 0, '0.00'),
(39, 34, 2, 13, 1, 0, '0.00'),
(40, 34, 2, 1, 1, 0, '0.00'),
(41, 34, 1, 2, 1, 0, '0.00'),
(42, 34, 1, 1, 5, 0, '0.00'),
(43, 46, 1, 1, 1, 0, '0.00'),
(44, 46, 9, 1, 8, 0, '0.00'),
(45, 50, 1, 1, 1, 0, '0.00'),
(46, 50, 1, 2, 1, 0, '0.00'),
(47, 50, 1, 1, 1, 0, '0.00'),
(48, 50, 1, 1, 1, 0, '0.00'),
(49, 50, 2, 1, 1, 0, '0.00'),
(50, 50, 1, 1, 1, 0, '0.00'),
(51, 50, 1, 1, 1, 0, '0.00'),
(52, 50, 1, 1, 7, 0, '0.00'),
(53, 50, 1, 4, 5, 0, '0.00'),
(54, 50, 1, 1, 1, 0, '0.00'),
(55, 50, 1, 4, 1, 0, '0.00'),
(56, 50, 2, 1, 6, 0, '0.00'),
(57, 50, 2, 4, 6, 0, '0.00'),
(58, 50, 2, 13, 1, 0, '0.00'),
(59, 50, 2, 1, 1, 0, '0.00'),
(60, 50, 1, 2, 1, 0, '0.00'),
(61, 50, 1, 1, 5, 0, '0.00'),
(62, 51, 1, 1, 1, 0, '0.00'),
(63, 51, 1, 2, 1, 0, '0.00'),
(64, 51, 1, 1, 1, 0, '0.00'),
(65, 51, 1, 1, 1, 0, '0.00'),
(66, 51, 2, 1, 1, 0, '0.00'),
(67, 51, 1, 1, 1, 0, '0.00'),
(68, 51, 1, 1, 1, 0, '0.00'),
(69, 51, 1, 1, 7, 0, '0.00'),
(70, 51, 1, 4, 5, 0, '0.00'),
(71, 51, 1, 1, 1, 0, '0.00'),
(72, 51, 1, 4, 1, 0, '0.00'),
(73, 51, 2, 1, 6, 0, '0.00'),
(74, 51, 2, 4, 6, 0, '0.00'),
(75, 51, 2, 13, 1, 0, '0.00'),
(76, 51, 2, 1, 1, 0, '0.00'),
(77, 51, 1, 2, 1, 0, '0.00'),
(78, 51, 1, 1, 5, 0, '0.00'),
(79, 52, 1, 1, 1, 0, '0.00'),
(80, 52, 1, 2, 1, 0, '0.00'),
(81, 52, 1, 1, 1, 0, '0.00'),
(82, 52, 1, 1, 1, 0, '0.00'),
(83, 52, 2, 1, 1, 0, '0.00'),
(84, 52, 1, 1, 1, 0, '0.00'),
(85, 52, 1, 1, 1, 0, '0.00'),
(86, 52, 1, 1, 7, 0, '0.00'),
(87, 52, 1, 4, 5, 0, '0.00'),
(88, 52, 1, 1, 1, 0, '0.00'),
(89, 52, 1, 4, 1, 0, '0.00'),
(90, 52, 2, 1, 6, 0, '0.00'),
(91, 52, 2, 4, 6, 0, '0.00'),
(92, 52, 2, 13, 1, 0, '0.00'),
(93, 52, 2, 1, 1, 0, '0.00'),
(94, 52, 1, 2, 1, 0, '0.00'),
(95, 52, 1, 1, 5, 0, '0.00'),
(96, 53, 1, 1, 1, 0, '0.00'),
(97, 53, 1, 2, 1, 0, '0.00'),
(98, 53, 1, 1, 1, 0, '0.00'),
(99, 53, 1, 1, 1, 0, '0.00'),
(100, 53, 2, 1, 1, 0, '0.00'),
(101, 53, 1, 1, 1, 0, '0.00'),
(102, 53, 1, 1, 1, 0, '0.00'),
(103, 53, 1, 1, 7, 0, '0.00'),
(104, 53, 1, 4, 5, 0, '0.00'),
(105, 53, 1, 1, 1, 0, '0.00'),
(106, 53, 1, 4, 1, 0, '0.00'),
(107, 53, 2, 1, 6, 0, '0.00'),
(108, 53, 2, 4, 6, 0, '0.00'),
(109, 53, 2, 13, 1, 0, '0.00'),
(110, 53, 2, 1, 1, 0, '0.00'),
(111, 53, 1, 2, 1, 0, '0.00'),
(112, 53, 1, 1, 5, 0, '0.00'),
(113, 54, 1, 1, 1, 0, '0.00'),
(114, 54, 1, 2, 1, 0, '0.00'),
(115, 54, 1, 1, 1, 0, '0.00'),
(116, 54, 1, 1, 1, 0, '0.00'),
(117, 54, 2, 1, 1, 0, '0.00'),
(118, 54, 1, 1, 1, 0, '0.00'),
(119, 54, 1, 1, 1, 0, '0.00'),
(120, 54, 1, 1, 7, 0, '0.00'),
(121, 54, 1, 4, 5, 0, '0.00'),
(122, 54, 1, 1, 1, 0, '0.00'),
(123, 54, 1, 4, 1, 0, '0.00'),
(124, 54, 2, 1, 6, 0, '0.00'),
(125, 54, 2, 4, 6, 0, '0.00'),
(126, 54, 2, 13, 1, 0, '0.00'),
(127, 54, 2, 1, 1, 0, '0.00'),
(128, 54, 1, 2, 1, 0, '0.00'),
(129, 54, 1, 1, 5, 0, '0.00'),
(130, 55, 1, 1, 1, 0, '0.00'),
(131, 55, 1, 2, 1, 0, '0.00'),
(132, 55, 1, 1, 1, 0, '0.00'),
(133, 55, 1, 1, 1, 0, '0.00'),
(134, 55, 2, 1, 1, 0, '0.00'),
(135, 55, 1, 1, 1, 0, '0.00'),
(136, 55, 1, 1, 1, 0, '0.00'),
(137, 55, 1, 1, 7, 0, '0.00'),
(138, 55, 1, 4, 5, 0, '0.00'),
(139, 55, 1, 1, 1, 0, '0.00'),
(140, 55, 1, 4, 1, 0, '0.00'),
(141, 55, 2, 1, 6, 0, '0.00'),
(142, 55, 2, 4, 6, 0, '0.00'),
(143, 55, 2, 13, 1, 0, '0.00'),
(144, 55, 2, 1, 1, 0, '0.00'),
(145, 55, 1, 2, 1, 0, '0.00'),
(146, 55, 1, 1, 5, 0, '0.00'),
(147, 56, 1, 1, 1, 0, '0.00'),
(148, 56, 1, 2, 1, 0, '0.00'),
(149, 56, 1, 1, 1, 0, '0.00'),
(150, 56, 1, 1, 1, 0, '0.00'),
(151, 56, 2, 1, 1, 0, '0.00'),
(152, 56, 1, 1, 1, 0, '0.00'),
(153, 56, 1, 1, 1, 0, '0.00'),
(154, 56, 1, 1, 7, 0, '0.00'),
(155, 56, 1, 4, 5, 0, '0.00'),
(156, 56, 1, 1, 1, 0, '0.00'),
(157, 56, 1, 4, 1, 0, '0.00'),
(158, 56, 2, 1, 6, 0, '0.00'),
(159, 56, 2, 4, 6, 0, '0.00'),
(160, 56, 2, 13, 1, 0, '0.00'),
(161, 56, 2, 1, 1, 0, '0.00'),
(162, 56, 1, 2, 1, 0, '0.00'),
(163, 56, 1, 1, 5, 0, '0.00'),
(164, 57, 1, 1, 1, 0, '0.00'),
(165, 57, 1, 2, 1, 0, '0.00'),
(166, 57, 1, 1, 1, 0, '0.00'),
(167, 57, 1, 1, 1, 0, '0.00'),
(168, 57, 2, 1, 1, 0, '0.00'),
(169, 57, 1, 1, 1, 0, '0.00'),
(170, 57, 1, 1, 1, 0, '0.00'),
(171, 57, 1, 1, 7, 0, '0.00'),
(172, 57, 1, 4, 5, 0, '0.00'),
(173, 57, 1, 1, 1, 0, '0.00'),
(174, 57, 1, 4, 1, 0, '0.00'),
(175, 57, 2, 1, 6, 0, '0.00'),
(176, 57, 2, 4, 6, 0, '0.00'),
(177, 57, 2, 13, 1, 0, '0.00'),
(178, 57, 2, 1, 1, 0, '0.00'),
(179, 57, 1, 2, 1, 0, '0.00'),
(180, 57, 1, 1, 5, 0, '0.00'),
(181, 58, 1, 1, 1, 0, '0.00'),
(182, 58, 1, 2, 1, 0, '0.00'),
(183, 58, 1, 1, 1, 0, '0.00'),
(184, 58, 1, 1, 1, 0, '0.00'),
(185, 58, 2, 1, 1, 0, '0.00'),
(186, 58, 1, 1, 1, 0, '0.00'),
(187, 58, 1, 1, 1, 0, '0.00'),
(188, 58, 1, 1, 7, 0, '0.00'),
(189, 58, 1, 4, 5, 0, '0.00'),
(190, 58, 1, 1, 1, 0, '0.00'),
(191, 58, 1, 4, 1, 0, '0.00'),
(192, 58, 2, 1, 6, 0, '0.00'),
(193, 58, 2, 4, 6, 0, '0.00'),
(194, 58, 2, 13, 1, 0, '0.00'),
(195, 58, 2, 1, 1, 0, '0.00'),
(196, 58, 1, 2, 1, 0, '0.00'),
(197, 58, 1, 1, 5, 0, '0.00'),
(198, 59, 1, 5, 1, 0, '0.00'),
(199, 59, 1, 7, 1, 0, '0.00'),
(200, 60, 1, 5, 1, 0, '0.00'),
(201, 60, 1, 7, 1, 0, '0.00'),
(202, 0, 1, 5, 1, 0, '0.00'),
(203, 0, 1, 7, 1, 0, '0.00'),
(204, 0, 1, 1, 5, 0, '0.00'),
(205, 0, 1, 2, 1, 0, '0.00'),
(206, 0, 1, 1, 1, 0, '0.00'),
(207, 0, 1, 1, 1, 0, '0.00'),
(208, 0, 1, 1, 1, 0, '0.00'),
(209, 0, 1, 1, 1, 0, '0.00'),
(210, 0, 1, 1, 1, 0, '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_order_main`
--

CREATE TABLE `takeorder_order_main` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `table_id` int(10) unsigned NOT NULL default '1',
  `order_time` int(10) unsigned NOT NULL default '0',
  `price` decimal(8,2) unsigned NOT NULL default '0.00',
  `status` char(1) NOT NULL default '0' COMMENT '0.未提交，1. 已提交',
  `order_no` varchar(15) NOT NULL default '',
  `pay_status` char(1) NOT NULL default '0' COMMENT '0.未付款。1.已付款',
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- 导出表中的数据 `takeorder_order_main`
--

INSERT INTO `takeorder_order_main` (`k_id`, `table_id`, `order_time`, `price`, `status`, `order_no`, `pay_status`) VALUES
(21, 2, 1250930089, '0.00', '0', '', '0'),
(22, 4, 1250930292, '0.00', '0', '', '0'),
(23, 2, 1250930428, '0.00', '0', '', '0'),
(24, 12, 1250930660, '0.00', '0', '', '0'),
(25, 3, 1250930708, '0.00', '0', '', '0'),
(26, 3, 1250930922, '0.00', '0', '', '0'),
(27, 3, 1250931268, '0.00', '0', '', '0'),
(28, 4, 1250931287, '0.00', '0', '', '0'),
(29, 3, 1250931467, '0.00', '0', '', '0'),
(30, 2, 1250931522, '0.00', '0', '', '0'),
(31, 12, 1250931575, '0.00', '0', '', '0'),
(32, 1, 1250931609, '0.00', '0', '', '0'),
(33, 3, 1250931660, '0.00', '0', '', '0'),
(34, 12, 1250931928, '0.00', '0', '', '0'),
(35, 3, 1250932089, '0.00', '0', '', '0'),
(36, 2, 1250932103, '0.00', '0', '', '0'),
(37, 12, 1250932464, '0.00', '0', '', '0'),
(38, 1, 1250932477, '0.00', '0', '', '0'),
(39, 2, 1250932521, '0.00', '0', '', '0'),
(40, 2, 1250932614, '0.00', '0', '', '0'),
(41, 3, 1250932699, '0.00', '0', '', '0'),
(42, 0, 1250932749, '0.00', '0', '', '0'),
(43, 0, 1250932755, '0.00', '0', '', '0'),
(44, 34, 1250932759, '0.00', '0', '', '0'),
(45, 2, 1250932821, '0.00', '0', '', '0'),
(46, 1, 1251031703, '0.00', '0', '', '0'),
(47, 3, 1251031759, '0.00', '0', '', '0'),
(48, 9, 1251033231, '0.00', '0', '', '0'),
(49, 4, 1251033396, '0.00', '0', '', '0'),
(50, 12, 1250931928, '0.00', '0', '', '0'),
(51, 12, 1250931928, '0.00', '0', '', '0'),
(52, 12, 1250931928, '0.00', '0', '', '0'),
(53, 12, 1250931928, '0.00', '0', '', '0'),
(54, 12, 1250931928, '0.00', '0', '', '0'),
(55, 12, 1250931928, '0.00', '0', '', '0'),
(56, 12, 1250931928, '0.00', '0', '', '0'),
(57, 12, 1250931928, '0.00', '0', '', '0'),
(58, 12, 1250931928, '0.00', '0', '', '0'),
(59, 2, 1250930089, '0.00', '0', '', '0'),
(60, 2, 1250930089, '0.00', '0', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_remark_content`
--

CREATE TABLE `takeorder_remark_content` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `status` char(1) NOT NULL default '1' COMMENT '0.无效，1.有效。',
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 导出表中的数据 `takeorder_remark_content`
--

INSERT INTO `takeorder_remark_content` (`k_id`, `name`, `status`) VALUES
(1, 'Cow', '1'),
(2, 'Pig', '1'),
(3, '01003E', '1'),
(4, '01004E', '1'),
(5, '01005E', '1'),
(6, '01006E', '1'),
(7, '01007E', '1'),
(8, '01008E', '1'),
(9, '01009E', '1'),
(10, '01010E', '1'),
(11, '01011E', '1'),
(12, '01012E', '1'),
(13, '01013E', '1'),
(14, '01014E', '1'),
(15, '01015E', '1'),
(16, '01016E', '1'),
(17, '01017E', '1'),
(18, '01018E', '1'),
(19, '01019E', '1'),
(20, '01020E', '1'),
(21, '01021E', '1'),
(22, '01022E', '1'),
(23, '01023E', '1'),
(24, '01024E', '1'),
(25, '01025E', '1'),
(26, '01026E', '1'),
(27, '01027E', '1'),
(28, '01028E', '1'),
(29, '01029E', '1'),
(30, '01030E', '1'),
(31, '01031E', '1'),
(32, '01032E', '1'),
(33, '01033E', '1'),
(34, '01034E', '1'),
(35, '01035E', '1'),
(36, '01036E', '1'),
(37, '01037E', '1'),
(38, '01038E', '1'),
(39, '01039E', '1'),
(40, '01040E', '1'),
(41, '01041E', '1'),
(42, '01042E', '1'),
(43, '01043E', '1'),
(44, '01044E', '1'),
(45, '01045E', '1'),
(46, '01046E', '1'),
(47, '01047E', '1'),
(48, '01048E', '1'),
(49, '01049E', '1'),
(50, '01050E', '1');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_remark_sort`
--

CREATE TABLE `takeorder_remark_sort` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `status` char(1) NOT NULL default '1' COMMENT '0.无效，1.有效',
  PRIMARY KEY  (`k_id`),
  UNIQUE KEY `idx_remark_sort_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `takeorder_remark_sort`
--

INSERT INTO `takeorder_remark_sort` (`k_id`, `name`, `status`) VALUES
(1, 'Add', '1'),
(2, 'Small', '1'),
(3, 'None', '1'),
(4, 'Remark', '1'),
(5, '05OptionE', '1'),
(6, '06OptionE', '1');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_s_class`
--

CREATE TABLE `takeorder_s_class` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `status` char(1) NOT NULL default '1' COMMENT '0.无效，1.有效',
  PRIMARY KEY  (`k_id`),
  UNIQUE KEY `idx_s_class_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 导出表中的数据 `takeorder_s_class`
--

INSERT INTO `takeorder_s_class` (`k_id`, `name`, `status`) VALUES
(1, '中国菜', '1'),
(2, '美国菜', '1'),
(3, '韩国菜', '1'),
(4, '西班牙菜', '1'),
(5, '法国', '1'),
(6, '日本菜', '1'),
(7, '泰国菜', '1'),
(8, '蒙古菜', '1'),
(9, '太空菜', '1');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_tmp_order_detail`
--

CREATE TABLE `takeorder_tmp_order_detail` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '1' COMMENT '关联主表的k_id',
  `client_id` int(10) unsigned NOT NULL default '1',
  `menu_id` int(10) unsigned NOT NULL default '0' COMMENT '对应菜单项表中的k_id',
  `qty` int(10) unsigned NOT NULL default '1',
  `remark_id` int(10) unsigned NOT NULL default '0',
  `fact_price` decimal(6,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=331 ;

--
-- 导出表中的数据 `takeorder_tmp_order_detail`
--

INSERT INTO `takeorder_tmp_order_detail` (`k_id`, `order_id`, `client_id`, `menu_id`, `qty`, `remark_id`, `fact_price`) VALUES
(329, 0, 1, 1, 1, 0, '0.00'),
(330, 0, 1, 1, 4, 0, '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `takeorder_tmp_order_main`
--

CREATE TABLE `takeorder_tmp_order_main` (
  `k_id` int(10) unsigned NOT NULL auto_increment,
  `table_id` int(10) unsigned NOT NULL default '1',
  `order_time` int(10) unsigned NOT NULL default '0',
  `price` decimal(8,2) unsigned NOT NULL default '0.00',
  `status` char(1) NOT NULL default '0' COMMENT '0.未提交，1. 已提交',
  `order_no` varchar(15) NOT NULL default '',
  `pay_status` char(1) NOT NULL default '0' COMMENT '0.未付款。1.已付款',
  PRIMARY KEY  (`k_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

--
-- 导出表中的数据 `takeorder_tmp_order_main`
--

