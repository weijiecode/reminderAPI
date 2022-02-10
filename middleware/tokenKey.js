const jwt = require('jsonwebtoken')
module.exports = async (request, resposne, next) => {
    if (request.headers.authorization) {
        try {
            // const token = String(request.headers.authorization || '').split(' ').pop()
            // let result = jwt.decode(token, require('../config/index').tokenKey)
            // split用空格分割 分割后为一个数组 pop取最后一个元素
            const token = String(request.headers.authorization || '').split(' ').pop()
            // token解密
            const tokenData = jwt.verify(token, require('../config/index').tokenKey)
            if (tokenData) {
                //在controller/test.js里面的reuqest请求里面有一个name值
                console.log(tokenData)
                request.username = tokenData.name
                next()
            }
        } catch (error) {
            resposne.json({
                code: -201,
                msg: "token失效,请重新输入"
            })
        }
    }
}