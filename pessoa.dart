//Aula de orientação ao objeto. 
//vamos tornar essa classe uma classe abstrata que não pode ser instaciada: Será usada como modelo para classe cliente.  
abstract class Pessoa {
   String nome; 
   String sobrenome; 
 
  //quando a variavel está nula e vai ser inicializada posteriormente em Dart podemos usar:
  // "late" antes do tipo da variavel(diz que a inicializacao será tardia) 
  // ou usar ? na frente do tipo da variável(para dizer que ela pode ser nula)
  //ou fazer como está no exemplo usando a palavra required (torna obrigatorio receber um valor usanda no construtor do objeto)

  get nomeCompleto => this.nome + " " + this.sobrenome; 
  //set nome (novoNome) => this._nome = novoNome;

  Pessoa({required this.nome, required this.sobrenome});

}

//ENCAPSULAMENTO 

//Em Dart todas as propriedades são publicas a menos que voce use um underline na frente do atributo. 
//emxemplo String _nome; 
//Para conseguir manipular um atributio _nome que está privado pelo uso do underline vamos usar os metodos set e get 
//Para conseguir manipular esses atributos. 
//Quando tenho os metodos get e set para manipular uma atributo privado não consigo mais usar o required então usamos o late nesse caso. 