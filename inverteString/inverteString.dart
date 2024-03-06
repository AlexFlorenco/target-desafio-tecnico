import 'dart:io';

// Escreva um programa que inverta os caracteres de um string.
// Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;
// Evite usar funções prontas, como, por exemplo, reverse.

void main(List<String> args) {
  try {
    stdout.write("Insira uma string para ser invertida: ");
    String texto = stdin.readLineSync()!;

    String textoInvertido = inverteString(texto);

    print("Sua string invertida: $textoInvertido");
  } catch (e) {
    throw Exception("String inválida");
  }
}

String inverteString(String texto) {
  var caracteres = [];
  for (var i = 0; i < texto.length; i++) {
    caracteres.insert(0, texto[i]);
  }

  String textoInvertido = caracteres.join();
  return textoInvertido;
}
