void main() {
  //1 questao
  print(multiplicaNumeros(3,5));
  print(construirNomeCompleto('Lailson', 'Henrique'));
  print(contruitNomeCompletoOpcional(nome: 'Lailson', sobrenome: 'Henrique'));
  print(contruitNomeCompletoOpcional(nome: 'Lailson'));
  descreverCidade('Teresina');
  descreverCidade('Parnaiba', 'EUA');
  //5 questao
  var quadrado = (int numero){return numero * numero;};
  var quadrado5 = (int numero){return numero * numero;}(5);
  print(quadrado(3));
  print(quadrado5);
  //6 questão
  var quadradoArrow = (int numero) => numero * numero;
  print(quadradoArrow(4));
  //7 questao
  var resultadoSoma = aplicarOperacao(10,5, soma);
  print(resultadoSoma);
  var resultadoSubtracao = aplicarOperacao(20,10, subtracao);
  print(resultadoSubtracao);
  //10 Questao
  configurarUsuario('Lailson');
  configurarUsuario('Henrique', idade: 10, email: 'henrique@ifpi.edu.br');
}


int multiplicaNumeros(int numero1, int numero2){
  return numero1 * numero2;
}

String construirNomeCompleto(String nome, String sobrenome){
  return '$nome $sobrenome';
}

String contruitNomeCompletoOpcional({required String nome, String? sobrenome}){
  if (sobrenome == null){
    return nome;
  }
  return '$nome $sobrenome';
}

void descreverCidade(String cidade, [String pais = 'Brasil']){
  print('Cidade: $cidade, País: $pais');
}

int aplicarOperacao(int a, int b, int Function(int, int) operacao){
  return operacao(a,b);
}

int soma(int x, int y){
  return x + y;
}
int subtracao(int x, int y){
  return x - y;
}

void configurarUsuario(String nome, {int idade = 18, String? email}){
  print('Nome: $nome, Idade: $idade');
  if(email != null){
    print('Email: $email');
  }
}