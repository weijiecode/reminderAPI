const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询记账数据
router.post('/usertally',tokenK,require('../controller/tally').selecttally)
// 查询预算金额数据
router.post('/userbudget',tokenK,require('../controller/tally').selectbudget)
// 添加记账数据
router.post('/addtally',tokenK,require('../controller/tally').addtally)
// 添加预算金额数据
router.post('/addbudget',tokenK,require('../controller/tally').addbudget)
// 修改记账数据
router.post('/updatetally',tokenK,require('../controller/tally').updatetally)
// 修改预算金额数据
router.post('/updatebudget',tokenK,require('../controller/tally').updatebudget)
// 删除记账
router.post('/deletally',tokenK,require('../controller/tally').deletally)

module.exports = router