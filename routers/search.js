const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.get("/", (req, res) => {
  var kw = req.query.kw;
  var search_kw = `%${kw}%`;
  var output = {
    pCount: 0,
    pSize: req.query.pSize || 6,
    pno: req.query.pno || 0,
    data: []
  };
  var sql = "SELECT pid, Pimg, pname, price From product WHERE pname LIKE ?";
  pool.query(sql, [search_kw], (err, result) => {
    if (result <= 0) {
      res.send({ code: -1, msg: "没有找到符合条件的宝贝" });
    } else {
      //根据查询出的数组长度和页码大小计算分页数
      output.pCount = Math.ceil(result.length / output.pSize);
      sql += ` limit ?,?`;
      return pool.query(
        sql,
        [search_kw, output.pSize * output.pno, output.pSize],
        (err, result) => {
          output.data = result;
          res.send({ code: 1, data: output });
        }
      );
    }
  });
});
module.exports = router;
