import 'package:chefvision/domain/entities/meal_entity/meal_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_model.g.dart';

@JsonSerializable()
class MealModel extends Equatable {
  const MealModel({
    required this.name,
    required this.photo,
    required this.ingredients,
    required this.instructions,
    required this.calories,
    required this.cookingTime,
  });

  final String name;
  final String photo;
  final List<String> ingredients;
  final List<String> instructions;
  final int calories;
  @JsonKey(name: "cooking_time")
  final int cookingTime;

  factory MealModel.fromJson(Map<String, dynamic> json) => _$MealModelFromJson(json);

  Map<String, dynamic> toJson() => _$MealModelToJson(this);

  @override
  List<Object> get props => [
    name,
    photo,
    ingredients,
    instructions,
    calories,
    cookingTime,
  ];

  @override
  bool get stringify => true;
}

extension MealMapper on MealModel {
  MealEntity toEntity() {
    return MealEntity(
      name: name,
      photo: photo,
      ingredients: ingredients,
      instructions: instructions,
      calories: calories,
      cookingTime: cookingTime,
    );
  }
}
