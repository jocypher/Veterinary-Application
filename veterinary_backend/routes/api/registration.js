const express = require('express');
const router = express.Router();
const handleRegistration = require('../../controller/registration')

router.post('/', handleRegistration)

module.exports = router;