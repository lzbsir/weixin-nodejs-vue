const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const xcxsearcData = require('../router_handler/xcxsearcdata')

router.get('/xcxsearc', xcxsearcData.xcxsearc)
module.exports = router