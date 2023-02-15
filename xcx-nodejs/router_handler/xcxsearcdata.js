const db = require('../db/index')
// 小程序搜索
exports.xcxsearc = (req, res) => {
    const sql = `select * from splist where shoesName like ?`
    db.query(sql,['%'+req.query.value+'%'],function(err, results){
        // 执行 SQL 语句失败
      if (err) {
        return res.send(err.message)
      }
      else{
        // for (const key in results) {
        //     // 删除id属性
        //     delete results[key].shoesNum;
        //  }
        res.send(results)
       
      }

    })

}