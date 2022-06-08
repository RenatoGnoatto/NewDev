const storage = localStorage
let cadastros = []

const cadastrosStorage = () => {
  const storageContent = storage.getItem('informacoes')
  return storageContent ? JSON.parse(storageContent) : []
}

const span = () => {
  const span = document.createElement('span')
  const iconEdit = document.createElement('i')
  iconEdit.setAttribute('title', 'iconEdit')
  iconEdit.setAttribute('class', 'fas fa-edit')
  iconEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem;')
  span.appendChild(iconEdit)

  const iconRemove = document.createElement('i')
  iconEdit.setAttribute('title', 'iconEdit')
  iconEdit.setAttribute('class', 'fas fa-trash')
  iconEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem;')
  span.appendChild(iconRemove)
  return span
}

const createList = () => {
  const peoples = cadastrosStorage()

  let ul = document.querySelector('ul')
  ul ? ul.remove() : console.log('num tem')

  ul = document.createElement('ul')

  peoples.forEach((item, index) => {
    const li = document.createElement('li')
    li.innerHTML = `Nome: ${item.nome} Sobrenome: ${item.sobreNome}, Endereço: ${item.endereco} 
    Complemento ${item.complementoEndereco} Telefone ${item.telefone} Email ${item.email}`
    console.log('ITEMS', item)
    li.appendChild(span())
    ul.appendChild(li)
  })

  document.getElementById('list-background').appendChild(ul)
}

createList()
const setList = event => {
  event.preventDefault()
  const elemento = document.getElementsByTagName('input')

  const cadastro = {
    nome: document.getElementById('nome').value,
    sobreNome: document.getElementById('sobrenome').value,
    endereco: document.getElementById('endereco').value,
    complementoEndereco: document.getElementById('complementoEndereco').value,
    telefone: document.getElementById('telefone').value,
    email: document.getElementById('email').value
  }

  cadastros.push(cadastro)
  storage.setItem('informacoes', JSON.stringify(cadastros))
  console.log('array cadastros ---->', cadastros)

  document.querySelector('form').reset()

  createList()
}

const addButton = document.getElementById('enviar')
addButton.addEventListener('click', setList)
