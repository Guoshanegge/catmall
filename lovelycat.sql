SET NAMES UTF8;
DROP DATABASE IF EXISTS lovelycat;
CREATE DATABASE lovelycat CHARSET=UTF8;
USE lovelycat;
CREATE TABLE cat_user_login(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(32),
  cpwd VARCHAR(32),
  phone VARCHAR(11) UNIQUE,
  email VARCHAR(50),
  gender BOOL
);
INSERT INTO cat_user_login VALUES('1','abc',123456,'18837517130','332747847@qq.com','m');
INSERT INTO cat_user_login VALUES(null,'周杰伦',123456,'18837517131','332747846@qq.com','m');
INSERT INTO cat_user_login VALUES(null,'蔡健雅',123456,'18837517132','332747845@qq.com','m');
INSERT INTO cat_user_login VALUES(null,'蔡依林',123456,'18837517135','332747843@qq.com','m');
USE lovelycat;
CREATE TABLE cat_index_product(
  cid INT,

  title VARCHAR(320),
  
  pic VARCHAR(101),
  price VARCHAR(50),
  href VARCHAR(50),
  seq_recommended VARCHAR(30),
  seq_new_arrival VARCHAR(30),
  seq_top_sale VARCHAR(30)
);
INSERT INTO cat_index_product VALUES('1','添加微信免费咨询猫咪问题 可看视频挑选 ','picture/thumb_300326bc54305442fc11d252a6d004223e7de3.jpg','1700','温馨港猫巷','2','2','2');
INSERT INTO cat_index_product VALUES('2','出售家养英短蓝猫银渐层蓝白短毛猫金吉拉布偶 ','picture/thumb_300326145bd91c037c7ffc6814f5dba09c6b5b.jpg','1100','贵族猫舍总店','3','3','3');
INSERT INTO cat_index_product VALUES('3','出售纯种宠物猫 品种齐全 全国空运包邮','picture/thumb_300326a879a4c3eb5e7277c01b269e93c9761d.jpg','1200','猫然居','4','4','4');
INSERT INTO cat_index_product VALUES('4','宠物猫现货 浙江沪 深圳 成都 送货上门  可上门','picture/thumb_300326d44fe2867f64832833c85f3b37775a92.jpg','1700','猫然居','5','5','5');
INSERT INTO cat_index_product VALUES('5','CFA正规猫舍出售纯种精品宠物猫  可上门选购','picture/thumb_300326747e6acbc97a7b24a82de31efeaaaf59.jpg','2000','淘气猫卡','6','6','6');
 


 USE lovelycat;
CREATE TABLE cat_index_titles(
  cid INT,
  type VARCHAR(200),
  title VARCHAR(500),
  pic  VARCHAR(101),
  price VARCHAR(50),
  href VARCHAR(200),
  seq_recommended VARCHAR(30),
  seq_new_arrival VARCHAR(30),
  seq_top_sale VARCHAR(30),
  subtitle VARCHAR(500),
  sex BOOL,
  age VARCHAR(50)
);
INSERT INTO cat_index_titles VALUES('6','1','全国连锁猫舍 价格优惠 购猫签订协议 包纯种健','picture/thumb_3003262ce8acc42314c18250fe0ffe1eefa1b6.jpg','1300','风之谷猫舍','2','2','2','','m','一岁');
INSERT INTO cat_index_titles VALUES('7','2','网红猫咪 正规商家 签订协议 包退换','picture/thumb_300326a6b0837911cc8053f6fe71d03d331fa2.jpg','1800','喝着啤酒炸鸡','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('8','2','本地猫舍可上门挑选 全国空运包邮 品质保障','picture/thumb_30032693270aff9bc91af3c98525ce5557ead4.jpg','1100','萌宠家族','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('9','1','猫舍出售布偶猫仙女猫无病无藓可爱粘人温顺幼猫活体','picture/thumb_300326091a374a16a64f72eff71d0d68f0f142.jpg','1500','猫之恋家','2','2','2','','m','一岁');
INSERT INTO cat_index_titles VALUES('10','2','钱宠物猫专卖店 宠物猫买卖网','picture/thumb_300326923cff513168a198b5778b11ba82ad8d.jpg','1400','猫咪之森林','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('11','2','正规CFA认证猫舍 证书齐全 24小时售后服务','picture/thumb_300326bd77694d071a3d605ea262d9735ba1ea.jpg','1100','沫沫猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('12','2','100%保证纯种   黄白加菲猫   同城担保交易','picture/295df96a12bf438cb2b227bb77e2feab.gif','2000','爱创猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('13','2','加菲猫,布偶猫,缅因猫,蓝猫,等等品种均有','picture/thumb_300326839a40645659a744d47dc7edeafd65be.jpg','1700','奇趣龟屋','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('14','2','CFA认证 纯种健康 宠物猫怎么','picture/thumb_300326ebcdf30addfbc99aace7f81828ab72ad.jpg','1300','与猫共舞','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('15','1','英短 美短 布偶 加菲 无毛猫等品种 保障齐全','picture/thumb_30032696d41440f912fc47998e7c99e1548838.jpg','1800','淘宠乐园','2','2','2','','m','一岁');
INSERT INTO cat_index_titles VALUES('16','2','高品质 超粘人金吉拉 布偶 英美短价格实在先到','picture/thumb_300326afc6f40047b3972a1f45314bf2ad2b03.jpg','1800','大亨宠物','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('17','2','CFA认证猫舍 现货出售 全国包邮 本地送货上门','picture/thumb_3003267d8de8ce98d7c18459e66b40d652d469.jpg','1800','吸猫吧','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('18','1','现货挑选宠物猫,全部当天发货送货上门','picture/thumb_30032605d648f5a0b709604120901168f6f339.jpg','1000','非凡名宠','2','2','2','','m','一岁');
INSERT INTO cat_index_titles VALUES('19','2','莫妮卡家血带证海豹双色大爆毛蓝眼实体猫舍','picture/thumb_300326f6098e68a164cb47dcf47b6c2bdbeb1f.jpg','1100','猫可爱','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('20','2','【本地专业CFA猫舍】 宠物猫幼猫 海外引进繁育','picture/thumb_3003262ec85f84797aca172f2e25c55f5efb3d.jpg','1700','猫的家','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('21','1','抖音网红喵 加菲布偶美短蓝胖子 全国包邮 ','picture/thumb_30032695ab5dfa5308e3bde428e8e34495af51.jpg','1700','好玩伴猫舍','2','2','2','','m','一岁');
INSERT INTO cat_index_titles VALUES('22','1','买宠物猫需要注意什么','picture/thumb_300326359b113c43683ecb98b10766966eda13.jpg','1400','霹雳猫家族','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('23','2','本地猫舍可上门挑选 全国空运包邮 品质保障','picture/thumb_300326a8ee8c55a771cb21f995e82e845f589b.jpg','1700','巧乐宠之家','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('24','1','健康活波纯种宠物猫,自己家繁育现货出售','picture/thumb_3003262e7038c9bc19eba7ab5e1fcd8be8bcd3.jpg','1800','宠物精灵','2','2','2','','m','一岁');
INSERT INTO cat_index_titles VALUES('25','2','宠物猫价格一般多少','picture/thumb_3003263299340a99b578b192f1c1278aeea8a0.jpg','1800','面包房里的猫','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('26','2','哪里买宠物猫  宠物猫在哪里买','picture/thumb_300326515807e829bbff42007af0675cf1ebeb.jpg','1500','汤姆与杰瑞','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('27','2','猫 宠物猫怎么养 宠物猫店','picture/thumb_300326ff7cebbdb0ecbccd1b65fd731e694d7b.jpg','1900','天空之城','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('28','2','买宠物猫需要注意什么','picture/thumb_30032699542491d9500e7a74cff0c6b65ed793.jpg','1000','霹雳猫家族','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('29','1','抖音网红喵 加菲布偶美短蓝胖子 全国包邮 ','picture/thumb_3003268318c5bf7939755d95b032512b63030d.jpg','1100','奥黛丽之家','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('30','1','出售宠物猫当天下单当天发货送到你手中','../picture/picture/thumb_300326b2cd648c4794e8d4c79bf0d37fec5d62.jpg','1800','CFA协会认证猫舍','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('31','2','出售纯种宠物猫 全国空运 当天发货当天送达','../picture/picture/thumb_300326a89e30fbfae06fdb950208f94fa641e9.jpg','1100','沫沫猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('32','1','现货出售各种宠物猫欢迎在线添加微信咨询','../picture/picture/thumb_300326236e88a544dfd55ffbdeb1c16959e259.jpg','2000','喵主子家猫舍','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('33','2','正规精品CFA猫舍直销 品种齐全 可送货上门 质保','../picture/picture/thumb_300326f0132bdd25d628b34c01fa832f64e2d8.jpg','1100','猫咪交易网总店','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('34','2','本地出售健康纯种 矮脚折耳猫 全国包邮发货','../picture/picture/thumb_300326603981be3d137fe2b25b508e69956d26.jpg','1800','毛球猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('35','1','自家繁育纯种猫咪 健康保障 签订协议 终身售后','../picture/picture/thumb_30032635cf043b70a885a1db202383038cf61c.jpg','1000','甜多多猫舍','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('36','2','本地专业CFA猫舍  金吉拉 蓝猫 渐层幼崽 保证品','../picture/picture/thumb_300326b7de7ee9e1ac38075fcc2806abc20d48.jpg','1000','小魔仙猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('37','1','100%保证纯种 开脸正五粉蓝白猫英短 海外引进繁','../picture/picture/thumb_300326fdef741c913542826f893698d46d42b9.jpg','2000','胖喵名猫馆','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('38','2','正规猫舍 包纯种 健康 品种齐全 带证书','../picture/picture/thumb_3003269dd5f8bffb2f61ff83457206d5df7575.jpg','1100','天使猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('39','2','正规猫舍出售纯种猫咪 布偶 加肥 豹猫 加微信','../picture/picture/thumb_300326ae705ca002285aadd426090fd03cddf3.jpg','1800','艾猫吧','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('40','1','出售 纯血统布偶猫宝宝 疫苗证书齐 包健康','../picture/picture/thumb_3003268a5de12685d353605b0001e134861fc8.jpg','1800','小不点猫舍','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('41','2','钱一只 宠物猫咪 活体家养','../picture/picture/thumb_300326408b5ed10067ec8b90c334a4cbd9c8a2.jpg','1600','梦幻大家族','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('42','1','CFA正规猫舍出售纯血统缅因 德文 阿比 孟买  亚','../picture/picture/thumb_300326c7ca8744b8e173b1a937955e8400cc54.jpg','1800','浪漫猫舍','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('43','2','健康活波纯种宠物猫,自己家繁育现货出售','../picture/picture/thumb_300326a41b70bc6724384d2fc54cc61369366b.jpg','1700','巴黎猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('44','2','健康活泼 金吉拉 加菲 蓝白 多只出售 品质保障','../picture/picture/thumb_300326288418d0c6aff8982caaa4e59abb785f.jpg','1700','薄荷绿','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('45','1','CFA认证猫舍 精品金吉拉  纯种健康  可上门挑选','../picture/picture/thumb_300326217a77f0ab48f67180d0574ef4e2d3c6.jpg','1000','咖喱咖喱喵','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('46','2','健康纯种宠物猫 自家繁育现货出售','../picture/picture/thumb_300326917c9e9c0229cc45e3a37d40fd60e052.jpg','2000','萌宠喵族','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('47','1','包纯种,包健康,繁育级,宠物级,赛级,宠物猫','../picture/picture/thumb_3003261ee5f50dbae0f3c5bc4723957b81f8b8.jpg','2000','爱宠俱乐部','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('48','2','需要购买宠物猫客户可添加微信号在线咨询','../picture/picture/thumb_300326647abb54ecc46724029e2c18fc78ee2f.jpg','1700','奇趣龟屋','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('49','2','自家饲养精品赛级纯血统猫咪 带cfa证书','../picture/picture/thumb_3003266c14397e3b530df776aaaed722e18507.jpg','1200','壹品喵宠','2','2','2','','f','三个月');

INSERT INTO cat_index_titles VALUES('50','1','正规CFA认证猫舍 证书齐全 24小时售后服务','../picture/picture/thumb_300326cae06bc612f4125637613a11804f08db.jpg','1100','亲亲萌宠','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('51','2','本地出售精品宠物 签订协议 同城送货上门 全过','../picture/picture/thumb_30032657d03bd52057861614a135a37f265849.jpg','2000','招财宠乐园','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('52','1','国际专宠 国内最大欧洲各国多品种高端纯种猫引','../picture/picture/thumb_3003268a06017c562af46b4d65544b894a1837.jpg','1100','贵族猫舍总店','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('53','2','本地专业CFA猫舍 长毛金吉拉幼崽 全国包邮发货','../picture/picture/thumb_3003267e1ce863b2895126d1902f776feea2b2.jpg','1800','喵喵屋','2','2','2','','f','三个月');



INSERT INTO cat_index_titles VALUES('54','2','新发现：南京纯种美国短毛猫活体价格有点飘？','../picture/picture3/picture/20190819185135_98161.jpg','','','','','','&nbsp; &nbsp; &nbsp; 美国短毛猫和英国短毛猫很多宠主很把这两种猫咪混在一起在南京饲养宠物猫的朋友都知道美国短毛猫的活体的价格有了大幅度的涨价这是事实，很多预算少一点儿的宠主却只能望而却步了，那么到底是什么原因导致了南京美国短毛猫的价格上涨了呢？接下来我们具体分析分析：
首先的导致南京美国短毛猫上涨的原因有很多以前在南京美国短毛猫的均价在4000元就可以了但是现在普通的美国短毛猫的价格至少在5000元以上的这在南京猫舍的价格，其实也没有什么好奇...','','');
INSERT INTO cat_index_titles VALUES('55','1','重庆纯正血统加菲猫价格多少钱','../picture/picture3/picture/20190819184903_79501.jpg','','','','','','&nbsp; &nbsp; &nbsp; 重庆纯正血统加菲猫价格多少钱？在重庆要想购买的一只加菲猫的也不是很容易的事情，因为加菲猫的毛色比较复杂，当地猫舍的加菲猫未必是你喜欢的，需要跑多家猫舍去做挑选当地的加菲猫的价格也相对来说比较高，接下来就说说重庆纯正血统的加菲猫价格吧：
 重庆是一个美味满大街的地方是吃货们的天堂，当地的猫舍繁育宠物猫基地也有不少加菲猫是可以说普遍的存在了今年来看饲养加菲猫的人群也是越来越多了，这都是生活质量提升的表现而饲养加菲猫的好处很多了重庆加菲...','','');

INSERT INTO cat_index_titles VALUES('56','2','想知道猫咪市场中2019年下半场北京金渐层一只多少钱吗？','../picture/picture3/picture/20190819184351_40830.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp; 想知道猫咪市场中2019年下半场北京金渐层一只多少钱吗？北京是个充满文化的气息的圣地这里是个外来人口比较密集的地方而北京金渐层猫咪的却是众多的猫咪品种中比较受欢迎的品种猫，在2019年的下半年的北京布偶猫的价格到底是怎么定义的呢？接下来的一起探讨探讨吧！
首先的北京是个一线城市的涉及到金渐层猫咪价格的问题只能做个参考毕竟各个地区的消费标准不一样，2019年已经过去了一大半儿对于下半年来说金渐层猫咪市场绝对是...','','');
INSERT INTO cat_index_titles VALUES('57','1','深圳暹罗猫价格一只多少钱','../picture/picture3/picture/20190817184645_41869.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp;在深圳说到的暹罗猫可以说是无人知晓的品种猫了，因为深圳的暹罗猫要比其他的品种猫更受欢迎了，市场越好价格上就会出现的混乱的现象了那么深圳的暹罗猫到底多少钱呢？为了让更多的人饲养暹罗猫有个更深的了解，小编专程讲讲暹罗猫的在深圳的市场价格吧！ 
深圳暹罗猫价格幼年的3个月大的公猫大概的价格在7000元左右，这里指的是纯种的猫咪了要是品相好点儿也会在8000元以上的，而且暹罗猫的体型属于中型的在前面6个月...','','');

INSERT INTO cat_index_titles VALUES('58','2','2019年宠物猫市场好不好？北京布偶猫价格一只多少钱？','../picture/picture3/picture/20190817184304_78759.jpg','','','','','','&nbsp; &nbsp; &nbsp; 2019年的宠物猫市场到底好不好呢，在北京的猫舍中布偶猫的价格的如何呢？相信这个问题是大家比较关心的问题了吧，北京充满了文化的气息当然宠物猫也是种文化，而布偶猫的背后也孕育这一个不为人知的故事牵动着数千万爱猫人士的心弦，北京的布偶猫的价格到底一只多少钱呢？接下来我们就一起看看吧！ 
会发现的2019年的宠物店是增加了不少门店在北京的竞争力是相当大的，布偶猫在众多的品种猫中属于的贵族猫，而北京的布偶猫价格最普通...','','');
INSERT INTO cat_index_titles VALUES('59','2','杭州英国短毛猫价格比纯正美国短毛猫贵吗？','../picture/picture3/picture/20190817183855_91203.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp;杭州英国短毛猫价格比纯正美国短毛猫贵吗？杭州是个旅游圣地这里繁殖宠物猫的猫舍有很多比如：英国短毛猫以及美国短毛猫的、加菲猫等等，说到杭州英国短毛猫的价格就能够联想到的美国短毛猫的了，因为很多爱猫的朋友将美短猫咪和英国短毛猫的混在一起搞不清楚的也不知道猫咪的价格，那么接下来小编就分析分析吧！ 
杭州的宠物猫猫舍有很多的通过猫舍老板我们得知的英国短毛猫的价格和美国短毛猫的价格相比英短猫咪的价格还是比较...','','');


INSERT INTO cat_index_titles VALUES('60','2','宠物猫新闻：兰州首家猫咪博物7月来袭，养猫人的自豪。','../picture/picture3/picture/20190816153020_64766.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;甘肃网7月5日讯 据兰州日报报道（兰州日报社全媒体记者张亚君 孟夏 实习生丁敏敏）一提到博物馆你会想到什么？是上过《国家宝藏》节目的甘肃省博物馆，是武威出土的马踏飞燕，还是灿烂的彩陶文化。事实上，除了大众印象中的以历史文物为主题的博物馆之外，在兰州，还藏着许多新奇好玩的特色博物馆。兰州首家猫咪博物馆一起来了解一下。 
近日，以猫咪为主题的猫咪博物馆在兰州中心六楼开馆，吸引了很多喜欢猫...','','');



INSERT INTO cat_index_titles VALUES('61','1','甘肃纯种英国短毛猫价格多少钱','../picture/picture3/picture/20190816151701_19045.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp; 甘肃纯种英国短毛猫价格多少钱？英国短毛猫是很多的养猫新手的追捧的品种之一，在甘肃地区的人们最多的影响就是的干旱缺水吧，其实的甘肃饲养宠物猫的数量每年都会不断的增加而英国短毛猫确很受欢迎的猫咪的品种猫，接下来我们就一起看看吧！ 
在甘肃的兰州平凉等市区也会有部分宠物猫舍中英国短毛猫的价格标价在3000元到2000元左右，公的英国短毛猫价格要比母的价格贵一些根据个人喜欢进行选择，不管是公的英国短毛猫...','','');

INSERT INTO cat_index_titles VALUES('62','2','重庆美国短毛猫价格多少钱','../picture/picture3/picture/20190816140757_37389.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp;重庆美国短毛猫价格多少钱？重庆是个有着吃不完的美食的好地方饲养美国短毛猫的宠主也有不少，不管是大人小孩还是妇女对美国短毛猫有着浓厚的兴趣，接下来就谈谈重庆美国短毛猫到底多少呢？ 
重庆地区的美国短毛猫的价格没有一个具体，因为大家知道这些都是按猫猫的品相、血统、是否纯种来决定的。一般就上海来说，一只赛季的美国短毛猫市场价可达到8000--12000，纯种的也要在5000--7000元，一般的来说，普...','','');
INSERT INTO cat_index_titles VALUES('63','1','买猫咪预算要多少？南京加菲猫价格多少钱','../picture/picture3/picture/20190815192731_65443.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp;很多人在购买猫咪的时候往往会想到的自己的预算问题，看到自己喜欢的加菲猫结果因为预算不够而告终，南京家加菲猫的价格多少钱一只？这是很多在南京饲养宠物猫宠主在关心的问题了，那么接下来就由拥有5年饲养宠物猫经验的老司机为你分享南京加菲猫的价格趋势： 
在南京地区的实体猫舍有数十家的样子而且众多的小区前面都会有宠物店里面有各种宠物猫的品种加菲猫的标价的在3000元左右如果是赛级的带有血统证书的猫咪价格至少...','','');

INSERT INTO cat_index_titles VALUES('64','2','深圳猫舍纯种美国短毛猫活体怎么卖？','../picture/picture3/picture/20190815192329_26054.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp;深圳猫舍纯种美国短毛猫活体怎么卖？对于美国短毛猫活体价格的问题是很多人比较的关注的话题在深圳虽然饲养宠物猫的群体有很多而美国短毛猫的占比更大，那么到底的美国短毛猫的活体怎么卖呢？接下来我们一起看看吧！ 
纯种的美国短毛猫的价格在深圳的价格都是偏高的普通猫咪价格在3000元左右的猫咪已经很少了深圳是个一线城市的固然价格上要高出其他地区的一倍之多，纯正的美国短毛猫的价格基本都在7000元到10000元...','','');
INSERT INTO cat_index_titles VALUES('65','2','正规猫舍老板谈论杭州美短起司猫咪价格走势如何？','../picture/picture3/picture/20190815191935_30530.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp;正规猫舍老板谈论杭州美短起司猫咪价格走势如何？猫舍老板说杭州美短猫咪的价格走势不稳定尤其是的在2019年下半年美国短毛猫的价格持续下跌，也不排除杭州地区的猫舍泛滥，据统计杭州的猫舍和宠物猫专卖店的数量高达的上百所，究竟美短起司猫咪价格如何接下来我们一起看看吧！ 
   杭州猫舍虽然有很多但似乎近几年来销量并不如意，随着社会的发展不断有一些创业新秀冲进宠物猫行业希望能够分羹一杯，而宠物猫的品种几十种甚至上...','','');

   INSERT INTO cat_index_titles VALUES('66','1','广西加菲猫价格一只多少钱？','../picture/picture3/picture/20190814190024_98077.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;加菲猫早先是由美国人培育出的一只像波斯猫和我们的缅甸猫相结合而培育出的一种新品种，那在广西地区购买一只加菲猫需要多少钱呢？ 
 如果是处在幼年三个月左右的幼年加菲猫的话，那这个时候它们的价格是5000元人民币左右。 
 如果是两年以上五年以下的成年加菲猫的话，那这个时候需要4500元到5500元人民币左右。 
  &amp;e...','','');

INSERT INTO cat_index_titles VALUES('67','2','广州猫咪出售看看英国短毛猫怎么卖？','../picture/picture3/picture/20190814185736_19866.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp; 广州猫咪出售看看英国短毛猫怎么卖？英国短毛猫是众多的宠物猫品种销量很好堪称宠物猫中的五菱宏光，而在广州的英国短毛猫的价格会不会的太高呢？作为一个资深养猫达人有几句建议： 首先的广州猫舍高达几百家而且人口密集英国短毛猫的比重还是挺高的，不仅是广州而在其他地区的英国短毛猫的销量也是一直很客观的，一只三个月大的英国短毛猫的价格是4000上下，这个价格或许在二线城市可购买两只的英短猫咪了吧，毕竟一线城...','','');
INSERT INTO cat_index_titles VALUES('68','1','猫咪高价出售潜规则：深圳纯种金渐层一只多少钱？','../picture/picture3/picture/20190814184952_26687.jpg','','','','','','&nbsp; &nbsp; &nbsp; &nbsp;对于很多的卖猫商家来说自家的猫咪能卖高价是一件很值得高兴的事情吧，在深圳如果想要购买一只纯种的金渐层猫咪的需要花多少钱?要知道深圳是个准一线城市不管是那种宠物猫价格都不会便宜，这里指的是线下的实体猫舍和宠物猫专卖店，一起来看看小编分析的对不对？ 
在深圳纯种金渐层猫咪的的品质级别大体上是三类： 赛级、繁育级、宠物级，而品质主要是综合血统、品相、体态、骨骼、毛量、颜色、眼色素、甚至是性格等等几个大的...','','');
INSERT INTO cat_index_titles VALUES('69','2','CFA认证  纯种健康 宠物猫多少','../picture/picture3/picture/thumb_3003262e59f41987843ed3f7bd4dff3e881703.jpg','1200','贝特猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('70','2','国际专宠 国内最大欧洲各国多品种高端纯种猫引','../picture/picture3/picture/thumb_300326a1920a310e3559de38e40250affec019.jpg','2000','淘气猫卡','2','2','2','','f','三个月');

INSERT INTO cat_index_titles VALUES('71','1','【本地专业CFA猫舍】 宠物猫幼猫 海外引进繁育','../picture/picture3/picture/thumb_300326d7592a8625970f63f944a5e6eae1e925.jpg','1700','miao星球','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('72','2','需要购买宠物猫客户可添加微信号在线咨询','../picture/picture3/picture/thumb_30032658d36a71a4f1f536b34a3bc1190a9fc1.jpg','1700','帅熊宠物屋','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('73','1','正规猫舍出售纯种宠物猫 证书齐全 疫苗齐全','../picture/picture3/picture/thumb_30032691c244c6325843d799d71a5eb61ea127.jpg','1100','喵小小','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('74','2','TICA CFA 双注册猫舍 购猫签保障协议','../picture/picture3/picture/thumb_300326e23c24358f575f866b6e23214de309f0.jpg','1800','糖果萌宠','2','2','2','','f','三个月');




INSERT INTO cat_index_titles VALUES('75','1','布偶猫','../picture/picture4/picture/63f97492e661d8bd808d7d3e451069e5.jpg','6000-20000','','','','','','','');
INSERT INTO cat_index_titles VALUES('76','2','加菲猫','../picture/picture4/picture/0f291e39d6d26af01cc88dae325a16f4.jpg','2000-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('77','3','金渐层','../picture/picture4/picture/cac218b29fd96fadd4d20a79afacf4c9.jpg','2000-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('78','4','英短蓝猫','../picture/picture4/picture/f63062a5f2f382d66b1c2d007abc2355.jpg','2200-6000','','','','','','','');
INSERT INTO cat_index_titles VALUES('79','5','英短蓝白','../picture/picture4/picture/c12a2e2b2a345d29adb4e9eef0fe4d0c.jpg','2500-6000','','','','','','','');
INSERT INTO cat_index_titles VALUES('80','6','英国短毛猫','../picture/picture4/picture/f01dccc733e733c5814742201fc677cb.jpg','2500-6000','','','','','','','');
INSERT INTO cat_index_titles VALUES('81','7','美国短毛猫','../picture/picture4/picture/ab1bda765544f24439ccb14a08627ccb.jpg','2500-5000','','','','','','','');

INSERT INTO cat_index_titles VALUES('82','8','苏格兰折耳猫','../picture/picture4/picture/4136eb99f34f49bce459735585f6a9a6.jpg','3000-6000','','','','','','','');
INSERT INTO cat_index_titles VALUES('83','9','银渐层','../picture/picture4/picture/60ebf49ec03eaff23ba3dd7061148643.jpg','2000-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('84','10','异国短毛猫','../picture/picture4/picture/d5d6545c629e6d3121bbf25a461fb1cc.jpg','3000-8000','','','','','','','');
INSERT INTO cat_index_titles VALUES('85','11','孟买猫','../picture/picture4/picture/295e110086e0dde431a83bd7c9d7c563.jpg','2500-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('86','12','暹罗猫','../picture/picture4/picture/16c4906deb29c941268fcac2931a9d17.jpg','2500-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('87','13','孟加拉豹猫','../picture/picture4/picture/ea34e665dcc6a829793e84de691e2d2d.jpg','2500-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('88','14','缅因猫','../picture/picture4/picture/5e596e24dec4d92586033e79d46bcb61.jpg','7000-20000','','','','','','','');
INSERT INTO cat_index_titles VALUES('89','15','金吉拉猫','../picture/picture4/picture/6cc390e9062b3449555a80f26bdd6d8a.jpg','3000-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('90','16','无毛猫','../picture/picture4/picture/c5bb6c41ab047ee4d77b00e4bebd46a8.jpg','7000-20000','','','','','','','');
INSERT INTO cat_index_titles VALUES('91','17','高地折耳猫','../picture/picture4/picture/ba92e3cf88386afcbfaac403efc5e597.jpg','3000-8000','','','','','','','');
INSERT INTO cat_index_titles VALUES('92','18','曼基康矮脚猫','../picture/picture4/picture/a1d9b4d45552c20f828234009d7c98bb.jpg','6000-15000','','','','','','','');
INSERT INTO cat_index_titles VALUES('93','19','波斯猫','../picture/picture4/picture/555f313678f7c3a938927b3d1974ec0f.jpg','3000-8000','','','','','','','');
INSERT INTO cat_index_titles VALUES('94','20','橘猫','../picture/picture4/picture/bf3c72fc6f25f895a2d713bbe80cc9aa.jpg','2000-5000','','','','','','','');
INSERT INTO cat_index_titles VALUES('95','21','阿比西尼亚猫','../picture/picture4/picture/9724336e131bdccd78963a0fc942c4c4.jpg','5000-10000','','','','','','','');
INSERT INTO cat_index_titles VALUES('96','22','德文卷毛猫','../picture/picture4/picture/90414e029e070294febe2a64ad174459.jpg','','','','','','','','');




INSERT INTO cat_index_titles VALUES('97','2','正规CFA认证猫舍 品质保证 证书齐全 专业指导','../picture/picture4/picture/thumb_300326f081c816dd10ad6668a6f85bd32079c9.jpg','1100','喵小小','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('98','2','CFA高品质 英短蓝白公母都有 上门挑选品质保证','../picture/picture4/picture/thumb_300326ad3b6c3065ac21b504a264bae67b7441.jpg','1100','贝特猫舍','2','2','2','','f','三个月');

INSERT INTO cat_index_titles VALUES('99','1','出售纯种宠物猫 品种齐全 全国空运包邮','../picture/picture4/picture/thumb_300326dabd18c30bdb3463e9356cefa865b134.jpg','1200','猫然居','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('100','2','正规猫舍商家 添加微信在线咨询解答 全国均可','../picture/picture4/picture/thumb_30032604d0e7cdad17a598007b9559e82f35a0.jpg','1800','巴拉拉猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('101','1','健康活波纯种宠物猫,自己家繁育现货出售','../picture/picture4/picture/thumb_30032616d234637c132282be4daf4e3e6f76db.jpg','1700','帅熊宠物屋','2','2','2','','m','一岁');







INSERT INTO cat_index_titles VALUES('102','2','正规猫舍出售纯种宠物猫 证书齐全 疫苗齐全','../picture/picture5/picture/thumb_3003267093b251630ff9a999f79f3a9d385c58.jpg','1100','喵小小','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('103','2','蓝猫,英短,布偶,加菲,无毛,渐层,美短,品种全有','../picture/picture5/picture/thumb_300326868237e475c233361fd8fc7a8236361e.jpg','2000','宠悦连萌','2','2','2','','f','三个月');

INSERT INTO cat_index_titles VALUES('104','1','添加微信详细了解宠物猫,包纯种包健康','../picture/picture5/picture/thumb_300326948d118422746c1b53c05d0914f68948.jpg','1700','帅熊宠物屋','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('105','2','正规精品CFA猫舍直销 品种齐全可送货上门 包纯','../picture/picture5/picture/thumb_3003263c52f8f1dc361f761266ec03aa53a5e6.jpg','2000','淘气猫卡','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('106','1','出售宠物猫可上门挑选或者空运发货在线咨询','../picture/picture5/picture/thumb_3003268463eb7a172069dc862b2deeba7d7e22.jpg','1200','猫然居','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('107','','','../picture/xiangqing1/picture/20190912182823_93716.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('108','','','../picture/xiangqing1/picture/20190912182834_98740.jpg','','','','','','','','');

INSERT INTO cat_index_titles VALUES('109','3','2019年月饼节送你猫咪可好？','../picture/xiangqing1/picture/20190911162008_36881.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('110','5','宠物猫喂养技巧：饲养暹罗猫有你好受的！','../picture/xiangqing1/picture/20190910193655_42375.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('111','7','网上购买活体布偶猫需要注意那些事项？','../picture/xiangqing1/picture/20190910183407_61467.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('112','8','宠物猫品种科普：缅因猫了解一下！','../picture/xiangqing1/picture/1-1zzq3345mf.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('113','3','郑州纯种豹猫价格多少钱？','../picture/xiangqing1/picture/20190909163454_85571.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('114','5','2019年北京正规猫舍的德文卷毛猫价格多少钱一只？','../picture/xiangqing1/picture/20190907164034_62902.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('115','7','养猫的意义何在？爱猫人士购买宠物猫到底图什么？','../picture/xiangqing1/picture/20190907142247_84294.jpg','','','','','','','','');
INSERT INTO cat_index_titles VALUES('116','8','养猫技巧：如何饲养金吉拉猫咪？','../picture/xiangqing1/picture/20190906192703_45856.jpg','','','','','','','','');

INSERT INTO cat_index_titles VALUES('117','4','现货猫咪,各种品种均有,可上门挑选猫咪
									','../picture/xiangqing1/picture/thumb_300326974c94a0d31f2f63d1f09474d560a942.jpg','2000','宠悦连萌','2','2','2','','f','四个月');
INSERT INTO cat_index_titles VALUES('118','4','蓝猫,英短,布偶,加菲,无毛,渐层,美短,品种全有','../picture/xiangqing1/picture/thumb_3003264ff188f839ffbc0832e4449ee75c6505.jpg','1800','糖果萌宠','2','2','2','','f','五个月');

INSERT INTO cat_index_titles VALUES('119','4','包健康纯种 赛级 宠物级 宠物猫出售 
									','../picture/xiangqing1/picture/thumb_300326b29c94711d35b5841d7f5b36c6d0a804.jpg','1100','喵小小','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('120','5','添加微信详细了解宠物猫,包纯种包健康
									','../picture/xiangqing1/picture/thumb_300326d65dbcbfbe0097d14c71b4db835e9eee.jpg','1700','帅熊宠物屋','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('121','6','同城实地上门挑选  宠物猫 完美无瑕疵 
									','../picture/xiangqing1/picture/thumb_30032670552c05b357c278eff64256066655b6.jpg','1700','miao星球','2','2','2','','m','一岁');
 INSERT INTO cat_index_titles VALUES('122','1','
                        专业繁殖美血波斯系精品布偶猫 签订协议                    ','../picture/xiangqing/picture/035314ba850017d3d2320713d022b386.jpg','1700','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('123','5','
                        专业繁殖美血波斯系精品布偶猫 签订协议                    ','../picture/xiangqing/picture/c941e07685ef0a1a48172b184c146ebb.jpg','1700','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('124','1','
                        专业繁殖美血波斯系精品布偶猫 签订协议                    ','../picture/xiangqing/picture/bc67a63e280e7198f78461a0e6f03456.jpg','1700','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('125','3','
                        专业繁殖美血波斯系精品布偶猫 签订协议                    ','../picture/xiangqing/picture/5e327a2b424be1cfa5dc75352079cb53.jpg','1700','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('126','1','价格和公母无关，和颜色无关，和长短毛无关，以每一只小猫的具体品相为准猫舍提倡科学饲养，如猫咪绝育可享受价格八折优惠。   价格和公母无关，和颜色无关，和长短毛无关，以每一只小猫的具体品相为准猫舍提倡科学饲养，如猫咪绝育可享受价格八折优惠。    
    本地客户可以上门自取、也可以送宠物上门、外地客户可以选择空运（几个小时就到，空运有氧气仓）快捷、安全。','../picture/xiangqing/picture/d10b0a00f01c3573.jpg','1700','风之谷猫舍','8','2','2','','m','三个月');

 INSERT INTO cat_index_titles VALUES('127','1',' 健康活波纯种宠物猫,自己家繁育现货出售','../picture/xiangqing/picture/thumb_300326676dc4817de4b7e045ec12b71fc63273.jpg','1700','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('128','2','全国连锁猫舍 价格优惠 购猫签订协议 包纯种健','../picture/xiangqing/picture/thumb_3003267e38076705b46dfd53bff89e80d22bad.jpg','1200','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('129','1','买宠物猫需要注意什么','../picture/xiangqing/picture/thumb_300326b51d6caecc7481b8b12377b76c263d77.jpg','1900','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('130','4','参考 买宠物猫去哪个网站','../picture/xiangqing/picture/thumb_3003262c950257f6294f35eb3dd712b040c6fe.jpg','1900','风之谷猫舍','8','2','2','','m','三个月');
INSERT INTO cat_index_titles VALUES('131','2','正规CFA认证猫舍 品质保证 证书齐全 专业指导','../picture/picture4/picture/thumb_300326f081c816dd10ad6668a6f85bd32079c9.jpg','1100','喵小小','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('132','3','CFA高品质 英短蓝白公母都有 上门挑选品质保证','../picture/picture4/picture/thumb_300326ad3b6c3065ac21b504a264bae67b7441.jpg','1100','贝特猫舍','2','2','2','','f','三个月');

INSERT INTO cat_index_titles VALUES('133','4','出售纯种宠物猫 品种齐全 全国空运包邮','../picture/picture4/picture/thumb_300326dabd18c30bdb3463e9356cefa865b134.jpg','1200','猫然居','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('134','5','正规猫舍商家 添加微信在线咨询解答 全国均可','../picture/picture4/picture/thumb_30032604d0e7cdad17a598007b9559e82f35a0.jpg','1800','巴拉拉猫舍','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('135','6','健康活波纯种宠物猫,自己家繁育现货出售','../picture/picture4/picture/thumb_30032616d234637c132282be4daf4e3e6f76db.jpg','1700','帅熊宠物屋','2','2','2','','m','一岁');







INSERT INTO cat_index_titles VALUES('136','7','正规猫舍出售纯种宠物猫 证书齐全 疫苗齐全','../picture/picture5/picture/thumb_3003267093b251630ff9a999f79f3a9d385c58.jpg','1100','喵小小','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('137','4','蓝猫,英短,布偶,加菲,无毛,渐层,美短,品种全有','../picture/picture5/picture/thumb_300326868237e475c233361fd8fc7a8236361e.jpg','2000','宠悦连萌','2','2','2','','f','三个月');

INSERT INTO cat_index_titles VALUES('138','5','添加微信详细了解宠物猫,包纯种包健康','../picture/picture5/picture/thumb_300326948d118422746c1b53c05d0914f68948.jpg','1700','帅熊宠物屋','2','2','2','','m','一岁');

INSERT INTO cat_index_titles VALUES('139','6','正规精品CFA猫舍直销 品种齐全可送货上门 包纯','../picture/picture5/picture/thumb_3003263c52f8f1dc361f761266ec03aa53a5e6.jpg','2000','淘气猫卡','2','2','2','','f','三个月');
INSERT INTO cat_index_titles VALUES('140','7','出售宠物猫可上门挑选或者空运发货在线咨询','../picture/picture5/picture/thumb_3003268463eb7a172069dc862b2deeba7d7e22.jpg','1200','猫然居','2','2','2','','m','一岁');



















