const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询纪念日数据
router.post('/usermemo',tokenK,require('../controller/memo').selectmemo)
// 添加纪念日数据
router.post('/addmemo',tokenK,require('../controller/memo').addmemo)
// 修改纪念日数据
router.post('/updatememo',tokenK,require('../controller/memo').updatememo)
// 删除纪念日
router.post('/delememo',tokenK,require('../controller/memo').delememo)

module.exports = router