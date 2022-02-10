const db = require('../core/mysql')
// 时间日期
const moment = require('moment')
const md5 = require('md5')
//token
const jwt = require('jsonwebtoken')

class Account {
    // 注册
    async register(request, resposne, next) {
        let insertSql = 'insert into users(`username`,`password`,`createtime`)values(?,?,?)'
        let params = [
            request.body.reg_username,
            md5(request.body.reg_password+require('../config/index').key),
            moment().format('YYYY-MM-DD HH:mm:ss')
        ]
        console.log(params)
        try{
            let result = await db.exec(insertSql,params)
            if(result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '注册成功',
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '注册失败'
                })
            }
        } catch (error){
            resposne.json({
                code: -201,
                msg: '服务器异常',
                error
            })
        }
    }
    // 登录
    async login(request, resposne, next){
        let loginSql = 'select `id`,`username`,`createtime` from users where username=? and password=? and status=1'
        let params = [
            request.body.username,
            md5(request.body.password+require('../config').key)
        ]
        console.log(params)
        // token加密
        const token = jwt.sign({name:request.body.username,id:request.body.id}, require('../config/index').tokenKey, {
            expiresIn : 60*60// 授权时效1小时
        })
        try{
            const result = await db.exec(loginSql,params)
            console.log(result[0])

            if(result && result.length >= 1){
                resposne.json({
                    code: 200,
                    msg: '登录成功',
                    data: result[0],
                    token: token
                })
            } else{
                resposne.json({
                    code: 201,
                    msg: '账号或密码错误'
                })
            }
        } catch(error){
            resposne.json({
                code: -201,
                msg: '服务器异常',
                error
            })
        }

        // function createToken(data){
        //     return jwt.encode({
        //         exp: Date.now()+(1000*60*60*24),
        //         info: data
        //     },require('../config/index').tokenKey)
        // }
        
    }
}

module.exports = new Account