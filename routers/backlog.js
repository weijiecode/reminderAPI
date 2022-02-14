const express = require('express')
const router = express.Router()
const tokenK = require('../middleware/tokenKey')

router.post('/insertbacklog',tokenK,require('../controller/backlog').createbacklog)
router.post('/selectbacklog',tokenK,require('../controller/backlog').selectbacklog)
router.post('/updatebacklog',tokenK,require('../controller/backlog').updatedone)
router.post('/updatecontents',tokenK,require('../controller/backlog').updatecontents)
router.post('/deletebacklog',tokenK,require('../controller/backlog').delebacklog)

module.exports = router