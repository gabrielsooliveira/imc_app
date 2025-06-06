import 'package:imc_app/services/input_service.dart';
import 'package:imc_app/data/imc_repository_impl.dart';
import 'package:imc_app/domain/usecases/calculate_imc.dart';

void main() {
  final inputService = InputService();
  final imcRepository = ImcRepositoryImpl();
  final calculateImc = CalculateImc(imcRepository);

  print('=== Calculadora de IMC ===');

  final peso = inputService.lerConsoleDouble('Digite seu peso (kg): ');
  final altura = inputService.lerConsoleDouble('Digite sua altura (m): ');

  final imc = calculateImc(peso, altura);

  print('\nSeu IMC é: ${imc.value.toStringAsFixed(2)}');
  print('Classificação: ${imc.category}');
}
