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

exports.deleteId = () => {}

exports.putId = () => {}

exports.patchId = () => {}
