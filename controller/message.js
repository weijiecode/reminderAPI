const db = require('../core/mysql')

class Message {
    // 获取消息数据
    async message(request, resposne, next) {
        let selectSql = 'select message.title,message.content,message.datetime,user_message.isread,user_message.message_id from message,user_message where user_message.username=? and message.id=user_message.message_id'
        let params = request.username
        try {
            let result = await db.exec(selectSql, params)
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取消息成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取消息失败，请重试'
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
    // 修改为已读
    async messageisread(request, resposne, next) {
        let selectSql = 'update user_message set isread=? where username=? and message_id=?'
        let params = [
            request.body.isread,
            request.username,
            request.body.message_id
        ]
        try {
            let result = await db.exec(selectSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '已读',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '已读失败，请重试'
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
    // 修改为已读
    async allmessageisread(request, resposne, next) {
        let selectSql = 'update user_message set isread=? where username=?'
        let params = [
            request.body.isread,
            request.username
        ]
        try {
            let result = await db.exec(selectSql, params)
            if (result && result.affectedRows >= 0) {
                resposne.json({
                    code: 200,
                    msg: '全部标记为已读成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '已读失败，请重试'
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

module.exports = new Message