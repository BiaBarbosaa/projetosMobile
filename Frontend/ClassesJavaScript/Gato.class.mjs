/*Importa a classe animal*/ 
import Animal from "./Animal.class.mjs"
/*Cria a classe gato juntando com a classe animal*/ 
export class Gato extends Animal{

miar(){
    console.log(`O gato ${this.nome} está miando!`);
}
   
}