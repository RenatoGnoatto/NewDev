document.addEventListener('keyup', function () {
  const inputValue = document.querySelector('input').value
  const arrayItems = ['banana', 'goiaba', 'xpto', 'foo', 'bar']

  const carsFiltered = arrayItems.filter(item => item.includes(inputValue))
  console.log('-> encontrou ', carsFiltered)
})
