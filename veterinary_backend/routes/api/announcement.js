const express = require('express');
const router = express.Router();
const { getAllAnnouncements, createNewAnnouncement, updateAnnouncement, deleteAnnouncement, getAnnouncement } = require('../../controller/announcement');

router.route('/')
.get(getAllAnnouncements)
.post(createNewAnnouncement)
.put(updateAnnouncement)
.delete(deleteAnnouncement)

router.route('/:id')
.get(getAnnouncement)

module.exports = router;