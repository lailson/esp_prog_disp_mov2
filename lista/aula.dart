//Listas
//Listas em programação são estruturas de dados fundamentais, usadas para armazenar coleções ordenadas de itens. Esses itens podem ser de qualquer tipo, como números, strings, booleanos, ou até mesmo outras listas e estruturas de dados complexas.

//Ex. Listas de tarefas, lista de compras, lista de atividades, lista de números, etc

void main() {
  //Declaração normal
  List<int> listaDeNumeros = [1,2,3];
  var listaDeNumeros2 = [4,5,6];
  print(listaDeNumeros);
  print(listaDeNumeros2);
  
  //Lista Vazia
  List<int> listaDeNumerosVazia = [];
  print(listaDeNumerosVazia);
  //ou 
  var listaDeNumerosVazia2 = <int>[];
  print(listaDeNumerosVazia2);
  
  //Lista imutavel
  final List<int> minhaListaImutavel = const[3,4,5];
  print(minhaListaImutavel);
  //ou 
  const minhaListaImutavel2 = <int>[3,4,5];
  print(minhaListaImutavel2);
  
  //Null Safaty
  List<String> listaNomes1  = ['Lailson']; // Não pode ser nulo
  //Posso ter itens nulos
  List<String?> listaNomes2 = ['Lailson', null, 'Henrique']; 
  //A lista pode ser nula e posso ter itens nulos
  List<String?>? listaNomes3 = null;
  print(listaNomes1);
  print(listaNomes2);
  print(listaNomes3);
  
  //Alternativa
  var listaNomes1Alternativa = <String>['Lailson'];
  var listaNomes2Alternativa = <String?>['Lailsoin', null, 'henrique'];
  //Quando a lista e os elementos são ulsoano existe uma alternativa
  print(listaNomes1Alternativa);
  print(listaNomes2Alternativa);
  
  
  //Manipulando listas
  var numeros = [1,2,3,4];
  print(numeros);
  numeros.add(10);
  print(numeros);
  
  //Manipulando com final
  final numerosFinal = [1,2];
  print(numerosFinal);
  //Não posso fazer isso
  //numerosFinal = [2,3];
  //print(numerosFinal);
  numerosFinal.add(3);
  print(numerosFinal);
  //Criei uma lista e atribui à avriável 'numeros'. A lista em si é um objeto que reside na memória e 'números' é uma referência a esse objeto. A palavra final garante que você não possa reatribuir 'números' para apóntar oara um objeto difrente ams não impede que o objeto de lista seja alterado através do método add, por exemplo. 
  //Isso é diferente de declarar a lista como const que torna a lista imutável
  
  final nomes = ['Lailson', 'Henrique'];
  nomes.add('Ana');
  print(nomes);
  
  //Acessando elementos
  print(nomes[2]);
  
  //Inserindo elementos em posições específicas
  nomes.insert(0,'Bruna');
  print(nomes);
  
  //Inserindo uma outra lista 
  nomes.addAll(['Bia', 'Carlos']);
  print(nomes);
  
  
  //Remover um elemento
  //Remover com o equals, ou seja, quando o item for igual
  nomes.remove('Ana');
  print(nomes);
  //remover com o where
  nomes.removeWhere((nome){
    if(nome == 'Henrique') {
      return true; 
    }
    else {
      return false;
    }
  });
  print(nomes);
  nomes.add('Henrique');
  print(nomes);
  //Melhorando esse função utilizando arrow function
  nomes.removeWhere((nome) => nome == 'Henrique');
  print(nomes);
  
  //Pegar o priemiro Item da lista
  print(nomes[0]);
  print(nomes.first);
  //Pegar o ultimo item
  print(nomes[nomes.length - 1]);
  print(nomes.last);
  
 
  //Gerando elementos para uma lista
  final numerosgerados = List.generate(10, (index) => index+ 1);
  print(numerosgerados);
  //Gerando uma lista quadrados de números
  final quadrados = List.generate(5, (index) => (index + 1) * (index + 1));
  print(quadrados);
  //Gerando lista de caracteres de ums string
  final palavra = 'IFPI';
  final caracteres = List.generate(palavra.length, (index) => palavra[index]);
  print(caracteres);
  
  //repetições
  final repeticoes = List.filled(5, 'IFPI');
  print(repeticoes);
  
  //Filtro
  //Filter
  //Where
  //Cria uma nova lista contendo apenas os elementos que satisfazem uma condição específica
  bool ePar(int numero){
  if (numero % 2 ==0){
    return true;
  }else{
    return false;
  }
}
  var pares = numerosgerados.where(ePar);
  print(pares);
  //simplificar a função ePar
  //bool ePar(int numero) {
  //   return numero % 2 == 0;
  //}
  //utilizando Arrow function
  print(numeros);
  var numerosPares2 = numeros.where((numero) => numero % 2 == 0).toList();
  print(numerosPares2);
  
  //Map
  //Transforma cada elemento de uma lista aplicando uam função fornecida a todos os elementos e retorna uma nova lista com os elementos transformados
  var numerosQuadrados = numerosgerados.map((numero) => numero * numero).toList();
  print(numerosQuadrados);
  
  //reduce
  //fold
  //Combina todos os elementos de uma lista em um único valor usando uma função
  //A função é aplicada sequencialmente a cada elemento junto com o valor acumulado
  var soma = numeros.fold(0, (valorAtual, proximoValor) => valorAtual + proximoValor);
  print(soma);
  //com reduce
  var somareduce = numeros.reduce((valorAtual, proximoValor) => valorAtual + proximoValor);
  print(somareduce);
  
  //Any
  //Verifica se pelo menos um elemento da lista satisfaz uam condição específica
  //Retorna true ou false
  bool temPar = numeros.any((numero) => numero % 2 == 0);
  print(temPar);
  
  //Every
  // verifica se todos os elementos da lista satisfazem uma condição especificada. 
  bool todosPares = numeros.every((numero) => numero % 2 == 0);
  print(todosPares);


  //Spread Operator 
  // (...)
  var listaNumerosSemSpread1 = [1,2,3];
  var listaNumerosSemSpread2 = [4,5,6];
  //Como adicionar a lista 1 à lista 2?
  listaNumerosSemSpread2.addAll(listaNumerosSemSpread1);
  print(listaNumerosSemSpread2);
  
  var listaNumerosComSpread1 = [1,2,3];
  var listaNumerosComSpread2 = [4,5,6];
  listaNumerosComSpread2 = [...listaNumerosComSpread2, ...listaNumerosComSpread1];
  print(listaNumerosComSpread2);
  
  
  //Expand
  //Transforma um elemento em itens de uma lista
  var listaBiDimensional = [[1,2],[3,4]];
  var listaNovaBiDiMensional = listaBiDimensional.expand((listaInterna) => listaInterna);
  print(listaNovaBiDiMensional);
  print(listaNovaBiDiMensional.toList());
  
}
