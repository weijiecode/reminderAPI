const db = require('../core/mysql')
// 时间日期
const moment = require('moment')

class Clock {
    // 新增打卡
    async insertclock(request, resposne, next) {
        let insertSql = 'insert into clock(`username`,`content`,`daytype`,`startdatetime`)values(?,?,?,?)'
        let params = [
            request.username,
            request.body.content,
            request.body.daytype,
            moment().format('YYYY-MM-DD')
        ]
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '添加打卡任务成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '添加打卡任务失败,请重试'
                })
            }
        } catch (error) {
            resposne.json({
                code: -201,
                msg: "服务器异常",
                error
            })
        }
    }
    // 查询打卡数据
    async selectclock(request, resposne, next) {
        let selectSql = 'select * from clock where username=?'
        let params = request.username
        try {
            let result = await db.exec(selectSql, params)
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取数据成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取数据失败，该用户可能没有添加打卡任务，请重试'
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
    // 修改打卡信息
    async updateclock(request, resposne, next) {
        let updateSql = 'update clock set content=?,daytype=? where username=?'
        let params = [
            request.body.content,
            request.body.daytype,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改打卡信息成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改打卡信息失败'
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
    // 删除打卡信息
    async deleteclock(request, resposne, next) {
        let deleteSql = 'delete from clock where username=?'
        let params = request.username
        try {
            let result = await db.exec(deleteSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '删除打卡信息成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '删除打卡信息失败，请重试'
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
    // 每日打卡记录
    async doneclock(request, resposne, next) {
        let insertSql = 'insert into clock_user(`username`,`donedatetime`)values(?,?)'
        let params = [
            request.username,
            request.body.donedatetime
        ]
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '添加打卡信息成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '添加打卡信息失败'
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
    // 修改今日打卡状态
    async updatetodayclock(request, resposne, next) {
        let updateSql = 'delete from clock_user where donedatetime=? and username=?'
        let params = [
            request.body.donedatetime,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改打卡状态成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改打卡状态失败'
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
    // 获取所有天数的打卡记录
    async clockdays(request, resposne, next) {
        let insertSql = 'select * from clock_user where username=?'
        let params = [
            request.username
        ]
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取所有天数的打卡记录成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取所有天数为空',
                    data: result
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
    // 删除所有天数的打卡记录
    async deleteclockdays(request, resposne, next) {
        let deleteSql = 'delete from clock_user where username=?'
        let params = request.username
        try {
            let result = await db.exec(deleteSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '删除所有天数的打卡记录成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '删除所有天数的打卡记录失败，请重试'
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

module.exports = new Clock