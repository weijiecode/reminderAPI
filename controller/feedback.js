const db = require('../core/mysql')
// 时间日期
const moment = require('moment')
class Feedback {
    // 发送富文本编辑器图片的url
    photouploadurl(request, resposne, next) {
        const file = request.file
        file.url = `http://localhost:5001/public/uploadeditor/${file.filename}`
        resposne.json({
            code: 202,
            data: file
        })
    }
    // 提交富文本的图片
    async updateeditor(request, resposne, next) {
        let updateSql = 'insert into feedback(`username`,`title`,`content`,`updatetime`)values(?,?,?,?)'
        let params = [
            request.username,
            request.body.title,
            request.body.content,
            moment().format('YYYY-MM-DD HH:mm:ss'),
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '提交成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '提交失败，请重试'
                })
            }
        } catch (error) {
            resposne.json({
                code: -201,
                msg: '服务器异常',
                error
            })
        }
    }
}
module.exports = new Feedback