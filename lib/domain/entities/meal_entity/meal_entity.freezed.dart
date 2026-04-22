// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealEntity {
  String get name;
  String get photo;
  List<String> get ingredients;
  List<String> get instructions;
  int get calories;
  int get cookingTime;

  /// Create a copy of MealEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealEntityCopyWith<MealEntity> get copyWith =>
      _$MealEntityCopyWithImpl<MealEntity>(this as MealEntity, _$identity);

  /// Serializes this MealEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      photo,
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(instructions),
      calories,
      cookingTime);

  @override
  String toString() {
    return 'MealEntity(name: $name, photo: $photo, ingredients: $ingredients, instructions: $instructions, calories: $calories, cookingTime: $cookingTime)';
  }
}

/// @nodoc
abstract mixin class $MealEntityCopyWith<$Res> {
  factory $MealEntityCopyWith(
          MealEntity value, $Res Function(MealEntity) _then) =
      _$MealEntityCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String photo,
      List<String> ingredients,
      List<String> instructions,
      int calories,
      int cookingTime});
}

/// @nodoc
class _$MealEntityCopyWithImpl<$Res> implements $MealEntityCopyWith<$Res> {
  _$MealEntityCopyWithImpl(this._self, this._then);

  final MealEntity _self;
  final $Res Function(MealEntity) _then;

  /// Create a copy of MealEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photo = null,
    Object? ingredients = null,
    Object? instructions = null,
    Object? calories = null,
    Object? cookingTime = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _self.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      cookingTime: null == cookingTime
          ? _self.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealEntity].
extension MealEntityPatterns on MealEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MealEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MealEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MealEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String photo, List<String> ingredients,
            List<String> instructions, int calories, int cookingTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealEntity() when $default != null:
        return $default(_that.name, _that.photo, _that.ingredients,
            _that.instructions, _that.calories, _that.cookingTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String photo, List<String> ingredients,
            List<String> instructions, int calories, int cookingTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealEntity():
        return $default(_that.name, _that.photo, _that.ingredients,
            _that.instructions, _that.calories, _that.cookingTime);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String photo, List<String> ingredients,
            List<String> instructions, int calories, int cookingTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealEntity() when $default != null:
        return $default(_that.name, _that.photo, _that.ingredients,
            _that.instructions, _that.calories, _that.cookingTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealEntity implements MealEntity {
  const _MealEntity(
      {required this.name,
      required this.photo,
      required final List<String> ingredients,
      required final List<String> instructions,
      required this.calories,
      required this.cookingTime})
      : _ingredients = ingredients,
        _instructions = instructions;
  factory _MealEntity.fromJson(Map<String, dynamic> json) =>
      _$MealEntityFromJson(json);

  @override
  final String name;
  @override
  final String photo;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<String> _instructions;
  @override
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  final int calories;
  @override
  final int cookingTime;

  /// Create a copy of MealEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealEntityCopyWith<_MealEntity> get copyWith =>
      __$MealEntityCopyWithImpl<_MealEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      photo,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_instructions),
      calories,
      cookingTime);

  @override
  String toString() {
    return 'MealEntity(name: $name, photo: $photo, ingredients: $ingredients, instructions: $instructions, calories: $calories, cookingTime: $cookingTime)';
  }
}

/// @nodoc
abstract mixin class _$MealEntityCopyWith<$Res>
    implements $MealEntityCopyWith<$Res> {
  factory _$MealEntityCopyWith(
          _MealEntity value, $Res Function(_MealEntity) _then) =
      __$MealEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String photo,
      List<String> ingredients,
      List<String> instructions,
      int calories,
      int cookingTime});
}

/// @nodoc
class __$MealEntityCopyWithImpl<$Res> implements _$MealEntityCopyWith<$Res> {
  __$MealEntityCopyWithImpl(this._self, this._then);

  final _MealEntity _self;
  final $Res Function(_MealEntity) _then;

  /// Create a copy of MealEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? photo = null,
    Object? ingredients = null,
    Object? instructions = null,
    Object? calories = null,
    Object? cookingTime = null,
  }) {
    return _then(_MealEntity(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _self._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _self._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      cookingTime: null == cookingTime
          ? _self.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
