const Sequelize = require('sequelize');
const sequelize = new Sequelize('mysql://root@localhost:8080/q_a_data');

module.exports = { sequelize };