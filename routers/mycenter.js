const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询用户数据
router.post('/userdata',tokenK,require('../controller/account').selectuserdata)
// 修改用户数据
router.post('/updateuserdata',tokenK,require('../controller/account').updatemycenter)

module.exports = router