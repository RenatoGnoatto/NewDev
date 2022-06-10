const cars = []
const storage = localStorage

const register = event => {
  event.preventDefault()

  const car = {
    brand: document.getElementById('brand').value,
    model: document.getElementById('model').value,
    year: document.getElementById('year').value
  }

  cars.push(car)
  storage.setItem('wareHouse', JSON.stringify(cars))
  console.log('cars --->', cars)
  document.querySelector('form').reset()
}

const botaoDeAdicionar = document.getElementById('addBtn')
botaoDeAdicionar.addEventListener('click', register)
