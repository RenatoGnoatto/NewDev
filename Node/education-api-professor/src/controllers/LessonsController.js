const knex = require('../databases/knex');
const fieldValidator = require('../utils/FieldValidator');

exports.create = async (req, res) => {
  try {
    const invalidFields = fieldValidator(req.body, [
      'title',
      'description',
      'videoId',
      'instructorId',
      'courseId'
    ]);

    if (invalidFields.length || !req.body) {
      return res.status(400).send({
        status: 'invalid request',
        invalidFields
      });
    }

    const requiredFields = ['title', 'videoId', 'instructorId', 'courseId']

  } catch (e) {
    return res.status(400).send({ error: e?.message || e });
  }
};
