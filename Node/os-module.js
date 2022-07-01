function checkStatusMemory () {
  const os = require('os');
  const mem = parseInt(os.freemem() / 1024 / 1024);
  const total = parseInt(os.totalmem() / 1024 / 1024);
  const percentage = parseInt((mem / total) * 100);
  const statistics = {
    memoryTotal: `${total}MB`,
    freeMemory: `${mem}MB`,
    usage: `${percentage}%`,
  }
  console.clear();
  console.table(statistics);
}

setInterval(checkStatusMemory, 1000);

