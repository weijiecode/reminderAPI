const db = require('../core/mysql')
// 时间日期
const moment = require('moment')
class memo {
    // 查询用户所有备忘录数据
    async selectmemo(request, resposne, next) {
        let selectSql = 'select * from memo where username=? order by datetime desc'
        let params = request.username
        try {
            let result = await db.exec(selectSql, params)
            if(result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取备忘录数据成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取备忘录数据失败'
                })
            }
        }catch (error) {
            resposne.json({
                code: -201,
                msg: '服务器异常',
                error
            })
        }
    }
    // 新增备忘录数据 
    async addmemo(request, resposne, next) {
        let insertSql = 'insert into memo(`username`,`title`,`content`,`datetime`)values(?,?,?,?)'
        let params = [
            request.username,
            request.body.title,
            request.body.content,
            moment().format('YYYY-MM-DD HH:mm:ss')
        ]
        try{
            let result = await db.exec(insertSql,params)
            if(result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: "添加备忘录成功",
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: "添加备忘录失败"
                })
            }
        }catch(error){
            resposne.json({
                code: -201,
                msg: '服务器异常',
                error
            })
        }
    }
    // 修改备忘录数据
    async updatememo(request, resposne, next) {
        let updateSql = 'update memo set title=?,content=?,datetime=? where id=? and username=?'
        let params = [
            request.body.title,
            request.body.content,
            moment().format('YYYY-MM-DD HH:mm:ss'),
            request.body.id,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改备忘录数据成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改备忘录数据失败，请重试'
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
        // 删除备忘录
        async delememo(request, resposne, next) {
            let deleteSql = 'delete from memo where username=? and id=?'
            let params = [
                request.username,
                request.body.id
            ]
            try {
                let result = await db.exec(deleteSql, params)
                if (result && result.affectedRows >= 1) {
                    resposne.json({
                        code: 200,
                        msg: '删除备忘录成功'
                    })
                } else {
                    resposne.json({
                        code: 201,
                        msg: '删除备忘录失败，请重试'
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

module.exports = new memo