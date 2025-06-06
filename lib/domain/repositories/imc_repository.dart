import '../entities/imc_result.dart';

abstract class ImcRepository {
  ImcResult calculate(double peso, double altura);
}
