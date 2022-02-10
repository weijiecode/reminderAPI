const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

router.post('/insertbacklog',tokenK,require('../controller/backlog').createbacklog)

module.exports = router