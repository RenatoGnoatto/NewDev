const database = require('../database/knex')

exports.get = async (req, res) => {
  try {
    const sql = await database.select('*').from('authors')
    console.log('sql', sql)
    return res.status(200).send(sql)
  } catch (error) {
    return res.status(500).send({ error: error?.message || e })
  }
}

exports.post = async (req, res) => {
  try {
    await database('authors').insert(req.body)
    return res.status(200).send({
      status: 'success',
      data: await database.select('*').from('authors')
    })
  } catch (error) {
    return res.status(500).send({ error: error?.message || e })
  }
}

exports.deleteById = (req, res) => {
  const params = req.params
  console.log('delete')
  return res.status(200).send('params', params)
}

exports.putById = (req, res) => {
  const params = req.params
  console.log('put')
  return res.status(200).send('params', params)
}

exports.patchById = (req, res) => {
  const params = req.params
  console.log('patch')
  return res.status(200).send('params', params)
}
