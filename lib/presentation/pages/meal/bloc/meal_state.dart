part of 'meal_bloc.dart';

sealed class MealState extends Equatable {
  const MealState();
}

final class MealInitial extends MealState {
  @override
  List<Object> get props => [];
}
