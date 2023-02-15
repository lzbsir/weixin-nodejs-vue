const express=require('express')
// const mysql=require('mysql')
const app=express()
const cors=require('cors')
app.use(cors())
// 导入并注册用户路由模块
const getclothesdataRouter = require('./router/getclothesdata')
const getpantsdataRouter = require('./router/getpantsdata')
const getshoesdataRouter = require('./router/getshoesdata')
const xcxhomedataRouter = require('./router/xcxhomedata')
const xcxaddressRouter = require('./router/xcxgetaddress')
const orderRouter = require('./router/orderlist')
const searcRouter = require('./router/xcxsearcdata')
const loginRouter = require('./router/xcxlogin')
const returngoodsRouter = require('./router/returngoods')
const getfahuodataRouter = require('./router/getfahuodata')
app.use('/api', xcxhomedataRouter)
app.use('/api', getclothesdataRouter)
app.use('/api', getpantsdataRouter)
app.use('/api', getshoesdataRouter)
app.use('/api', orderRouter)
app.use('/api', xcxaddressRouter)
app.use('/api', searcRouter)
app.use('/api', loginRouter)
app.use('/api', returngoodsRouter)
app.use('/api', getfahuodataRouter)


// app.get('/user',(req,res)=>{
//        const sj=req.query
//        console.log(sj)
//         let sjj=req.query.ID+1
//         res.send(sjj)
//     })

app.listen(5002,()=>{
    console.log('服务器启动成功')
})
