const express=require("express");
const pool=require("../pool");
var router=express.Router();
//功能一:完成用户登录操作
router.get("/",(req,res)=>{
    //1:参数:获取网页传递两个数据 uname upwd
    //参数方式一:?uname=tom&upwd=123 查询字符串
    //参数方式二:/tom/123            参数
    var uname = req.query.uname;
    var upwd = req.query.upwd;
    //2:sql:查询sql语句
    //数据库 库名 表名 列名 小写字母
    var sql = "SELECT uid FROM user";
    sql+=" WHERE uname = ? AND upwd= ? ";
    //3:json:{code:1,msg:"登录成功"}
    pool.query(sql,[uname,upwd],(err,result)=>{
     //执行sql语句回调函数
     if(err)throw err;
     if(result.length==0){
     res.send({code:-1,msg:"用户名或密码有误"});
     }else{
     //1:将登录成功凭据保存session 
     //result=[{id:1}]
     req.session.uid = result[0].uid;
     //2:将成功消息发送脚手架  
     res.send({code:1,msg:"登录成功"})  
     }
    })
  });
  module.exports=router;