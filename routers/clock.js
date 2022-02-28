const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 新增打卡
router.post('/insertclock',tokenK,require('../controller/clock').insertclock)
// 查询打卡信息
router.get('/selectclock',tokenK,require('../controller/clock').selectclock)
// 编辑打卡信息
router.post('/updateclock',tokenK,require('../controller/clock').updateclock)
// 删除打卡信息
router.post('/deleteclock',tokenK,require('../controller/clock').deleteclock)
// 添加打卡信息
router.post('/doneclock',tokenK,require('../controller/clock').doneclock)
// 修改今日打卡状态
router.post('/deletedoneclock',tokenK,require('../controller/clock').updatetodayclock)
// 获取所有天数的打卡记录
router.post('/clockdays',tokenK,require('../controller/clock').clockdays)
// 删除所有天数的打卡记录
router.post('/deleteclockdays',tokenK,require('../controller/clock').deleteclockdays)

module.exports = router