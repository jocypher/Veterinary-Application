const express = require('express');
const router = express.Router();
const verifyRoles = require("../../middleware/verifyRoles");
const ROLES_LIST = require("../../config/roles")
const { getAllContacts, createNewContact, updateContact, deleteContact, getContact } = require('../../controller/contact');

router.route('/')
.get(getAllContacts)
.post(verifyRoles(ROLES_LIST.admin), createNewContact)
.put(verifyRoles(ROLES_LIST.admin), updateContact)
.delete(verifyRoles(ROLES_LIST.admin), deleteContact)

router.route('/:id')
.get(getContact);

module.exports = router;