const os = require('os')

//console.log(os.platform()) retorna o sistema operacional em exexução
//console.log(os.freemem()) retorna a memória livre do sistema em bytes
//console.log(parseInt(os.freemem() / 1024 / 1024)) retorna a memória livre arredondada em Mb

const mem = parseInt(os.freemem() / 1024 / 1024) //cria uma variável com a memoria livre em Mb

//console.log(mem) escreve a constante mem
const total = parseInt(os.totalmem() / 1024 / 1024) //cria uma variável com a memoria total em Mb
//console.log(total) escreve a constante total
const totalUsadoPercentage = parseInt((mem / total) * 100)
//console.log(totalUsadoPercentage)
const statistics = {
  totalMem: `${total}Mb`,
  freeMem: `${mem}Mb`,
  usageMem: `${totalUsadoPercentage}%`
}
//console.table(statistics)
console.clear()
os.setInterval(checkStatusMemory, 1000)
