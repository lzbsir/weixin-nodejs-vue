const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const xcxaddress = require('../router_handler/xcxgetaddress')

router.get('/getaddress', xcxaddress.getaddress)
module.exports = router