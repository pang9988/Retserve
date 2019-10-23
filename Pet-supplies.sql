#设置编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS pet_supplies;
#创建数据库
CREATE DATABASE pet_supplies CHARSET = UTF8;
#进入数据库
USE pet_supplies;


#创建首页轮播图
CREATE TABLE carousel (
id SMALLINT PRIMARY KEY AUTO_INCREMENT, 
pid INT,
img_url VARCHAR(255)
);
#插入数据
INSERT INTO carousel VALUES (
null,5, "3170710_1249396_11467970460.jpg"
);
INSERT INTO carousel VALUES (
null,130, "3168880_1249396_11467967054.jpg"
);
INSERT INTO carousel VALUES (
null,111, "3169773_1249396_11467968224.jpg"
);


#创建产品表,isHot值为1热销，isRecommend的值为1时为推荐
CREATE TABLE product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,
  Pimg VARCHAR(255),
  pname VARCHAR(32),
  price DECIMAL(10,2),
  isHot BOOLEAN,
  isRecommend BOOLEAN
);
#插入数据，fid的值是1代表的是狗狗，2代表猫，3代表小宠，4代表水族，5代表品牌馆
INSERT INTO product VALUES(
null, 1, "3170801_1249396_11467971433.jpg", "皇家狗粮royalcanin 宠物CC中大型犬成犬狗粮 8kg*2包", "300", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170806_1249396_11467971525.jpg", "爱倍宠物主粮天然营养幼犬狗粮10kg(500g*20包)金毛拉布拉多德牧哈士奇萨摩耶边牧", "109", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170817_1249396_11467971609.jpg", "e-WEITA/味它 优质狗粮 [成犬粮]10公斤/箱", "128", 1, 1
);
INSERT INTO product VALUES(
null, 1, "3170840_1249396_21467971782.jpg", "耐威克 成犬 狗粮 贵宾 泰迪狗粮 5kg", "109", 0, 0
);
INSERT INTO product VALUES(
null, 1, "3170710_1249396_11467970460.jpg", "宝路鲜香肉味条 狗狗零食脯芝士火腿味80g 美味低脂好吃不长胖 芝士 整盒装", "132", 1, 1
);
INSERT INTO product VALUES(
null, 1, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170729_1249396_11467970572.jpg", "宝路 宠物零食 狗狗磨牙棒 大型犬洁齿棒 磨牙棒狗狗零食 整箱12包", "188", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170736_1249396_11467970752.jpg", "澳洲Cesar西莎/西沙 主厨系列 狗狗罐头宠物湿粮 乡村嫩烧小羊肉 100g", "240", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170801_1249396_11467971433.jpg", "皇家狗粮royalcanin 宠物CC中大型犬成犬狗粮 8kg*2包", "300", 1, 1
);
INSERT INTO product VALUES(
null, 1, "3170806_1249396_11467971525.jpg", "爱倍宠物主粮天然营养幼犬狗粮10kg(500g*20包)金毛拉布拉多德牧哈士奇萨摩耶边牧", "109", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170817_1249396_11467971609.jpg", "e-WEITA/味它 优质狗粮 [成犬粮]10公斤/箱", "128", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170840_1249396_21467971782.jpg", "耐威克 成犬 狗粮 贵宾 泰迪狗粮 5kg", "109", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170710_1249396_11467970460.jpg", "宝路鲜香肉味条 狗狗零食脯芝士火腿味80g 美味低脂好吃不长胖 芝士 整盒装", "132", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170729_1249396_11467970572.jpg", "宝路 宠物零食 狗狗磨牙棒 大型犬洁齿棒 磨牙棒狗狗零食 整箱12包", "188", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170736_1249396_11467970752.jpg", "澳洲Cesar西莎/西沙 主厨系列 狗狗罐头宠物湿粮 乡村嫩烧小羊肉 100g", "240", 0, 0
);
INSERT INTO product VALUES(
null, 1, "3170801_1249396_11467971433.jpg", "皇家狗粮royalcanin 宠物CC中大型犬成犬狗粮 8kg*2包", "300", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170806_1249396_11467971525.jpg", "爱倍宠物主粮天然营养幼犬狗粮10kg(500g*20包)金毛拉布拉多德牧哈士奇萨摩耶边牧", "109", 1, 1
);
INSERT INTO product VALUES(
null, 1, "3170817_1249396_11467971609.jpg", "e-WEITA/味它 优质狗粮 [成犬粮]10公斤/箱", "128", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170840_1249396_21467971782.jpg", "耐威克 成犬 狗粮 贵宾 泰迪狗粮 5kg", "109", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170710_1249396_11467970460.jpg", "宝路鲜香肉味条 狗狗零食脯芝士火腿味80g 美味低脂好吃不长胖 芝士 整盒装", "132", 1, 1
);
INSERT INTO product VALUES(
null, 1, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170729_1249396_11467970572.jpg", "宝路 宠物零食 狗狗磨牙棒 大型犬洁齿棒 磨牙棒狗狗零食 整箱12包", "188", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170736_1249396_11467970752.jpg", "澳洲Cesar西莎/西沙 主厨系列 狗狗罐头宠物湿粮 乡村嫩烧小羊肉 100g", "240", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170801_1249396_11467971433.jpg", "皇家狗粮royalcanin 宠物CC中大型犬成犬狗粮 8kg*2包", "300", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170806_1249396_11467971525.jpg", "爱倍宠物主粮天然营养幼犬狗粮10kg(500g*20包)金毛拉布拉多德牧哈士奇萨摩耶边牧", "109", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170817_1249396_11467971609.jpg", "e-WEITA/味它 优质狗粮 [成犬粮]10公斤/箱", "128", 1, 0
);
INSERT INTO product VALUES(
null, 1, "3170840_1249396_21467971782.jpg", "耐威克 成犬 狗粮 贵宾 泰迪狗粮 5kg", "109", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170710_1249396_11467970460.jpg", "宝路鲜香肉味条 狗狗零食脯芝士火腿味80g 美味低脂好吃不长胖 芝士 整盒装", "132", 1, 1
);
INSERT INTO product VALUES(
null, 1, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170729_1249396_11467970572.jpg", "宝路 宠物零食 狗狗磨牙棒 大型犬洁齿棒 磨牙棒狗狗零食 整箱12包", "188", 0, 1
);
INSERT INTO product VALUES(
null, 1, "3170736_1249396_11467970752.jpg", "澳洲Cesar西莎/西沙 主厨系列 狗狗罐头宠物湿粮 乡村嫩烧小羊肉 100g", "240", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170759_1249396_11467971086.jpg", "ramical雷米高成幼猫粮 澳丽得天然海洋鱼宠物粮食10kg(500g*20包)", "120", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170784_1249396_11467971210.jpg", "小伙伴猫粮 成猫粮 幼猫粮 海洋鱼挑嘴猫粮 10kg", "92", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170793_1249396_11467971311.jpg", "珍宝猫粮 喜多鱼海洋鱼味成猫猫粮 成猫10kg", "109", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170801_1249396_11467971375.jpg", "诗瑞 幼猫成猫猫粮 天然 室内成猫粮2.5kg(买一赠三)", "160", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170668_1249396_11467969949.jpg", "怡亲猫罐头 猫用吞拿鱼鸡肉配方猫粮罐头80g*10 猫湿粮", "150", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170676_1249396_11467970008.jpg", "e-WEITA味它 泰国原装进口 猫罐头猫湿粮零食24罐 纯金枪鱼 170g*24", "145", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170682_1249396_11467970071.jpg", "日本金赏猫罐头 幼猫成猫通用宠物猫粮伴侣 4种口味共24罐", "110", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170690_1249396_11467970129.jpg", "耐威克 宠物猫零食猫罐头 金枪鱼+虾+三文鱼3种口味6罐猫湿粮", "50", 0, 0
);
INSERT INTO product VALUES(
null, 2, "3170759_1249396_11467971086.jpg", "ramical雷米高成幼猫粮 澳丽得天然海洋鱼宠物粮食10kg(500g*20包)", "120", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170784_1249396_11467971210.jpg", "小伙伴猫粮 成猫粮 幼猫粮 海洋鱼挑嘴猫粮 10kg", "92", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170793_1249396_11467971311.jpg", "珍宝猫粮 喜多鱼海洋鱼味成猫猫粮 成猫10kg", "109", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170801_1249396_11467971375.jpg", "诗瑞 幼猫成猫猫粮 天然 室内成猫粮2.5kg(买一赠三)", "160", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170668_1249396_11467969949.jpg", "怡亲猫罐头 猫用吞拿鱼鸡肉配方猫粮罐头80g*10 猫湿粮", "150", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170676_1249396_11467970008.jpg", "e-WEITA味它 泰国原装进口 猫罐头猫湿粮零食24罐 纯金枪鱼 170g*24", "145", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170682_1249396_11467970071.jpg", "日本金赏猫罐头 幼猫成猫通用宠物猫粮伴侣 4种口味共24罐", "110", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170690_1249396_11467970129.jpg", "耐威克 宠物猫零食猫罐头 金枪鱼+虾+三文鱼3种口味6罐猫湿粮", "50", 0, 0
);
INSERT INTO product VALUES(
null, 2, "3170759_1249396_11467971086.jpg", "ramical雷米高成幼猫粮 澳丽得天然海洋鱼宠物粮食10kg(500g*20包)", "120", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170784_1249396_11467971210.jpg", "小伙伴猫粮 成猫粮 幼猫粮 海洋鱼挑嘴猫粮 10kg", "92", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170793_1249396_11467971311.jpg", "珍宝猫粮 喜多鱼海洋鱼味成猫猫粮 成猫10kg", "109", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170801_1249396_11467971375.jpg", "诗瑞 幼猫成猫猫粮 天然 室内成猫粮2.5kg(买一赠三)", "160", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170668_1249396_11467969949.jpg", "怡亲猫罐头 猫用吞拿鱼鸡肉配方猫粮罐头80g*10 猫湿粮", "150", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170676_1249396_11467970008.jpg", "e-WEITA味它 泰国原装进口 猫罐头猫湿粮零食24罐 纯金枪鱼 170g*24", "145", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170682_1249396_11467970071.jpg", "日本金赏猫罐头 幼猫成猫通用宠物猫粮伴侣 4种口味共24罐", "110", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170690_1249396_11467970129.jpg", "耐威克 宠物猫零食猫罐头 金枪鱼+虾+三文鱼3种口味6罐猫湿粮", "50", 0, 0
);
INSERT INTO product VALUES(
null, 2, "3170759_1249396_11467971086.jpg", "ramical雷米高成幼猫粮 澳丽得天然海洋鱼宠物粮食10kg(500g*20包)", "120", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170784_1249396_11467971210.jpg", "小伙伴猫粮 成猫粮 幼猫粮 海洋鱼挑嘴猫粮 10kg", "92", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170793_1249396_11467971311.jpg", "珍宝猫粮 喜多鱼海洋鱼味成猫猫粮 成猫10kg", "109", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170801_1249396_11467971375.jpg", "诗瑞 幼猫成猫猫粮 天然 室内成猫粮2.5kg(买一赠三)", "160", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170668_1249396_11467969949.jpg", "怡亲猫罐头 猫用吞拿鱼鸡肉配方猫粮罐头80g*10 猫湿粮", "150", 1, 1
);
INSERT INTO product VALUES(
null, 2, "3170676_1249396_11467970008.jpg", "e-WEITA味它 泰国原装进口 猫罐头猫湿粮零食24罐 纯金枪鱼 170g*24", "145", 0, 1
);
INSERT INTO product VALUES(
null, 2, "3170682_1249396_11467970071.jpg", "日本金赏猫罐头 幼猫成猫通用宠物猫粮伴侣 4种口味共24罐", "110", 1, 0
);
INSERT INTO product VALUES(
null, 2, "3170690_1249396_11467970129.jpg", "耐威克 宠物猫零食猫罐头 金枪鱼+虾+三文鱼3种口味6罐猫湿粮", "50", 0, 0
);
INSERT INTO product VALUES(
null, 3, "3170359_1249396_11467968879.jpg", "BOTH宠物保健品 配方山羊奶粉 (犬猫用）450g　宠物奶粉　狗狗　猫", "89", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170420_1249396_11467968946.jpg", "麦顿狗狗羊奶粉宠物幼犬猫奶粉泰迪金毛小狗幼猫咪营养补钙蛋白粉犬猫通用包邮", "68", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170479_1249396_11467969022.jpg", "维斯康 宠物羊奶粉 猫奶粉 狗奶粉 宠物狗狗保健品 幼犬用羊奶粉300g", "98", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170527_1249396_11467969089.jpg", "英国MAG奶粉泰迪金毛比熊宠物狗狗幼犬羊奶粉DHA益生菌配方代母乳400g", "98", 0, 1
);
INSERT INTO product VALUES(
null, 3, "3170580_1249396_11467969156.jpg", "美国红狗RedDog 钙王宠物补钙狗狗钙片宠物营养品金毛贵宾健骨关节保护", "88", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170589_1249396_11467969235.jpg", "MAG超能钙鲨鱼软骨粉 狗狗钙片幼犬泰迪金毛补钙 大型犬成犬宠物钙粉", "88", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170627_1249396_31467969685.jpg", "维斯康 宠物狗狗钙片小大型犬成幼犬泰迪萨摩耶金毛猫补钙 强力钙150片", "35", 0, 1
);
INSERT INTO product VALUES(
null, 3, "3170661_1249396_11467969865.jpg", "卫仕宠物狗狗乳钙片 幼犬补钙 金毛德牧幼猫咪大小型泰迪专用发育宝营养保健品卫士钙片400片", "65", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170359_1249396_11467968879.jpg", "BOTH宠物保健品 配方山羊奶粉 (犬猫用）450g　宠物奶粉　狗狗　猫", "89", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170420_1249396_11467968946.jpg", "麦顿狗狗羊奶粉宠物幼犬猫奶粉泰迪金毛小狗幼猫咪营养补钙蛋白粉犬猫通用包邮", "68", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170479_1249396_11467969022.jpg", "维斯康 宠物羊奶粉 猫奶粉 狗奶粉 宠物狗狗保健品 幼犬用羊奶粉300g", "98", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170527_1249396_11467969089.jpg", "英国MAG奶粉泰迪金毛比熊宠物狗狗幼犬羊奶粉DHA益生菌配方代母乳400g", "98", 0, 1
);
INSERT INTO product VALUES(
null, 3, "3170580_1249396_11467969156.jpg", "美国红狗RedDog 钙王宠物补钙狗狗钙片宠物营养品金毛贵宾健骨关节保护", "88", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170589_1249396_11467969235.jpg", "MAG超能钙鲨鱼软骨粉 狗狗钙片幼犬泰迪金毛补钙 大型犬成犬宠物钙粉", "88", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170627_1249396_31467969685.jpg", "维斯康 宠物狗狗钙片小大型犬成幼犬泰迪萨摩耶金毛猫补钙 强力钙150片", "35", 0, 1
);
INSERT INTO product VALUES(
null, 3, "3170661_1249396_11467969865.jpg", "卫仕宠物狗狗乳钙片 幼犬补钙 金毛德牧幼猫咪大小型泰迪专用发育宝营养保健品卫士钙片400片", "65", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170359_1249396_11467968879.jpg", "BOTH宠物保健品 配方山羊奶粉 (犬猫用）450g　宠物奶粉　狗狗　猫", "89", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170420_1249396_11467968946.jpg", "麦顿狗狗羊奶粉宠物幼犬猫奶粉泰迪金毛小狗幼猫咪营养补钙蛋白粉犬猫通用包邮", "68", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170479_1249396_11467969022.jpg", "维斯康 宠物羊奶粉 猫奶粉 狗奶粉 宠物狗狗保健品 幼犬用羊奶粉300g", "98", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170527_1249396_11467969089.jpg", "英国MAG奶粉泰迪金毛比熊宠物狗狗幼犬羊奶粉DHA益生菌配方代母乳400g", "98", 0, 1
);
INSERT INTO product VALUES(
null, 3, "3170580_1249396_11467969156.jpg", "美国红狗RedDog 钙王宠物补钙狗狗钙片宠物营养品金毛贵宾健骨关节保护", "88", 1, 0
);
INSERT INTO product VALUES(
null, 3, "3170589_1249396_11467969235.jpg", "MAG超能钙鲨鱼软骨粉 狗狗钙片幼犬泰迪金毛补钙 大型犬成犬宠物钙粉", "88", 1, 1
);
INSERT INTO product VALUES(
null, 3, "3170627_1249396_31467969685.jpg", "维斯康 宠物狗狗钙片小大型犬成幼犬泰迪萨摩耶金毛猫补钙 强力钙150片", "35", 0, 1
);
INSERT INTO product VALUES(
null, 3, "3170661_1249396_11467969865.jpg", "卫仕宠物狗狗乳钙片 幼犬补钙 金毛德牧幼猫咪大小型泰迪专用发育宝营养保健品卫士钙片400片", "65", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3168817_1249396_11467966991.jpg", "韩国派莫宁水晶猫砂3.8L 猫沙 除臭 除臭猫砂 猫清洁用品 猫咪清洁 6包", "60", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 4, "3170044_1249396_11467968521.jpg", "洁客 Drymax 植物环保猫砂结团条砂5L", "28", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3168998_1249396_11467967189.jpg", "怡亲猫沙 膨润土结团除臭猫砂10kg 易结团 吸水性强", "16", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3170226_1249396_21467968715.jpg", "田田猫 可拆半屋顶猫窝", "218", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3169726_1249396_11467968165.jpg", "田田猫天然山藤手工编创意吉祥南瓜猫房子鸟笼猫窝", "540", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3169773_1249396_11467968224.jpg", "诺卡狗屋D2狗窝 中大型犬舍 环保炭化实木质 新款大狗户外别墅 大型犬狗屋 碳化木标准版 310*290*210", "980", 0, 1
);
INSERT INTO product VALUES(
null, 4, "3169859_1249396_11467968307.jpg", "诺卡别墅狗屋 中大型犬宠物用品木制狗窝户外实木狗屋室外木屋防腐碳化防水木质狗房子 支持定制 标配版 S-10", "980", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3168817_1249396_11467966991.jpg", "韩国派莫宁水晶猫砂3.8L 猫沙 除臭 除臭猫砂 猫清洁用品 猫咪清洁 6包", "60", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 4, "3170044_1249396_11467968521.jpg", "洁客 Drymax 植物环保猫砂结团条砂5L", "28", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3168998_1249396_11467967189.jpg", "怡亲猫沙 膨润土结团除臭猫砂10kg 易结团 吸水性强", "16", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3170226_1249396_21467968715.jpg", "田田猫 可拆半屋顶猫窝", "218", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3169726_1249396_11467968165.jpg", "田田猫天然山藤手工编创意吉祥南瓜猫房子鸟笼猫窝", "540", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3169773_1249396_11467968224.jpg", "诺卡狗屋D2狗窝 中大型犬舍 环保炭化实木质 新款大狗户外别墅 大型犬狗屋 碳化木标准版 310*290*210", "980", 0, 1
);
INSERT INTO product VALUES(
null, 4, "3169859_1249396_11467968307.jpg", "诺卡别墅狗屋 中大型犬宠物用品木制狗窝户外实木狗屋室外木屋防腐碳化防水木质狗房子 支持定制 标配版 S-10", "980", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3168817_1249396_11467966991.jpg", "韩国派莫宁水晶猫砂3.8L 猫沙 除臭 除臭猫砂 猫清洁用品 猫咪清洁 6包", "60", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 4, "3170044_1249396_11467968521.jpg", "洁客 Drymax 植物环保猫砂结团条砂5L", "28", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3168998_1249396_11467967189.jpg", "怡亲猫沙 膨润土结团除臭猫砂10kg 易结团 吸水性强", "16", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3170226_1249396_21467968715.jpg", "田田猫 可拆半屋顶猫窝", "218", 1, 0
);
INSERT INTO product VALUES(
null, 4, "3169726_1249396_11467968165.jpg", "田田猫天然山藤手工编创意吉祥南瓜猫房子鸟笼猫窝", "540", 1, 1
);
INSERT INTO product VALUES(
null, 4, "3169773_1249396_11467968224.jpg", "诺卡狗屋D2狗窝 中大型犬舍 环保炭化实木质 新款大狗户外别墅 大型犬狗屋 碳化木标准版 310*290*210", "980", 0, 1
);
INSERT INTO product VALUES(
null, 4, "3169859_1249396_11467968307.jpg", "诺卡别墅狗屋 中大型犬宠物用品木制狗窝户外实木狗屋室外木屋防腐碳化防水木质狗房子 支持定制 标配版 S-10", "980", 1, 0
);
INSERT INTO product VALUES(
null, 5,  "3170676_1249396_11467970008.jpg", "e-WEITA味它 泰国原装进口 猫罐头猫湿粮零食24罐 纯金枪鱼 170g*24", "145", 0,1
);
INSERT INTO product VALUES(
null, 5, "3170420_1249396_11467968946.jpg", "麦顿狗狗羊奶粉宠物幼犬猫奶粉泰迪金毛小狗幼猫咪营养补钙蛋白粉犬猫通用包邮", "68", 1, 0
);
INSERT INTO product VALUES(
null, 5, "3170793_1249396_11467971311.jpg", "珍宝猫粮 喜多鱼海洋鱼味成猫猫粮 成猫10kg", "109", 1, 1
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);
INSERT INTO product VALUES(
null, 5, "3170726_1249396_11467970510.jpg", "曼劳宠物零食 狗零食 宠物狗狗肉类零食营养亮毛口味各一寿司牛肉棒三明治鳕鱼圈 400g*6", "139", 0, 1
);
INSERT INTO product VALUES(
null, 5, "3168880_1249396_11467967054.jpg", "【拍3减1】洁客水晶猫砂除臭杀菌猫砂无粉尘猫沙4L薰衣草香大颗粒 3袋/12L", "59", 0, 0
);




#创建分类表
CREATE TABLE catagory(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(255)
);
#插入数据
INSERT INTO catagory VALUES(
null, "羊毛垫子"
);
INSERT INTO catagory VALUES(
null, "羊毛拖鞋"
);
INSERT INTO catagory VALUES(
null, "羊毛公仔"
);
INSERT INTO catagory VALUES(
null, "羊毛抱枕"
);
#创建评论表
CREATE TABLE comments (
   mid SMALLINT PRIMARY KEY AUTO_INCREMENT, 
   uid INT, #标志为某个用户的评论
   mtime Date,
   head_url VARCHAR(255),
   nickName VARCHAR(32),
   score INT,
   comments  VARCHAR(300),
   comment_url VARCHAR(255),
   hasImg BOOLEAN,
   isLowscore BOOLEAN
);
#插入数据
INSERT INTO comments VALUES(
    null, 1, "2019-5-9", "head_url1.jpg", "文文和仙仙的故事", 5, "速度快，味道好，物超所值","p_url1.jpg,p_url2.jpg,p_url3.jpg",1, 0
);
INSERT INTO comments VALUES(
    null, 2, "2019-8-5", "head_url2.jpg", "像极了大神队",4, "有点辣","p_url1.jpg,p_url2.jpg,p_url3.jpg",1, 0
);
INSERT INTO comments VALUES(
    null, 3, "2019-8-6", "head_url3.jpg", "那些年",2, "有点辣，分量太少","",0, 1
);

#创建订单表
CREATE TABLE orders (
  oid INT PRIMARY KEY AUTO_INCREMENT,
  otime DATE,
  orderno VARCHAR(128),
  uid INT,
  pid INT,
  Pimg VARCHAR(255),
  pname VARCHAR(32),
  price DECIMAL(10,2),
  isComment BOOLEAN #是否已经评论，0：未评  1：已评
);
#插入数据  模拟同一个用户买了三个不同的商品
INSERT INTO orders VALUES(
    null,  "2019-8-5", "c524071718756721", 1, 1, "5583547_1528166736.jpg", "小台农芒果新鲜水果 带箱10斤包邮", "66.6", 0
);
INSERT INTO orders VALUES(
    null, "2019-8-7", "BB21787122568574", 1, 2, "5583529_1528166720.jpg", "周小帅私房菜麻辣小 龙虾3斤装5钱/只", "98", 0
);
INSERT INTO orders VALUES(
    null, "2019-8-10", "BA17827442070406",  1, 3, "5583509_1528166701.jpg", "老杜香酥鸭500g*2烤 鸭整只酱板鸭", "49.6", 0
);
#创建购物车表
CREATE TABLE cart (
  gid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  pid INT,
  Pimg VARCHAR(255),
  pname VARCHAR(32),
  price DECIMAL(10,2),
  count VARCHAR(32)
);

#创建用户表
CREATE TABLE user(
  uid  INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(128),
  upwd VARCHAR(32),
  email VARCHAR(128),
  phone VARCHAR(32),
  sex BOOLEAN  # 1: 男  0：女
);
 
#插入数据
INSERT INTO user VALUES(
    null, "tom123456", "123456", "469775376@qq.com", "12147483647", 0
);
INSERT INTO user VALUES(
    null, "jerry123456",  "123456", "469775376@qq.com", "12454987540", 1
);

#创建地址表
CREATE TABLE addr(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  uname VARCHAR(32),
  phone VARCHAR(32),
  province VARCHAR(32),
  city VARCHAR(32),
  area VARCHAR(32),
  details VARCHAR(128)
);
#插入数据
INSERT INTO addr VALUES(
    null, 1, "黄先生", "15847563120","广东省", "湛江市", "霞山区","樱桃镇桃花村"
);
INSERT INTO addr VALUES(
    null, 2, "许小姐", "14587564102","湖南省", "长沙市", "长步镇", "十里镇杏花村"
);


