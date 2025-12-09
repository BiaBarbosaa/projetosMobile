export default class pessoa {
    constructor(cpf,nome,sexo,idade,email) {
        this.cpf = cpf;
        this.nome = nome;
        this.sexo = sexo;
        this.idade = idade;
        this.email = email;
        
    }
    andar(){
        console.log(`A pessoa ${this.nome} está andando!`)
     }
     falar(){
        console.log(`A pessoa ${this.nome} está falando!`)
     }
     
}
 