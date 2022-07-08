exports.get = (req, res) => {
  const query = req.query
  console.log('API is available', query)
  return res.status(200).send('It was getted')
} 

exports.post = (req, res) => {
  console.log('RECEBENDO DADOS', req.body)
  return res.status(200).send(req.body)
}

exports.deleteById = (req, res) => {
  const params = req.params
  console.log('delete')
}

exports.putById = (req, res) => {
  const params = req.params
  console.log('put')
}

exports.patchById = (req, res) => {
  const params = req.params
  console.log('patch')
}
