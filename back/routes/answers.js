const express = require('express');
const router = express.Router();
const { sequelize } = require('../connect');

router.get('/answers', (req, res) => {
    sequelize.query('SELECT * FROM answers', {
        type: sequelize.QueryTypes.SELECT
    })
        .then((answers) => {
            res.status(200).json({
                message: answers
            })
        })
        .catch((error) => {
            console.log(error);
        })
});

router.get('/answer/:id', (req, res) => {
    const id = req.params.id;
    sequelize.query('SELECT * FROM answers WHERE id_a = ?', {
        replacements: [id]
    })
        .then((answer) => {
            res.status(200).json({
                message: answer[0]
            })
        })
        .catch((error) => {
            console.log(error);
        })
});

router.post('/answer', (req, res) => {
    const { id_q, email, name, answer } = req.body;
    sequelize.query('INSERT INTO answers VALUES (null, ?, null, ?, ?, ?)', {
        replacements: [id_q, email, name, answer]
    })
        .then((answer) => {
            res.status(201).json({
                message: "Answer add sucessfully"
            })
        })
        .catch((error) => {
            console.log(error);
        })
});

module.exports = router;