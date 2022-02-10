const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')
//测试
router.post('/test',tokenK,require('../controller/test').testcontroller)
module.exports = router
