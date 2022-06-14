const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 查询所有用户数据（搜索）
router.post('/selectuser_search',tokenK,require('../controller/admin').selectuser_search)
// 查询所有用户数据的总数
// router.post('/selectusercount',tokenK,require('../controller/admin').selectusercount)
// 查询所有用户数据（实现分页功能）
router.post('/selectuser',tokenK,require('../controller/admin').selectuser)
// 删除指定ID用户
router.post('/deleteuser',tokenK,require('../controller/admin').deleteuser)
// 管理员修改用户信息
router.post('/updateuser',tokenK,require('../controller/admin').updateuser)
// 管理员添加用户
router.post('/adduser',tokenK,require('../controller/admin').adduser)

module.exports = router