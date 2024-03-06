import 'dart:io';

// Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor
// sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...).
// Escreva um programa na linguagem que desejar onde, informado um número,
// ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.

void main(List<String> args) {
  try {
    stdout.write("Busque um número da Sequência de Fibonacci: ");
    int numeroBuscado = int.parse(stdin.readLineSync()!);

    buscarEmFibonacci(numeroBuscado)
        ? print("O número $numeroBuscado PERTENCE a sequência de Fibonacci!")
        : print(
            "O número $numeroBuscado NÃO PERTENCE a sequência de Fibonacci!");
  } catch (e) {
    throw Exception("Número inválido");
  }
}

bool buscarEmFibonacci(int numero) {
  // Enquanto o retorno da função fibonacci for menor que o número buscado, segue testando cada número da sequência
  // Retorna true se o retorno da função fibonacci for o número buscado
  // Caso o retorno da função fibonacci atinja o valor do numero buscado, encerra o while e retonar false
  int fibo = 0;
  int indice = 0;

  while (fibo < numero) {
    fibo = fibonacci(indice);

    if (fibo == numero) {
      return true;
    }
    indice++;
  }
  return false;
}

int fibonacci(int num) {
//Retona o número da sequencia de fibonacci de forma recursiva da posição inserida
  if (num < 2) return 1;
  return fibonacci(num - 1) + fibonacci(num - 2);
}
