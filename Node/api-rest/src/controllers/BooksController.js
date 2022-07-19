const database = require('../database/knex')

exports.get = async (req, res) => {
  try {
    const books = await db.select('*').from('books')
    res.status(200).send(books)
  } catch (error) {
    return res.status(500).send({ error: error?.message || e })
  }
}

exports.post = async (req, res) => {
  try {
    const bookToPost = req.body
    await database.insert(bookToPost.title)
    res.status(200).send(`${bookToPost.title} foi inserido`)
  } catch (error) {
    return res.status(500).send({ error: error?.message || e })
  }
}

exports.deleteId = (req, res) => {
  try {
    const params = req.params

    await database
      .delete({ name: req.body.name })
      .from('books')
      .where({ id: params.id })

    res.status(200).send('Registro deletado com sucesso')
  } catch (error) {
    return res.status(500).send({ error: error?.message || error })
  }
}

exports.putId = (req, res) => {
  try {
    const params = req.params
    const [firstAuthor] = await database
      .select('*')
      .from('books')
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
      .from('books')
      .where({ id: firstAuthor.id })

    res.status(200).send('Registro editado com sucesso!')
  } catch (error) {
    return res.status(500).send({ error: error?.message || error })
  }
}

exports.patchId = (req, res) => {
  try {
    const params = req.params
    const [firstAuthor] = await database
      .select('*')
      .from('books')
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
      .from('books')
      .where({ id: firstAuthor.id })

    await database
      .update({ name: req.body.name })
      .from('books')
      .where({ id: firstAuthor.id })

    res.status(200).send('Registro reescrito com sucess')
  } catch (error) {
    return res.status(500).send({ error: error?.message || error })
  }
}
