const New = require('../models/New');

const getAllNews = async (req, res) => {
    const news = await New.find();
    if (!news) return res.status(204).json({"message": "No news available"});
    res.status(200).json(news);
};

const createNewNews = async (req, res) => {
    const { caption, domainName, uploadLink } = req.body;
    if (!caption || !domainName || !uploadLink) return res.status(400);
    const newNews = await New.create({
        caption,
        domainName,
        uploadLink
    })  
    const result = await newNews.save();
    res.status(201).json(result);
};

const updateNews = async (req, res) => {
    const { id, caption, domainName, uploadLink } = req.body;
    if (!id || !caption || !domainName || !uploadLink) return res.status(400);
    const foundNews = await New.findOne({_id: id}).exec();
    if (!foundNews) return res.status(204).json({"message": "No news available"});
    foundNews.caption = caption;
    foundNews.domainName = domainName;
    foundNews.uploadLink = uploadLink;
    const result = await foundNews.save();
    res.status(200).json(result);
};

const deleteNews = async (req, res) => {
    const { id } = req.body;
    if (!id) return res.status(400);
    const foundNews = await New.findOne({_id: id}).exec();
    if (!foundNews) return res.status(204).json({"message": "News not found"});
    const result = await foundNews.deleteOne();
    res.status(204).json(result);
};

const getNews = async (req, res) => {};

module.exports = { getAllNews, createNewNews, updateNews, deleteNews, getNews };