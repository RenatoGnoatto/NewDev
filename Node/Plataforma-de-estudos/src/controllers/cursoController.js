const database = require('../databases/knex');
const logger = require('../utils/logger');

//cursos

exports.getCourses = async (req, res) => {
  const sql = await database.select('*').from('courses');

  return res.status(200).send(sql);
};

exports.postCourse = async (req, res) => {
  await database('courses').insert(req.body);

  res.status(200).send(req.body, ' Inserido com sucesso');
};
