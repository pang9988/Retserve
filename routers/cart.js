const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/",(req,res)=>{
    //2:获取uid 并且判断如果没有请求登录
  var uid = req.session.uid;
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  //3:创建sql查询用户购物车内容  
  var sql = " SELECT gid,pid,pname";
  sql+=" ,price,count,Pimg";
  sql+=" FROM cart";
  sql+=" WHERE uid = ?"
  //4:获取返回结果并且发送客户端
  pool.query(sql,[uid],(err,result)=>{
     if(err)throw err;
     res.send({code:1,msg:"查询成功",data:result});  
  })  
})
// 导出路由
module.exports=router;