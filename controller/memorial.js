const db = require('../core/mysql')

class Memorial {
    // 查询用户所有纪念日数据
    async selectmemorial(request, resposne, next) {
        let selectSql = 'select * from memorial where username=?'
        let params = request.username
        try {
            let result = await db.exec(selectSql, params)
            if(result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取纪念日数据成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取纪念日数据失败'
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
    // 新增纪念日数据 
    async addmemorial(request, resposne, next) {
        let insertSql = 'insert into memorial(`username`,`content`,`datetime`)values(?,?,?)'
        let params = [
            request.username,
            request.body.content,
            request.body.datetime
        ]
        try{
            let result = await db.exec(insertSql,params)
            if(result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: "添加纪念日成功",
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: "添加纪念日失败"
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
    // 修改纪念日数据
    async updatememorial(request, resposne, next) {
        let updateSql = 'update memorial set content=?,datetime=?where id=? and username=?'
        let params = [
            request.body.content,
            request.body.datetime,
            request.body.id,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改纪念日数据成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改纪念日数据失败，请重试'
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
        // 删除纪念日
        async delememorial(request, resposne, next) {
            let deleteSql = 'delete from memorial where username=? and id=?'
            let params = [
                request.username,
                request.body.id
            ]
            try {
                let result = await db.exec(deleteSql, params)
                if (result && result.affectedRows >= 1) {
                    resposne.json({
                        code: 200,
                        msg: '删除纪念日成功'
                    })
                } else {
                    resposne.json({
                        code: 201,
                        msg: '删除纪念日失败，请重试'
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

module.exports = new Memorial