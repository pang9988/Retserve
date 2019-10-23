//1.加载第三方模块
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const session = require("express-session");
// 引入登录路由
const loginRouter = require("./routers/login");
// 引入注册路由
const registerRouter = require("./routers/register");
// 轮播图路由
const carouselRouter = require("./routers/carousel");
// 引入热卖更多路由
const hotsellRouter = require("./routers/hotsell");
// 引入推荐更多路由
const recommendRouter = require("./routers/recommend");
// 引入种类路由
const kindRouter = require("./routers/kind");
// 引入商品详情路由
const productRouter = require("./routers/product");
//引入添加购物车路由
const addcartRouter = require("./routers/addcart");
//引入购物车路由
const cartRouter = require("./routers/cart");
// 引入删除单个商品的路由
const delRouter = require("./routers/del");
// 引入删除多个商品路由
const delMRouter = require("./routers/delM");
// 引入删除查登路后用户名路由
const LoginARouter = require("./routers/loginA");
// 引入模糊查询路由
const searchRouter = require("./routers/search");

// 创建服务器
var app = express();
// 监听端口3000
app.listen(5050);

//配置body-parser
app.use(bodyParser.json()); //加上这个配置才能获取到axios post过来的数据？
app.use(
  bodyParser.urlencoded({
    extended: false //不使用第三方qs模块，而是使用querystring模块
  })
);

//配置项目静态目录
app.use(express.static("public"));

//配置跨域模块
app.use(
  cors({
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"], //允许跨域访问程序地址列表
    credentials: true //请求验证
  })
);

//配置session模块
app.use(
  session({
    secret: "128位字符串", //安全字符串为了加密，提高安全性
    resave: true, //请求时更新数据
    saveUninitialized: true //保存初始数据
  })
);

// 配置登录路由
app.use("/login", loginRouter);
// 配置注册路由
app.use("/register", registerRouter);
// 配置轮播路由
app.use("/carousel", carouselRouter);
// 配置热卖加载更多路由
app.use("/hotsell", hotsellRouter);
// 配置推荐加载更多路由
app.use("/recommend", recommendRouter);
// 配置种类商品列表加载路由
app.use("/kind", kindRouter);
// 配置商品详情页路由
app.use("/product", productRouter);
// 配置添加购物车路由
app.use("/addcart", addcartRouter);
// 配置购物车路由
app.use("/cart", cartRouter);
// 配置删除单个商品的路由
app.use("/del", delRouter);
// 配置删除多个商品的路由
app.use("/delM", delMRouter);
// 配置查看登录后用户名的路由
app.use("/LoginA", LoginARouter);
// 配置模糊查询
app.use("/search", searchRouter);
