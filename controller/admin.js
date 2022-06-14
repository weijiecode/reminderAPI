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
        let loginSql = 'select id,username,nickname,phone,email,introduction,photo,sex,introduction from admin where username=? and password=?'
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

    // 查询管理员安全数据
    async selectsafe(request, resposne, next) {
        let userSql = 'select * from admin_safe where username=?'
        let params = request.username
        try {
            let result = await db.exec(userSql, params)
            if (result && result.length >= 1) {
                resposne.json({
                    code: 200,
                    msg: '有该管理员数据',
                    data: result
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '暂无该管理员数据'
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

    // 添加安全信息
    async addsafe(request, resposne, next) {
        let insertSql = 'insert into admin_safe(`username`,`phone`,`question`,`answer`,`qq`)values(?,?,?,?,?)'
        let params = [
            request.username,
            request.body.phone,
            request.body.question,
            request.body.answer,
            request.body.qq
        ]
        try {
            let result = await db.exec(insertSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '添加安全信息成功',
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '添加安全信息失败'
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

    // 修改密保手机
    async updatephone(request, resposne, next) {
        let updateSql = 'update admin_safe set phone=? where username=?'
        let params = [
            request.body.phone,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改密保手机成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改密保手机失败，请重试'
                })
            }
        } catch (error) {
            resposne.json({
                code: -201,
                msg: '服务器异常'
            })
        }
    }

    // 修改密保问题
    async updatequestion(request, resposne, next) {
        let updateSql = 'update admin_safe set question=?,answer=? where username=?'
        let params = [
            request.body.question,
            request.body.answer,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改密保问题成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改密保问题失败，请重试'
                })
            }
        } catch (error) {
            resposne.json({
                code: -201,
                msg: '服务器异常'
            })
        }
    }

    // 修改qq绑定
    async updateqq(request, resposne, next) {
        let updateSql = 'update admin_safe set qq=? where username=?'
        let params = [
            request.body.qq,
            request.username
        ]
        try {
            let result = await db.exec(updateSql, params)
            if (result && result.affectedRows >= 1) {
                resposne.json({
                    code: 200,
                    msg: '修改qq绑定成功'
                })
            } else {
                resposne.json({
                    code: 201,
                    msg: '修改qq绑定失败，请重试'
                })
            }
        } catch (error) {
            resposne.json({
                code: -201,
                msg: '服务器异常'
            })
        }
    }

    // 管理员查询用户所有数据(搜索)
    async selectuser_search(request, resposne, next) {
        let isUser = 'select * from admin where username=?'
        let usernameparams = request.username
        
        try {
            let isUserRes = await db.exec(isUser,usernameparams) 
            if(isUserRes.length>=1){
                let userSql = 'select id,username,nickname,phone,status,email,sex,introduction,createtime from users'
                let params = request.username
                try {
                    let result = await db.exec(userSql, params)
                    if (result && result.length >= 1) {
                        resposne.json({
                            code: 200,
                            msg: '获取所有用户数据成功',
                            data: result
                        })
                    } else {
                        resposne.json({
                            code: 201,
                            msg: '获取所有用户数据失败，请重试'
                        })
                    }
                } catch (error) {
                    resposne.json({
                        code: -201,
                        msg: '服务器异常',
                        error
                    })
                }
            }else {
                resposne.json({
                    code: 201,
                    msg: '无权访问',
                    error
                })
            }    
        } catch (error) {
            resposne.json({
                code: 201,
                msg: '服务器异常',
                error
            })
        }
        
    }

    // 管理员查询用户所有数据（实现分页功能）
    async selectuser(request, resposne, next) {
        let isUser = 'select * from admin where username=?'
        let usernameparams = request.username
        try {
            let isUserRes = await db.exec(isUser,usernameparams) 
            // 查询是否为管理员用户
            if(isUserRes.length>=1){
                // 每页显示的数量
                let pageSize = request.body.pageSize
                // 当前页数
                let currentPage = request.body.currentPage
                // (n-1)*m
                let n = (currentPage-1)*pageSize
                let userCount = 'select count(id) as num from users'
                let userSql = 'select id,username,nickname,phone,status,email,sex,introduction,createtime from users limit ?, ?'
                let params = [
                    n,
                    pageSize
                ]
                try {
                    let resultCount = await db.exec(userCount)
                    let result = await db.exec(userSql, params)
                    if (result && result.length >= 1) {
                        resposne.json({
                            code: 200,
                            msg: '获取指定页数用户数据成功',
                            data: result,
                            count: JSON.stringify(resultCount)
                        })
                    } else {
                        resposne.json({
                            code: 201,
                            msg: '获取指定页数用户数据失败，请重试'
                        })
                    }
                } catch (error) {
                    resposne.json({
                        code: -201,
                        msg: '服务器异常',
                        error
                    })
                }
            }else {
                resposne.json({
                    code: 201,
                    msg: '无权访问',
                    error
                })
            }    
        } catch (error) {
            resposne.json({
                code: 201,
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

    // 修改管理员密码
    async updatepassword(request, resposne, next) {
        let updateSql = 'update admin set password=? where username=? and password=?'
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

    // 管理员删除指定ID用户
    async deleteuser(request, resposne, next) {
        let isUser = 'select * from admin where username=?'
        let usernameparams = request.username
        try {
            let isUserRes = await db.exec(isUser,usernameparams) 
            // 查询是否为管理员用户
            if(isUserRes.length>=1){
                let delSql = 'delete from users where id=?'
                let paramsid = request.body.id
                try {
                    let resultdel = await db.exec(delSql, paramsid)
                    // console.log(resultdel)
                    if (resultdel && resultdel.affectedRows >= 1) {
                        resposne.json({
                            code: 200,
                            msg: '删除指定ID用户成功',
                            data: resultdel,
                        })
                    } else {
                        resposne.json({
                            code: 201,
                            msg: '删除指定ID用户失败，请重试'
                        })
                    }
                } catch (error) {
                    resposne.json({
                        code: -201,
                        msg: '服务器异常',
                        error
                    })
                }
            }else {
                resposne.json({
                    code: 201,
                    msg: '无权访问',
                    error
                })
            }    
        } catch (error) {
            resposne.json({
                code: 201,
                msg: '服务器异常',
                error
            })
        }
    }
    //  管理员修改用户信息
    async updateuser(request, resposne, next) {
        let isUser = 'select * from admin where username=?'
        let usernameparams = request.username
        try {
            let isUserRes = await db.exec(isUser,usernameparams) 
            // 查询是否为管理员用户
            if(isUserRes.length>=1){
                let updateSql = 'update users set nickname=?,introduction=?,sex=?,phone=?,email=?,status=? where id=?'
                let params = [
                    request.body.nickname,
                    request.body.introduction,
                    request.body.sex,
                    request.body.phone,
                    request.body.email,
                    request.body.status,
                    request.body.id
                ]
                try {
                    let result = await db.exec(updateSql, params)
                    // console.log(result)
                    // console.log(params)
                    if (result && result.affectedRows >= 1) {
                        resposne.json({
                            code: 200,
                            msg: '修改该用户信息成功'
                        })
                    } else {
                        resposne.json({
                            code: 201,
                            msg: '修改该用户信息失败，请重试'
                        })
                    }
                } catch (error) {
                    resposne.json({
                        code: -201,
                        msg: '服务器异常',
                        error
                    })
                }
            }else {
                resposne.json({
                    code: 201,
                    msg: '无权访问',
                    error
                })
            }    
        } catch (error) {
            resposne.json({
                code: 201,
                msg: '服务器异常',
                error
            })
        }
    }

    // 管理员添加用户
    async adduser(request, resposne, next) {
        let isUser = 'select * from admin where username=?'
        let usernameparams = request.username
        try {
            let isUserRes = await db.exec(isUser,usernameparams) 
            if(isUserRes.length>=1){
                let insertSql = 'insert into users(`username`,`password`,`nickname`,`sex`,`phone`,`email`,`introduction`,`createtime`)values(?,?,?,?,?,?,?,?)'
                let params = [
                    request.body.username,
                    md5(request.body.password + require('../config/index').key),
                    request.body.nickname,
                    request.body.sex,
                    request.body.phone,
                    request.body.email,
                    request.body.introduction,
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
            }else {
                resposne.json({
                    code: 201,
                    msg: '无权访问',
                    error
                })
            }    
        } catch (error) {
            resposne.json({
                code: 201,
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


}

module.exports = new Admin