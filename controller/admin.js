const db = require('../core/mysql')
// 时间日期
const moment = require('moment')
const md5 = require('md5')
//token
const jwt = require('jsonwebtoken')
let fs = require('fs');
let path = require('path');

class Admin {
    // 后台管理系统登录
    async adminlogin(request, resposne, next) {
        let loginSql = 'select id,username,nickname,introduction,photo,sex,introduction from admin where username=? and password=?'
        let params = [
            request.body.username,
            md5(request.body.password + require('../config').key)
        ]
        // token加密
        let token = jwt.sign({ name: request.body.username, id: request.body.id }, require('../config/index').tokenKey)
        try {
            // console.log(params)
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

    }
    // 添加登录信息
    async logindata(request, resposne, next) {
        let insertSql = 'insert into admin_login_data(`username`,`createtime`,`ip`)values(?,?,?)'
        let params = [
            request.body.username,
            moment().format('YYYY-MM-DD HH:mm:ss'),
            request.body.ip
        ]
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '添加登录信息成功',
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '添加登录信息失败'
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

    // 查询登录信息
    async selectlogindata(request, resposne, next) {
        let userSql = 'select * from admin_login_data where username=?'
        let parmas = request.username
        try {
            let result = await db.exec(userSql, parmas)
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '查询登录信息成功',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '查询登录信息失败'
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

    // 查询用户名是否被注册
    async selectusername(request, resposne, next) {
        let userSql = 'select username from users where username=?'
        let parmas = request.body.username
        try {
            let result = await db.exec(userSql, parmas)
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '该用户名已被注册',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '该用户名未被注册'
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
    // 查询用户数据
    async selectuserdata(request, resposne, next) {
        let userSql = 'select id,username,nickname,photo,status,phone,email,sex,introduction from users where username=?'
        let params = request.username
        try {
            let result = await db.exec(userSql, params)
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
    // 修改管理员信息
    async updateadmin(request, resposne, next) {
        let updateSql = 'update admin set nickname=?,introduction=?,sex=?,phone=?,email=? where username=?'
        let params = [
            request.body.nickname,
            request.body.introduction,
            request.body.sex,
            request.body.phone,
            request.body.email,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改管理员信息成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改管理员信息失败，请重试'
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
    // 发送用户头像url
    photouploadurl(request, resposne, next) {
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
            request.username
        ]
        //console.log(request.body.oldphoto)
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改用户头像成功'
                })
                // 判断是否有旧头像，更换新头像后删除旧头像
                if (request.body.oldphoto != null) {
                    let delphoto = path.resolve(__dirname, '../public/upload/') + '/' + request.body.oldphoto.split('/').pop()
                    //console.log(delphoto)
                    try { fs.unlinkSync(delphoto); } catch (error) { }
                }
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改用户失败，请重试'
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
    // 修改密码
    async updatepassword(request, resposne, next) {
        let updateSql = 'update users set password=? where username=? and password=?'
        let params = [
            md5(request.body.newpassword + require('../config/index').key),
            request.username,
            md5(request.body.oldpassword + require('../config/index').key)
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改密码成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改密码失败，请重试'
                })
            }
        } catch (error) {
            resposne.json({
                code: -201,
                msg: '服务器异常'
            })
        }
    }


}

module.exports = new Admin