var cars = []
const storage = localStorage
var carEditing = null

const loadData = async () => {
  const response = await fetch('http://localhost:1000/')
  console.log('iiiihul', await response.json)
}

loadData()

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
  console.log('aaaa', totalCars)
  var totalPercentage = totalCars / 2
  const elem = document.getElementById('myBar')
  const width = totalPercentage
  elem.style.width = `${width}%`
  elem.innerHTML = `${totalCars}/200`
}

const isWareHouseFull = (initialQuantity, operation) => {
  if (operation == 'add') {
    var carsOnStock = +initialQuantity.value
  } else if (operation == 'minus') {
    var carsOnStock = 0 - +initialQuantity.value
  }

  cars.forEach(item => {
    carsOnStock += +item.quantity
  })
  return +carsOnStock
}

const operation = () => {
  event.preventDefault()
  const add = document.getElementById('addInput').checked
  const minus = document.getElementById('removeInput').checked

  add == true
    ? addingCar()
    : minus == true
    ? subtractCar()
    : console.log('fudeu')
}

const addingCar = car => {
  var form = document.getElementById('quantityEditForm')
  var initialCars = carEditing.getAttribute('identificador')
  if (
    isWareHouseFull(document.getElementById('quantityEditInput'), 'add') > 200
  ) {
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
  if (
    isWareHouseFull(document.getElementById('quantityEditInput'), 'minus') < 0
  ) {
    alert('Estoque não tem carros o suficiente')
    return
  } else {
    cars[initialCars].quantity -=
      +document.getElementById('quantityEditInput').value
    storage.setItem('wareHouse', JSON.stringify(cars))
    form.remove()
    createList()
    percentageBar()
  }
}

const onClickEdit = item => {
  carEditing = item

  var form = document.getElementById('quantityEditForm')
  if (form) {
    form.remove()
  } else {
    form = document.createElement('form')
    form.setAttribute(
      'style',
      'background-color: #067d1070; width:70rem; height:20rem;'
    )
    form.setAttribute('id', 'quantityEditForm')

    const label = document.createElement('label')
    label.innerHTML = 'Insira a quantidade a ser modificada'
    label.setAttribute('style', 'margin-top:2rem')

    const labelDiv = document.createElement('div')
    labelDiv.setAttribute('style', 'margin-top:2rem')
    const inputDiv = document.createElement('div')

    const input = document.createElement('input')
    input.setAttribute('style', 'width:50rem; margin-top:1rem')
    input.setAttribute('type', 'number')
    input.setAttribute('id', 'quantityEditInput')

    const formDiv = document.createElement('form')

    const addLabel = document.createElement('label')
    addLabel.setAttribute('for', 'addInput')
    addLabel.setAttribute('style', 'margin-left:5rem; margin-right:5rem')
    addLabel.innerHTML = 'Adicionar'
    labelDiv.appendChild(addLabel)

    const addInput = document.createElement('input')
    addInput.setAttribute('id', 'addInput')
    addInput.setAttribute('type', 'radio')
    addInput.setAttribute('name', 'editstock')
    addInput.setAttribute('style', 'margin-left:8rem; margin-right:5rem')
    inputDiv.appendChild(addInput)

    const removeLabel = document.createElement('label')
    removeLabel.setAttribute('for', 'removeInput')
    removeLabel.setAttribute('style', 'margin-left:5rem; margin-right:5rem')
    removeLabel.innerHTML = 'Remover'
    labelDiv.appendChild(removeLabel)

    const removeInput = document.createElement('input')
    removeInput.setAttribute('id', 'removeInput')
    removeInput.setAttribute('type', 'radio')
    removeInput.setAttribute('name', 'editstock')
    removeInput.setAttribute('style', 'margin-left:11rem; margin-right:5rem')
    inputDiv.appendChild(removeInput)

    const submitButton = document.createElement('input')
    submitButton.setAttribute('id', 'submitButton')
    submitButton.setAttribute('type', 'submit')
    submitButton.setAttribute('name', 'editstock')
    submitButton.setAttribute('onclick', 'operation(this)')

    formDiv.appendChild(labelDiv)
    formDiv.appendChild(inputDiv)

    form.appendChild(label)
    form.appendChild(input)
    form.appendChild(formDiv)
    form.appendChild(submitButton)

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

const searchList = event => {
  event.preventDefault()
  const searchInput = document.getElementById('searchInput').value
  let searchCars = []
  searchCars = cars.filter(
    item =>
      item.brand.includes(searchInput) ||
      item.model.includes(searchInput) ||
      item.year.includes(searchInput)
  )
  console.log(searchCars)

  var ul = document.querySelector('ul')
  if (ul) {
    ul.remove()
  }

  ul = document.createElement('ul')
  searchCars.forEach((item, index) => {
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

const botaoDeAdicionar = document.getElementById('addBtn')
botaoDeAdicionar.addEventListener('click', register)

const searchForm = document.getElementById('searchForm')
searchForm.addEventListener('keyup', searchList)
