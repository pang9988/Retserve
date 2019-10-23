const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/",(req,res)=>{
    // 先判断有没有传来退出登录的参数，没有说明是请求用户名，有就退出登录
    var out=req.query.out;  
    if(!out){
        // 获取uid 并且判断如果没有请求登录
        var uid=req.session.uid;
        if(!uid){
            res.send({code:-1,msg:"请登录"});
            return;
          }
        // 创建sql语句
        var sql="SELECT uname from user WHERE uid = ? ";
        pool.query(sql,[uid],(err,result)=>{
            if(err) throw err;
            res.send({code:1,meg:"查询成功",data:result});
        })
    }else{
        // 退出登录
        req.session.uid ='';
        res.send({code:-1,meg:"退出成功"});
    }
})
// 导出路由
module.exports=router;