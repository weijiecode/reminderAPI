const express = require('express')
const router = express.Router()

//注册
router.post('/register',require('../controller/account').register)
//登录
router.post('/login',require('../controller/account').login)
// 查询用户名是否被注册
router.post('/selectusername',require('../controller/account').selectusername)


module.exports = router