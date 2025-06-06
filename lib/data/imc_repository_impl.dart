import '../domain/entities/imc_result.dart';
import '../domain/repositories/imc_repository.dart';
import '../core/constants.dart';

class ImcRepositoryImpl implements ImcRepository {
  @override
  ImcResult calculate(double peso, double altura) {
    final imc = peso / (altura * altura);

    String category;
    
    if (imc < 18.5) {
      category = ImcCategories.magreza;
    } else if (imc < 25) {
      category = ImcCategories.normal;
    } else if (imc < 30) {
      category = ImcCategories.sobrepeso;
    } else {
      category = ImcCategories.obesidade;
    }

    return ImcResult(imc, category);
  }
}
