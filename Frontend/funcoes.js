// declarando uma função
/*function mensagem(){
    console.log('Eu faço SENAI');
}

// chamar a função
mensagem();

// Arrow Function
// let msg = () =>{
//     console.log('Eu faço SENAI ');
// }
// msg();
// let msg = () => {
//     return 'Eu faço SESI';
// }
// if(msg()=== 'Eu faço SESI'){
//     console.log('Eu sou bom aluno');
// }
let time = 'real madri';
let selecao = 'Brasil';

let exibir = (time) =>{
    console.log(`Eu amo o time do ${time}`);
    console.log(`Eu amo o time do ${selecao}`);
}
exibir(time);*/

//buscando a data e hora e atribuindo a variaveis
let hora = new Date().toLocaleTimeString();
let data = new Date().toLocaleDateString();
console.log(data);
//buscando no documento web os objetos pelo id
let dataAtual = document.getElementById('data');
let time = document.getElementById('time');

dataAtual.innerHTML = data;
time.innerHTML = hora; 