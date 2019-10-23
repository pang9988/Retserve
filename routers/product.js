const express = require("express");
const pool = require("../pool");
var router = express.Router();
// 商品详情页
router.get("/",(req,res)=>{
    // 获得传来的参数id
    var pid=req.query.pid;
    // 创建sql语句
    var sql = `SELECT pid,Pimg,pname,price FROM product WHERE pid=${pid}`;
    pool.query(sql,[],(err,result)=>{
        // 如果有错就抛出
        if(err) throw err;
        //将查询结果发送客户端
      res.send({code:1,msg:"查询成功",data:result});
    })

})

// 导出路由
module.exports=router;