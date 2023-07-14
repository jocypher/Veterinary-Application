const express = require('express');
const router = express.Router;
const { getAllBooks, createNewBook, updateBook, deleteBook, getBook} = require('../../controller/book');

router.route('/')
.get(getAllBooks)
.post(createNewBook)
.put(updateBook)
.delete(deleteBook)

router.router('/:id')
.get(getBook)

module.exports = router;