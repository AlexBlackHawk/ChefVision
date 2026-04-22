import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_entity.freezed.dart';
part 'meal_entity.g.dart';

@freezed
abstract class MealEntity with _$MealEntity {
  const factory MealEntity({
    required String name,
    required String photo,
    required List<String> ingredients,
    required List<String> instructions,
    required int calories,
    required int cookingTime,
  }) = _MealEntity;

  factory MealEntity.fromJson(Map<String, dynamic> json) =>
      _$MealEntityFromJson(json);
}
