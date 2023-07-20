const express = require('express');
const router = express.Router();
const { getAllContacts, createNewContact, updateContact, deleteContact, getContact } = require('../../controller/contact');

router.route('/')
.get(getAllContacts)
.post(createNewContact)
.put(updateContact)
.delete(deleteContact)

router.route('/:id')
.get(getContact);

module.exports = router;