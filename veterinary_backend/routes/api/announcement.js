const express = require('express');
const router = express.Router();
const verifyRoles = require("../../middleware/verifyRoles");
const ROLES_LIST = require("../../config/roles")
const { getAllAnnouncements, createNewAnnouncement, updateAnnouncement, deleteAnnouncement, getAnnouncement } = require('../../controller/announcement');

router.route('/')
.get(getAllAnnouncements)
.post(verifyRoles(ROLES_LIST.admin), createNewAnnouncement)
.put(verifyRoles(ROLES_LIST.admin), updateAnnouncement)
.delete(verifyRoles(ROLES_LIST.admin), deleteAnnouncement) 

router.route('/:id')
.get(getAnnouncement)

module.exports = router;