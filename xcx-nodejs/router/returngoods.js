const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const returnGoods= require('../router_handler/returngoods')

router.get('/returngoods', returnGoods.returngoods)
router.get('/namesearch', returnGoods.namesearch)
router.get('/agree', returnGoods.agree)
router.get('/notagree', returnGoods.notagree)
module.exports = router