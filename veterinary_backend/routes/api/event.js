const express = require('express');
const router = express.Router();
const { getAllEvents, createNewEvent, updateEvent, deleteEvent, getEvent } = require('../../controller/event');
const verifyRoles = require("../../middleware/verifyRoles");
const ROLES_LIST = require("../../config/roles")

router.route('/')
.get(getAllEvents)
.post(verifyRoles(ROLES_LIST.admin), createNewEvent)
.put(verifyRoles(ROLES_LIST.admin), updateEvent)
.delete(verifyRoles(ROLES_LIST.admin), deleteEvent)

router.route('/:id')
.get(getEvent)

module.exports = router;