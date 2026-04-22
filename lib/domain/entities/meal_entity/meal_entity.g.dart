// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealEntity _$MealEntityFromJson(Map<String, dynamic> json) => _MealEntity(
      name: json['name'] as String,
      photo: json['photo'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      calories: (json['calories'] as num).toInt(),
      cookingTime: (json['cookingTime'] as num).toInt(),
    );

Map<String, dynamic> _$MealEntityToJson(_MealEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'ingredients': instance.ingredients,
      'instructions': instance.instructions,
      'calories': instance.calories,
      'cookingTime': instance.cookingTime,
    };
