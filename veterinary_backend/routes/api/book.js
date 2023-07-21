const express = require('express');
const router = express.Router();
const verifyRoles = require("../../middleware/verifyRoles");
const ROLES_LIST = require("../../config/roles")
const { getAllBooks, createNewBook, updateBook, deleteBook, getBook} = require('../../controller/book');

router.route('/')
.get(getAllBooks)
.post(verifyRoles(ROLES_LIST.admin), createNewBook)
.put(verifyRoles(ROLES_LIST.admin), updateBook)
.delete(verifyRoles(ROLES_LIST.admin), deleteBook)

router.route('/:id')
.get(getBook)

module.exports = router;