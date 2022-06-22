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

  if (!element.innerHTML) {
    cont % 2 === 0
      ? ((element.innerHTML = 'Xis'),
        element.setAttribute('style', 'color: rgba(16, 50, 243, 0.527)'),
        xHouses.push(element))
      : ((element.innerHTML = 'Bol'),
        element.setAttribute('style', 'color:rgba(243, 16, 16, 0.527)'),
        oHouses.push(element))
    cont++
  } else {
    return
  }

  oHouses.forEach((item, index) => {
    var x1 = oHouses[index]
    var x2 = oHouses[index + 1]
    var x3 = oHouses[index + 2]
    var y1 = oHouses[index]
    var y2 = oHouses[index + 1]
    var y3 = oHouses[index + 2]
    console.log('forEach')
    if (!x1 || !x2 || !x3 || !y1 || !y2 || !y3) {
      return
    } else {
      var x1 = x1.getAttribute('x')
      var x2 = x2.getAttribute('x')
      var x3 = x3.getAttribute('x')
      var y1 = y1.getAttribute('y')
      var y2 = y2.getAttribute('y')
      var y3 = y3.getAttribute('y')
      alignCondition(x1, y1, x2, y2, x3, y3, 'bola ganha')
    }
  })

  xHouses.forEach((item, index) => {
    var x1 = xHouses[index]
    var x2 = xHouses[index + 1]
    var x3 = xHouses[index + 2]
    var y1 = xHouses[index]
    var y2 = xHouses[index + 1]
    var y3 = xHouses[index + 2]
    console.log('forEach')
    if (!x1 || !x2 || !x3 || !y1 || !y2 || !y3) {
      return
    } else {
      var x1 = x1.getAttribute('x')
      var x2 = x2.getAttribute('x')
      var x3 = x3.getAttribute('x')
      var y1 = y1.getAttribute('y')
      var y2 = y2.getAttribute('y')
      var y3 = y3.getAttribute('y')
      alignCondition(x1, y1, x2, y2, x3, y3, 'cruz ganha')
    }
  })
}

const alignCondition = (x1, y1, x2, y2, x3, y3, lado) => {
  if (x1 * y2 + y1 * x3 + x2 * y3 - (x3 * y2 + y3 * x1 + x2 * y1) == 0) {
    alert(lado)
  } else {
    return false
  }
}
