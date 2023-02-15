const db = require('../db/index')
// 得到衣服数据
exports.getclothes = (req, res) => {
    const sql = `select * from clothes`
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

// 搜索衣服
exports.searcclothes=(req,res)=>{
  const shousuo=req.query
  const sql ='select * from clothes where clothesName like ?'
  db.query(sql,['%'+shousuo.neirong+'%'],function(err, results){
    // 执行 SQL 语句失败
  if (err) {
    return res.send(err.message)
  }
  else{
      
      res.send(results)
  }

})
}
//添加衣服数据

exports.addclothes=(req,res)=>{
  const tianjia=req.query
  const sql='insert into clothes values(?,?,?,?,?)'
  db.query(sql,[tianjia.clothesId,
                tianjia.clothesName,
                tianjia.clothesPrice,
                tianjia.clothesNum,
                tianjia.clothesPicture],function(err, results){
                      // 执行 SQL 语句失败
                    if (err) {
                      return res.send(err.message)
                    }
                    else{
                        res.send('添加成功')
                        
                    }
                  
                  })
}
// 删除一条记录
exports.deleteclothes = (req, res) => {
  const id=req.query.id
  const arr=[id]
  const sql2 = 'delete from clothes where clothesId=?'
  db.query(sql2,arr,function(err, results){
      // 执行 SQL 语句失败
    if (err) {
      return res.send(err.message)
    }
    else{
        if(results.affectedRows>0){
          res.send({
            results,
            status:200,
            mag:'删除成功'
          })
        } else{
          res.send({
            status:500,
            mag:'删除失败'
          })
        }
        
    }

  })
}

exports.updataclothes=(req,res)=>{
  const genggai=req.query
  const sql='update clothes set clothesName=?,clothesPrice=?,clothesNum=?,clothesPicture=? where clothesId=?'
  db.query(sql,[
                genggai.clothesName,
                genggai.clothesPrice,
                genggai.clothesNum,
                genggai.clothesPicture,
                genggai.clothesId
              ],function(err, results){
                      // 执行 SQL 语句失败
                    if (err) {
                      return res.send(err.message)
                    }
                    else{
                        console.log(results)
                        res.send(results)
                        
                    }
                  
                  })
}