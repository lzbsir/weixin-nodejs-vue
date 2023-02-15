const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const getshoesData = require('../router_handler/getshoesdata')

// 处理数据函数

// 获取鞋子数据
router.get('/getshoes', getshoesData.getshoes)
// 搜索鞋子
router.get('/searcshoes', getshoesData.searcshoes)
// 添加鞋子
router.get('/addshoes', getshoesData.addshoes)
router.get('/deleteshoes', getshoesData.deleteshoes)
router.get('/updatashoes', getshoesData.updatashoes)
module.exports = router