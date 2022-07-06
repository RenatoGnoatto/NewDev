const example = 'example'
const loadData = async () => {
  const response = await fetch('http://localhost:3002/')

  console.log('server response ssj1', await response.json)
}

loadData()

fetch('http://localhost:3001/')
  .then(response => {
    console.log('funfo ', response, '/n')
  })
  .catch(error => {
    console.log('num funfo', error)
  })
  .finally(() => {
    console.log('fumfonamento acabô')
  })
