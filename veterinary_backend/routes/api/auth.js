const express = require('express');
const router = express.Router();
const handleAuth = require('../../controller/auth')

router.post('/', handleAuth);

module.exports = router;