const button = document.getElementById(botao)
const input = document.querySelectorAll('input')

console.log(input, 'input')

// tag

const inputs = document.querySelectorAll('input')
console.log('input', input)

// id
const inpute = document.querySelectorAll('#inpute')
console.log('input', inpute)

// clas

const inputhe = document.querySelectorAll('.inputhe')
console.log('input', inputhe)

const p = document.createElement('p')
p.innerHTML = 'oiaa'

document.getElementById('p').appendChild(p)

const messages = []

function addMessageTo(event) {
  event.preventDefault()

  const inputName = document.getElementById('name')
  const inputEmail = document.getElementById('email')
  const inputMessage = document.getElementById('messege')
}

//button.addEventListener('click', addMessage);

const messag = {
  name: inputName.value,
  email: inputEmail.value,
  message: inputMessage.valeu
}

document.getElementById('form').reset()

console.log('...', message)
