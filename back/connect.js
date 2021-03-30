const Sequelize = require('sequelize');
// const sequelize = new Sequelize('mysql://root@localhost:8080/q_a_data');
const sequelize = new Sequelize('mysql://b68f24cee531fa:70ee81eb@us-cdbr-east-03.cleardb.com/heroku_fbceabe4c54c7ac');

module.exports = { sequelize };