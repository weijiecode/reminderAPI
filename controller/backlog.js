const db = require('../core/mysql')
// 时间日期
const moment = require('moment')

class Backlog {
    // 新增待办事项
    async createbacklog(request, resposne, next) {
        let insertSql = 'insert into backlog(`username`,`contents`,`datetime`,`classvalue`,`colorbg`,`createtime`)values(?,?,?,?,?,?)'
        let params = [
            request.username,
            request.body.contents,
            request.body.datetime,
            request.body.classvalue,
            request.body.colorbg,
            moment().format('YYYY-MM-DD HH:mm:ss')
        ]
        // console.log(params)
        // console.log(insertSql)
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '待办添加成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    mag: '待办添加失败'
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
    // 查询待办事项
    async selectbacklog(request, resposne, next) {
        let selectSql = 'select * from backlog where username=? and done=? order by datetime asc'
        let params = [
            request.username,
            request.body.done
        ]
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
                    msg: '获取数据失败，请重试'
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
    // 查询所有待办事项（日历视图）
    async selectallbacklog(request, resposne, next) {
        let selectSql = 'select contents,datetime,done,classvalue from backlog where username=?'
        let params = [
            request.username
        ]
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
                    msg: '获取数据失败，请重试'
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
    // 修改是否已完成待办事项
    async updatedone(request, resposne, next) {
        let updateSql = 'update backlog set done=? where username=? and id=?'
        let params = [
            request.body.done,
            request.username,
            request.body.id
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改失败，请重试'
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
    // 修改待办事项内容
    async updatecontents(request, resposne, next) {
        let updateSql = 'update backlog set contents=?, datetime=?,classvalue=?,colorbg=? where username=? and id=?'
        let params = [
            request.body.contents,
            request.body.datetime,
            request.body.classvalue,
            request.body.colorbg,
            request.username,
            request.body.id
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改待办事项成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改待办事项失败，请重试'
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
    // 删除待办事项
    async delebacklog(request, resposne, next) {
        let deleteSql = 'delete from backlog where username=? and id=?'
        let params = [
            request.username,
            request.body.id
        ]
        try {
            let result = await db.exec(deleteSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '删除成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '删除失败，请重试'
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

module.exports = new Backlog