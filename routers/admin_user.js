const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询所有用户数据（查询所有数据，未使用）
router.post('/selectuser_test',tokenK,require('../controller/admin').selectuser_test)
// 查询所有用户数据的总数
// router.post('/selectusercount',tokenK,require('../controller/admin').selectusercount)
// 查询所有用户数据（实现分页功能）
router.post('/selectuser',tokenK,require('../controller/admin').selectuser)
// 删除指定ID用户
router.post('/deleteuser',tokenK,require('../controller/admin').deleteuser)

module.exports = router