const db = require('../databases/knex');

exports.index = async (req, res) => {
  try {
    await db.select('*').from('knex_migrations');
    return res.send('API education is available');
  } catch (e) {
    res.status(500).send(e.message);
  }
};
