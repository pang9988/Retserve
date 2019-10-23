const express=require("express");
const pool=require("../pool");
var router=express.Router();
//功能一:完成用户注册操作
router.post("/",function(req,res){
	var obj=req.body;
	var sql="INSERT INTO user SET ?";
	pool.query(sql,[obj],function(err,result){
		if(err) throw err;
		if(result.affectedRows>0){
			res.send({code:1,msg:"注册成功"})  
		}else("0");
	});
});
// 导出注册路由
module.exports=router;