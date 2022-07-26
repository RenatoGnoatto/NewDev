const knex = require('../databases/knex');
const fieldValidator = require('../utils/FieldValidator');
const { index } = require('./IndexController');

exports.create = async (req, res) => {
  try {
    const invalidFields = fieldValidator(req.body, [
      'title',
      'description',
      'videoId',
      'instructorId',
      'courseId'
    ]);

    if (invalidFields.length || !Object.keys(req.body).length) {
      return res.status(400).send({
        status: 'Requisção inválida',
        invalidFields
      });
    }

    const requiredFields = ['title', 'videoId', 'instructorId', 'courseId'];

    const requiredFieldsExists = [];
    requiredFields.forEach(item => {
      if (!req.body[item]) {
        requiredFieldsExists.push(item);
      }
    });

    if (requiredFields.length && requiredFieldsExists.length) {
      return res.status(400).send({
        status: 'Campos obrigatórios não informados.',
        requiredFields: requiredFieldsExists
      });
    }

    const [course] = await knex
      .select('*')
      .from('courses')
      .where({ id: Number(req.body.courseId) });

    if (!course) {
      return res.status(404).send({
        status: 'Curso não encontrado'
      });
    }

    const [instructor] = await knex
      .select('*')
      .from('instructors')
      .where({ id: Number(req.body.instructorId) });

    if (!instructor) {
      return res.status(404).send({
        status: 'Instrutor não encontrado'
      });
    }

    const { title, videoId, description } = req.body;
    const [lessonCreatedId] = await knex
      .insert({
        title,
        videoId,
        instructorId: instructor.id,
        courseId: course.id,
        description: description ? description : null
      })
      .into('lessons');

    console.log('sa');
    const [lessonCreated] = await knex
      .select('*')
      .from('lessons')
      .where({ id: lessonCreatedId });
    return res.status(200).send({
      status: 'sucess',
      data: lessonCreated
    });
  } catch (e) {
    return res.status(500).send({ error: e.message || e });
  }
};
