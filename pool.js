//mysql驱动
const mysql = require("mysql");
//2:配置数据库连接池:提高数据效率
var pool = mysql.createPool({
  host: "w.rdc.sae.sina.com.cn", //数据库地址
  user: "04k0ozyk1o", //数据库用户名
  password: "x043x2m32yjwiwh2hjwxk1jl2i230xx4l0kiix3x", //数据库密码
  port: 3306, //数据库端口
  database: "app_petproduct", //数据库名称
  connectionLimit: 15 //连接数量
});
// 导出链接池
module.exports = pool;
