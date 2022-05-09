const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询日记数据
router.post('/userdiary',tokenK,require('../controller/diary').selectdiary)
// 添加日记数据
router.post('/adddiary',tokenK,require('../controller/diary').adddiary)
// 修改日记数据
router.post('/updatediary',tokenK,require('../controller/diary').updatediary)
// 删除日记
router.post('/delediary',tokenK,require('../controller/diary').delediary)

module.exports = router