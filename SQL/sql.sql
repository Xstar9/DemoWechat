CREATE TABLE `business` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `busname` varchar(255) DEFAULT NULL COMMENT '商家名称',
  `busaddress` varchar(255) DEFAULT NULL COMMENT '商家地址',
  `busexplain` varchar(255) DEFAULT NULL COMMENT '商家介绍',
  `bustell` varchar(20) DEFAULT NULL COMMENT '商家电话',
  `servertime` varchar(100) DEFAULT NULL COMMENT '服务时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO `business` VALUES (2, '千锋美容美发111', '成都市武侯区肖家河大厦三楼25教室', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647899', '9：00 - 18：00');
INSERT INTO `business` VALUES (3, '再清椿美容', '成都市武侯区肖家河大厦', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (4, '珍妮优健康美容连锁', '成都市武侯区肖家河大厦', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (5, 'Variety沃沙龙·染烫专家', '成都市武侯区肖家河大厦十大大苏打', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (6, '千锋美容美发5', '成都市武侯区肖家河大厦', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (7, '千锋美容美发6', '成都市武侯区肖家河大厦', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (8, '千锋美容美发7学的是d\'s', '成都市武侯区肖家河大厦', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (9, '千锋美容美发8', '成都市武侯区肖家河大厦', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (11, '千锋美容美发11', '成都市武侯区肖家河大厦', '千峰美容美发养生馆是集美容.美发.纹绣.养生为一体的专业服务团队。一楼美发厅拥有专业发型设计师8人为您提供新潮时尚的发型设计', '028-35647877', '9：00 - 18：00');
INSERT INTO `business` VALUES (23, '攀枝花西域中心', '成都机场路', '来了就走不了', '16765666666', '00:00:00 - 23:59:59');
INSERT INTO `business` VALUES (24, '阿大撒', '啊实打实', '1566666666615666666666156666666661566666666615666666666', '15666666666', '00:00:00 - 23:59:59');
INSERT INTO `business` VALUES (26, '赫尔曼商业集团', '赫尔曼大厦', '购买商品你的不二选择', '17700698401', '09:04:02 - 21:56:55');

CREATE TABLE `image` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `imageurl` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `imagetitle` varchar(50) DEFAULT NULL COMMENT '图片标题',
  `imagetype` varchar(50) DEFAULT NULL COMMENT '图片类型 banner：首页轮播图 nav：菜单 head：头像',
  `imagestate` varchar(10) DEFAULT NULL COMMENT '图片状态  1：可用  0：不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


INSERT INTO `image` VALUES (1, 'banner_01.png', 'banner', 'banner', '1');
INSERT INTO `image` VALUES (2, 'banner_02.png', 'banner', 'banner', '1');
INSERT INTO `image` VALUES (3, 'banner_03.png', 'banner', 'banner', '1');
INSERT INTO `image` VALUES (4, 'banner_04.png', 'banner', 'banner', '1');
INSERT INTO `image` VALUES (5, 'nav_icon_01.png', '推荐', 'nav', '1');
INSERT INTO `image` VALUES (6, 'nav_icon_02.png', '美甲', 'nav', '1');
INSERT INTO `image` VALUES (7, 'nav_icon_03.png', '美容', 'nav', '1');
INSERT INTO `image` VALUES (8, 'nav_icon_04.png', '美发', 'nav', '1');
INSERT INTO `image` VALUES (9, 'nav_icon_05.png', '睫毛', 'nav', '1');
INSERT INTO `image` VALUES (10, 'b1.png', '千峰美容美发商家', 'bus', '1');
INSERT INTO `image` VALUES (11, 'p1.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (12, 'p2.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (13, 'p3.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (14, 'p4.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (15, 'p5.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (16, 'p6.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (17, 'p7.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (18, 'p8.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (19, 'p9.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (20, 'p10.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (21, 'p11.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (22, 'p12.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (23, 'p13.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (24, 'p14.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (25, 'p15.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (26, 'p16.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (27, 'p17.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (28, 'p18.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (29, 'p19.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (30, 'p20.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (31, 'p21.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (32, 'p22.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (33, 'p23.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (34, 'p24.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (35, 'p25.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (36, 'p26.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (37, 'p27.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (38, 'p28.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (39, 'p29.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (40, 'p30.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (41, 'p41.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (42, 'p42.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (43, 'p43.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (44, 'p44.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (45, 'p45.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (46, 'p46.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (47, 'p47.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (48, 'p48.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (49, 'p49.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (50, 'p50.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (51, 'p51.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (52, 'p52.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (53, 'p53.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (54, 'p54.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (55, 'p55.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (56, 'p56.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (57, 'p57.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (58, 'p58.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (59, 'p59.png', '产品', 'pro', '1');
INSERT INTO `image` VALUES (60, 'p60.png', '产品', 'pro', '1');

CREATE TABLE `order` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `openid` varchar(255) DEFAULT NULL COMMENT '关联user表的openId',
  `proname` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `makedate` varchar(255) DEFAULT NULL COMMENT '预约时间',
  `username` varchar(50) DEFAULT NULL COMMENT '预约客户姓名',
  `orderstate` varchar(10) DEFAULT NULL COMMENT '预约状态',
  `placedate` varchar(50) DEFAULT NULL COMMENT '下单时间',
  `usertell` varchar(50) DEFAULT NULL COMMENT '手机号',
  `information` varchar(255) DEFAULT NULL COMMENT '留言',
  `busid` bigint(11) DEFAULT NULL COMMENT '关联商家id',
  `proid` bigint(11) DEFAULT '0' COMMENT '关联产品id',
  `tecid` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;


INSERT INTO `order` VALUES (3, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '美甲豪华套餐', '2021-07-0316:31', 'wrw', '2', '2021-07-03', '1231312', 'wrwer', 2, 3, NULL);
INSERT INTO `order` VALUES (5, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '纯色甲油胶＋磨砂', '2021-07-0316:49', '', '1', '2021-07-03', '', '', 2, 1, NULL);
INSERT INTO `order` VALUES (6, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '【美甲】单人纯色植物甲油胶', '2021-08-0509:41', '赵云', '1', '2021-07-05', '18758878988', '哈哈哈哈哈哈', 2, 2, NULL);
INSERT INTO `order` VALUES (7, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '蛋糕甲油胶纯色+手部SPA', '2021-07-0609:43', '小貂蝉', '1', '2021-07-05', '13666666666', '呵呵呵呵', 2, 3, NULL);
INSERT INTO `order` VALUES (8, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI1', '蛋糕甲油胶纯色+手部SPA', '2021-07-0509:44', '大乔', '1', '2021-07-05', '14567876543', '大乔大大大', 2, 2, NULL);
INSERT INTO `order` VALUES (16, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI1', '【CND手护】美国CND深层滋养手部护理', '2021/07/07 0:00', '噢噢噢噢', '1', NULL, '18848428085', '噢噢噢噢', 2, 4, NULL);
INSERT INTO `order` VALUES (17, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '纯色甲油胶＋磨砂', '2021-7-9 9:00', '李四', '0', '2021-07-10', '17883681836', '全额全额委屈', 2, 1, NULL);
INSERT INTO `order` VALUES (19, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '纯色甲油胶＋磨砂', '2021-07-22 09:02', '测试', '0', NULL, '34324234', '阿发发士大夫的', 2, 1, NULL);
INSERT INTO `order` VALUES (20, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '纯色甲油胶＋磨砂', '2021-7-21 9:00', '的合法的身份', '0', '2021-07-21', '453534', 'aa大撒大撒', 2, 1, NULL);
INSERT INTO `order` VALUES (27, 'undefined', '纯色甲油胶＋磨砂', NULL, '', '0', '2021-07-22', '', '', 2, 1, NULL);
INSERT INTO `order` VALUES (28, 'oFCod5COAhtK4uSf4FAXD1XWQf6c', '纯色甲油胶＋磨砂', NULL, '', '0', '2021-07-22', '', '', 2, 1, NULL);
INSERT INTO `order` VALUES (29, 'oFCod5COAhtK4uSf4FAXD1XWQf6c', '美甲豪华套餐', NULL, 'bbq', '0', '2021-07-22', '123456', '阿巴', 2, 3, NULL);
INSERT INTO `order` VALUES (30, 'oFCod5Mm6-4z9VDrKV4yx_rKs1SI', '纯色甲油胶＋磨砂', '2021-07-22 15:26', '', '0', '2021-07-22', '', '', 2, 1, NULL);
INSERT INTO `order` VALUES (31, 'oFCod5Mm6-4z9VDrKV4yx_rKs1SI', '纯色甲油胶＋磨砂', '2021-07-22 16:34', '为', '0', '2021-07-22', '1213', '1', 2, 1, NULL);
INSERT INTO `order` VALUES (32, 'oFCod5Mm6-4z9VDrKV4yx_rKs1SI', '【CND手护】美国CND深层滋养手部护理', '2021-07-22 16:34', '谭爱明', '0', '2021-07-22', '134214214', '12321', 2, 4, NULL);
INSERT INTO `order` VALUES (33, 'oFCod5Mm6-4z9VDrKV4yx_rKs1SI', '蛋糕甲油胶纯色+手部SPA', '2021-07-22 16:45', '恶趣味', '0', '2021-07-22', '1', '1', 2, 2, NULL);
INSERT INTO `order` VALUES (34, 'oFCod5Mm6-4z9VDrKV4yx_rKs1SI', '纯色甲油胶＋磨砂', '2021-07-22 16:54', '谭爱明', '0', '2021-07-22', '112421242', '2112', 2, 1, NULL);
INSERT INTO `order` VALUES (35, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '碧柔发型烫染优惠', '2021-08-06 10:00', '赵小六', '0', '2021-08-05', '18888888888', '需要xxx服务', 4, 14, 15);
INSERT INTO `order` VALUES (36, 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', '小气泡深层清洁十仪器灌肤', '2021-08-06 9:00', '小陈', '0', '2021-08-05', '17865555555', '啊大大', 3, 7, 7);

CREATE TABLE `project` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `proexplain` varchar(255) DEFAULT NULL COMMENT '项目介绍',
  `proprice` double(8,2) DEFAULT '0.00' COMMENT '项目价格',
  `prostep` varchar(255) DEFAULT NULL COMMENT '项目步骤',
  `protypeid` bigint(11) DEFAULT NULL COMMENT '关联项目类型id',
  `proname` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `imageid` bigint(11) DEFAULT NULL COMMENT '关联图片id',
  `prostatus` varchar(20) DEFAULT NULL COMMENT '项目状态',
  `busid` bigint(11) DEFAULT NULL COMMENT '关联公司id',
  `tecid` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;


INSERT INTO `project` VALUES (1, '甲油胶的成份,甲油胶的主要成分,甲油胶的配方,技术支持,微谱技术分析,提供各类产品检测,独立实验室,仪器齐全,全新配方分析,专业成分分析报告,', 88.00, '1：消毒美甲师的手和客人的手\n\n2：与客人共同设计适合甲型并修甲型\n\n3：修剪死皮，祛除多余角质，护理指缘\n\n4：根据自己喜好选色，试色\n\n5：涂抹底胶\n\n6：涂抹色胶\n\n7：款式设计\n\n8：涂抹加固\n\n9：涂抹封层\n\n10：对已做好的指甲进行检查\n\n11：清洁手部\n\n12：OPI指缘油护理\n\n13：保湿手霜护理', 3, '纯色甲油胶＋磨砂', 11, '1', 2, NULL);
INSERT INTO `project` VALUES (2, '甲油是用来修饰和增加指甲美观的化妆品，它能在指甲表面形成一层耐摩擦的薄膜，起到保护、美化指甲的作用。', 100.00, '1：消毒美甲师的手和客人的手\n\n2：与客人共同设计适合甲型并修甲型\n\n3：修剪死皮，祛除多余角质，护理指缘\n\n4：根据自己喜好选色，试色\n\n5：涂抹底胶\n\n6：涂抹色胶\n\n7：款式设计\n\n8：涂抹加固\n\n9：涂抹封层\n\n10：对已做好的指甲进行检查\n\n11：清洁手部\n\n12：OPI指缘油护理\n\n13：保湿手霜护理', 3, '蛋糕甲油胶纯色+手部SPA', 12, '1', 2, NULL);
INSERT INTO `project` VALUES (3, '美甲是根据客人的手形、甲形、肤质、服装的色彩和要求，对指（趾）甲进行消毒、清洁、护理、保养、修饰美化的过程。', 288.00, '1：消毒美甲师的手和客人的手\n\n2：与客人共同设计适合甲型并修甲型\n\n3：修剪死皮，祛除多余角质，护理指缘\n\n4：根据自己喜好选色，试色\n\n5：涂抹底胶\n\n6：涂抹色胶\n\n7：款式设计\n\n8：涂抹加固\n\n9：涂抹封层\n\n10：对已做好的指甲进行检查\n\n11：清洁手部\n\n12：OPI指缘油护理\n\n13：保湿手霜护理', 3, '美甲豪华套餐', 13, '1', 2, NULL);
INSERT INTO `project` VALUES (4, '手部护理 注意事项 不要长时间穿高跟鞋如果你有长时间穿高跟鞋的习惯,最好一周能有一天不穿高跟鞋,让脚后跟、脚踝放松,没有压力,这样可以让血液循环良好,也能减少脚后跟变黑、变厚的概率', 228.00, '1：消毒美甲师的手和客人的手\n\n2：与客人共同设计适合甲型并修甲型\n\n3：修剪死皮，祛除多余角质，护理指缘\n\n4：根据自己喜好选色，试色\n\n5：涂抹底胶\n\n6：涂抹色胶\n\n7：款式设计\n\n8：涂抹加固\n\n9：涂抹封层\n\n10：对已做好的指甲进行检查\n\n11：清洁手部\n\n12：OPI指缘油护理\n\n13：保湿手霜护理', 3, '【CND手护】美国CND深层滋养手部护理', 14, '1', 2, NULL);
INSERT INTO `project` VALUES (5, '美甲胶又名甲油胶，近几年美甲行业应用比较广泛，由于甲油胶本身特点和一般甲油相比，如然生化工甲油胶，具有环保无毒，健康安全的特征，另外它兼容胶类和甲油的共同优点，色泽饱满剔透，涂抹方便，光泽保持更持久', 98.00, NULL, 3, '【美甲】单人纯色植物甲油胶', 15, '1', 2, NULL);
INSERT INTO `project` VALUES (6, '再清椿专业美容养生机构提出“五阶”星级服务标准，到店的每位客户都可享受1尊享-贵宾级服务；2记录-个人档案及操作专业记录；3监测-参数、效果监测；4消毒-服务全程四步消毒；5更换-洗面巾、床单、客服、拖鞋、每客一换。', 199.00, '1：消毒美甲师的手和客人的手\n\n2：与客人共同设计适合甲型并修甲型\n\n3：修剪死皮，祛除多余角质，护理指缘\n\n4：根据自己喜好选色，试色\n\n5：涂抹底胶\n\n6：涂抹色胶\n\n7：款式设计\n\n8：涂抹加固\n\n9：涂抹封层\n\n', 1, '手工局部塑形曲线套餐', 16, '1', 3, NULL);
INSERT INTO `project` VALUES (7, '小气泡主要作用是治疗痤疮、毛囊炎、清理螨虫,清除皮肤过敏源;皮肤美白、改善暗黄;深层清洁皮肤、同时补水、补养;去黑头、改善松弛,收细毛孔和增加透明度。 小气泡属于皮肤管理里面', 128.00, '1.悦享卸妆乳2.温和基础清洁3.悦享净颜液U区软化角质4.平衡精华水T区吸咐毛孔油脂5.活肤营养液导入6.悦享新生霜/润肤7.防护霜/隔离霜', 1, '小气泡深层清洁十仪器灌肤', 17, '1', 3, NULL);
INSERT INTO `project` VALUES (8, '通过对女性胸部做深层按摩拉伸运动,促使血液循环(调节气血),通过拨经将肿块变软变小(软坚散结),促使乳房的血液及淋巴系统循环顺畅,改善和预防女性面临的乳房疾病', 888.00, '1.悦享卸妆乳2.温和基础清洁3.悦享净颜液U区软化角质4.平衡精华水T区吸咐毛孔油脂5.活肤营养液导入6.悦享新生霜/润肤7.防护霜/隔离霜', 1, '胸部调理', 18, '1', 3, NULL);
INSERT INTO `project` VALUES (9, '激光脱毛之后毛囊发黑是属于正常的现象,因为激光脱毛主要是利用了激光的光热动学原理照射到皮肤的毛囊部位,穿透皮肤的表层,从而达到毛囊发热,这样是能够破坏局', 89.00, '1.悦享卸妆乳2.温和基础清洁3.悦享净颜液U区软化角质4.平衡精华水T区吸咐毛孔油脂5.活肤营养液导入6.悦享新生霜/润肤7.防护霜/隔离霜', 1, '脱毛十毛囊袪黑', 19, '1', 3, NULL);
INSERT INTO `project` VALUES (10, '身体自带4个“养肝处”，每天按一按，通经络排肝毒，更肝“净”推肝经 经络是人体气血运行的通道，经络遍布全身，内联五脏六腑', 198.00, '经络疏通 排肝理气', 3, '经络疏通 排肝理气', 20, '1', 3, NULL);
INSERT INTO `project` VALUES (11, '要办会员卡,充值相应的金额,然后消费的套餐金额要划卡消费,不能付现金。 168的烫染套餐是要充值300元,226元的烫染套餐要充值400元', 398.00, '1：消毒美甲师的手和客人的手\n\n2：与客人共同设计适合甲型并修甲型\n\n3：修剪死皮，祛除多余角质，护理指缘\n\n4：根据自己喜好选色，试色\n\n5：涂抹底胶\n\n6：涂抹色胶\n\n7：款式设计\n\n8：涂抹加固\n\n9：涂抹封层\n\n10：对已做好的指甲进行检查\n\n11：清洁手部\n\n12：OPI指缘油护理', 2, '汉草堂烫染套餐', 21, '1', 4, NULL);
INSERT INTO `project` VALUES (12, '用完的旧睫毛膏棒不要轻易丢掉，用肥皂和温水将它清洗干净，然后用它来最后梳理你修好的眉毛，这样就会达到很自然的效果', 9.90, '洗剪吹', 2, '修头帘/修眉', 22, '1', 4, NULL);
INSERT INTO `project` VALUES (13, '人都想烫染,所以购买了拼团券,到店后不管是理发师还是其他人并未说明,烫发里面不包含剪发,剪发要另外收费', 185.00, '洗剪吹 资深设计师', 2, '普惠烫染优惠', 23, '1', 4, NULL);
INSERT INTO `project` VALUES (14, '一样染这种低调一点的红棕色 也可以让染发师 调一个红色饱和度高 一些的来增加灵动感 想再高调一点 的就再加重紫色的占比 如果还有换发型的需求 甚至可以', 238.00, '洗剪吹 资深设计师', 2, '碧柔发型烫染优惠', 24, '1', 4, NULL);
INSERT INTO `project` VALUES (15, '夏日前的丝柔锻炼计划 ★乳液由脚底往上擦,顺便按摩消水肿★ 过热的洗澡水虽然舒服却会加速水份流失', 658.00, '1护理  2.吹洗', 2, '白金丝柔护理', 25, '1', 4, NULL);
INSERT INTO `project` VALUES (16, '眉妆的基础——修眉 精致眉形的第一步 一定是修眉! ▼ Step1 修眉之前,做好清洁和保湿步骤 让眉毛部位的皮肤保持滋润 避免干燥起皮,影响修眉效果 再用眉梳', 3.80, '修眉+精致眉形', 3, '修眉+精致眉形', 26, '1', 5, NULL);
INSERT INTO `project` VALUES (17, ' 指甲漂亮、睫毛忽闪忽闪的女生, 总是特别的小仙女。 总之一句话,你离找到男朋友, 只差一款美甲+美睫了。 小编昨天去试了一家,想疯狂安利给各位姐妹!!技术手法专业,用的东西也妥妥的', 298.00, NULL, 3, '睫毛手足甲油胶人气套餐', 27, '1', 5, NULL);
INSERT INTO `project` VALUES (18, '环顾四周，闹市区隔几百米就能看到一家美甲店，不提前预约还常常要等位。可优雅可个性可萌可酷，美甲确实已经成为了今天女生扮靓的小心机。无论是低调的跳色', 128.00, '1.皮肤消毒：美甲师及客人皮肤消毒。2.卸除本甲甲油胶(不包含卸除甲片，光疗甲，复杂造型等).3.工具消毒：消毒液，用干护理中美甲师使用的指皮剪，指皮推等工具消毒。4.指甲泡泡;(一次性泡手碗袋准备）5.修甲(修型):根据甲面形状以及喜好，为指甲修整适合的甲型。6.使用进口软甲皮剂：使用软甲皮剂，可软化指甲周围死皮，平衡皮肤PH值。', 3, '女神必选款渐变法式跳色', 28, '1', 5, NULL);
INSERT INTO `project` VALUES (19, '自己DIY拼色美甲 简介 今天我们来学习怎么制作一款拼色美甲，别以为它只是简单的将几种颜色拼在一起，要是组合得不恰当', 39.90, '1：消毒美甲师的手和客人的手\n\n2：与客人共同设计适合甲型并修甲型\n\n3：修剪死皮，祛除多余角质，护理指缘\n\n4：根据自己喜好选色，试色\n\n5：涂抹底胶\n\n6：涂抹色胶\n\n7：款式设计\n\n8：涂抹加固\n\n9：涂抹封层\n\n10：对已做好的指甲进行检查\n\n11：清洁手部\n\n12：OPI指缘油护理\n\n', 3, '自助美甲DIY1000色 饰品任性选', 29, '1', 5, NULL);
INSERT INTO `project` VALUES (20, '脚部美甲也安排上了 - 脚部的美甲同样出色，美甲师会根据你的肤色恰当搭配，挑选适合你的色彩，细心地为你涂上指甲油，让你的脚指间精致如芭比！简约大气的纯色款，不仅百搭', 198.00, 'IBD甲油胶纯色', 3, '手+脚纯色套餐（', 30, '1', 5, NULL);
INSERT INTO `project` VALUES (21, '环保胶水【贵茂源】“六位一体”绿色建材,打造高品质涂料,科学精准配比,【贵茂源】健康环保,质量稳定,多年生产经验,货源充足,质量制胜,报价精准', 39.90, '环保胶纯色', 3, '手部美甲单色', 31, '1', 2, NULL);
INSERT INTO `project` VALUES (22, '单人全身按摩舒缓套餐,时长45分钟; 项目二:单人肩颈调理疏通经络,时长45分钟; 项目三:单人头部护理放松减压套餐一份,时长45分钟; 以上项目三选一 活动说明 温馨提示心脑血管,皮肤过敏等人', 998.00, '清水人间美容SPA养生会所是一家集美容，SPA，泰式为一体的养生会馆，来自泰国的专业按摩服务，优质服务，专业的个性化养生方案，品质始终如一。', 1, '单人养生按摩护理套餐', 32, '1', 4, NULL);
INSERT INTO `project` VALUES (23, '通过专业的中医按摩手法,疏通全身经络和淋巴,放松身心,消除疲劳,改善亚健康状况。运行气血,平衡阴阳,减少妇科来经时各种疼痛,可以达到美体目的,能够缓解肌肉疲劳,促进血液循', 798.00, '单人经络指压SPA', 1, '单人经络指压SPA', 33, '1', 5, NULL);
INSERT INTO `project` VALUES (24, '　　清水人间美容spa男士养生会所是一家集美容，SPA，泰式为一体的男士私人养生会馆，会馆拥有爱多尔元素，激活您的细胞，让您年轻活力，来自泰国的专业保健，优质的三A服务，专业的个性化养生方案，品质始终如一。', 499.00, '1.淋浴2.经典SPA3.专业肩颈经络疏通4.颈部淋巴净排5.腰部开穴6.腰区护理7.暖腰温经调理', 1, '单人美容养生SPA套餐', 34, '1', 6, NULL);
INSERT INTO `project` VALUES (25, '　　清水人间美容spa男士养生会所是一家集美容，SPA，泰式为一体的男士私人养生会馆，会馆拥有爱多尔元素，激活您的细胞，让您年轻活力，来自泰国的专业保健，优质的三A服务，专业的个性化养生方案，品质始终如一', 688.00, '1.芳香清爽滋养养生淋浴2.颈部淋巴排毐3.肩颈正能糧疏通4.精油舒缓开背5.腹部保暖护理6.暖腰温经调理7.全身减压放松', 1, '至尊经典SPA套餐', 35, '1', 6, NULL);
INSERT INTO `project` VALUES (26, '中草热拓：六十多种名贵中草和七十几种的植物精华，经过中西合并研制出一种美容界的圣品。通过干锅加热，敷肤吸收法，直接热敷穴位，干吸湿，热吸寒的原理。将人体的结和不通打散化开，代谢出体外。起到气血循环，通结，除湿排寒等。古语讲：百草成一拓，一拓通百脉，二拓养百岁', 128.00, '1.增强代谢2.疏肝利胆，淡斑养颜，调经缓痛，改善头晕3.益气养脾，温中和胃，祛湿除痘，消积化胀4.增强消化吸收能力，提高思维能力', 1, '中草热拓湿寒管理六选一', 36, '1', 2, NULL);
INSERT INTO `project` VALUES (27, '肩颈腰背护理建议一个星期一次比较适合，如果疲劳严重可以每天做护理。舒解压力消除肩颈僵硬，提神醒脑，消除肌肉酸痛；分解肌肉中堆积的乳酸，防止筋膜粘连', 68.00, '1.背部展油,2.颈部疏通，预防淋巴结肿，改善脑部循环3.左肩疏通右肩疏通，改善气滞血瘀4.整个肩部疏通5.背部及腰部护理6.整个背部护理7.全身放松', 1, '小魔盒肩颈背去疲劳护理', 37, '1', 3, NULL);
INSERT INTO `project` VALUES (28, '韩国微气泡面部深层清洁套餐 团 ¥108 ¥680 单人再清椿按摩项目3选1 团 ¥88 ¥780 古法按摩腿部循环疏通护理 团 ¥168 ¥880 唤活水立方强水嫩肤 团 ¥128 ¥780 中草热拓湿寒管理六选一', 168.00, '1.背部展油,2.颈部疏通，预防淋巴结肿，改善脑部循环3.左肩疏通右肩疏通，改善气滞血瘀4.整个肩部疏通5.背部及腰部护理6.整个背部护理7.全身放松', 1, '唤活水立方强水嫩肤', 38, '1', 6, NULL);
INSERT INTO `project` VALUES (29, '广州泡泡浴推荐,大众点评网为您提供与泡泡浴相关的商户,并且有店铺实拍图片、地址、电话、价格、营业时间等信息,还有其他网友的真实体验评价,帮您找到广州最符合“泡泡浴”的', 198.00, '1：消毒美甲师的手和客人的手\n\n1.花果茶＋营养四季粥＋零食小吃糖果\n\n.芳香物语泡澡：牛奶浴 ，泡泡浴，红酒浴等\n\n3.全身经络疏通，放松缓解压力，排湿驱寒散结\n\n4.疏通腿部经络\n\n6条经络疏通5.疏通腹部经络带脉疏通6.疏通胸部经络紧致提升7.疏通胳膊6条经络8.水果+营养餐+舒心旋律＋提升精气神', 1, '全身活氧SPA＋经络净排＋泡泡浴', 39, '1', 4, NULL);
INSERT INTO `project` VALUES (30, '.腋下激光脱毛会有副作用 激光脱毛是目前最安全、快速、效果持久的脱毛方法,治疗时不伤害周边的组织,视脱毛部位而定,每次激光脱毛的治疗时间在几分钟到几十分钟不等,一般经过三到五', 298.00, '1.专业咨询了解皮肤问题以及毛发状况2.有无过敏史以及其他3.介绍脱毛原理与整个流程4.清洁操作部位，使用一次性用品处理多余毛发5.涂抹修护冰晶，进行操作6.清洁操作部位，锁水保湿7.舒适，轻松脱毛8.美白，收缩毛孔9.专注，专一，专业', 1, '脱毛（发际线/腋下/手部/足部/口周5选1）', 40, '1', 3, NULL);
INSERT INTO `project` VALUES (31, '一星|洗发 +单人造型服务 团购价 ¥ 98 门市价¥180 5.5折 半年消费0   立即抢购 服务承诺 随时退 过期退 适用门店 团购详情 购买须知 用户评价 团购详情 一星|洗发 +单人造', 88.00, '1.资深洗发师手法按摩，缓解头部压力。2.专业高定洗发服务。搭配手法头部颈部按摩护理，释放头部压力，卡诗院线产品专业洗发。3.星选设计师（一星）专业洗吹，一对一定制造型服务。', 2, '一星｜洗发 + 单人造型服务', 41, '1', 2, NULL);
INSERT INTO `project` VALUES (32, '作为女孩子男孩子的第二张脸 一头秀发当然要好好打理 无论是“黑长直”,或者“短帅酷” 一款合适的发型,颜值分分钟提升一个level 但要保证发质无损、tony靠谱', 368.00, '烫/染2选1', 2, '【爆款推荐】烫染2选1', 42, '1', 5, NULL);
INSERT INTO `project` VALUES (33, '大爆款的发型推荐给大家 供大家参考哦! 快去找找属于你的发型约起来吧! 01.发廊大爆款“烫染剪”推荐图集 02.发廊大爆款“烫染剪”推荐图集 03.发廊大爆款“烫', 80.00, '1.爱慕·Hair Salon 2.发型提案3.技术裁剪4.美感造型', 2, '【技术总监】剪发+造型', 43, '1', 6, NULL);
INSERT INTO `project` VALUES (34, '底发廊大爆款“烫染剪”推荐图集 02.年底发廊大爆款“烫染剪”推荐图集 03.年底发廊大爆款“烫染剪”推荐图集 04.年底发廊大爆款“烫染剪”推荐图集 05.年.', 9.90, '1.爱慕·Hair Salon 2.发型提案3.技术裁剪4.美感造型', 2, '【夏季优享】 洗吹+造型', 44, '1', 5, NULL);
INSERT INTO `project` VALUES (35, '蓝谷轻奢定制将欧洲轻奢家具设计师们对美学的思考,先锋前卫的理念,融入业主的独特个人风格,把原创的精髓渗透在每个居家细节', 458.00, '1.专业设计一次2.专业洗发一次3.专业裁剪一次4.专业烫发/染发二选一/一次5.专业造型一次6.服务', 2, '【轻奢定制】烫染2选1', 45, '1', 3, NULL);
INSERT INTO `project` VALUES (36, '轻奢定制隶属于成都领尊服饰有限公司，法定代表人：陈娜，注册资金：100万元，地址：成都市锦江区银木街493号附246号19号(自编号)', 98.00, '1.爱慕·Hair Salon 2.发型提案3.技术裁剪4.美感造型', 2, '【创意总监】剪发+造型', 46, '1', 3, NULL);
INSERT INTO `project` VALUES (37, '于是,轻奢概念应运而生。它定位于中高档,带有独特品位的生活体验感受。 现在,轻奢主义,早已走出时尚产品的圈子,以别具一格的姿态走进家居定制领域。 简约为轻,品质为奢! “轻”代表', 780.00, '1.总监设计一次2.专业洗发一次3.总监剪发一次4.总监烫发一次5.总监造型一次6.服务', 2, '【明星专属】烫染2选1', 47, '1', 5, NULL);
INSERT INTO `project` VALUES (38, '武汉结婚 > 武汉婚礼策划 > 武汉婚礼策划套餐 > 赛拉薇婚礼设计 > 【轻奢定制】我眼里的你-纯主题定制婚礼【轻奢定制】我眼里的你-纯主题定制婚礼 ￥19800￥48800.00 · 可先预付10000.00元定金）', 120.00, '【烫染注明】：烫发不包含特殊发质（沙发 自然卷的头发，需要抛光处理发质的单独收手工费100），染发（不包含漂色 单独做挑染，单独漂色需要正常价目表收费）', 2, '【学生专享】烫染2选1', 48, '1', 6, NULL);
INSERT INTO `project` VALUES (39, '这一期视频是带大家去定制一款舒服自己的高跟鞋过程中试穿了15双美美哒鞋子一定有你喜欢的，希望可以看完哦也希', 88.00, '洗剪吹', 2, '【督导】单人精致剪发', 49, '1', 3, NULL);
INSERT INTO `project` VALUES (40, '轻奢定制德奥罗兰为你详细介绍轻奢定制的产品分类,包括轻奢定制下的所有产品的用途、型号、范围、图片、新闻及价格。同时我们还为您精选了轻奢定制分类的行业资讯、价格行情、展会信息', 399.00, '洗剪吹', NULL, '【明星二选一】单人烫／染2选1', 50, '1', 4, NULL);
INSERT INTO `project` VALUES (41, '睫毛弯弯眼睛眨啊眨,充分可以看出睫毛的重要性,如果可以拥有长睫毛一定可以使得眼睛电力十足,为了美丽很多女孩子选择嫁接睫毛的方式,因此也开始在意嫁接睫毛会', 127.00, '1.韩清洁睫毛2.韩式美睫3.胶原蛋白隔离眼贴4.本次到店卸睫毛', 4, '单人韩式睫毛嫁接套餐（路源美睫美甲）', 51, '1', 4, NULL);
INSERT INTO `project` VALUES (42, '美睫,随着女性朋友对嫁接睫毛的普遍熟知和认可,现在市场上已经流行了各种嫁接方法和样式。 比如日式嫁接和韩式嫁接。但很多朋友可能只是听说过,并不真正了解日式和韩式的区别', 98.00, '1.日式水貂毛2.日本进口无刺激胶水3.本次到店卸睫毛4.睫毛款型设计5.胶原蛋白隔离眼贴6.清洁睫毛', 4, '水貂毛yy嫁接睫毛套餐', 52, '1', 4, NULL);
INSERT INTO `project` VALUES (43, '韩式睫毛嫁接入门..所谓嫁接睫毛:就是针对原有睫毛,以一根一根的假睫毛,透过精准的手工与特殊胶水,将睫毛结合在原本的每根真睫毛上除了增加长度之外,由于顾客的睫毛长度,形状', 80.00, '1.皮肤消毒：美甲师及客人皮肤消毒。2.卸除本甲甲油胶(不包含卸除甲片，光疗甲，复杂造型等).3.工具消毒：消毒液，用干护理中美甲师使用的指皮剪，指皮推等工具消毒。4.指甲泡泡;(一次性泡手碗袋准备）5.修甲(修型):根据甲面形状以及喜好，为指甲修整适合的甲型。6.使用进口软甲皮剂：使用软甲皮剂，可软化指甲周围死皮，平衡皮肤PH值。', 4, '【元気】日式无痕下睫毛嫁接', 53, '1', 3, NULL);
INSERT INTO `project` VALUES (44, ' ​​​随着女性朋友对嫁接睫毛的普遍熟知和认可,现在市场上已经流行了各种嫁接方法和样式。比如人工睫毛就分为束状睫毛、扇形睫毛,单根睫毛等等。那么这些睫毛', 108.00, 'MD山茶花山茶花貂毛睫毛', 4, '貂毛日式【山茶花】亮眸款', 54, '1', 6, NULL);
INSERT INTO `project` VALUES (45, '南京嫁接睫毛套餐推荐,大众点评网为您提供与嫁接睫毛套餐相关的商户,并且有店铺实拍图片、地址、电话、价格、营业时间等信息,还有其他网友的真实体验评价,帮您找到南京最符合', 128.00, '超软水貂毛', 4, '超软貂毛浓密【鸢尾花】神采大眼款', 55, '1', 5, NULL);

CREATE TABLE `projecttype` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '项目类型id',
  `name` varchar(50) DEFAULT NULL COMMENT '项目类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `projecttype` VALUES (1, '美容');
INSERT INTO `projecttype` VALUES (2, '美发');
INSERT INTO `projecttype` VALUES (3, '美甲');
INSERT INTO `projecttype` VALUES (4, '睫毛');


CREATE TABLE `sysuser` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '系统用户id',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `imageid` bigint(11) DEFAULT NULL COMMENT '关联图片id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `technician` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '技师id',
  `techexplain` varchar(255) DEFAULT NULL COMMENT '技师简介',
  `techname` varchar(50) DEFAULT NULL COMMENT '技师姓名',
  `busid` bigint(11) DEFAULT NULL COMMENT '关联商家id',
  `imageurl` varchar(255) DEFAULT NULL COMMENT '技师头像路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO `technician` VALUES (1, '貂蝉是历史上公认的四大美人之一,在三国时期也是绝无仅有的美女,而吕布更是三国中公认最厉害的武将,素有“马中赤兔', '小貂蝉', 2, 'j1.png');
INSERT INTO `technician` VALUES (2, '中国东汉末年时期的美女，庐江皖县（今安徽潜山）人。桥公的次女，汉末名将周瑜的夫人。周瑜风度翩翩的才子形象，与堪称国色的小桥可称天', '小乔', 2, 'j2.png');
INSERT INTO `technician` VALUES (3, '大乔（生卒年不详），庐江郡皖县（今安徽省潜山市）人，东汉末年江东孙策的夫人，本姓“桥”，小说《三国演义》误作“乔”，因为同时还有一个妹妹嫁给周瑜，为了进行区分，姐姐习惯称作“大乔（桥）”。', '大乔', 2, 'j3.png');
INSERT INTO `technician` VALUES (4, '甄逸之女,嫁给袁绍次子袁熙。冀州城破后，为曹丕所获，纳为己妻，曹丕称帝后，为皇后。相传曹植初作《感甄赋》，体现出曹植对甄宓的爱慕之心，后魏明帝曹睿（曹丕与甄宓之子）觉得赋的名字太露骨，改之为《洛神赋》。221年6月，甄宓被曹丕赐死。', '甄宓', 2, 'j4.png');
INSERT INTO `technician` VALUES (5, '即蔡文姬，我国古代四大才女之一，蔡邕之女。年轻时为匈奴所掳，被左贤王纳为妻子，并诞下二子。后来，曹操将之从匈奴赎回，嫁给董祀。琴瑟和谐，也算是结局很不错的了。', '蔡琰', 3, 'j15.png');
INSERT INTO `technician` VALUES (6, '即孙尚香、孙姬、孙夫人（一说其实孙仁就是孙朗，并不是和亲的那个孙权之妹）。刘备之妻，政治婚姻的牺牲品。相传这位孙夫人好武，刘备多有畏惮。刘备入川时，孙夫人被东吴夺回，自此终老东吴。', '孙仁', 3, 'j14.png');
INSERT INTO `technician` VALUES (7, '民国文人周大荒所著小说《反三国演义》中马超的妹妹，马腾之女，赵云的妻子。', '马云禄', 3, 'j13.png');
INSERT INTO `technician` VALUES (8, '张济之妻，张济死后守寡。张绣投降曹操后，曹操听说邹氏的美貌，召之侍寝，结果张绣反叛，使曹操折损了爱将典韦、爱子曹昂和侄子曹安民。', '邹氏', 3, 'j12.png');
INSERT INTO `technician` VALUES (9, '刘备之妾，甘皇后，三国时代著名的美女之一。公元209年，甘夫人病逝，时年二十二岁。', '甘夫人', 4, 'j11.png');
INSERT INTO `technician` VALUES (10, '刘备之妻，糜竺之妹，刘禅生母。天生丽质，其肤如雪。长坂坡，深明大义，为使得刘禅和赵云得脱，投井自杀。', '糜夫人', 4, 'j10.png');
INSERT INTO `technician` VALUES (11, '南蛮王孟获之妻，传说为火神祝融氏之后裔。《三国演义》中她生擒张嶷、马忠，后中计被擒。孟获彻底归顺后，祝融夫人也归顺西蜀。', '祝融夫人', 4, 'j9.png');
INSERT INTO `technician` VALUES (12, '孙坚之妻，吴景之姐，孙策、孙权、孙翊、孙朗生母。', '吴国太', 5, 'j8.png');
INSERT INTO `technician` VALUES (13, '辛毗之女，辛敞之姐，羊耽之妻，羊琇、羊姬之母。辛宪英的智、曹娥的孝、木兰的贞、曹令女的节、苏若兰的才和孟姜的烈并称，皆谓之出类拔萃。三国时代最具有政治洞察力的女人，辛毗、辛敞、羊琇皆一时人杰，遇到大事都会去找辛宪英商量。享年七十九岁。', '辛宪英', 5, 'j7.png');
INSERT INTO `technician` VALUES (14, '诸葛亮的女儿。成都西南有朝真观，即乘烟观.相传，诸葛果在这里修行和成仙升天，', '诸葛果', 5, 'j6.png');
INSERT INTO `technician` VALUES (15, '关羽之女，三国时期孙权欲以己子娶关羽之女以结为亲家，不料被关羽“虎女安能配犬子乎”所拒。关索的姐姐，荆州之变后不知所终。', '关凤', 5, 'j5.png');

CREATE TABLE `tecpro` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `tecid` bigint(11) DEFAULT NULL,
  `proid` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;


INSERT INTO `tecpro` VALUES (1, 1, 1);
INSERT INTO `tecpro` VALUES (2, 1, 2);
INSERT INTO `tecpro` VALUES (3, 1, 13);
INSERT INTO `tecpro` VALUES (4, 1, 7);
INSERT INTO `tecpro` VALUES (5, 1, 9);
INSERT INTO `tecpro` VALUES (6, 2, 15);
INSERT INTO `tecpro` VALUES (7, 2, 13);
INSERT INTO `tecpro` VALUES (8, 2, 4);
INSERT INTO `tecpro` VALUES (9, 2, 1);
INSERT INTO `tecpro` VALUES (10, 3, 2);
INSERT INTO `tecpro` VALUES (11, 3, 14);
INSERT INTO `tecpro` VALUES (12, 3, 7);
INSERT INTO `tecpro` VALUES (13, 3, 9);
INSERT INTO `tecpro` VALUES (14, 4, 11);
INSERT INTO `tecpro` VALUES (15, 4, 15);
INSERT INTO `tecpro` VALUES (16, 4, 10);
INSERT INTO `tecpro` VALUES (17, 4, 14);
INSERT INTO `tecpro` VALUES (18, 4, 4);
INSERT INTO `tecpro` VALUES (19, 4, 6);
INSERT INTO `tecpro` VALUES (20, 5, 5);
INSERT INTO `tecpro` VALUES (21, 5, 10);
INSERT INTO `tecpro` VALUES (22, 5, 11);
INSERT INTO `tecpro` VALUES (23, 5, 9);
INSERT INTO `tecpro` VALUES (24, 5, 8);
INSERT INTO `tecpro` VALUES (25, 6, 6);
INSERT INTO `tecpro` VALUES (26, 6, 7);
INSERT INTO `tecpro` VALUES (27, 6, 1);
INSERT INTO `tecpro` VALUES (28, 6, 3);
INSERT INTO `tecpro` VALUES (29, 7, 7);
INSERT INTO `tecpro` VALUES (30, 7, 14);
INSERT INTO `tecpro` VALUES (31, 7, 13);
INSERT INTO `tecpro` VALUES (32, 8, 8);
INSERT INTO `tecpro` VALUES (33, 8, 1);
INSERT INTO `tecpro` VALUES (34, 9, 9);
INSERT INTO `tecpro` VALUES (35, 9, 10);
INSERT INTO `tecpro` VALUES (36, 9, 3);
INSERT INTO `tecpro` VALUES (37, 10, 10);
INSERT INTO `tecpro` VALUES (38, 10, 2);
INSERT INTO `tecpro` VALUES (39, 10, 5);
INSERT INTO `tecpro` VALUES (40, 11, 11);
INSERT INTO `tecpro` VALUES (41, 11, 13);
INSERT INTO `tecpro` VALUES (42, 11, 8);
INSERT INTO `tecpro` VALUES (43, 11, 9);
INSERT INTO `tecpro` VALUES (44, 12, 12);
INSERT INTO `tecpro` VALUES (45, 13, 15);
INSERT INTO `tecpro` VALUES (46, 13, 5);
INSERT INTO `tecpro` VALUES (47, 13, 6);
INSERT INTO `tecpro` VALUES (48, 14, 14);
INSERT INTO `tecpro` VALUES (49, 14, 3);
INSERT INTO `tecpro` VALUES (50, 15, 15);

CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(100) DEFAULT '' COMMENT '昵称',
  `openid` varchar(255) DEFAULT NULL COMMENT '微信用户唯一标识',
  `imageurl` varchar(255) DEFAULT NULL COMMENT '微信头像路径',
  `sessionkey` varchar(255) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;


INSERT INTO `user` VALUES (7, '哈哈哈', 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', 'https://thirdwx.qlogo.cn/mmopen/vi_32/AXRG7vypnphvVn7BWanmfbbpSfJqlsOZKDOibdObL6kEVtxwwHicUkej7PtnkELwpYh5T2gSQUiclolxGlibvN63Rw/132', NULL, NULL, NULL, '123', NULL);
INSERT INTO `user` VALUES (40, 'Larwance78', 'oFCod5COAhtK4uSf4FAXD1XWQf6c', 'https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEL2EpnDcAN4rPgIulicAruEe2XwQmsVy1KRnjzx9nshwZ7xlYMEcuB86J4AgDGLGekMRnOV2XM9q0g/132', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (41, 'TAM', 'oFCod5CJrSlb8VhGZCnJ-iBsPk7s', 'https://thirdwx.qlogo.cn/mmopen/vi_32/FnfnEco7BdgKxoHHcyvTCXgvKCaygONKKyMRbFsWcI8kqdUuiaworU7lMAiafqa84tu5DEkGg9bUmPj0xa0BwZIg/132', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (42, 'Gy', 'oFCod5Mm6-4z9VDrKV4yx_rKs1SI', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLYDdcoKcwVAjHXolSibsJhVBSm6QCSarNcfFPOCicJnL4cZqklNpcS2u00X8wCgFgZeWUpz36RDvrg/132', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (43, '哈哈哈', NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/AXRG7vypnphvVn7BWanmfbbpSfJqlsOZKDOibdObL6kEVtxwwHicUkej7PtnkELwpYh5T2gSQUiclolxGlibvN63Rw/132', NULL, NULL, '张月函', '18848428085', '123456');
INSERT INTO `user` VALUES (44, '哈哈哈', 'oFCod5DOVTGHt5Qx0_bt2_ddYWEI', 'https://thirdwx.qlogo.cn/mmopen/vi_32/AXRG7vypnphvVn7BWanmfbbpSfJqlsOZKDOibdObL6kEVtxwwHicUkej7PtnkELwpYh5T2gSQUiclolxGlibvN63Rw/132', 'kE5hx2KRlvhsXCXXpI0SXA==', '562f8056ba69f867fd244bee8ffd4096', '张月函', '18848428080', '3651e5f096ce2396d1a570364dc4df0d');
