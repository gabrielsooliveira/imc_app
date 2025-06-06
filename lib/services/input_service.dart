import 'dart:convert';
import 'dart:io';


class InputService {
  // Função para ler um número (float/double) do console
  double lerConsoleDouble(String prompt) {
    while (true) {
      var input = lerConsole(prompt);
      try {
        return double.parse(input);
      } catch (e) {
        print('Entrada inválida. Por favor, digite um número válido.');
      }
    }
  }

  // Função para ler uma string do console
  String lerConsole(String prompt) {
    print(prompt);
    return stdin.readLineSync(encoding: utf8) ?? '';
  }
}