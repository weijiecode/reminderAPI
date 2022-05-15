const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询记账数据
router.post('/usertally',tokenK,require('../controller/tally').selecttally)
// 添加记账数据
router.post('/addtally',tokenK,require('../controller/tally').addtally)
// 修改记账数据
router.post('/updatetally',tokenK,require('../controller/tally').updatetally)
// 删除记账
router.post('/deletally',tokenK,require('../controller/tally').deletally)

module.exports = router