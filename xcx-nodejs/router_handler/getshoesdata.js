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
          res.send(results) 
      }

    })
}

// 搜索鞋子
exports.searcshoes=(req,res)=>{
  const shousuo=req.query
  const sql ='select * from shoes where shoesName like ?'
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
//添加鞋子数据

exports.addshoes=(req,res)=>{
  const tianjia=req.query
  const sql='insert into shoes values(?,?,?,?,?)'
  db.query(sql,[tianjia.shoesId,
                tianjia.shoesName,
                tianjia.shoesPrice,
                tianjia.shoesNum,
                tianjia.shoesPicture],function(err, results){
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
exports.deleteshoes = (req, res) => {
  const id=req.query.id
  const arr=[id]
  const sql2 = 'delete from shoes where shoesId=?'
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

exports.updatashoes=(req,res)=>{
  const genggai=req.query
  const sql='update shoes set shoesName=?,shoesPrice=?,shoesNum=?,shoesPicture=? where shoesId=?'
  db.query(sql,[
                genggai.shoesName,
                genggai.shoesPrice,
                genggai.shoesNum,
                genggai.shoesPicture,
                genggai.shoesId
              ],function(err, results){
                      // 执行 SQL 语句失败Name
                    if (err) {
                      return res.send(err.message)
                    }
                    else{
                        console.log(results)
                        res.send(results)
                        
                    }
                  
                  })
}