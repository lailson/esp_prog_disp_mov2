
void main() {
  // Questão 1
  var frutas = <String>[];
  // Adicione suas frutas aqui
  assert(frutas.length == 3);

  // Questão 2
  final numerosFixos = const [5, 10, 15];
  assert(numerosFixos.length == 3 && numerosFixos[2] == 15);

  // Questão 3
  var listaNomes = <String?>['Nome1', null, 'Nome3'];
  assert(listaNomes.contains(null) && listaNomes.length == 3);

  // Questão 4
  var lista = [1, 2, 3, 4, 5];
  // Adicione o número 6
  assert(lista.contains(6) && lista.length == 6);

  // Questão 5
  // Remova o segundo elemento de 'frutas'
  assert(frutas.length == 2);

  // Questão 6
  // Certifique-se de tratar a possibilidade de nulo
  assert(listaNomes[2] != null);

  // Questão 7
  // Insira 'Maria' na primeira posição
  assert(listaNomes[0] == 'Maria');

  // Questão 8
  var numerosCombinados = []; // Combine as listas aqui
  assert(numerosCombinados.length == 6 && numerosCombinados[5] == 6);

  // Questão 9
  var dezPrimeirosNumeros = List.generate(10, (index) => index + 1);
  assert(dezPrimeirosNumeros.last == 10);

  // Questão 10
  var quadrados = []; // Gere os quadrados aqui
  assert(quadrados.last == 25);

  // Questão 11
  var cincoZeros = List.filled(5, 0);
  assert(cincoZeros.every((e) => e == 0));

  // Questão 12
  var pares = []; // Filtre `dezPrimeirosNumeros` para apenas números pares
  assert(pares.every((numero) => numero % 2 == 0) && pares.length == 5);

  // Questão 13
  var dobros = []; // Crie uma lista de dobros aqui
  assert(dobros.every((numero) => numero % 2 == 0) && dobros[0] == 2);

  // Questão 14
  var soma = 0; // Calcule a soma aqui
  assert(soma == 15);

  // Questão 15
  var temPar = false; // Verifique se há pelo menos um número par
  assert(temPar);

  // Questão 16
  var todosPares = false; // Verifique se todos os números são pares
  assert(todosPares);

  // Questão 17
  var listaNumeros = []; // Use o operador spread aqui
  assert(listaNumeros.length == 6);

  // Questão 18
  var listaUnidimensional = []; // Use `expand` aqui
  assert(listaUnidimensional.length == 4 && listaUnidimensional[3] == 4);

  // Questão 19
  var listaSemNulos = []; // Remova elementos nulos aqui
  assert(listaSemNulos.every((e) => e != null));

  // Questão 20
  var listaNumeros2 = [10, 20, 30, 40, 50];
  // Insira o número 35 entre 30 e 40
  assert(listaNumeros2[3] == 35);
}
