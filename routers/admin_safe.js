const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询账号安全数据
router.post('/selectsafe',tokenK,require('../controller/admin').selectsafe)
// 添加账号安全数据
router.post('/addsafe',tokenK,require('../controller/admin').addsafe)
// 修改管理员密码
router.post('/updatepassword',tokenK,require('../controller/admin').updatepassword)
// 修改手机号绑定
router.post('/updatephone',tokenK,require('../controller/admin').updatephone)
// 修改问题密保
router.post('/updatequestion',tokenK,require('../controller/admin').updatequestion)
// 修改qq
router.post('/updateqq',tokenK,require('../controller/admin').updateqq)

module.exports = router