const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')
//引入上传模块
const multer = require('multer')
const upload = multer({dest:"./public/upload"})

// 查询用户数据
router.post('/userdata',tokenK,require('../controller/account').selectuserdata)
// 修改用户数据
router.post('/updateuserdata',tokenK,require('../controller/account').updatemycenter)
//修改用户头像
router.post('/photoupload',upload.single('file'),require('../controller/account').updatephoto)

module.exports = router