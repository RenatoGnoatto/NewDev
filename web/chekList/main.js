
const submitCheck = event => {
  event.preventDefault()
  const inputContent = document.getElementById('content')
  !inputContent.value ? (alert('Preencha o seu afazer')) : ('')

}

const submitButton = document.getElementById('submit')
submitButton.addEventListener('click', submitCheck)