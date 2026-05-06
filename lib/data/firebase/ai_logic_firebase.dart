import 'dart:convert';

import 'package:chefvision/data/models/meal_model/meal_model.dart';
import 'package:firebase_ai/firebase_ai.dart';

class AILogicFirebase {
  AILogicFirebase(this._firebaseAI);

  final FirebaseAI _firebaseAI;
  GenerativeModel? _model;

  void initializeModel(String modelName, Schema jsonSchema) {
    _model = _firebaseAI.generativeModel(
      model: modelName,
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
        responseSchema: jsonSchema,
      )
    );
  }

  Future<GenerateContentResponse?> getResponse(List<Content> prompt) async {
    final response = await _model?.generateContent(prompt);
    return response;
  }

  Content createTextContent(String promptText) {
    final content = Content.text(promptText);
    return content;
  }

  MealModel? convertResponseToMeal(GenerateContentResponse response) {
    final text = response.text;
    if (text == null || text.isEmpty) return null;

    final mealMap = jsonDecode(text) as Map<String, dynamic>;
    final meal = MealModel.fromJson(mealMap);
    return meal;
  }

  int? getPromptTokenCount(GenerateContentResponse response) {
    final usageMetadata = response.usageMetadata;
    return usageMetadata?.promptTokenCount;
  }

  int? getCandidatesTokenCount(GenerateContentResponse response) {
    final usageMetadata = response.usageMetadata;
    return usageMetadata?.candidatesTokenCount;
  }

  int? getThoughtsTokenCount(GenerateContentResponse response) {
    final usageMetadata = response.usageMetadata;
    return usageMetadata?.thoughtsTokenCount;
  }

  int? getTotalTokenCount(GenerateContentResponse response) {
    final usageMetadata = response.usageMetadata;
    return usageMetadata?.totalTokenCount;
  }

  int? getToolUsePromptTokenCount(GenerateContentResponse response) {
    final usageMetadata = response.usageMetadata;
    return usageMetadata?.toolUsePromptTokenCount;
  }

  int? getCachedContentTokenCount(GenerateContentResponse response) {
    final usageMetadata = response.usageMetadata;
    return usageMetadata?.cachedContentTokenCount;
  }
}
