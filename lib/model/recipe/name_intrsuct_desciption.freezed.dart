// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_intrsuct_desciption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeInstruction _$RecipeInstructionFromJson(Map<String, dynamic> json) {
  return _RecipeInstruction.fromJson(json);
}

/// @nodoc
mixin _$RecipeInstruction {
  @JsonKey(name: 'id')
  int? get recipeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_name')
  String? get recipeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'instruction')
  String? get instruction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeInstructionCopyWith<RecipeInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeInstructionCopyWith<$Res> {
  factory $RecipeInstructionCopyWith(
          RecipeInstruction value, $Res Function(RecipeInstruction) then) =
      _$RecipeInstructionCopyWithImpl<$Res, RecipeInstruction>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? recipeId,
      @JsonKey(name: 'recipe_name') String? recipeName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'instruction') String? instruction});
}

/// @nodoc
class _$RecipeInstructionCopyWithImpl<$Res, $Val extends RecipeInstruction>
    implements $RecipeInstructionCopyWith<$Res> {
  _$RecipeInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = freezed,
    Object? recipeName = freezed,
    Object? description = freezed,
    Object? instruction = freezed,
  }) {
    return _then(_value.copyWith(
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeName: freezed == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      instruction: freezed == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeInstructionImplCopyWith<$Res>
    implements $RecipeInstructionCopyWith<$Res> {
  factory _$$RecipeInstructionImplCopyWith(_$RecipeInstructionImpl value,
          $Res Function(_$RecipeInstructionImpl) then) =
      __$$RecipeInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? recipeId,
      @JsonKey(name: 'recipe_name') String? recipeName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'instruction') String? instruction});
}

/// @nodoc
class __$$RecipeInstructionImplCopyWithImpl<$Res>
    extends _$RecipeInstructionCopyWithImpl<$Res, _$RecipeInstructionImpl>
    implements _$$RecipeInstructionImplCopyWith<$Res> {
  __$$RecipeInstructionImplCopyWithImpl(_$RecipeInstructionImpl _value,
      $Res Function(_$RecipeInstructionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = freezed,
    Object? recipeName = freezed,
    Object? description = freezed,
    Object? instruction = freezed,
  }) {
    return _then(_$RecipeInstructionImpl(
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeName: freezed == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      instruction: freezed == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeInstructionImpl implements _RecipeInstruction {
  const _$RecipeInstructionImpl(
      {@JsonKey(name: 'id') this.recipeId,
      @JsonKey(name: 'recipe_name') this.recipeName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'instruction') this.instruction});

  factory _$RecipeInstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeInstructionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? recipeId;
  @override
  @JsonKey(name: 'recipe_name')
  final String? recipeName;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'instruction')
  final String? instruction;

  @override
  String toString() {
    return 'RecipeInstruction(recipeId: $recipeId, recipeName: $recipeName, description: $description, instruction: $instruction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeInstructionImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, recipeId, recipeName, description, instruction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeInstructionImplCopyWith<_$RecipeInstructionImpl> get copyWith =>
      __$$RecipeInstructionImplCopyWithImpl<_$RecipeInstructionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeInstructionImplToJson(
      this,
    );
  }
}

abstract class _RecipeInstruction implements RecipeInstruction {
  const factory _RecipeInstruction(
          {@JsonKey(name: 'id') final int? recipeId,
          @JsonKey(name: 'recipe_name') final String? recipeName,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'instruction') final String? instruction}) =
      _$RecipeInstructionImpl;

  factory _RecipeInstruction.fromJson(Map<String, dynamic> json) =
      _$RecipeInstructionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get recipeId;
  @override
  @JsonKey(name: 'recipe_name')
  String? get recipeName;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'instruction')
  String? get instruction;
  @override
  @JsonKey(ignore: true)
  _$$RecipeInstructionImplCopyWith<_$RecipeInstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
