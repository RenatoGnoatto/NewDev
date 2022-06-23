const storage = localStorage
let tasks = []
let edit = 0

const addOfWareHouse = () => {
  const taskStorage = storage.getItem('tasksWareHouse')
  return taskStorage ? JSON.parse(taskStorage) : []
}

const check = li => {
  console.log('li', li)
  const doneDiv = document.createElement('div')
  doneDiv.setAttribute(
    'style',
    'background-color: green; width:5rem; height:5rem'
  )

  const notDoneDiv = document.createElement('div')
  notDoneDiv.setAttribute(
    'style',
    'background-color: red; width:5rem; height:5rem'
  )

  //if (edit % 2 == 0) {
 //   li.appendChild(notDoneDiv)
 // } else {
 //   li.appendChild(doneDiv)
//  }
}

const addTaskOnStorage = event => {
  event.preventDefault()
  const taskInput = document.getElementById('taskAdd')
  !taskInput.value ? alert('Preencha sua tarefa') : null
  addOnStorage(taskInput)
  document.getElementById('taskAddForm').reset()
  createTaskList()
}

const addOnStorage = inputTask => {
  tasks = addOfWareHouse()
  const addTask = { task: inputTask.value }
  tasks.push(addTask)
  storage.setItem('tasksWareHouse', JSON.stringify(tasks))
}

const createTaskList = () => {
  tasks = addOfWareHouse()

  let ul = document.getElementById('tasksUl')
  if (ul) {
    document.getElementById('tasksUl').remove()
  }
  ul = document.createElement('ul')
  ul.setAttribute('id', 'tasksUl')

  tasks.forEach((item, index) => {
    const li = document.createElement('li')
    const btn = document.createElement('button')
    btn.setAttribute('onlick', check)
    li.innerHTML = `Tarefa ${item.task}`
    li.appendChild(btn)
    ul.appendChild(li)
  })

  document.getElementById('tasksMain').appendChild(ul)
}
createTaskList()

const submitTask = document.getElementById('submitTask')
submitTask.addEventListener('click', addTaskOnStorage)
