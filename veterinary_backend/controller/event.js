const Event = require('../models/Event');

const getAllEvents = async (req, res) => {
    const events = await Event.find();
    if (!events) return res.status(204).json({"message": "No events available"});
    res.status(200).json(events);
};

const createNewEvent = async (req, res) => {
    const { event, eventDate } = req.body;
    if (!event || !eventDate) return res.status(400);
    const result = await Event.create({
        event,
        eventDate
    });
    res.status(201).json(result);
};

const updateEvent = async (req, res) => {
    const { id, event, eventDate } = req.body;
    if (!id || !event || !eventDate) return res.status(400);
    const foundEvent = await Event.findOne({_id: id}).exec();
    if (!foundEvent) return res.status(204);
    foundEvent.event = event;
    foundEvent.eventDate = eventDate;
    const result = await foundEvent.save();
    res.status(200).json(result);
};

const deleteEvent = async (req, res) => {
    const { id } = req.body;
    if (!id) return res.status(400);
    const foundEvent = await Event.findOne({_id: id}).exec();
    if (!foundEvent) return res.status(204);
    const result = await foundEvent.deleteOne();
    res.status(204).json(result);
};

const getEvent = async (req, res) => {};

module.exports = { getAllEvents, createNewEvent, updateEvent, deleteEvent, getEvent };