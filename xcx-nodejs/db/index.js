const mysql=require('mysql')
const db=mysql.createPool({
    host:'127.0.0.1',        //数据库的IP地址
    user:'root',             //登录数据库账号
    password:'1008611',      //数据库登录密码
    database:'db',           //指定要操作哪个数据库
})
module.exports = db