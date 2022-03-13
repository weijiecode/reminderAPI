const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')
//引入上传模块
const multer = require('multer')
const upload = multer({dest:"./public/uploadeditor"})

// 发送富文本编辑器图片的url
router.post('/photouploadeditorurl',upload.single('file'),tokenK,require('../controller/feedback').photouploadurl)
// 提交富文本内容
router.post('/updateeditor',tokenK,require('../controller/feedback').updateeditor)
module.exports = router