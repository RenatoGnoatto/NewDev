const knex = require('../databases/knex');

exports.create = async (req, res) => {
  try {
    const fieldRequired = ['title', 'description'];
    const course = req.body;

    await knex.insert(course).into('courses');

    return res.status(200).send({
      status: 'sucess',
      data: course
    });
  } catch (e) {
    return res.status(500).send({ error: e.message || e });
  }
};
