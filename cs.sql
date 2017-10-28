-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-23 06:08:13
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs`
--

-- --------------------------------------------------------

--
-- 表的结构 `cs_avatar`
--

CREATE TABLE `cs_avatar` (
  `avtid` int(11) NOT NULL,
  `path` varchar(64) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cs_avatar`
--

INSERT INTO `cs_avatar` (`avtid`, `path`) VALUES
(1, 'img/headimg/avatar1.jpg'),
(2, 'img/headimg/avatar2.jpg'),
(3, 'img/headimg/avatar3.jpg'),
(4, 'img/headimg/avatar4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `cs_family`
--

CREATE TABLE `cs_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cs_family`
--

INSERT INTO `cs_family` (`fid`, `fname`) VALUES
(1, '秦时明月之百步飞剑'),
(2, '秦时明月之夜尽天明'),
(3, '秦时明月之诸子百家'),
(4, '秦时明月之万里长城');

-- --------------------------------------------------------

--
-- 表的结构 `cs_news`
--

CREATE TABLE `cs_news` (
  `nid` int(11) NOT NULL,
  `nname` varchar(64) DEFAULT '秦时明月资讯活动',
  `origin` varchar(64) DEFAULT 'www.baidu.com',
  `show_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `news_content` mediumtext,
  `news_pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cs_news`
--

INSERT INTO `cs_news` (`nid`, `nname`, `origin`, `show_time`, `news_content`, `news_pic`) VALUES
(1, '秦时明月之百步飞剑 （玄机科技制作的电视动画《秦时明月》第一部）', 'www.baidu.com', '2017-09-18 16:52:50', '天下第一剑客—盖聂，携故人荆轲之子—荆天明，为躲避秦王的追杀，踏上了荆棘密布的旅程。此刻，年少的天明对自己的身世以及未来将要经历的一切仍然一无所知，命运之手却已将一幅绚烂至极的画卷在其脚下展开。 秦国边境，残月谷，盖聂一人一剑，尽屠300大秦铁骑精兵。这位天下第一剑客以满身伤痕告诉年少的天明何谓真正的强者。 <br><p class=''kongge''>消息传来，皇帝震怒，勒令宰相—李斯务必铲除一切抗秦势力。 李斯提出以江湖对江湖的所谓以毒攻毒的策略。 鬼谷传人，流沙杀手组织首领，原韩国贵族—卫庄，20年前为同门师兄盖聂所败，一生所愿便是击败师兄，夺得天下第一剑的名号。<br><p class=''kongge''>为此，其不惜肉身，修炼鬼谷派的禁忌秘术，实力已是深不可测。李斯便以盖聂作饵，诱卫庄出山。 逃亡路上，天明结识了楚国大将之后—少羽，墨家众高手，还有身世成谜的少女高月等人。 卫庄手下的四大天王奇招迭出，对众人步步追杀。 天明历经磨难，凭借过人的机智与勇气，终于逃过对手的追击。怎奈卫庄处心积虑，处处设局，天明和盖聂最终还是被逼入绝境。卫庄谋划这一切的目的就是要逼迫盖聂和自己进行一场真正的决斗。 一场等待了20年的宿命之战，在鬼谷派纵与横两大弟子之间无可避免地爆发了', 'img/information/img-information01.jpg'),
(2, '秦时明月之夜尽天明 （玄机科技制作的电视动画《秦时明月》第二部）', 'www.sina.com.cn', '2017-09-18 17:14:54', '千重机关，万迭迷岭，快意恩仇续前缘。\n机关城隐匿于绝岭雄峰之间，集结了墨家深厚的智慧，是天下所有反秦势力最后的堡垒。\n面对固若金汤的墨家机关城，卫庄却向秦始皇许诺，只需一天时间便能将其攻破。<br><p class=''kongge''>秦始皇派出庞大的精锐之师随卫庄攻城，与墨家世代为仇的公输家族首领公输仇也加入了卫庄的阵营，机关城严密的防守工事受到了前所未有的挑战。<br><p class=''kongge''>\n卫庄“流沙”刺客团中的数名高手亦纷纷出动，一时间，机关城内杀机迭起、暗流涌动。众高手能否齐心协力撑过墨家有史以来最大的危机？天明是否能在重重迷雾中参透自己的身世之谜？盖聂与卫庄推延了十二年的宿命之战将如何上演？<br><p class=''kongge''>所有谜底，《秦时明月之夜尽天明》为你一一揭晓！<br><p class=''kongge''>秦国边境，残月谷，盖聂一人一剑，尽屠300大秦铁骑精兵。这位天下第一剑客以满身伤痕告诉年少的天明何谓真正的强者。\n消息传来，皇帝震怒，勒令宰相—李斯务必铲除一切抗秦势力。\n李斯提出以江湖对江湖的所谓以毒攻毒的策略。\n鬼谷传人，流沙杀手组织首领，原韩国贵族—卫庄，20年前为同门师兄盖聂所败，一生所愿便是击败师兄，夺得天下第一剑的名号。为此，其不惜肉身，修炼鬼谷派的禁忌秘术，实力已是深不可测。李斯便以盖聂作饵，诱卫庄出山。\n逃亡路上，天明结识了楚国大将之后—少羽，墨家众高手，还有身世成谜的少女高月等人。\n卫庄手下的四大天王奇招迭出，对众人步步追杀。\n天明历经磨难，凭借过人的机智与勇气，终于逃过对手的追击。怎奈卫庄处心积虑，处处设局，天明和盖聂最终还是被逼入绝境。卫庄谋划这一切的目的就是要逼迫盖聂和自己进行一场真正的决斗。\n一场等待了20年的宿命之战，在鬼谷派纵与横两大弟子之间无可避免地爆发了', 'img/information/img-information01.jpg'),
(3, '秦时明月之诸子百家 （2010年沈乐平执导动画《秦时明月》第三部）', 'www.163.com', '2017-09-18 17:56:18', '公元前222年，秦发兵六十万攻楚，楚军节节败退。乱军之中，日后的名将之星蒙恬（蒙武之子）与未来的西楚霸王少羽第一次在沙场相遇。\n楚军寡不敌众，情况危急万分，少年霸王与帝国将星的初次交锋，胜负难测……\n<br><p class=''kongge''>两年之后，秦灭六国，统一中国，秦始皇成为中国历史上第一位皇帝。然而，乱世并未结束，一股强大的力量正在为颠覆大秦而崛起。\n<br><p class=''kongge''>墨家、儒家、道家、法家、兵家、纵横家、阴阳家、农家、名家等，历史上称之为诸子百家。他们有的集结六国残余势力，为推翻帝国保证伺机而动；有的追随帝国主人的脚步，希望在这片大地上创立一个宇内光耀千秋万代的辉煌国度；亦有的借帝国的庞大势力，逐步实现自己不为人知的目的……\n<br><p class=''kongge''>如今，天下反秦势力最后的堡垒——墨家机关城，正遭遇三百年来最大的一次危机……\n<br><p class=''kongge''>盗跖虽然成功脱出，赶往求援，却被一神秘少女拦住去路。与此同时，墨家巨子率领各家英雄在赶往机关城途中，也遭到了阴阳家高手出其不意的暗袭。\n<br><p class=''kongge''>机关城中，身中剑伤的盖聂挥剑斩向身后……\n<br><p class=''kongge''>十年后，纵与横再次交锋，鬼谷的宿命之战，终将在此有一个了结！\n<br><p class=''kongge''>墨家机关城会否就此陷落？墨家众人的命运将何去何从？\n天明的面前究竟还有多少荆棘之路在等待着他？\n被阴阳家虏去的高月又会有何遭遇？\n要以孤家寡人对抗诸子百家，嬴政能有几分胜算？\n在这动荡的乱世中，谁才能成为真正的王者？\n……\n我们的故事，这仅只是开始！', 'img/information/img-information01.jpg'),
(4, '秦时明月之万里长城 （玄机制作网络/电视动画《秦时明月》第四部）', 'www.sohu.com', '2017-09-18 22:47:33', '咸阳宫中的秦始皇一边动用无数劳工营造万里长城，一边进行着一些更为机密的计划，\n这个计划已经接近完成，由阴阳家协助完成的巨艇“蜃楼”已经建造毕。它壮丽精绝的身姿浮现海平线彼端，宛如人人梦想中的海上仙山。它究竟蕴藏着什么秘密？它最终将要航向何处？\n<br><p class=''kongge''>为了解开这些疑团，各家各派势力慢慢汇集到这座平静的海边小城。天明和少羽此时为了避开秦兵的追捕，正在儒家庄园生活和学习。而接下来各种奇异事件次第发生，小城的平静也被完全打破。\n<br><p class=''kongge''>假扮为客商的秦军小队全军覆没，护送的货物下落不明！\n<br><p class=''kongge''>神秘高手联袂侵入将军府，天机楼内收藏的重要宝物竟然不翼而飞！\n<br><p class=''kongge''>寡言少语的少女石兰，武功高强的剑客卫庄，妩媚妖娆的妖女赤练，都纷纷展现出性格的另一面，谁是敌人？谁是朋友？再难分辨。\n<br><p class=''kongge''>桑海城，暗流涌动！\n<br><p class=''kongge''>天明——背负神秘身世的少年。\n<br><p class=''kongge''>盖聂——飞剑独步天下的剑圣。\n<br><p class=''kongge''>少羽——楚国项氏唯一的传人。\n<br><p class=''kongge''>仇敌与伙伴们，都深深卷入这时代的飓风里。\n<br><p class=''kongge''>风起，自蜃楼装饰古雅的舱室空隙滑过，徘徊于秦廷雄壮的梁柱间。\n<br><p class=''kongge''>在丞相李斯的唇角，在将军蒙恬的剑尖，\n<br><p class=''kongge''>在少女高月的眼眸，在智圣张良的眉间。\n<br><p class=''kongge''>它掠过挥汗如雨的长城工地，切入黄金骑兵的军阵边缘，\n<br><p class=''kongge''>在天下百姓的私语中，万千关城的旌旗间，它似乎无所不在。\n<br><p class=''kongge''>所有的生死仇，家国恨，都将在那个时刻凝结。\n<br><p class=''kongge''>所有人的目光，都将在那个地点汇集！', 'img/information/img-information01.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `cs_products`
--

CREATE TABLE `cs_products` (
  `pid` int(11) NOT NULL,
  `family_id` int(11) NOT NULL,
  `main_title` varchar(128) DEFAULT NULL,
  `sub_title` varchar(128) DEFAULT NULL,
  `picture` varchar(128) NOT NULL,
  `cuxiao_price` decimal(6,2) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `unit_price` varchar(32) DEFAULT NULL,
  `price_address` decimal(6,2) DEFAULT NULL,
  `sales_volume` int(11) DEFAULT NULL,
  `appraise` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `details_pic` varchar(1024) DEFAULT NULL,
  `details_appraise` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cs_products`
--

INSERT INTO `cs_products` (`pid`, `family_id`, `main_title`, `sub_title`, `picture`, `cuxiao_price`, `price`, `unit_price`, `price_address`, `sales_volume`, `appraise`, `stock`, `details_pic`, `details_appraise`) VALUES
(1, 1, '百步飞剑---荆天明', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm01.jpg', '666.66', '999.99', '66元/个', '9.99', 61, 61, 61, '<p class="goods-img"><img src="image/商品详情1.jpg" width="732" height="139" alt="xx"/></p><p class="goods-img"><img src="image/商品详情2.jpg" width="760" height="465" alt="xx"/></p>\n                <p class="goods-img"><img src="image/商品详情3.jpg" width="760" height="465" alt="xx"/></p>', NULL),
(2, 1, '百步飞剑---高月', '玄机出品 秦时明月 高月手办pvc系玄机出品2/7手办动漫周边模型摆件', 'image/tm02.jpg', '666.60', '999.90', '60元/个', '9.99', 66, 66, 66, ' <p class="goods-img"><img src="image/gy商品详情.jpg" alt="xx"/></p><\n<p class="goods-img"></p>', NULL),
(3, 1, '百步飞剑--少司命', '玄机出品 秦时明月 少司命手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm.jpg', '9999.99', '9999.99', '999元/个', '9.99', 199, 66, 66, ' <p class="goods-img"><img src="image/ssm商品详情1.jpg" alt="xx"/></p><\n<p class="goods-img"></p>', NULL),
(4, 1, '百步飞剑---雪女', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm04.jpg', '654.32', '789.56', '62元/个', '9.99', 66, 66, 66, NULL, NULL),
(5, 2, '夜尽天明---项少羽', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm05.jpg', '555.00', '666.00', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(6, 2, '夜尽天明---盖聂', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm06.jpg', '666.00', '888.00', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(7, 2, '夜尽天明---端木蓉', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm07.jpg', '6666.00', '9999.00', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(8, 2, '夜尽天明---高渐离', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm08.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(9, 3, '诸子百家---石兰', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm09.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(10, 3, '诸子百家---卫庄', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/tm10.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(11, 3, '诸子百家---荆轲', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(12, 3, '诸子百家---张良', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(13, 4, '万里长城---姬如千泷', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(14, 4, '万里长城---紫女', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(15, 4, '万里长城---月神', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(16, 4, '万里长城---大铁锤', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(17, 4, '万里长城---姬如千泷', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(18, 4, '万里长城---紫女', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(19, 4, '万里长城---月神', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL),
(20, 4, '万里长城---大铁锤', '玄机出品 秦时明月 荆天明手办pvc系玄机出品1/7手办动漫周边模型摆件', 'image/ssm01.jpg', '66.66', '99.99', '60元/个', '9.99', 66, 66, 66, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cs_products_pic`
--

CREATE TABLE `cs_products_pic` (
  `pidid` int(11) NOT NULL,
  `pic_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cs_products_pic`
--

INSERT INTO `cs_products_pic` (`pidid`, `pic_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'image/tm01.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(2, 1, 'image/001.jpg', 'image/001.jpg', 'image/001.jpg'),
(3, 1, 'image/ssm03.jpg', 'image/ssm03.jpg', 'image/ssm03.jpg'),
(4, 1, 'image/ssm01.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(7, 2, 'image/ssm01.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(8, 2, 'image/001.jpg', 'image/001.jpg', 'image/001.jpg'),
(9, 2, 'image/ssm03.jpg', 'image/ssm03.jpg', 'image/ssm03.jpg'),
(10, 3, 'image/ssm.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(11, 3, 'image/001.jpg', 'image/001.jpg', 'image/001.jpg'),
(12, 3, 'image/ssm03.jpg', 'image/ssm03.jpg', 'image/ssm03.jpg'),
(13, 4, 'image/tm01.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(14, 4, 'image/001.jpg', 'image/001.jpg', 'image/001.jpg'),
(15, 4, 'image/ssm03.jpg', 'image/ssm03.jpg', 'image/ssm03.jpg'),
(16, 4, 'image/ssm01.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(17, 5, 'image/ssm01.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(18, 5, 'image/001.jpg', 'image/001.jpg', 'image/001.jpg'),
(19, 5, 'image/ssm03.jpg', 'image/ssm03.jpg', 'image/ssm03.jpg'),
(20, 6, 'image/ssm01.jpg', 'image/ssm01.jpg', 'image/ssm01.jpg'),
(21, 6, 'image/001.jpg', 'image/001.jpg', 'image/001.jpg'),
(22, 6, 'image/ssm03.jpg', 'image/ssm03.jpg', 'image/ssm03.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `cs_promise`
--

CREATE TABLE `cs_promise` (
  `appid` int(11) NOT NULL,
  `user_app_id` int(11) DEFAULT NULL,
  `product_id` int(16) NOT NULL,
  `app_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cs_promise`
--

INSERT INTO `cs_promise` (`appid`, `user_app_id`, `product_id`, `app_time`, `content`) VALUES
(1, 1, 1, '2017-09-01 21:34:33', '好'),
(2, 1, 1, '2017-09-02 15:37:46', '好'),
(3, 1, 1, '2017-09-03 15:37:46', '好'),
(4, 1, 1, '2017-09-04 15:37:46', '好'),
(5, 1, 1, '2017-09-05 15:37:46', '好'),
(6, 1, 1, '2017-09-06 15:37:46', '好'),
(7, 1, 1, '2017-09-07 15:37:46', '好'),
(8, 1, 1, '2017-09-08 15:37:46', '好'),
(9, 2, 1, '2017-09-09 15:37:46', '不好'),
(10, 2, 1, '2017-09-10 15:37:46', '不好'),
(11, 2, 1, '2017-09-11 15:37:46', '不好'),
(12, 2, 1, '2017-09-12 15:37:46', '不好'),
(13, 2, 1, '2017-09-13 15:37:46', '不好'),
(14, 2, 1, '2017-09-14 15:37:46', '不好2'),
(15, 2, 1, '2017-09-15 15:37:46', '不好2'),
(16, 2, 1, '2017-09-16 15:37:46', '不好1'),
(17, 1, 2, '2017-09-01 21:34:33', '好'),
(18, 1, 2, '2017-09-02 15:37:46', '好'),
(19, 1, 2, '2017-09-03 15:37:46', '好'),
(20, 1, 2, '2017-09-04 15:37:46', '好'),
(21, 1, 2, '2017-09-05 15:37:46', '好'),
(22, 1, 1, '2017-09-06 15:37:46', '好'),
(23, 1, 2, '2017-09-07 15:37:46', '好'),
(24, 1, 2, '2017-09-08 15:37:46', '好'),
(25, 2, 2, '2017-09-09 15:37:46', '不好'),
(26, 2, 2, '2017-09-10 15:37:46', '不好'),
(27, 2, 2, '2017-09-11 15:37:46', '不好'),
(28, 2, 2, '2017-09-12 15:37:46', '不好'),
(29, 2, 2, '2017-09-13 15:37:46', '不好'),
(30, 2, 2, '2017-09-14 15:37:46', '不好2'),
(31, 2, 2, '2017-09-15 15:37:46', '不好2'),
(32, 2, 2, '2017-09-16 15:37:46', '不好1'),
(33, 2, 3, '2017-09-01 21:34:33', '等不到天亮等时光'),
(34, 2, 3, '2017-09-02 15:37:46', '夜尽天明'),
(35, 2, 3, '2017-09-03 15:37:46', '好'),
(36, 3, 3, '2017-09-04 15:37:46', '好'),
(37, 3, 3, '2017-09-05 15:37:46', '好'),
(38, 3, 3, '2017-09-06 15:37:46', '好'),
(39, 3, 3, '2017-09-07 15:37:46', '好'),
(40, 2, 3, '2017-09-08 15:37:46', '好'),
(41, 2, 3, '2017-09-09 15:37:46', '不好'),
(42, 2, 3, '2017-09-10 15:37:46', '不好'),
(43, 1, 3, '2017-09-11 15:37:46', '不好'),
(44, 2, 3, '2017-09-12 15:37:46', '慢慢小时光');

-- --------------------------------------------------------

--
-- 表的结构 `cs_shopping_cart`
--

CREATE TABLE `cs_shopping_cart` (
  `sc_id` int(11) NOT NULL,
  `sc_userid` int(11) DEFAULT NULL,
  `sc_pro_id` int(11) DEFAULT NULL,
  `sc_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cs_user`
--

CREATE TABLE `cs_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(16) NOT NULL,
  `upwd` varchar(32) NOT NULL,
  `avatar` varchar(64) DEFAULT NULL,
  `birthday` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cs_user`
--

INSERT INTO `cs_user` (`uid`, `uname`, `upwd`, `avatar`, `birthday`) VALUES
(1, 'alex', '123', 'img/headimg/avatar2.jpg', '30/09/2017'),
(2, 'luolicheng', '123', 'img/headimg/avatar4.jpg', '29/09/2017'),
(3, 'lixie1', '123', 'img/headimg/avatar1.jpg', NULL),
(12, '1234', '1234', 'img/headimg/avatar2.jpg', NULL),
(13, 'luolic', '123', 'img/headimg/avatar4.jpg', NULL),
(14, '123', '123', 'img/headimg/avatar2.jpg', NULL),
(15, 'caonima', '123', 'img/headimg/avatar1.jpg', NULL),
(16, 'caonima', '123', 'img/headimg/avatar1.jpg', NULL),
(17, 'caonima1', '123', 'img/headimg/avatar1.jpg', NULL),
(18, 'luoli', '123', 'img/headimg/avatar2.jpg', NULL),
(19, '', '', 'img/headimg/avatar1.jpg', NULL),
(20, '12345', '123', 'img/headimg/avatar1.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cs_avatar`
--
ALTER TABLE `cs_avatar`
  ADD PRIMARY KEY (`avtid`);

--
-- Indexes for table `cs_family`
--
ALTER TABLE `cs_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `cs_news`
--
ALTER TABLE `cs_news`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `cs_products`
--
ALTER TABLE `cs_products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `cs_products_pic`
--
ALTER TABLE `cs_products_pic`
  ADD PRIMARY KEY (`pidid`);

--
-- Indexes for table `cs_promise`
--
ALTER TABLE `cs_promise`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `cs_shopping_cart`
--
ALTER TABLE `cs_shopping_cart`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `cs_user`
--
ALTER TABLE `cs_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cs_avatar`
--
ALTER TABLE `cs_avatar`
  MODIFY `avtid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `cs_family`
--
ALTER TABLE `cs_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `cs_news`
--
ALTER TABLE `cs_news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `cs_products`
--
ALTER TABLE `cs_products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `cs_products_pic`
--
ALTER TABLE `cs_products_pic`
  MODIFY `pidid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `cs_promise`
--
ALTER TABLE `cs_promise`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- 使用表AUTO_INCREMENT `cs_shopping_cart`
--
ALTER TABLE `cs_shopping_cart`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `cs_user`
--
ALTER TABLE `cs_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
