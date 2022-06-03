var elemt = document.createElement('li')
elemt.textContent = "Um iten";

var elem  = document.createElement("li");
elem.textContent = "mais um item";

var elemtu = document.createElement("li")
elemtu.textContent = "por fim uno ito";

var lista = document.getElementsByTagName('ul')[0]
lista.appendChild(elemt);
lista.appendChild(elem);
lista.appendChild(elemtu);

console.log('Elemento 2', lista )