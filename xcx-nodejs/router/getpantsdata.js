const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const getpantsData = require('../router_handler/getpantsdata')

// 处理数据函数

// 获取裤子数据
router.get('/getpants', getpantsData.getpants)
// 搜索裤子
router.get('/searcpants', getpantsData.searcpants)
// 添加裤子
router.get('/addpants', getpantsData.addpants)
router.get('/deletepants', getpantsData.deletepants)
router.get('/updatapants', getpantsData.updatapants)
module.exports = router