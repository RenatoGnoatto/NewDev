const _ = ' '
const style = ''
const storage = localStorage
var list = []
var cadastre = ''

document.getElementById('enviar').addEventListener('click', function (event) {
  event.preventDefault()

  const nome = document.getElementById('nome').value

  const sobreNome = document.getElementById('sobrenome').value

  const endereco = document.getElementById('endereco').value

  const complementoEndereco = document.getElementById(
    'complementoEndereco'
  ).value

  const telefone = document.getElementById('telefone').value

  const email = document.getElementById('email').value

  if (!nome.length) {
    alert('Preencha todos os campos!!!')
    return
  }

  if (!sobreNome.length) {
    alert('Preencha todos os campos!!!')
    return
  }

  if (!endereco.length) {
    alert('Preencha todos os campos!!!')
    return
  }

  if (!complementoEndereco.length) {
    alert('Preencha todos os campos!!!')
    return
  }

  if (!telefone.length) {
    alert('Preencha todos os campos!!!')
    return
  }

  if (!email.length) {
    alert('Preencha todos os campos!!!')
    return
  }

  cadastre =
    nome +
    _ +
    sobreNome +
    _ +
    endereco +
    _ +
    complementoEndereco +
    _ +
    telefone +
    _ +
    email

  list.push(JSON.stringify(cadastre))
  document.getElementById('formm').reset()
  storage.setItem('CADASTROS', list)

  let ul = document.querySelector('ul')

  let li = document.createElement('li')
  li.innerText = cadastre
  ul.appendChild(li)
  console.log('li ----->', li, 'ul --->', ul)
})
