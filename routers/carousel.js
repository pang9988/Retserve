const express = require("express");
const pool = require("../pool");
var router = express.Router();
// 轮播图
router.get("/", (req, res) => {
    var sql = `select id,img_url,pid from carousel`;
    pool.query(sql, [], (err, result) => {
        res.send({code:1,msg:"查询成功",data:result});
    })
})
// 导出路由
module.exports=router;