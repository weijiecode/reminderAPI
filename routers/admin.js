const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 登录
router.post('/adminlogin',require('../controller/admin').adminlogin)
// 添加登录信息
router.post('/logindata',require('../controller/admin').logindata)
// 查询登录信息
router.post('/selectlogindata',tokenK,require('../controller/admin').selectlogindata)

module.exports = router