const db = require('../db/index')
// 得到鞋子数据
exports.getshoes = (req, res) => {
    const sql = `select * from shoes`
    db.query(sql,function(err, results){
        // 执行 SQL 语句失败
      if (err) {
        return res.send(err.message)
      }
      else{
        for (const key in results) {
            // 删除id属性
            delete results[key].shoesNum;
         }
          // console.log(results)
          res.send(results) 
      }

    })
}