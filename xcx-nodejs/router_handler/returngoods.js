const db = require('../db/index') 
// 退货
exports.returngoods = (req, res) => {
    const sql='select * from orderlist where type = 2'
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
//   名字搜索
  exports.namesearch=(req,res)=>{
    const shousuo=req.query
    const sql ='select * from orderlist where type=2 and name like ?'
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
// 同意退款
  exports.agree=(req,res)=>{
    const jieguo=req.query
    console.log(jieguo.id)
    const sql ='UPDATE orderlist set type=0 WHERE id=?'
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
  
  // 不同意退款
  exports.notagree=(req,res)=>{
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
  