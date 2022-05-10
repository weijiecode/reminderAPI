const db = require('../core/mysql')
// 时间日期
const moment = require('moment')
class diary {
    // 查询用户所有日记数据
    async selectdiary(request, resposne, next) {
        let selectSql = 'select * from diary where username=? order by datetime desc'
        let params = request.username
        try {
            let result = await db.exec(selectSql, params)
            if(result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取日记数据成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取日记数据失败'
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
    // 新增日记数据 
    async adddiary(request, resposne, next) {
        let insertSql = 'insert into diary(`username`,`weather`,`content`,`datetime`)values(?,?,?,?)'
        let params = [
            request.username,
            request.body.weather,
            request.body.content,
            request.body.datetime
        ]
        try{
            let result = await db.exec(insertSql,params)
            if(result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: "添加日记成功",
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: "添加日记失败"
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
    // 修改日记数据
    async updatediary(request, resposne, next) {
        let updateSql = 'update diary set weather=?,content=? where id=? and username=?'
        let params = [
            request.body.weather,
            request.body.content,
            request.body.id,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改日记数据成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改日记数据失败，请重试'
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
        // 删除日记
        async delediary(request, resposne, next) {
            let deleteSql = 'delete from diary where username=? and id=?'
            let params = [
                request.username,
                request.body.id
            ]
            try {
                let result = await db.exec(deleteSql, params)
                if (result && result.affectedRows >= 1) {
                    resposne.json({
                        code: 200,
                        msg: '删除日记成功'
                    })
                } else {
                    resposne.json({
                        code: 201,
                        msg: '删除日记失败，请重试'
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

module.exports = new diary