// let idade = prompt('Digite sua idade');
// alert("Idade é " + idade);

// let idade = prompt('Digite sua idade');
// console.log("Idade é" + idade);

let nome = prompt('Digite seu nome');
let nomeLinha = '';
for (let i = 0; i <nome.length; i++ ){
    if(nome[i] === 'a' || nome[i] === 'A'){
        // console.log('S');
        nomeLinha += 'S';
    }else{
        // console.log(nome[i])
        nomeLinha += nome[i];
    }
}
console.log(nomeLinha);