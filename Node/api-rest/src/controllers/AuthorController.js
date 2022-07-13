const database = require('../database/knex')
const logger = require('../utils/logger')

exports.get = async (req, res) => {
  try {
    const sql = await database.select('*').from('authors')
    console.log(a)
    return res.status(200).send(sql)
  } catch (error) {
    logger(error.message)
    return res.status(500).send({ error: error?.message || e })
  }
}

exports.post = async (req, res) => {
  try {
    await database.insert(req.body)
    return res.status(200).send({
      status: 'success',
      data: await database.select('*').from('authors')
    })
  } catch (error) {
    logger(error)
    return res.status(500).send({ error: error?.message || e })
  }
}

exports.deleteById = async (req, res) => {
  try {
    const params = req.params

    await database
      .delete({ name: req.body.name })
      .from('authors')
      .where({ id: params.id })

    res.status(200).send('Registro deletado com sucesso')
  } catch (error) {
    return res.status(500).send({ error: error?.message || error })
  }
}

exports.put = async (req, res) => {
  try {
    const params = req.params
    const [firstAuthor] = await database
      .select('*')
      .from('authors')
      .where({ id: params.id })
      .limit(1)

    if (!firstAuthor) {
      return res
        .status(404)
        .send(`O registro com id ${params.id} não foi encontrado`)
    }

    const newAuthor = req.body

    await database
      .update({ name: newAuthor.name })
      .from('authors')
      .where({ id: firstAuthor.id })

    res.status(200).send('Registro editado com sucesso!')
  } catch (error) {
    return res.status(500).send({ error: error?.message || error })
  }
}

exports.patchById = async (req, res) => {
  try {
    const params = req.params
    const [firstAuthor] = await database
      .select('*')
      .from('authors')
      .where({ id: params.id })
      .limit(1)

    if (!firstAuthor) {
      return res
        .status(404)
        .send(`O registro com id ${params.id} não foi encontrado`)
    }

    const newAuthor = req.body

    await database
      .delete({ name: newAuthor.name })
      .from('authors')
      .where({ id: firstAuthor.id })

    await database
      .update({ name: req.body.name })
      .from('authors')
      .where({ id: firstAuthor.id })

    res.status(200).send('Registro reescrito com sucess')
  } catch (error) {
    return res.status(500).send({ error: error?.message || error })
  }
}
