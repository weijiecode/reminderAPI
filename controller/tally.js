const db = require('../core/mysql')
class tally {
    // 查询用户所有记账数据
    async selecttally(request, resposne, next) {
        let selectSql = 'select * from tally where username=? order by datetime desc'
        let params = request.username
        try {
            let result = await db.exec(selectSql, params)
            if(result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取记账数据成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取记账数据失败'
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
    // 新增记账数据 
    async addtally(request, resposne, next) {
        let insertSql = 'insert into tally(`username`,`tallytype`,`remark`,`num`,`datetime`)values(?,?,?,?,?)'
        let params = [
            request.username,
            request.body.tallytype,
            request.body.remark,
            request.body.num,
            request.body.datetime
        ]
        try{
            //console.log(params)
            let result = await db.exec(insertSql,params)
            if(result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: "添加记账成功",
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: "添加记账失败"
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
    // 修改记账数据
    async updatetally(request, resposne, next) {
        let updateSql = 'update tally set tallytype=?,datetime=?,remark=?,num=? where id=? and username=?'
        let params = [
            request.body.tallytype,
            request.body.datetime,
            request.body.remark,
            request.body.num,
            request.body.id,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改记账数据成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改记账数据失败，请重试'
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
        // 删除记账
        async deletally(request, resposne, next) {
            let deleteSql = 'delete from tally where username=? and id=?'
            let params = [
                request.username,
                request.body.id
            ]
            try {
                let result = await db.exec(deleteSql, params)
                if (result && result.affectedRows >= 1) {
                    resposne.json({
                        code: 200,
                        msg: '删除记账成功'
                    })
                } else {
                    resposne.json({
                        code: 201,
                        msg: '删除记账失败，请重试'
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

module.exports = new tally