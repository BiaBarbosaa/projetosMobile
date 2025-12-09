import Animal from "./Animal.class.mjs";
import { Gato } from "./Gato.class.mjs";


let cadastroAnimal = document.getElementById('dadosAnimal');

cadastroAnimal.addEventListener('submit',(e) => {
e.preventDefault();

let dados= new FormData(cadastroAnimal);
let dadosFormatados = Object.fromEntries(dados)

let animal = new Animal(dadosFormatados.nome, dadosFormatados.cor, dadosFormatados.sexo,dadosFormatados.especie, dadosFormatados.idade);
console.log(animal)

let tabela = document.getElementById('tabelaAnimal');

tabela.insertAdjacentHTML('beforeend',
        `<tr>
          <td>${animal.nome}</td>
          <td>${animal.cor}</td>
          <td>${animal.sexo}</td>
          <td>${animal.especie}</td>
          <td>${animal.idade}</td>
          </tr>`)
})

/*
let animal = new Animal('Fred', 'caramelo', 'M', 'Cachorro', '3');
console.log(animal);

let gato = new Gato ('Tom', 'cinza', 'M', 'Azul Russo', '5');
console.log(gato);
console.log(gato.miar());
*/