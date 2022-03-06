const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

// 新增待办事项
router.post('/insertbacklog',tokenK,require('../controller/backlog').createbacklog)
// 查询所有待办事项
router.get('/selectbacklog',tokenK,require('../controller/backlog').selectbacklog)
// 修改是否已完成待办事项
router.post('/updatebacklog',tokenK,require('../controller/backlog').updatedone)
// 修改待办事项内容
router.post('/updatecontents',tokenK,require('../controller/backlog').updatecontents)
// 删除待办事项
router.post('/deletebacklog',tokenK,require('../controller/backlog').delebacklog)
// 获取所有待办事项（日历视图）
router.get('/alluserdata',tokenK,require('../controller/backlog').selectallbacklog)
// 获取年度待办事项数据
router.get('/selectbacklogdata',tokenK,require('../controller/backlog').selectbacklogdata)
// 获取待办事项数据(时间、是否完成)
router.get('/selectbacklogdatadone',tokenK,require('../controller/backlog').selectbacklogdatadone)

module.exports = router