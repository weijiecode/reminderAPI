const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询所有用户数据
router.post('/selectuser',require('../controller/admin').selectuser)
module.exports = router