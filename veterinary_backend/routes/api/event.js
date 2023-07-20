const express = require('express');
const router = express.Router();
const { getAllEvents, createNewEvent, updateEvent, deleteEvent, getEvent } = require('../../controller/event');

router.route('/')
.get(getAllEvents)
.post(createNewEvent)
.put(updateEvent)
.delete(deleteEvent)

router.route('/:id')
.get(getEvent)

module.exports = router;