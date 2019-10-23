const express = require("express");
const pool = require("../pool");
var router = express.Router();
// 加入购物车商品路由
router.get("/",(req,res)=>{
 //获取当前登录用户id值
 var uid = req.session.uid;
 //如果当前用户没有登录
 if(!uid){
    //返回错误消息  
    res.send({code:-1,msg:"请先登录"});
    return;
    }
    //获取商品编号 商品价格 商品名称
    var pid = req.query.pid;
    var price = req.query.price;
    var pname = req.query.pname;
    var Pimg = req.query.Pimg;
    var count = req.query.count;
    //查询指定用户是否购买过此商品
    var sql = "SELECT gid FROM cart";
        sql+=" WHERE uid = ? AND pid = ?";
    pool.query(sql,[uid,pid],(err,result)=>{
        if(err) throw err;
        var sql="";
        if(result.length==0){
            //没有购买过此商品添加
            sql=`INSERT INTO cart VALUES(null,${uid},${pid},'${Pimg}','${pname}',${price},${count})`;
          }else{
            sql=`UPDATE cart SET count=count+1 WHERE uid=${uid} AND pid=${pid}`;
          }
          //购买过此商品更新
          pool.query(sql,(err,result)=>{
            if(err)throw err;
            res.send({code:1,msg:"添加成功"})
        })
    })
})
// 导出路由
module.exports=router;