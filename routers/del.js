const express=require("express");
const pool=require("../pool");
var router=express.Router();
// 删除单个商品的路由
router.get("/",(req,res)=>{
    //(1)获取参数 id  购物车id
    var gid = req.query.gid;
    //(2)创建sql语句  注意:大写小写[表名/列名]
    var sql = "DELETE FROM cart WHERE gid = ?";
    //(3)json
    pool.query(sql,[gid],(err,result)=>{
      if(err)throw err;
      //(4)判断条件 如果sql insert/delete/update
      //   执行成功条件:影响行数
      if(result.affectedRows>0){   
       res.send({code:1,msg:"删除成功"});
      }else{
       res.send({code:-1,msg:"删除失败"});
      }
    })
  })
//   导出路由
  module.exports=router;