const db = require('../core/mysql')
// 时间日期
const moment = require('moment')
const md5 = require('md5')
//token
const jwt = require('jsonwebtoken')
let fs = require('fs');
let path = require('path');

class Account {
    // 注册
    async register(request, resposne, next) {
        let insertSql = 'insert into users(`username`,`password`,`createtime`)values(?,?,?)'
        let params = [
            request.body.reg_username,
            md5(request.body.reg_password + require('../config/index').key),
            moment().format('YYYY-MM-DD HH:mm:ss')
        ]
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.affectedRows >= 1) {
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
        } catch (error) {
            resposne.json({
                code: -201,
                msg: '服务器异常',
                error
            })
        }
    }
    // 登录
    async login(request, resposne, next) {
        let loginSql = 'select * from users where username=? and password=? and status=1'
        let params = [
            request.body.username,
            md5(request.body.password + require('../config').key)
        ]
        // console.log(params)
        // token加密
        let token = jwt.sign({ name: request.body.username, id: request.body.id }, require('../config/index').tokenKey, {
            expiresIn: 60 * 60 * 24// 授权时效24小时
        })
        try {
            let result = await db.exec(loginSql, params)
            // console.log(result[0])
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '登录成功',
                    data: result[0],
                    token: token
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '账号或密码错误'
                })
            }
        } catch (error) {
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
    // 查询用户数据
    async selectuserdata(request, resposne, next) {
        let userSql = 'select * from users where username=?'
        let parmas = request.body.username
        try {
            let result = await db.exec(userSql, parmas)
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '获取用户数据成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '获取用户数据失败，请重试'
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
    // 修改用户信息
    async updatemycenter(request, resposne, next){
        let updateSql = 'update users set nickname=?,introduction=?,sex=?,phone=?,email=? where username=?'
        let params = [
            request.body.nickname,
            request.body.introduction,
            request.body.sex,
            request.body.phone,
            request.body.email,
            request.body.username
        ]
        try{
            let result = await db.exec(updateSql,params)
            if(result && result.affectedRows >= 1){
                resposne.json({
                    code: 200,
                    msg: '修改用户数据成功'
                })
            }else{
                resposne.json({
                    code: 201,
                    msg: '修改用户数据失败，请重试'
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
    // 发送用户头像url
    photouploadurl(request, resposne, next){
        const file = request.file
        file.url = `http://localhost:5001/public/upload/${file.filename}`
        resposne.json({
            code: 202,
            data: file
        })
    }
    // 修改用户头像
    async updatephoto(request, resposne, next) {
        let updateSql = 'update users set photo=? where username=?'
        let params = [
            request.body.photo,
            request.body.username
        ]
        try{
            let result = await db.exec(updateSql,params)
            if(result && result.affectedRows >= 1){
                resposne.json({
                    code: 200,
                    msg: '修改用户头像成功'
                })
                let delphoto = path.resolve(__dirname, '../public/upload/')+'/'+request.body.oldphoto.split('/').pop()
                //console.log(delphoto)
                try{fs.unlinkSync(delphoto);}catch(error){}
            }else{
                resposne.json({
                    code: 201,
                    msg: '修改用户失败，请重试'
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
    // 修改密码
    async updatepassword(request, resposne, next) {
        let updateSql = 'update users set password=? where username=? and password=?'
        let params = [
            md5(request.body.newpassword + require('../config/index').key),
            request.body.username,
            md5(request.body.oldpassword + require('../config/index').key)
        ]
        try{
            let result = await db.exec(updateSql,params)
            if(result && result.affectedRows >= 1){
                resposne.json({
                    code: 200,
                    msg: '修改密码成功'
                })
            }else {
                resposne.json({
                    code: 201,
                    msg: '修改密码失败，请重试'
                })
            }
        }catch(error){
            resposne.json({
                code: -201,
                msg: '服务器异常'
            })
        }
    }
}

module.exports = new Account