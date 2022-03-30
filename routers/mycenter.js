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
// 发送用户头像url
router.post('/photouploadurl',upload.single('file'),tokenK,require('../controller/account').photouploadurl)
// 移动端发送用户头像url
router.post('/mobilephotouploadurl',upload.single('file'),tokenK,require('../controller/account').mobilephotouploadurl)
// 修改用户头像
router.post('/updatephoto',tokenK,require('../controller/account').updatephoto)
// 修改密码
router.post('/updatepassword',tokenK,require('../controller/account').updatepassword)

module.exports = router