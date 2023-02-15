const db = require('../db/index')
// 订单列表 
exports.getfahuodata = (req, res) => {
    const sql='select * from orderlist where type = 0'
    db.query(sql,function(err, results){
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
  //   订单搜索
  exports.listsearch=(req,res)=>{
    const shousuo=req.query
    const sql ='select * from orderlist where id like ?'
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
  
  // 确定发货
  exports.qdfahuo=(req,res)=>{
    const jieguo=req.query
    console.log(jieguo.id)
    const sql ='UPDATE orderlist set type=1 WHERE id=?'
    db.query(sql,[jieguo.id],function(err, results){
      // 执行 SQL 语句失败
    if (err) {
      return res.send(err.message)
    }
    else{
        
        res.send("成功")
    }
  
  })
  }
  