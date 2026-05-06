import 'package:chefvision/data/models/meal_model/meal_model.dart';
import 'package:chefvision/domain/repositories/ai_logic_repository.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConvertResponseToMealUseCase {
  final AILogicRepository _aiLogicRepository;

  ConvertResponseToMealUseCase(this._aiLogicRepository);

  MealModel? call({
    required GenerateContentResponse response,
  }) {
    return _aiLogicRepository.convertResponseToMeal(response);
  }
}
