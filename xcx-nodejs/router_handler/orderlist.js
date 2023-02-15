const db = require('../db/index')
//添加订单
exports.addorderlist = (req, res) => {
    var list=req.query
    
    if(list.selectid!='undefined'){
    var type=0;
    const sql='insert into OrderList values(?,?,?,?,?,?,?,?,?,?,?)'
    // for(var i=0;i<list.length;i++){
   
    db.query(sql,[list.orderCode,
                  list.phone,
                  list.name,
                  list.address,
                  list.shoesPicture,
                  list.shoesName,
                  list.shoesPrice,
                  list.num,
                  list.totalPrice,
                  list.time,
                  type],function(err, results){
                        // 执行 SQL 语句失败
                      if (err) {
                          
                        return res.send(err.message)
                        
                      }
                      else{
                          res.send(results)
                        console.log('成功')
                          
                      }
                    })
                    // return;
                // }

}
    else{
      res.send('请填写地址')
    }
}


// 全部订单
exports.getorderlist = (req, res) => {
  const sql='select * from orderlist'
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
// 待发货
exports.tobeshippedlist = (req, res) => {
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
// 待收货
exports.goodstobereceived = (req, res) => {
  const sql='select * from orderlist where type = 1'
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