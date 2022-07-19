const knex = require('../databases/knex');
//const fieldValidator = require('../databases/field-validator');

exports.create = async (req, res) => {
  try {
    const invalidFields = fieldValidator(req.body, ['fullName', 'avatarUrl']);

    if (invalidFields.length) {
      return res.status(400).send({ status: 'Invalid request', invalidFields });
    }

    const [instructorId] = await knex.insert(req.body).into('instructors');

    const [instructorCreated] = await knex
      .select('*')
      .from('instructors')
      .into(instructorId);
  } catch (e) {
    return res.status(500).send({ error: e?.message || e });
  }
};
