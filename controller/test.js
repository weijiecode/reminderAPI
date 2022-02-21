class Test {
    async testcontroller(request, resposne, next){
        //request.name中间件传过来的值
        // console.log(request.name)
        resposne.json({
            data: 'test测试',
        })
    }
}
module.exports = new Test