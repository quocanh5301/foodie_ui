// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
// @Default(0)
  @JsonKey(name: 'ingredient_id')
  int? get id => throw _privateConstructorUsedError; // @Default('')
  @JsonKey(name: 'ingredient_name')
  String? get ingredientName =>
      throw _privateConstructorUsedError; // @Default('')
  @JsonKey(name: 'ingredient_image')
  String? get ingredientImage =>
      throw _privateConstructorUsedError; // @Default('')
  @JsonKey(name: 'quantity')
  String? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ingredient_id') int? id,
      @JsonKey(name: 'ingredient_name') String? ingredientName,
      @JsonKey(name: 'ingredient_image') String? ingredientImage,
      @JsonKey(name: 'quantity') String? quantity});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ingredientName = freezed,
    Object? ingredientImage = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredientName: freezed == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientImage: freezed == ingredientImage
          ? _value.ingredientImage
          : ingredientImage // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientImplCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$IngredientImplCopyWith(
          _$IngredientImpl value, $Res Function(_$IngredientImpl) then) =
      __$$IngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ingredient_id') int? id,
      @JsonKey(name: 'ingredient_name') String? ingredientName,
      @JsonKey(name: 'ingredient_image') String? ingredientImage,
      @JsonKey(name: 'quantity') String? quantity});
}

/// @nodoc
class __$$IngredientImplCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$IngredientImpl>
    implements _$$IngredientImplCopyWith<$Res> {
  __$$IngredientImplCopyWithImpl(
      _$IngredientImpl _value, $Res Function(_$IngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ingredientName = freezed,
    Object? ingredientImage = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$IngredientImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredientName: freezed == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientImage: freezed == ingredientImage
          ? _value.ingredientImage
          : ingredientImage // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientImpl implements _Ingredient {
  const _$IngredientImpl(
      {@JsonKey(name: 'ingredient_id') this.id,
      @JsonKey(name: 'ingredient_name') this.ingredientName,
      @JsonKey(name: 'ingredient_image') this.ingredientImage,
      @JsonKey(name: 'quantity') this.quantity});

  factory _$IngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientImplFromJson(json);

// @Default(0)
  @override
  @JsonKey(name: 'ingredient_id')
  final int? id;
// @Default('')
  @override
  @JsonKey(name: 'ingredient_name')
  final String? ingredientName;
// @Default('')
  @override
  @JsonKey(name: 'ingredient_image')
  final String? ingredientImage;
// @Default('')
  @override
  @JsonKey(name: 'quantity')
  final String? quantity;

  @override
  String toString() {
    return 'Ingredient(id: $id, ingredientName: $ingredientName, ingredientImage: $ingredientImage, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ingredientName, ingredientName) ||
                other.ingredientName == ingredientName) &&
            (identical(other.ingredientImage, ingredientImage) ||
                other.ingredientImage == ingredientImage) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, ingredientName, ingredientImage, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      __$$IngredientImplCopyWithImpl<_$IngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientImplToJson(
      this,
    );
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {@JsonKey(name: 'ingredient_id') final int? id,
      @JsonKey(name: 'ingredient_name') final String? ingredientName,
      @JsonKey(name: 'ingredient_image') final String? ingredientImage,
      @JsonKey(name: 'quantity') final String? quantity}) = _$IngredientImpl;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$IngredientImpl.fromJson;

  @override // @Default(0)
  @JsonKey(name: 'ingredient_id')
  int? get id;
  @override // @Default('')
  @JsonKey(name: 'ingredient_name')
  String? get ingredientName;
  @override // @Default('')
  @JsonKey(name: 'ingredient_image')
  String? get ingredientImage;
  @override // @Default('')
  @JsonKey(name: 'quantity')
  String? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
