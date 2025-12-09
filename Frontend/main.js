// comentário de uma linhas
/*
comentário de múltiplas linhas
*/

// forma antiga e não recomendável de declarar variável
//var escola = 'SENAI';

// forma atual e recomendável de declarar variável

//let curso = 'Desenvolvimento de sistemas';

// forma de declarar constantes

//const sala = '10';
// entrada e saída de dados, receber do usuario
// let idade = prompt('Digite sua idade');

// exibir mensagem na tela
//

// exibir mensagem no console

// console.log("Meu nome é" + nome);

// exibindo informações com template literal
//console.log(`Meu nome é ${nome}`);

/*let idade = 10;
if(idade === 10 || idade < 18){
    console.log('Não pode tirar CNH')
}

let SENAI = "Aprovado";
let SESI = "Aprovado";
if(SENAI === "Aprovado" && SESI === "Aprovado"){
    console.log('Pode começar a faculdade')
}*/

// objeto do tipo String
// let nome = "Beatriz";
// // objeto do tipo Array
// let escola = ['SENAI'];
// // objeto do tipo JSON
// let cidade = {nome: 'Garça'};
// console.log(cidade.nome);

// for (let i = 0; i <=5; i++ ){
// console.log(nome[i])
// }
// let nome = ' Beatriz ';

// //transformando o texto em maiusculo
// console.log(nome.toUpperCase());

// //transformando o texto em minusculo
// console.log(nome.toLowerCase());

// nome = nome.replace('a','S');
// console.log(nome);

import Pessoa from "./pessoa.class.mjs";

let pessoa = new Pessoa ('123','Bia','B','15','bia@senai.com');
console.log(pessoa.andar());