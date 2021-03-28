const express = require('express');
const router = express.Router();
const { sequelize } = require('../connect');

router.get('/questions', (req, res) => {
    sequelize.query('SELECT * FROM questions', {
        type: sequelize.QueryTypes.SELECT
    })
        .then((questions) => {
            res.status(200).json({
                data: questions
            })
        })
        .catch((error) => {
            console.log(error);
        })
});

router.get('/question/:id', (req, res) => {
    const id = req.params.id;
    sequelize.query('SELECT * FROM questions WHERE id_q = ?', {
        replacements: [id]
    })
        .then((question) => {
            res.status(200).json({
                data: question[0]
            })
        })
        .catch((error) => {
            console.log(error);
        })
});

router.get('/q/:id', (req, res)=>{
    const id = req.params.id;
    sequelize.query('SELECT COUNT(*) FROM questions WHERE category = ?', {
        replacements: [id]
    })
    .then((quantity)=>{
        res.status(200).json({
            message: quantity[0]
        })
    })
    .catch((error)=>{
        console.log(error);
    })
});

router.post('/question', (req, res) => {
    const { email, name, question, category } = req.body;
    sequelize.query('INSERT INTO questions VALUES (null, null, ?, ?, ?, ?)', {
        replacements: [email, name, question, category]
    })
        .then((question) => {
            res.status(201).json({
                message: "Question add sucessfully"
            })
        })
        .catch((error) => {
            console.log(error);
        })
});

module.exports = router;