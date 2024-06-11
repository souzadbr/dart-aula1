//funcao maisn sinaliza para maquina virtual do dart qual a primeira funcao, qual o primeiro ponto que deve ser executado. 
import 'cartao.dart';
import 'cliente.dart';
import 'compra.dart';
import 'conta.dart';
import 'fatura.dart';
import 'pessoa.dart';

main() {
    // if, if/else entre outros modos de controle tbm estão presente na linguagem Dart. 
    int ano = 2022;
    int numero = 5; 

    if (numero %2 ==0) {
        print(" Esse numero é par ");
    } else {
        print("Esse numero é impar");
    }

    print ("Estamos no ano $ano");
    print("olá mundo!");

    //lista em Dart 

    var lista = [1,2,3];

    print (lista.first); //retorma primeiro numero da lista 
    print(lista.isEmpty); //retorna um booleano se a lista é vazia ou não 
    print(lista.length); // retorna numero de elementos na lista 
    print(lista.isNotEmpty); // retorna booleano se a lista não está vazia sim ou não
    print(lista.reversed); // reotna a lista ao contrario entre outras funCoes que podemos ter com listas 

    //ORIENTACAO AO OBJETO - CLASSE PESSOA 

    // Pessoa joao = Pessoa(
    //     nome: "Joao", 
    //     sobrenome: "Silva"
    //     );

    //     print("eu sou ${joao.nome} ${joao.sobrenome}");
    //     print(joao.nomeCompleto);


    //fizemos todas as classes e relacionamentos. 
    //Agora pensando que essas classes serão como se fosse nosso widges ou compomnente que o flutter fornece para nós vamos usa-las na main. 

    var conta = Conta(
        cartao: Cartao(
            numero:"12345678", 
            limite: 1200, ano: 2025, 
            codigo: 123, 
            mes: 06), 
        cliente: Cliente(
            id: "1234",
            cpf: "345.345.345-67", 
            nome: "José", 
            sobrenome: "Silva"), 
        faturas: [
            Fatura(
                
                compras: [
                    Compra(
                        valor: 12.50, 
                        data: "12/06",
                        descricao: "Café"),
                    Compra(
                        valor: 100.0,
                        data: "04/06", 
                        descricao: "Assinatura revista")
                        ]
                    ,
                mes: 6,
                ano: 2021
                )]);
}


