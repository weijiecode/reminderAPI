const express = require('express')
const server = express()
//解决跨域
const cors = require('cors')

server.use(cors())

// 引入中间件
server.use(express.urlencoded({extended:true}))
server.use(express.json())
//访问一级路由
server.use('/account',require('./routers/account'))
server.use('/test',require('./routers/test'))
server.use('/backlog',require('./routers/backlog'))


server.listen(5001,()=>{
    console.log('server up 5001')
})