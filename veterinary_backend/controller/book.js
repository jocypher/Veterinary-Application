const Book = require('../models/Book');

const getAllBooks = async (req, res) => {
    const books = await Book.find();
    if (!books) return res.status(204).json({"message": "No books available"});
    res.status(200).json(books);
}

const createNewBook = async (req, res) => {
    const { title, author, year, publisher, pageNumber, uploadLink } = req.body
    if (!title || !author || !uploadLink) return res.status(400);
    const result = await Book.create({
        title,
        author,
        year,
        publisher,
        pageNumber,
        uploadLink
    })
    res.status(201).json(result);
}

const updateBook = async (req, res) => {
    const { id, title, author, year, publisher, pageNumber, uploadLink } = req.body;
    if (!id || !title || !author || !uploadLink) return res.status(400);
    const foundBook = await Book.findOne({_id: id}).exec();
    if (!foundBook) return res.status(204)
    foundBook.title = title;
    foundBook.author = author;
    foundBook.year = year;
    foundBook.publisher = publisher;
    foundBook.pageNumber = pageNumber;
    foundBook.uploadLink = uploadLink;
    const result = await foundBook.save();
    res.status(200).json(result);
}

const deleteBook = async (req, res) => {
    const { id } = req.body;
    if (!id) return res.status(400);
    const foundBook = await Book.findOne({_id: id}).exec();
    if (!foundBook) return res.status(204);
    const result = await foundBook.deleteOne();
    res.status(204).json(result);
}

const getBook = async (req, res) => {}

module.exports = { getAllBooks, createNewBook, updateBook, deleteBook, getBook };