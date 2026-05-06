import 'package:chefvision/data/models/meal_model/meal_model.dart';
import 'package:firebase_ai/firebase_ai.dart';

abstract interface class AILogicRepository {
  void initializeModel(String modelName, Schema jsonSchema);

  Future<GenerateContentResponse?> getResponse(List<Content> prompt);

  MealModel? convertResponseToMeal(GenerateContentResponse response);

  int? getPromptTokenCount(GenerateContentResponse response);

  int? getCandidatesTokenCount(GenerateContentResponse response);

  int? getThoughtsTokenCount(GenerateContentResponse response);

  int? getTotalTokenCount(GenerateContentResponse response);

  int? getToolUsePromptTokenCount(GenerateContentResponse response);

  int? getCachedContentTokenCount(GenerateContentResponse response);

  Content createTextContent(String promptText);
}
