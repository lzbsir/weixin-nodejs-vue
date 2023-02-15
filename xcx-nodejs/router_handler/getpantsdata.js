const db = require('../db/index')
// 得到裤子数据
exports.getpants = (req, res) => {

    const sql = `select * from pants`
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

// 搜索裤子
exports.searcpants=(req,res)=>{
  const shousuo=req.query
  const sql ='select * from pants where pantsName like ?'
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
//添加裤子数据

exports.addpants=(req,res)=>{
  const tianjia=req.query
  const sql='insert into pants values(?,?,?,?,?)'
  db.query(sql,[tianjia.pantsId,
                tianjia.pantsName,
                tianjia.pantsPrice,
                tianjia.pantsNum,
                tianjia.pantsPicture],function(err, results){
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
exports.deletepants = (req, res) => {
  const id=req.query.id
  const arr=[id]
  const sql2 = 'delete from pants where pantsId=?'
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

exports.updatapants=(req,res)=>{
  const genggai=req.query
  const sql='update pants set pantsName=?,pantsPrice=?,pantsNum=?,pantsPicture=? where pantsId=?'
  db.query(sql,[
                genggai.pantsName,
                genggai.pantsPrice,
                genggai.pantsNum,
                genggai.pantsPicture,
                genggai.pantsId
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