const express=require("express");
const pool=require("../pool");
var router=express.Router();
// 删除多个商品的路由
router.get("/",(req,res)=>{
    //(1)参数 ids=2,3  多个购物车id拼接
    var gids = req.query.gids;
    //(2)sql 删除多个购物车中id
    var sql = `DELETE FROM cart WHERE gid IN (${gids})`;
    //(3)json
    pool.query(sql,(err,result)=>{
      if(err)throw err;//如果发现错误抛出
      //如果影响行数大于0表示执行成功,否则失败
      if(result.affectedRows>0){
         res.send({code:1,msg:"删除成功"})
      }else{
         res.send({code:-1,msg:"删除失败"})
      }
    })
  });
  //   导出路由
  module.exports=router;