const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const orderlist = require('../router_handler/orderlist')

router.get('/addorderlist', orderlist.addorderlist)        //添加订单
router.get('/getorderlist', orderlist.getorderlist)        //全部订单
router.get('/tobeshippedlist', orderlist.tobeshippedlist)   //待发货
router.get('/goodstobereceived', orderlist.goodstobereceived)    //待收货
router.get('/returngoods', orderlist.returngoods)   //退货


module.exports = router