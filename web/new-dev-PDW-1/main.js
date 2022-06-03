document.getElementById('enviar').addEventListener('click', function (event) {
  event.preventDefault()

  const nome = document.getElementById('nome')

  const sobreNome = document.getElementById('sobrenome')

  const endereco = document.getElementById('endereco')

  const complementoEndereco = document.getElementById('complementoEndereco')

  const telefone = document.getElementById('telefone')

  const email = document.getElementById('email')

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

  if (!nomcomplementoEnderecoe.length) {
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
})
