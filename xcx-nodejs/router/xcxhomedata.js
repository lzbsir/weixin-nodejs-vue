const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const xcxhomeData = require('../router_handler/xcxhomedata')

router.get('/getshoes', xcxhomeData.getshoes)
module.exports = router