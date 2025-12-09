import { useEffect, useState } from "react";
import ListaDeCompra from "./ListaDeCompra";

function App() {
  // Crie um vetor chamado frutas, com 3 frutas 
  // que você gosta"
  // Criando um vetor
  let frutas = ["Morango", "Pitaya", "Uva Verde"];

  // Dentre as suas frutas favoritas exiba no console a preferida!
  // acessando uma posição dentro do vetor
  console.log(frutas[2]);
  // Crie um vetor com 10 números, entre eles coloque seu
  // numero da sorte!
  let numeroDaSorte = [10489, 1789, 144, 2, 189, 726, 77, 88, 99, 2038];
  const [numeroSorte, setNumeroSorte] = useState([10489, 1789, 144, 2, 189, 726, 77, 88, 99, 2038]);
  // Percorra todo o vetor, quando o numero atual for seu
  // número da sorte, exiba no console: 
  // Meu número da sorte é (exiba aqui seu número)

  for (let i = 0; i < numeroDaSorte.length; i++) {
    if (numeroDaSorte[i] === 2) {
      console.log(`Meu número da sorte é ${numeroDaSorte[i]}`)
    }
  }
  // Função adicionar com JavaScript puro
  // function adicionar(){
  // console.log(JSON.stringify(numeroDaSorte));  
  // let num = Number(prompt('Digite um numero'));
  // numeroDaSorte.push(num);
  // console.log(JSON.stringify(numeroDaSorte));  

  // }


function adicionar() {
  console.log(JSON.stringify(numeroSorte));
  let num = Number(prompt('Digite um número'));
  setNumeroSorte((prevNumeroSorte) => [...prevNumeroSorte, num]);
  console.log(JSON.stringify(numeroSorte));
}

  return (
    <>
     <ListaDeCompra/>
    </>
  )
}

export default App
