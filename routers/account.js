const express = require('express')
const router = express.Router()

//注册
router.post('/register',require('../controller/account').register)
//登录
router.post('/login',require('../controller/account').login)
// 查询用户名是否被注册
router.post('/selectusername',require('../controller/account').selectusername)
// 获取所有消息列表的id
router.post('/selectmessageid',require('../controller/account').selectmessageid)
// 给新注册的用户添加所有未读消息
router.post('/addmessage',require('../controller/account').addmessage)
module.exports = router