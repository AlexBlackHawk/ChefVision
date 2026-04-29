// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealModel _$MealModelFromJson(Map<String, dynamic> json) => MealModel(
  name: json['name'] as String,
  photo: json['photo'] as String,
  ingredients: (json['ingredients'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  instructions: (json['instructions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  calories: (json['calories'] as num).toInt(),
  cookingTime: (json['cooking_time'] as num).toInt(),
);

Map<String, dynamic> _$MealModelToJson(MealModel instance) => <String, dynamic>{
  'name': instance.name,
  'photo': instance.photo,
  'ingredients': instance.ingredients,
  'instructions': instance.instructions,
  'calories': instance.calories,
  'cooking_time': instance.cookingTime,
};
