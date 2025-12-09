import Banco from "./banco.class.mjs";

let cadastroCliente = document.getElementById('dadosCliente');

cadastroCliente.addEventListener('submit',(e) => {
e.preventDefault();

let dados = new FormData(cadastroCliente);
let dadosFormatados = Object.fromEntries(dados)
console.log(dadosFormatados);
let banco = new Banco(dadosFormatados.nome,dadosFormatados.email, dadosFormatados.senha,dadosFormatados.numero_conta, dadosFormatados.cpf,dadosFormatados.saldo,dadosFormatados.limite_especial);
console.log(banco)

let tabela = document.getElementById('tabelaOperacoes');

tabela.insertAdjacentHTML('beforeend',
        `<tr>
          <td>${banco.clienteNome}</td>
          <td>${banco.clienteConta}</td>
          <td>${banco.clienteSaldo}</td>
          <td>${banco.clienteLimiteEspecial}</td>
          </tr>`)

   let opcao = prompt(`Olá ${clienteNome} digite "s" para sacar, e "d" para depositar`)
   console.log(opcao);

   if(opcao === 's'){
    alert = prompt (`Olá ${clienteNome} digite o valor do seu saque`)
   }
   else if(opcao === 'd'){
    alert = prompt (`Olá ${clienteNome} digite o valor do seu depósito`)
   }
})


