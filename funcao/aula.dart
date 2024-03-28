

// Funcao: Um bloco de código que realiza uma tarefa específica

// por que utilziar funcoes
// - Encapsulamento: Mantem o códig organziado e dividio e blocos ógiocs
// - Reutilização de código: Permite reutilizar um bloco de códigp em várias partes do código 
// - Organização: Facilita a leitura e manutenção do código

void main() {
  print(dizerOla());
  print(dizerOla());
  print(somaInteiros(2, 7));
  
  mostraUsuario(idade:  18, nome: 'lailson');
  mostraUsuario(nome: null, idade: 18);
  mostraUsuario(nome: 'lailson', idade: 19);
  mostraUsuario2('Lailson', 18, 'Professor');
  mostraUsuario2('LAILSON');
  mostraUsuario2('Lailson', null, 'dev');
  print(somaInteiros2(2,6));
  (){print('Função anonima');}();
  (String nome, int idade){print('nome: $nome, idade: $idade');}('Lailson', 20);
  
}

//Sintaxe da função
// Tipo do retorno 
// Nome da função 
// (os parâmetros)
// O corpo da função - Return o retorno da função 

//primeira função
String dizerOla(){
  return 'Olá IFPI! - 2024';
}
void dizerOla2(){
  print('Ola IFPI');
}


//Funcao que soma dois numeros inteiros
//Parametros simples e obrigatórios
int somaInteiros(int numero1, int numero2){
  var soma = numero1 + numero2;
  return soma;
}

//Parametros nomeados
//Funcção que mostra o nome e a idade de uma pessoa
void mostraUsuario({required String? nome,required int idade}){
  if (nome != null){
    print('Nome: $nome, idade: $idade');
  }else{
    print('Usuario desconhecido');
  }
}


void mostraUsuario2(String nome, [int? idade, String? profissao]){
  print('Nome: $nome');
  if(profissao != null){
    print('Profissão: $profissao');
  }
  if (idade != null){
    print('Idade: $idade');
  }
}

//Arrow Functions
// =>
int somaInteiros2(int num1, int num2) => num1 + num2; 




