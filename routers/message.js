const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 获取消息
router.get('/usermessage',tokenK,require('../controller/message').message)
// 修改为已读
router.post('/isreadmessage',tokenK,require('../controller/message').messageisread)
// 修改所有消息为已读
router.post('/isreadallmessage',tokenK,require('../controller/message').allmessageisread)


module.exports = router