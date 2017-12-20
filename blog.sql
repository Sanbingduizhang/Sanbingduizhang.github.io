/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-20 22:00:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tp_admin` VALUES ('3', 'chen', '123456');
INSERT INTO `tp_admin` VALUES ('4', 'qweq', '202cb962ac59075b964b07152d234b70');
INSERT INTO `tp_admin` VALUES ('5', '陈绪清', '123456');
INSERT INTO `tp_admin` VALUES ('6', '二二', 'erwe');
INSERT INTO `tp_admin` VALUES ('23', '的范德萨发', '1323');
INSERT INTO `tp_admin` VALUES ('24', '飒飒多所多', '23');
INSERT INTO `tp_admin` VALUES ('25', '二位无群二', '123123');
INSERT INTO `tp_admin` VALUES ('26', '1232', '123123');
INSERT INTO `tp_admin` VALUES ('27', 'q', 'ewe');

-- ----------------------------
-- Table structure for `tp_article`
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `author` varchar(30) NOT NULL COMMENT '文章作者',
  `desc` varchar(255) NOT NULL COMMENT '文章简介',
  `keywords` varchar(255) NOT NULL COMMENT '文章关键词',
  `content` text NOT NULL COMMENT '文章内容',
  `pic` varchar(100) NOT NULL COMMENT '缩略图',
  `click` int(10) NOT NULL DEFAULT '0' COMMENT '点击数',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('1', '测试1', '2', '4', '测试,文章', '<p>5<br/></p>', '', '11', '1', '1475145866', '1');
INSERT INTO `tp_article` VALUES ('5', '测试文章3', '童年', '烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。 ', '测试,文章', '<p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p>', '/uploads/20161002\\753fd85d16974754dcf271d37d072d1e.png', '90', '1', '1475417556', '1');
INSERT INTO `tp_article` VALUES ('4', '测试文章2', '童攀', '描述', '童年,测试', '<p>222<br/></p>', '/uploads/20160930\\fd338f8a40bc432d5febf54b0be24049.jpg', '5', '0', '1475147467', '3');
INSERT INTO `tp_article` VALUES ('6', '测试文章4', '童攀', '公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！ ', '童攀,Tp5', '<p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p>', '/uploads/20161002\\9fc03900ff44f8c7679ae0edfd673d67.png', '10', '0', '1475417603', '1');
INSERT INTO `tp_article` VALUES ('7', '老爸过生日', 'Tp5', '父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ ', '老爸,生日', '<p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？ <br/></p>', '/uploads/20161002\\83c90d060801999ca5b497348f7771a9.png', '13', '0', '1475417731', '1');

-- ----------------------------
-- Table structure for `tp_cate`
-- ----------------------------
DROP TABLE IF EXISTS `tp_cate`;
CREATE TABLE `tp_cate` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cate
-- ----------------------------
INSERT INTO `tp_cate` VALUES ('1', '美食');
INSERT INTO `tp_cate` VALUES ('2', '健身');
INSERT INTO `tp_cate` VALUES ('3', '养生');
INSERT INTO `tp_cate` VALUES ('4', '服装');
INSERT INTO `tp_cate` VALUES ('6', '生活');
INSERT INTO `tp_cate` VALUES ('7', '娱乐');
INSERT INTO `tp_cate` VALUES ('8', '婚嫁');
INSERT INTO `tp_cate` VALUES ('9', '美容');

-- ----------------------------
-- Table structure for `tp_links`
-- ----------------------------
DROP TABLE IF EXISTS `tp_links`;
CREATE TABLE `tp_links` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `title` varchar(30) NOT NULL COMMENT '链接标题',
  `url` varchar(60) NOT NULL COMMENT '链接地址',
  `desc` varchar(255) NOT NULL COMMENT '链接说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_links
-- ----------------------------
INSERT INTO `tp_links` VALUES ('1', '百度', 'http://www.baidu.com', '');

-- ----------------------------
-- Table structure for `tp_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tp_manager`;
CREATE TABLE `tp_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '管理员名称',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `city` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '城市',
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '头像',
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '格言',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '公司名称',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `role_id` int(11) NOT NULL COMMENT '所属角色',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tp_manager
-- ----------------------------
INSERT INTO `tp_manager` VALUES ('1', 'root', '$2y$10$qyQOL0MxqRJWYsoKBfm64uGuv3ivYEM0zxzpaaEr2GsnyKJGblewe', 'repellendus38@sohu.com', '成都', '上海长寿区', 'https://lorempixel.com/640/480/?13809', '三叶钢琴：学琴的孩子不会变坏', '易动力科技有限公司', '18817638642', '0', null, '2017-12-14 20:50:30', 'lxkIj81QcsM5jNpBQdfQOIWSTvEQ2smdtvd6P0xadfUJVBpvF5pnZpSAtesQ');
INSERT INTO `tp_manager` VALUES ('2', '刁杰', '$2y$10$AA.YQ/plyXiJfc.3u89mXeJIos3a77Dz8XjKepLy1VhlOnd6qsWlO', 'impedit_pariatur@sohu.com', '兰州', '杭州沙湾区', 'https://lorempixel.com/640/480/?30334', '共创美的前程，共度美的人生。', '海创网络有限公司', '13457573814', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('3', '邓明霞', '$2y$10$4aAqfGAzZWX8S3a05qyB..xlac/u.6D2XkRg.BO9ZqV0e4LiiLkYC', 'non63@sohu.com', '天津', '呼和浩特新区', 'https://lorempixel.com/640/480/?80364', '省优，部优，葛优？', '南康网络有限公司', '18368878369', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('4', '桂敏', '$2y$10$EceQSp6yag0uRK9eqNprVusZJBWwZv/9pidUZHp2SGNsVCFqKBZFS', 'autem_doloremque@yahoo.com', '长沙', '兰州锡山区', 'https://lorempixel.com/640/480/?56918', '时间因我存在', '巨奥网络有限公司', '17073227349', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('5', '滕成', '$2y$10$P3AoiwQrXSi9XqLn2gdLq.dN90eKSV.8T4CsDEPA2S/7OK7VM8fgi', 'let@sina.com', '昆明', '香港中原区', 'https://lorempixel.com/640/480/?14358', 'Sun是太阳，Java是月亮。', '雨林木风计算机传媒有限公司', '15867436621', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('6', '田秀荣', '$2y$10$IZhpkiNwQ2xPRfMLU2yTx.k/6gxYqGCumKttr2X9gg/7Y8r4L/0XW', 'ysed@hotmail.com', '西安', '太原滨城区', 'https://lorempixel.com/640/480/?86047', '共创美的前程，共度美的人生。', '佳禾信息有限公司', '18784999110', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('7', '卞雪', '$2y$10$aYCu/vutPjNQd1fMG9fGn.JIqvZxQ7qjVO45IHPqCrOVrw0FOYo6e', 'xquam@gmail.com', '香港', '呼和浩特海陵区', 'https://lorempixel.com/640/480/?19338', '谁让我心动？', '鑫博腾飞科技有限公司', '17613141059', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('8', '赵桂花', '$2y$10$mKyoo7UkI1ouEkHOhHXoKOMXR1D7lWq1UF9ghMqgfj0NYlfJQS4gy', 'gsit@gmail.com', '上海', '郑州西峰区', 'https://lorempixel.com/640/480/?44455', '人人都为礼品愁，我送北极海狗油。', '天益科技有限公司', '15365245684', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('9', '施欢', '$2y$10$HQaMeOyudo20f6Ko0dZv3ey29ut1fgmZ12A.MuJWqbpg0AlltGZCK', 'est.perferendis@hotmail.com', '西安', '石家庄上街区', 'https://lorempixel.com/640/480/?34293', '卫浴出出进进的快感', '毕博诚信息有限公司', '13262788241', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('10', '和冬梅', '$2y$10$N3ukbYytj4Nlrb9bdBrBouivxhU6LoitAzHJrIE3W7fz7vM5vHN8K', 'qomnis@gmail.com', '济南', '太原海陵区', 'https://lorempixel.com/640/480/?74106', '阳光总在风雨后', '联通时科传媒有限公司', '18049956072', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('11', '张欣', '$2y$10$L2oj2pa.8yNTtHGpY0H6qexr1jcG.WtmBgRKBiC.Gi4GssrB8zlWS', 'est80@hotmail.com', '福州', '哈尔滨城北区', 'https://lorempixel.com/640/480/?21656', '没有最', '盟新科技有限公司', '15213337093', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('12', '童梅', '$2y$10$.RuYhZjJUVgsKcFR6k4eVeDyyt3syTwxQlVlzDKC858RVN4nE1C5y', 'quaerat37@sina.com', '呼和浩特', '香港永川区', 'https://lorempixel.com/640/480/?93181', '做女人挺好！', '群英网络有限公司', '18169276062', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('13', '邱利', '$2y$10$2O5JPYk/q7S4v338ffj8ROXTjj//dMLjjyw5xRcr0/9FMvSONX5IG', 'quo_et@sohu.com', '海口', '武汉东丽区', 'https://lorempixel.com/640/480/?52641', '阳光总在风雨后', '凌颖信息科技有限公司', '14561479939', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('14', '窦彬', '$2y$10$SSi10JzVmeG1F1t1ULttC..BmoBhgZ17wZzAOhXYsRj5SP5nqMldm', 'consectetur.eveniet@hotmail.com', '福州', '沈阳高坪区', 'https://lorempixel.com/640/480/?66128', '水晶之恋，一生不变。', '天益科技有限公司', '17719052783', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('15', '熊文', '$2y$10$x7W1M6zTVtIPve.Xj5sXsuL9vtuQ.hrKTYmH3AnMD96ChmPi9gGLC', 'gesse@yahoo.com', '长沙', '郑州孝南区', 'https://lorempixel.com/640/480/?76593', '假如你的汽车会游泳的话，请照直开，不必刹车。', '鑫博腾飞信息有限公司', '15305970404', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('16', '辛凤兰', '$2y$10$MgYzQhflntCYw8bbA9MJneM1RY37/dD3d1tMbs9g9EDiELLt04Lj.', 'odit_repudiandae@yahoo.com', '哈尔滨', '呼和浩特双滦区', 'https://lorempixel.com/640/480/?49088', '让我们做得更好！', '信诚致远信息有限公司', '13195167585', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('17', '詹鹏', '$2y$10$suYdg1AEOGeEXxo3KUaXOeeP/1yyjDlwcVPf11qBvcY3QkUsfCkS.', 'cest@yahoo.com', '沈阳', '福州花溪区', 'https://lorempixel.com/640/480/?14957', '一呼四应！', '凌云信息有限公司', '17020304622', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('18', '韦娜', '$2y$10$jeBfc5scvkjwcK9TyJRKEOv4GBVYqS6zjPMHx4CK9kzidspJtyrve', 'et19@hotmail.com', '济南', '南昌白云区', 'https://lorempixel.com/640/480/?30194', '补钙新观念，吸收是要害。', '九方传媒有限公司', '18236627138', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('19', '蓝正诚', '$2y$10$t9bBEiaFrzngBWRM7Nm3/OkcKZkASTHUYs/ZBUbPNHg91I05O5FNu', 'deleniti.sed@yahoo.com', '杭州', '西安牧野区', 'https://lorempixel.com/640/480/?41101', '牙好，胃口就好，身体倍儿棒，吃嘛嘛香。', '飞海科技信息有限公司', '17006647539', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('20', '蔡秀梅', '$2y$10$EXjGZaGdTL1IK5iuNFIvJ.b8LC9ENwwvRDkt5l4oYBAcddowwLAaq', 'est.quis@yahoo.com', '海口', '福州孝南区', 'https://lorempixel.com/640/480/?56995', '国宝大熊猫，心纯天自高', '立信电子科技有限公司', '17185745612', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('21', '时志强', '$2y$10$yBypU0jj9FpuqjvWhlrZ.ORbpHkbiU0LRZPjyezfADQGNtYRSiGvO', 'autem.quo@126.com', '上海', '太原怀柔区', 'https://lorempixel.com/640/480/?26657', '人人都为礼品愁，我送北极海狗油。', '浙大万朋科技有限公司', '18741711480', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('22', '史建明', '$2y$10$rNKj9LeK4OAOOoqj4SY1Se3MrzjhcxJEk9BqmByakiidGPYvauABG', 'odio42@hotmail.com', '南京', '乌鲁木齐沈河区', 'https://lorempixel.com/640/480/?50992', '一旦拥有，别无选择', '泰麒麟信息有限公司', '13351969983', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('23', '罗斌', '$2y$10$RVGntuEmXvQkVcm9gZ55p.9.cElyMYBUlxIJL4YQZANFIw91xW5Qm', 'aaspernatur@gmail.com', '南宁', '长春高明区', 'https://lorempixel.com/640/480/?99309', '听世界，打天下', '艾提科信网络有限公司', '17006594968', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('24', '祝秀荣', '$2y$10$t9mQjKvArIkBOFEAuRDFBO8UGWcHX2YwRnhbfZlqMDzD.yvYWbyRa', 'aut31@sina.com', '沈阳', '乌鲁木齐上街区', 'https://lorempixel.com/640/480/?75130', '科技以人为本，诺基亚', '创汇科技有限公司', '17180376442', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('25', '耿志文', '$2y$10$DVA3qIaYfVnykKzb2OdxKOne9OL64Jad2EjTNcSE3DbzZlI20Ef.O', 'voluptatem.aspernatur@qq.com', '郑州', '澳门六枝特区', 'https://lorempixel.com/640/480/?76664', '省优，部优，葛优？', '富罳网络有限公司', '17001471152', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('26', '僧淑兰', '$2y$10$YdegeeyubbmyIIgATrbZ/e8sz2GUbYnILafVk5sr/ZNH594g67b2K', 'voluptas.ut@yahoo.com', '拉萨', '兰州东丽区', 'https://lorempixel.com/640/480/?99385', '人类失去联想，世界将会怎样？', '诺依曼软件网络有限公司', '17090478073', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('27', '屈琴', '$2y$10$dTv9FU.7tSODtGTnOskKhO0bReS/gJzlzbj1fYGGPdVJ7TSByo6vO', 'cumque88@sina.com', '香港', '合肥双滦区', 'https://lorempixel.com/640/480/?43323', 'SOHU：足迹生活每一天', '艾提科信信息有限公司', '13745018626', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('28', '盛建军', '$2y$10$QHW9mQ1CnNyrhf7ANkkw/eCHL7MAq5a0en65SWANJe5dYuWXUNZU.', 'beatae_sit@hotmail.com', '长春', '贵阳新区', 'https://lorempixel.com/640/480/?44472', '除钞票外，承印一切。', '新格林耐特传媒有限公司', '17695040286', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('29', '方正业', '$2y$10$OweIajBunDOeoDWmnX4VwOJI1o5NgMJ8bMN4E.N1GLCnPiG0lebKe', 'adipisci20@sina.com', '天津', '郑州萧山区', 'https://lorempixel.com/640/480/?80711', '四海一家的解决之道', '佳禾信息有限公司', '13627638113', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('30', '卓玲', '$2y$10$A6W6Y5RbsAV4WyE.oYcDLuw2JdR8cpOT2eBaFQk72uEO.Sac1AcAW', 'deserunt_ut@qq.com', '拉萨', '西安大东区', 'https://lorempixel.com/640/480/?49294', '健康成就未来。', '思优传媒有限公司', '13003286867', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('31', '华志强', '$2y$10$ywcc7.jQ6Z.4ThrV86YiMuOR4gePbQxDUeYBu47cQCQgmwSTlACNK', 'ksoluta@hotmail.com', '贵阳', '澳门翔安区', 'https://lorempixel.com/640/480/?46335', '只溶在口，不溶在手。', '彩虹信息有限公司', '17079904388', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('32', '卫萍', '$2y$10$/oQtvkT6DpIiDM./Ggx4vuAHKq.6oBf/6hRgQ/sis3xNd7mPIrRG6', 'met@sina.com', '南京', '福州大东区', 'https://lorempixel.com/640/480/?73410', '庄重一生，吉祥一生。', '盟新信息有限公司', '18863400570', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('33', '龙玲', '$2y$10$5l.8nFEEuDQemUifyoCk3uYaf9JYIAmby3RFQ4fNF0iCU0nRWa3fu', 'illum.et@sohu.com', '海口', '昆明沈北新区', 'https://lorempixel.com/640/480/?62076', '臭名远扬，香飘万里', '立信电子信息有限公司', '13388471492', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('34', '侯玉', '$2y$10$kF7UkyLu5pnfhPiolTQEwuDouzE9IRcIHPjJJ37iqZly/j8km1B0W', 'dquis@sina.com', '乌鲁木齐', '南宁六枝特区', 'https://lorempixel.com/640/480/?32386', '燕舞，燕舞，一曲歌来一片情。', '创汇信息有限公司', '13071722943', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('35', '薄捷', '$2y$10$fmsNs/mWI8PbabNFr1srDOahFiW0sv4mryyZ.Pnb5WsbLmaRXx8HC', 'ipsa.ducimus@hotmail.com', '上海', '沈阳清城区', 'https://lorempixel.com/640/480/?16945', '永远要让驾驶执照比你自己先到期。', '数字100网络有限公司', '13974106315', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('36', '孟桂芬', '$2y$10$JIcu1BrQ3uBpNSLHMhwr2u9vnXGquSnu9sGRPZNzrUU/E0zecK/ki', 'qui.aliquid@126.com', '福州', '南京金水区', 'https://lorempixel.com/640/480/?56408', '康师傅方便面，好吃看得见。', '凌云信息有限公司', '14719691817', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('37', '盖哲彦', '$2y$10$hdIc83Zloj3acT3xTBdTheI26i1nOf13W85JDedukHrUGAu4pwwSi', 'pet@hotmail.com', '南京', '武汉清浦区', 'https://lorempixel.com/640/480/?38376', '没有最', '天益传媒有限公司', '17697817737', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('38', '蓝敏静', '$2y$10$baYpjWVTaDUeZbYDW9RSP.gkDYgnaLIf9dczDm/7DSDm.Qyb1f.Be', 'dolorem_accusamus@sohu.com', '北京', '成都城东区', 'https://lorempixel.com/640/480/?40249', '一呼四应！', '中建创业传媒有限公司', '18523269901', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('39', '习秀珍', '$2y$10$2gBD8p7.oDDuO2z0R5kYvu19bqEJMQPumK.ec3wHKn5woWDMP1o5G', 'eculpa@gmail.com', '南京', '广州新区', 'https://lorempixel.com/640/480/?69531', '不断创新，因为专心', '恩悌传媒有限公司', '13789190064', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('40', '庄哲彦', '$2y$10$PCNByGc4fa0ac3P9AJM1setunIQs/ugWDK1F3bBbjAjW3bu/mt/2q', 'voluptas23@yahoo.com', '香港', '贵阳秀英区', 'https://lorempixel.com/640/480/?41940', '果冻我要喜之郎', '泰麒麟网络有限公司', '13582487517', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('41', '邹正平', '$2y$10$Dw7Eo.yDOGb2fRBOCPZiFe1gwqnCakSCjcuh2QXOJtbsksf2qzKVq', 'libero.quia@sina.com', '贵阳', '北京经济开发新区', 'https://lorempixel.com/640/480/?48677', '更多欢乐，更多选择', '菊风公司传媒有限公司', '17773729490', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('42', '文玉英', '$2y$10$HKDtCTB92KHtJQDArCjKZePtzky0zTcNoBzXludOP1U6R/O9ewDmW', 'facere_dolor@qq.com', '南昌', '贵阳南溪区', 'https://lorempixel.com/640/480/?81788', '白里透红与众不同', '襄樊地球村网络有限公司', '17077831616', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('43', '薄洋', '$2y$10$vmZlUBQlxVoeUGoAX1tT4OjWVurVsmtXhdSFgi5laYsx96OeQbp0q', 'ndolore@sina.com', '石家庄', '昆明清河区', 'https://lorempixel.com/640/480/?43410', '燕舞，燕舞，一曲歌来一片情。', '数字100网络有限公司', '18990655890', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('44', '巩建明', '$2y$10$fwsOlSJa/Fx3jwbotQteMesGT4tXkOlUDOh5UCJTQpdBoSItBT9zS', 'vel_et@sohu.com', '重庆', '成都牧野区', 'https://lorempixel.com/640/480/?13508', '中国移动通信，沟通从心开始！', '创联世纪信息有限公司', '18245826455', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('45', '周文', '$2y$10$RI2mcmQ3dRqLCMA2SJ92KejfKGHe2B3lpXghOtITEq0NRrrRI1fsq', 'veniam.illum@qq.com', '沈阳', '贵阳沈北新区', 'https://lorempixel.com/640/480/?86276', '选择维聚阿尔，已经表明你心明眼亮。', '浦华众城信息有限公司', '17076285765', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('46', '贺龙', '$2y$10$gFmA.ktSQ3Zu6Duu0NZhAeYtzXiTvtLggCMEIRy5Er2pP0odful4a', 'fuga.magnam@126.com', '拉萨', '郑州沈河区', 'https://lorempixel.com/640/480/?66397', '世上仅此一件，今生与你结缘！', '迪摩科技有限公司', '15594622101', '1', null, null, '');
INSERT INTO `tp_manager` VALUES ('47', '毛雪', '$2y$10$tdEZiGyBPKCFyH4eE6VA1uaLGxF1lalPsU22YCzfTJl6wiy9K4fMe', 'aut.rerum@qq.com', '拉萨', '西安华龙区', 'https://lorempixel.com/640/480/?73776', '一种质感', '图龙信息网络有限公司', '13134279914', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('48', '稽博涛', '$2y$10$SAsO/bHfaRIEzxy12vWaguEtVfv0NoIngyUVylBXJKyod1kecLXfC', 'odit43@126.com', '哈尔滨', '南昌新城区', 'https://lorempixel.com/640/480/?28789', '自然最健康，绿色好心情', '迪摩信息有限公司', '13458503468', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('49', '盖志诚', '$2y$10$.Lso9gxBs27JpYL/8nIVy./4xtQU0nNkbs.zWKkFAc1id63KnV7L2', 'harum19@yahoo.com', '北京', '郑州沙市区', 'https://lorempixel.com/640/480/?21257', '没有蛀牙-佳洁士', '凌颖信息科技有限公司', '18161249312', '2', null, null, '');
INSERT INTO `tp_manager` VALUES ('50', '瞿玉珍', '$2y$10$yoTE8y9LLanD8zD3s.ffdu9r0rwEiI24SINovkeLNhBUMbWHeHNtK', 'uearum@qq.com', '西安', '兰州魏都区', 'https://lorempixel.com/640/480/?75934', '做女人挺好！', '银嘉信息有限公司', '18396637342', '2', null, null, '');

-- ----------------------------
-- Table structure for `tp_tags`
-- ----------------------------
DROP TABLE IF EXISTS `tp_tags`;
CREATE TABLE `tp_tags` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'tag标签id',
  `tagname` varchar(30) NOT NULL COMMENT 'tag标签名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tags
-- ----------------------------
INSERT INTO `tp_tags` VALUES ('1', '趣事');
INSERT INTO `tp_tags` VALUES ('2', '奇闻2');
INSERT INTO `tp_tags` VALUES ('4', '测试');

-- ----------------------------
-- Table structure for `tp_test`
-- ----------------------------
DROP TABLE IF EXISTS `tp_test`;
CREATE TABLE `tp_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `author` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `contents` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐 ，1-推荐，0-不推荐',
  `display` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否显示 ，1-显示，0-不显示',
  `pv` int(11) NOT NULL DEFAULT '100' COMMENT '点击率',
  `admin_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '默认上传者',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建于',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新于',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tp_test
-- ----------------------------
INSERT INTO `tp_test` VALUES ('8', '隋云', 'article/img/images/8.jpg', 'Non eligendi minima voluptatibus dolor.', 'Culpa natus dolore est qui cumque.', 'Commodi labore eius amet dolorem eum repellendus. Ex hic modi esse. Atque voluptatem illo dolorem.', '1', '0', '100', '2', '1513426102', '1513426102');
INSERT INTO `tp_test` VALUES ('9', '管秀云', 'article/img/images/4.jpg', 'Facere enim consequatur quis qui necessitatibus.', 'Delectus et occaecati provident est ut error unde.', 'Eos eum dolorum enim veritatis inventore. Illum et quam quibusdam et quas placeat. Est saepe officia dolor ut. Maxime ullam corporis qui totam tempora. Voluptas qui laboriosam quaerat ipsam.', '1', '0', '100', '1', '1513426103', '1513426103');
INSERT INTO `tp_test` VALUES ('10', '于依琳', 'article/img/images/9.jpg', 'Architecto fugit temporibus rerum totam.', 'Voluptatem ut doloribus quas inventore et praesentium.', 'Enim rem beatae tempora sit facere. Nisi quia quas id molestiae itaque dolore. Consectetur eaque quia quos quasi a illo ea qui. Nam culpa cumque omnis quia.', '1', '0', '100', '2', '1513426103', '1513426103');
INSERT INTO `tp_test` VALUES ('11', '席楠', '/article/img/images/5.jpg', 'Ut tenetur quae aut voluptates aut eos.', 'Ut ex velit explicabo.', 'Suscipit omnis voluptas et voluptatem sint. Optio nihil qui est quia.', '1', '0', '100', '2', '1513426103', '1513426103');
INSERT INTO `tp_test` VALUES ('12', '吴建', '/article/img/52-1609201202130-L.jpg', 'Non esse sapiente maiores quia corporis quo.', 'Molestiae harum necessitatibus aliquid eum id quisquam incidunt.', 'Et soluta sit ratione quis recusandae eius. Velit repudiandae dolores ut ducimus. Voluptate dolor veniam sint velit corporis aut veniam. Ea incidunt magni et cupiditate.', '1', '0', '100', '1', '1513426104', '1513426104');
INSERT INTO `tp_test` VALUES ('13', '毕龙', '/article/img/54-160920113H2U1.jpg', 'Quo soluta labore et ut eum veniam est.', 'Odit nesciunt pariatur corrupti.', 'Tempore voluptas suscipit officia veniam. Nihil voluptas earum alias placeat alias. Eaque sint aspernatur fugit voluptatem illum. Maxime consequatur nemo debitis numquam et et asperiores.', '1', '0', '100', '1', '1513426104', '1513426104');
INSERT INTO `tp_test` VALUES ('14', '蔡振国', '/article/img/54-1609201132532E.jpg', 'Nostrum et sed veritatis expedita.', 'Error vitae omnis vel reiciendis et.', 'Et ut quo voluptatem ratione. Laudantium voluptatum quaerat illum beatae atque harum repellendus. Voluptate odio et illo ut.', '0', '0', '100', '2', '1513426105', '1513426105');
INSERT INTO `tp_test` VALUES ('15', '闵哲彦', '/article/img/55_160920113801_1.jpg', 'Asperiores tempora nostrum commodi laborum repudiandae.', 'Aperiam id vel qui et doloremque doloremque illo.', 'Ratione atque doloremque et odio. Quia totam corporis quia omnis a ullam vel. Provident qui quia et.', '0', '0', '100', '2', '1513426105', '1513426105');
INSERT INTO `tp_test` VALUES ('16', '司玉梅', '/article/img/55_160920113818_1.jpg', 'Rerum natus error expedita repellendus.', 'Fuga temporibus nihil a esse vitae sint rerum incidunt.', 'Eum at corporis quis aut aliquam. Nemo animi voluptatum repellendus aperiam. Cupiditate aut officia eos. Eum tenetur ipsum dolorem consequatur.', '1', '0', '100', '1', '1513426105', '1513426105');
INSERT INTO `tp_test` VALUES ('17', '樊雪', '/article/img/55_160920114823_1.jpg', 'Aut delectus aliquam rem magni corporis.', 'Aliquid qui non amet mollitia consectetur.', 'Laborum rerum quae nesciunt molestiae. Sit et est molestiae possimus. Sunt odit sed debitis itaque necessitatibus quis repellendus. Sed consequatur numquam quod id possimus.', '1', '1', '100', '1', '1513426106', '1513426106');
INSERT INTO `tp_test` VALUES ('18', '官俊', '/article/img/55-160920114U2910.jpg', 'Vitae consequatur quidem rerum expedita sapiente et ipsa.', 'Ea debitis vero nam ullam quam velit.', 'Eum aut vel tenetur et. At non incidunt voluptatibus omnis possimus cum tempora quo.', '0', '0', '100', '2', '1513426106', '1513426106');
INSERT INTO `tp_test` VALUES ('19', '僧璐', '/article/img/55-16092011312M37.jpg', 'Voluptatibus itaque est sapiente quia.', 'Officiis perferendis soluta vero ut quis nobis nihil occaecati.', 'Totam quis nihil odit unde nulla. Sint cumque nostrum quia consequuntur iusto labore velit iusto. Porro consectetur eos est quia ullam veritatis.', '1', '0', '100', '1', '1513426106', '1513426106');
INSERT INTO `tp_test` VALUES ('20', '苗毅', '/article/img/55-1609201139142c.jpg', 'Aut vel vel reiciendis mollitia ea ipsum cumque.', 'Est reprehenderit omnis consectetur quod aut.', 'Deleniti harum laboriosam nostrum sunt voluptatum necessitatibus. Quasi iure quod doloribus omnis cupiditate ut enim. Quae velit aut rem eum et. Vitae sequi inventore ut recusandae delectus nobis.', '1', '0', '100', '2', '1513426107', '1513426107');
INSERT INTO `tp_test` VALUES ('21', '葛建平', '/article/img/55-160920111952403.jpg', 'Nostrum consectetur soluta tempora quia.', 'Culpa eum sunt odio soluta.', 'Illo autem exercitationem voluptas occaecati culpa et qui maxime. Molestias cum minima est deleniti ut. Ducimus ut vero autem expedita aut. Nisi impedit sint corporis deleniti et.', '1', '1', '100', '2', '1513426107', '1513426107');
INSERT INTO `tp_test` VALUES ('22', '迟强', '/article/img/57-160920111J90-L.jpg', 'Enim sit dolor doloremque fuga autem.', 'Exercitationem fuga et sed architecto architecto quia adipisci.', 'Voluptatem architecto ut sunt ut assumenda quo. Blanditiis debitis at voluptates quibusdam quam itaque ut. Porro delectus similique veniam rem quae ducimus repellendus nulla.', '0', '1', '100', '1', '1513426108', '1513426108');
INSERT INTO `tp_test` VALUES ('23', '薛平', '/article/img/57-1609201131370-L.jpg', 'Repellat cumque rerum excepturi voluptas.', 'Facilis magni totam dolores molestiae aut.', 'Ea quae rerum consequatur fuga nostrum distinctio. Quis aliquam quidem repudiandae maxime illo cupiditate odio. Neque error adipisci sit autem optio excepturi. Dolor tempora nulla et.', '1', '1', '100', '2', '1513426108', '1513426108');
INSERT INTO `tp_test` VALUES ('24', '宋琴', '/article/img/57-1609201140460-L.jpg', 'Dolores eaque sed velit culpa est.', 'Eum vitae et repellat sit natus.', 'Voluptatum eum quia ipsum. Est ipsum consequatur modi ad pariatur reprehenderit aut. Doloribus et tempora voluptatem. Pariatur et corrupti in qui sed ipsam ut ea. Doloremque quis et sit sed.', '0', '1', '100', '2', '1513426108', '1513426108');
INSERT INTO `tp_test` VALUES ('25', '燕玉梅', '/article/img/57-1609201149550-L.jpg', 'Omnis et excepturi quaerat beatae quia nihil modi in.', 'Qui omnis consequatur ducimus fuga aperiam.', 'Vitae et inventore facere maxime eos fuga. Quia autem possimus dolore quia consequatur eaque. Omnis ad et ut culpa quidem enim.', '0', '1', '100', '2', '1513426109', '1513426109');
INSERT INTO `tp_test` VALUES ('26', '姚林', '/article/img/55-16092011540a35.jpg', 'Quis magni et dolore excepturi.', 'Quo sit est rem repellendus.', 'Qui quaerat excepturi pariatur est. Odit et nihil facilis fugiat. Sapiente labore cum sunt sit alias eos dignissimos. Ducimus ut provident voluptatibus laudantium id.', '1', '1', '100', '2', '1513426109', '1513426109');
INSERT INTO `tp_test` VALUES ('27', '卫文', '/article/img/55-16092011540a35.jpg', 'Eveniet reiciendis veritatis error quasi sint ut molestiae maxime.', 'Ratione commodi praesentium officiis repellat laborum nihil.', 'Ad aperiam sed numquam ipsa saepe perferendis enim. Ut cumque distinctio excepturi. Sunt nisi accusamus ut debitis quia. Vel quia ipsa voluptatem dolorem omnis minus.', '0', '0', '100', '1', '1513426109', '1513426109');
INSERT INTO `tp_test` VALUES ('28', '蓝珺', '/article/img/55-16092011540a35.jpg', 'Eum et esse veniam est molestiae quae.', 'Ea sunt rerum laborum consequuntur id et.', 'Unde officiis dolores quidem. Quaerat repellat ea quia omnis quod sit illo. Quod repellendus excepturi velit cum dicta.', '0', '0', '100', '1', '1513426110', '1513426110');
INSERT INTO `tp_test` VALUES ('29', '洪艳', '/article/img/55-16092011540a35.jpg', 'Consequatur eum rerum quasi maiores doloribus ut magni.', 'Voluptatibus magni velit ipsam molestiae nam dolor repellendus voluptatibus.', 'Voluptatibus exercitationem repellat cumque totam voluptatem ipsum ut. Molestiae in minus natus. Optio quia non tempora harum perferendis. Enim consequatur adipisci nobis quod qui.', '0', '1', '100', '1', '1513426110', '1513426110');
INSERT INTO `tp_test` VALUES ('30', '边桂珍', '/article/img/55-16092011540a35.jpg', 'Molestias assumenda sed incidunt voluptas harum.', 'Sit sit aut quia eum qui quia.', 'Sequi sunt mollitia amet enim autem. Doloribus nam aliquid eos ab voluptas. Rerum neque et tenetur id et aut illum eius. Eum nulla reiciendis laudantium sapiente quis.', '0', '0', '100', '2', '1513426116', '1513426116');
INSERT INTO `tp_test` VALUES ('31', '郭新华', '/article/img/55-16092011540a35.jpg', 'Fugit id dolor molestias non animi adipisci.', 'Velit cupiditate consequatur dolores est ducimus nam qui.', 'Occaecati accusamus est qui ut rerum ducimus eius repellendus. Ratione eum vel et id.', '0', '1', '100', '1', '1513426117', '1513426117');
INSERT INTO `tp_test` VALUES ('32', '房颖', '/article/img/55-16092011540a35.jpg', 'Sunt tempore eligendi sequi dolorem commodi.', 'Est adipisci perferendis soluta hic sunt.', 'Quibusdam qui illum debitis laborum in nam. Quia aliquid a eum corporis. Cumque corrupti nisi officia id a.', '0', '0', '100', '2', '1513426117', '1513426117');
INSERT INTO `tp_test` VALUES ('33', '易文君', '/article/img/55-16092011540a35.jpg', 'Assumenda quisquam nulla quos voluptas est fugiat molestiae ipsum.', 'Non dolor tempora placeat voluptas quidem molestiae temporibus.', 'Sint rem et tempore dolorem aut ut nihil ratione. Quaerat at voluptatem dolor ea.', '1', '1', '100', '1', '1513426117', '1513426117');
INSERT INTO `tp_test` VALUES ('34', '李建', '/article/img/55-16092011540a35.jpg', 'Sapiente sed ut itaque veniam cupiditate.', 'Delectus adipisci placeat et enim vel non.', 'Consequatur et laudantium et suscipit id. Veniam minus velit nihil voluptatem. Nostrum non rerum vero nulla.', '0', '0', '100', '2', '1513426118', '1513426118');
INSERT INTO `tp_test` VALUES ('35', '田玉珍', '/article/img/55-16092011540a35.jpg', 'Sed aliquam qui ea accusantium aspernatur quisquam.', 'In dolor possimus molestiae quos error molestiae.', 'Et accusantium minima asperiores consequatur reprehenderit. Iste consectetur minus quia qui vel. Perspiciatis perferendis similique fugit nesciunt. Dolor consequatur inventore illum occaecati.', '1', '0', '100', '2', '1513426118', '1513426118');
INSERT INTO `tp_test` VALUES ('36', '涂超', '/article/img/55-16092011540a35.jpg', 'Tenetur et quod nisi et nulla rerum vitae.', 'Sit rerum voluptas et.', 'Laborum quo et a laudantium omnis. Deleniti deserunt et beatae perspiciatis ut. Velit similique qui pariatur temporibus dicta commodi qui. Aut consequatur ex eius qui reprehenderit.', '1', '1', '100', '1', '1513426120', '1513426120');
INSERT INTO `tp_test` VALUES ('37', '白学明', '/article/img/55-16092011540a35.jpg', 'Alias consequatur eos odio ut neque rem sed quisquam.', 'Id cupiditate quidem ut velit quia.', 'Qui quia consequatur iure sunt eum. Unde minima nihil et aliquam natus ut provident non. Optio autem eius aut in dolores soluta eum eaque.', '0', '1', '100', '1', '1513426121', '1513426121');
INSERT INTO `tp_test` VALUES ('38', '闵畅', '/article/img/55-16092011540a35.jpg', 'Est dolores eius aut placeat id reprehenderit sapiente.', 'Distinctio dolorum voluptatem quis cupiditate ut quos in.', 'Error autem at ex sint. Ex fugit dolorum dolores dolor amet sed. Non quos ea architecto occaecati sit nostrum voluptatem molestias. Quis ratione dolorum nulla exercitationem nisi quisquam.', '0', '0', '100', '2', '1513426121', '1513426121');
INSERT INTO `tp_test` VALUES ('39', '王雷', '/article/img/55-16092011540a35.jpg', 'Consequatur non vel in voluptatibus doloremque iure commodi.', 'Repellat libero eaque rerum qui qui fuga.', 'Dolores qui quo esse sunt voluptates sequi id. Omnis et autem architecto debitis. Reiciendis assumenda qui adipisci eos excepturi accusantium. Quo quia nihil aliquam omnis asperiores quam.', '0', '0', '100', '2', '1513426122', '1513426122');
INSERT INTO `tp_test` VALUES ('40', '阎云', '/article/img/55-16092011540a35.jpg', 'Doloribus commodi rerum excepturi sunt voluptatibus.', 'Excepturi et et amet sit.', 'Voluptatem aliquid dolor iusto nisi officia sed porro. Ut vel nesciunt vero nostrum ut modi. Sunt repudiandae laudantium ratione commodi repellat et. Est pariatur dignissimos non quas sed ut.', '0', '0', '100', '2', '1513426122', '1513426122');
INSERT INTO `tp_test` VALUES ('41', '吉建国', '/article/img/55-16092011540a35.jpg', 'Nobis provident modi non quidem eaque.', 'Dolorum eaque atque amet iusto et neque qui.', 'Saepe eius aut ipsa voluptatem ducimus sunt quos quia. Iste dolores sunt nihil ut cupiditate. Hic voluptatem sit culpa est et id.', '1', '0', '100', '1', '1513426351', '1513426351');
INSERT INTO `tp_test` VALUES ('42', '申珺', '/article/img/55-16092011540a35.jpg', 'Corporis eligendi fugit adipisci possimus.', 'Qui fugiat praesentium earum harum.', 'Dolor sit iusto perspiciatis aut laudantium. Dicta eum perspiciatis sint eligendi qui necessitatibus quis. Nobis vero ut quos.', '0', '1', '100', '1', '1513426438', '1513426438');
INSERT INTO `tp_test` VALUES ('43', '詹致远', '/article/img/55-16092011540a35.jpg', 'Minus consequatur dolor quod nisi qui consequatur.', 'Minus ut cum sit quis.', 'Officiis pariatur eum consequuntur sint a minus voluptates. Eveniet id esse iure occaecati. Praesentium laborum esse a dolor quis non nihil.', '0', '0', '100', '2', '1513426438', '1513426438');
