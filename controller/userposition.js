const db = require('../core/mysql')

class Position {
    // 添加位置信息
    async getuserposition(request, resposne, next) {
        let insertSql = 'insert into user_position(`username`,`province`,`city`,`district`,`street`,`latiude`,`longitude`)values(?,?,?,?,?,?,?)'
        let params = [
            request.username,
            request.body.province,
            request.body.city,
            request.body.district,
            request.body.street,
            request.body.latiude,
            request.body.longitude
        ]
        // console.log(params)
        // console.log(insertSql)
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '位置信息添加成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    mag: '位置信息添加失败'
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

module.exports = new Position