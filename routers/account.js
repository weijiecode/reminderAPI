const express = require('express')
const router = express.Router()

//注册
router.post('/register',require('../controller/account').register)
//登录
router.post('/login',require('../controller/account').login)



module.exports = router