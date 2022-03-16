const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')
// 测试1
router.get('/test',require('../controller/test').testcontroller)
module.exports = router
