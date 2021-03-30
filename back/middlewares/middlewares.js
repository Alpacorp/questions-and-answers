const { sequelize } = require('../connect');

exports.validateSameUser = (req, res, next)=>{
    const { id_q, email } = req.body;
    sequelize.query('SELECT * FROM questions WHERE id_q = ?', {
        replacements: [id_q]
    })
    .then((question)=>{
        for (const i of question) {
            if (email === i.email_q) {
                res.status(400).json({
                    message: "No puedes responder una pregunta que tu mismo has generado"
                });
            }else{
                next();
            };
        };
    })
}