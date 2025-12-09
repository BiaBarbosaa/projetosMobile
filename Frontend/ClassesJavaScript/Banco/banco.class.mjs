
export default class Banco {
    constructor(clienteNome,clienteEmail,clienteSenha,clienteConta,clienteCpf,clienteSaldo,clienteLimiteEspecial){
        this.clienteNome = clienteNome;
        this.clienteEmail = clienteEmail;
        this.clienteSenha = clienteSenha;
        this.clienteConta = clienteConta;
        this.clienteCpf = clienteCpf;
        this.clienteSaldo = clienteSaldo;
        this.clienteLimiteEspecial = clienteLimiteEspecial;
    }
    depositar(){
        console.log(`A pessoa ${this.clienteNome} está depositando`)
     }
     sacar(){
        console.log(`A pessoa ${this.clienteNome} está sacando!`)
     }
}