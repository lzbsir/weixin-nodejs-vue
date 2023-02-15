const db = require('../db/index')
// 得到地址数据
exports.getaddress = (req, res) => {
    const sql = `select * from address`
    db.query(sql,function(err, results){
        // 执行 SQL 语句失败
      if (err) {
        return res.send(err.message)
      }
      else{
          res.send(results) 
      }

    })
}