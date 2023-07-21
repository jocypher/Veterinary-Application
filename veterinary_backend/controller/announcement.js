const Announcement = require('../models/Announcement');

const getAllAnnouncements = async (req, res) => {
    const caption = await Announcement.find();
    if (!caption) return res.status(204).json({message: "No announcements available"});
    res.status(200).json(caption);

};

const createNewAnnouncement = async (req, res) => {
    const { caption } = req.body;
    if (!caption) return res.status(400);
    const result = await Announcement.create({
        caption: caption
    })
    res.status(201).json(result);
};

const updateAnnouncement = async (req, res) => {
    const { id, caption } = req.body;
    if (!id || !caption) return res.status(400).json({"message": "No announcement selected"})
    const foundAnnouncement = await Announcement.findOne({_id: id}).exec();
    if (!foundAnnouncement) return res.status(204).json({"message": "Announcement not found"});
    foundAnnouncement.caption = caption;
    const result = await foundAnnouncement.save();
    res.status(200).json(result);
};

const deleteAnnouncement = async (req, res) => {
    const { id, caption } = req.body;
    if (!id || !caption) return res.status(400).json({"message": "No announcement selected"});
    const foundAnnouncement = await Announcement.findOne({_id: id}).exec();
    if (!foundAnnouncement) return res.status(204).json({"message": "Announcement not found"});
    const result = foundAnnouncement.deleteOne({_id: id});
    res.status(204).json({"message": "Announcement Deleted"});
};

const getAnnouncement = async (req, res) => {};

module.exports = { getAllAnnouncements, createNewAnnouncement, updateAnnouncement, deleteAnnouncement, getAnnouncement };