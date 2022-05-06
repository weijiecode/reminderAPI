const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询纪念日数据
router.post('/usermemorial',tokenK,require('../controller/memorial').selectmemorial)
// 添加纪念日数据
router.post('/addmemorial',tokenK,require('../controller/memorial').addmemorial)
// 修改纪念日数据
router.post('/updatememorial',tokenK,require('../controller/memorial').updatememorial)
// 删除纪念日
router.post('/delememorial',tokenK,require('../controller/memorial').delememorial)

module.exports = router