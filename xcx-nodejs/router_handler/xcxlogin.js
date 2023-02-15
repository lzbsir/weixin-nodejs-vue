const db = require('../db/index')
// 小程序登录
exports.xcxlogin = (req, res) => {
    const sql = `select account,headIcon from user where account=? and password=?`
    db.query(sql,[req.query.username,req.query.pass],function(err, results){
        // 执行 SQL 语句失败
      if (err) {
        return res.send(err.message)
      }
      if(results.length>0){
        // for (const key in results) {
        //     // 删除id属性
        //     delete results[key].shoesNum;
        //  }res.send(用户名或密码错误,请重新输入)
       
        console.log(results)
        res.send(results)
      
      }
      else{
        res.send('用户名或密码错误,请重新输入')
      }

    })

}


// 小程序注册
exports.xcxregister = (req, res) => {
    const userinfo = req.query
    // 判断数据是否合法
    if (!userinfo.username || !userinfo.pass) {
      return res.send('用户名或密码不能为空!')
      
    }
    if (userinfo.pass!=userinfo.qdpass) {
      return res.send('两次密码不一致，请重新输入')
    }

    //检测用户名是否被占用
  const sql = `select * from user where account=?`
  db.query(sql, [userinfo.username], function (err, results) {
    // 执行 SQL 语句失败
    if (err) {
      return res.send(err.message)
    }
    // 用户名被占用
    if (results.length > 0) {
      return res.send('用户名被占用，请更换其他用户名！')
    }
    else{
      var Icon='https://img0.baidu.com/it/u=1095454086,743072542&fm=253&fmt=auto&app=138&f=PNG?w=461&h=500'
     const sql2 = `insert into user (account,password,headIcon) values (?,?,?)`
   
    db.query(sql2,[userinfo.username,userinfo.pass,Icon],function(err, results){
        // 执行 SQL 语句失败
      if (err) {
        return res.send(err.message)
      }
       // SQL 语句执行成功，但影响行数不为 1
       if (results.affectedRows !== 1) {
        return res.send('注册用户失败，请稍后再试！')
      }
      else{
        // for (const key in results) {
        //     // 删除id属性
        //     delete results[key].shoesNum;
        //  }
        return res.send('注册成功')
       
      }
     

    })
    }
    
})
  


}