const Contact = require('../models/Contact');

const getAllContacts = async (req, res) => {
    const contacts = await Contact.find();
    if (!contacts) return res.status(204).json({"message": "No contacts available"});
    res.status(200).json(contacts);
}

const createNewContact = async (req, res) => {
    const { title, name, email, officeHours, location } = req.body;
    if (!title || !name || !email) return res.status(400);
    const result = await Contact.create({
        title,
        name,
        email,
        officeHours,
        location
    });
    return res.status(201).json(result);
}

const updateContact = async (req, res) => {
    const { id, title, name, email, officeHours, location } = req.body;
    if (!id || !title || !name || !email) return res.status(400);
    const foundContact = await Contact.findOne({_id: id}).exec();
    if (!foundContact) return res.status(204);
    foundContact.title = title;
    foundContact.name = name;
    foundContact.email = email;
    foundContact.officeHours = officeHours;
    foundContact.location = location;
    const result = await foundContact.save();
    return res.status(200).json(result);
}

const deleteContact = async (req, res) => {
    const { id } = req.body;
    if (!id) return res.status(400);
    const foundContact = await Contact.findOne({ _id: id }).exec();
    if (!foundContact) return res.status(204);
    const result = await foundContact.deleteOne();
    return res.status(204).json(result);
}

const getContact = async (req, res) => {}

module.exports = { getAllContacts, createNewContact, updateContact, deleteContact, getContact }