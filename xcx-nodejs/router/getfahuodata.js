const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const returnFahuodata= require('../router_handler/getfahuodata')

router.get('/getfahuodata', returnFahuodata.getfahuodata)
router.get('/qdfahuo', returnFahuodata.qdfahuo)
router.get('/listsearch', returnFahuodata.listsearch)

module.exports = router