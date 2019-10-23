const express = require("express");
const pool = require("../pool");
var router = express.Router();
 // 首页加载推荐商品更多的数据表
router.get("/",(req,res)=>{ 
    //1接收客户端两个参数
    //  pno 页码  pageSize 页大小
     var p = req.query.pno;
     var ps = req.query.pageSize;
    //3:设置参数默认值 pno:2 pageSize:3
     if(!p){p=1}
     if(!ps){ps=9}
    
    //4:创建变量 offset 计算数据库偏移量
     var offset = (p-1)*ps;
    //5:对pageSize转换整型? nodejs 报错
     ps = parseInt(ps);
     //6:创建sql语句
     var sql = `SELECT pid,Pimg,pname,price FROM product WHERE isRecommend=1 LIMIT ?,?`;
    //7:通过连接池发送sql语句
     pool.query(sql,[offset,ps],(err,result)=>{
      if(err)throw err;
      //8:获取数据库返回的查询结果
      //9:将查询结果发送客户端
      res.send({code:1,msg:"查询成功",data:result});
     });
    })
    
    // 导出路由
    module.exports=router;