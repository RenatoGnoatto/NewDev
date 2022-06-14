var cars = []
const storage = localStorage
var carEditing = null

const onStorage = () => {
  const wareHouse = storage.getItem('wareHouse')
  return wareHouse ? JSON.parse(wareHouse) : []
}
cars = onStorage()

const percentageBar = () => {
  var totalCars = 0
  cars.forEach(item => {
    totalCars += +item.quantity
  })

  var totalPercentage = totalCars / 2

  const elem = document.getElementById('myBar')
  const width = totalPercentage
  elem.style.width = `${width}%`
  elem.innerHTML = `${width}% ${totalCars}/200`
}

percentageBar()

const isWareHouseFull = initialQuantity => {
  var carsOnStock = +initialQuantity.value

  cars.forEach(item => {
    carsOnStock += +item.quantity
  })
  if (carsOnStock > 200) {
    return true
  } else {
    return false
  }
}

const addingCar = car => {
  var form = document.getElementById('quantityEditForm')
  var initialCars = carEditing.getAttribute('identificador')
  if (isWareHouseFull(document.getElementById('quantityEditInput')) == true) {
    alert('A quantidade passa dos limites')
    return
  } else {
    cars[initialCars].quantity +=
      +document.getElementById('quantityEditInput').value
    storage.setItem('wareHouse', JSON.stringify(cars))
    form.remove()
    createList()
    percentageBar()
  }
}

const subtractCar = car => {
  var form = document.getElementById('quantityEditForm')
  var initialCars = carEditing.getAttribute('identificador')
  cars[initialCars].quantity -=
    +document.getElementById('quantityEditInput').value
  storage.setItem('wareHouse', JSON.stringify(cars))
  form.remove()
  createList()
  percentageBar()
}

const onClickEdit = item => {
  carEditing = item
  const iten = item
  var form = document.getElementById('quantityEditForm')
  if (form) {
    form.remove()
  } else {
    form = document.createElement('form')
    const label = document.createElement('label')
    label.innerHTML = 'Insira a quantidade a ser modificada'
    form.setAttribute(
      'style',
      'background-color: #067d1070; width:60rem; height:10rem;'
    )
    form.setAttribute('id', 'quantityEditForm')

    const input = document.createElement('input')
    input.setAttribute('style', 'width:50rem; margin-top:1rem')
    input.setAttribute('type', 'number')
    input.setAttribute('id', 'quantityEditInput')

    const divButton = document.createElement('div')

    const addButton = document.createElement('button')
    addButton.innerHTML = 'Add'
    addButton.setAttribute('id', 'addButton')
    addButton.setAttribute(
      'style',
      'width:5rem; height:2rem; border-radius:10rem; border:0; margin:0.5rem'
    )
    addButton.setAttribute('onclick', 'addingCar(this)')

    const removeButton = document.createElement('button')
    removeButton.innerHTML = 'Minus'
    removeButton.setAttribute('id', 'removeButton')
    removeButton.setAttribute(
      'style',
      'width:5rem; height:2rem; border-radius:10rem; border:0; margin:0.5rem'
    )
    removeButton.setAttribute('onclick', 'subtractCar(this)')

    divButton.appendChild(addButton)
    divButton.appendChild(removeButton)

    form.appendChild(label)
    form.appendChild(input)
    form.appendChild(divButton)

    document.getElementById('quantityEdit').appendChild(form)

    const plusButton = document.getElementById('addButton')
    const minusButton = document.getElementById('removeButton')

    const car = item
    return car
  }
}

const span = identificador => {
  const span = document.createElement('span')

  const quantityEdit = document.createElement('i')
  quantityEdit.setAttribute('class', 'fas fa-plus-minus')
  quantityEdit.setAttribute('title', 'add or remove cars')
  quantityEdit.setAttribute('identificador', `${identificador}`)
  quantityEdit.setAttribute('onclick', `onClickEdit(this)`)
  quantityEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem;')

  span.appendChild(quantityEdit)
  return span
}

const createList = () => {
  var ul = document.querySelector('ul')
  if (ul) {
    ul.remove()
  }

  ul = document.createElement('ul')
  cars.forEach((item, index) => {
    const li = document.createElement('li')
    li.innerHTML = `Brand: ${item.brand};
    Model: ${item.model};
    Year: ${item.year};
    Quantity: ${item.quantity}`

    li.appendChild(span(index))
    ul.appendChild(li)
  })
  document.getElementById('list').appendChild(ul)
}

createList()
const register = event => {
  event.preventDefault()

  const car = {
    brand: document.getElementById('brand').value,
    model: document.getElementById('model').value,
    year: document.getElementById('year').value,
    quantity: 0
  }
  if (!car.brand || !car.model || !car.year) {
    alert('ALL THE INPUTS NEED CONTENT')
    return
  }
  cars.push(car)
  storage.setItem('wareHouse', JSON.stringify(cars))
  createList()
  document.querySelector('form').reset()
}

const botaoDeAdicionar = document.getElementById('addBtn')
botaoDeAdicionar.addEventListener('click', register)
