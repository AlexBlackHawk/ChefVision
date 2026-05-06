import 'package:chefvision/data/firebase/ai_logic_firebase.dart';
import 'package:chefvision/data/models/meal_model/meal_model.dart';
import 'package:chefvision/domain/repositories/ai_logic_repository.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AILogicRepository)
class AILogicRepositoryImpl implements AILogicRepository {
  final AILogicFirebase _aiLogicFirebase;

  AILogicRepositoryImpl(this._aiLogicFirebase);

  @override
  MealModel? convertResponseToMeal(GenerateContentResponse response) {
    return _aiLogicFirebase.convertResponseToMeal(response);
  }

  @override
  int? getCachedContentTokenCount(GenerateContentResponse response) {
    return _aiLogicFirebase.getCachedContentTokenCount(response);
  }

  @override
  int? getCandidatesTokenCount(GenerateContentResponse response) {
    return _aiLogicFirebase.getCandidatesTokenCount(response);
  }

  @override
  int? getPromptTokenCount(GenerateContentResponse response) {
    return _aiLogicFirebase.getPromptTokenCount(response);
  }

  @override
  Future<GenerateContentResponse?> getResponse(List<Content> prompt) async {
    return await _aiLogicFirebase.getResponse(prompt);
  }

  @override
  int? getThoughtsTokenCount(GenerateContentResponse response) {
    return _aiLogicFirebase.getThoughtsTokenCount(response);
  }

  @override
  int? getToolUsePromptTokenCount(GenerateContentResponse response) {
    return _aiLogicFirebase.getToolUsePromptTokenCount(response);
  }

  @override
  int? getTotalTokenCount(GenerateContentResponse response) {
    return _aiLogicFirebase.getTotalTokenCount(response);
  }

  @override
  void initializeModel(String modelName, Schema jsonSchema) {
    _aiLogicFirebase.initializeModel(modelName, jsonSchema);
  }

  @override
  Content createTextContent(String promptText) {
    return _aiLogicFirebase.createTextContent(promptText);
  }
}
