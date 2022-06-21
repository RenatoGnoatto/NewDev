var cont = 0
const elements = [
  document.getElementById('c1l1'),
  document.getElementById('c1l2'),
  document.getElementById('c1l3'),
  document.getElementById('c2l1'),
  document.getElementById('c2l2'),
  document.getElementById('c2l3'),
  document.getElementById('c3l1'),
  document.getElementById('c3l2'),
  document.getElementById('c3l3')
]
var oHouses = []
var xHouses = []

elements.forEach((item, index) => {
  item.setAttribute('identifier', index)
  item.setAttribute('onclick', 'addIcon(this)')
})

const addIcon = item => {
  const identifier = item.getAttribute('identifier')
  const element = elements[identifier]
  console.log('item', identifier)
  if (!element.innerHTML) {
    cont % 2 === 0
      ? ((element.innerHTML = 'Xis'),
        element.setAttribute('style', 'color: rgba(16, 50, 243, 0.527)'),
        xHouses.push(element))
      : ((element.innerHTML = 'Bol'),
        element.setAttribute('style', 'color:rgba(243, 16, 16, 0.527)'),
        xHouses.push(element))
    cont++
  } else {
    return
  }
  oHouses.forEach((item, index) => {
    const x1 = oHouses[index].getAttribute('x')
    const x2 = oHouses[index + 1].getAttribute('x')
    const x3 = oHouses[index + 2].getAttribute('x')
    const y1 = oHouses[index].getAttribute('y')
    const y2 = oHouses[index + 1].getAttribute('y')
    const y3 = oHouses[index + 2].getAttribute('y')
    console.log('ga', oHouses)
    alignCondition(x1, y1, x2, y2, x3, y3)
  })
}

const alignCondition = (x1, y1, x2, y2, x3, y3) => {
  if (x1 * y2 + y1 * x3 + x2 * y3 - (x3 * y2 + y3 * x1 + x2 * x1) == 0) {
    alert('dgfed')
    console.log('deu')
  } else {
    return false
  }
}
