import '../entities/imc_result.dart';
import '../repositories/imc_repository.dart';

class CalculateImc {
  final ImcRepository repository;

  CalculateImc(this.repository);

  ImcResult call(double peso, double altura) {
    return repository.calculate(peso, altura);
  }
}
