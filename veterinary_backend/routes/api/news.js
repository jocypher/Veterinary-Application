const express = require('express');
const router = express.Router;
const { getAllNews, createNewNews, updateNews, deleteNews, getNews } = require('../../controller/news');

router.route('/')
.get(getAllNews)
.post(createNewNews)
.put(updateNews)
.delete(deleteNews)

router.route('/:id')
.get(getNews)

module.exports = router;