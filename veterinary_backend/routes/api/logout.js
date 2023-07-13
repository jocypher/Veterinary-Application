const express = require('express');
const router = express.Router();
const handleLogout = require('../../controller/logout')

router.post('/', handleLogout);

module.exports = router;