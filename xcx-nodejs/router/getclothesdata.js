const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const getclothesData = require('../router_handler/getclothesdata')

// 处理数据函数

// 获取衣服数据
router.get('/getclothes', getclothesData.getclothes)
// 搜索衣服
router.get('/searcclothes', getclothesData.searcclothes)
// 添加衣服
router.get('/addclothes', getclothesData.addclothes)
router.get('/deleteclothes', getclothesData.deleteclothes)
router.get('/updataclothes', getclothesData.updataclothes)
module.exports = router