const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const xcxloginData = require('../router_handler/xcxlogin')

router.get('/xcxlogin', xcxloginData.xcxlogin)
router.get('/xcxregister', xcxloginData.xcxregister)


module.exports = router