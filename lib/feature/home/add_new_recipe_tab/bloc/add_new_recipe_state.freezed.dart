// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddNewRecipeState {
  String get mess => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  List<Ingredient> get ingredientList => throw _privateConstructorUsedError;
  String get recipeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get instruction => throw _privateConstructorUsedError;
  String get recipeImage => throw _privateConstructorUsedError; // file path
  UploadRecipeStatus get uploadRecipeStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewRecipeStateCopyWith<AddNewRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewRecipeStateCopyWith<$Res> {
  factory $AddNewRecipeStateCopyWith(
          AddNewRecipeState value, $Res Function(AddNewRecipeState) then) =
      _$AddNewRecipeStateCopyWithImpl<$Res, AddNewRecipeState>;
  @useResult
  $Res call(
      {String mess,
      int code,
      List<Ingredient> ingredientList,
      String recipeName,
      String description,
      String instruction,
      String recipeImage,
      UploadRecipeStatus uploadRecipeStatus});
}

/// @nodoc
class _$AddNewRecipeStateCopyWithImpl<$Res, $Val extends AddNewRecipeState>
    implements $AddNewRecipeStateCopyWith<$Res> {
  _$AddNewRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? ingredientList = null,
    Object? recipeName = null,
    Object? description = null,
    Object? instruction = null,
    Object? recipeImage = null,
    Object? uploadRecipeStatus = null,
  }) {
    return _then(_value.copyWith(
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      ingredientList: null == ingredientList
          ? _value.ingredientList
          : ingredientList // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      recipeImage: null == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String,
      uploadRecipeStatus: null == uploadRecipeStatus
          ? _value.uploadRecipeStatus
          : uploadRecipeStatus // ignore: cast_nullable_to_non_nullable
              as UploadRecipeStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNewRecipeStateImplCopyWith<$Res>
    implements $AddNewRecipeStateCopyWith<$Res> {
  factory _$$AddNewRecipeStateImplCopyWith(_$AddNewRecipeStateImpl value,
          $Res Function(_$AddNewRecipeStateImpl) then) =
      __$$AddNewRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mess,
      int code,
      List<Ingredient> ingredientList,
      String recipeName,
      String description,
      String instruction,
      String recipeImage,
      UploadRecipeStatus uploadRecipeStatus});
}

/// @nodoc
class __$$AddNewRecipeStateImplCopyWithImpl<$Res>
    extends _$AddNewRecipeStateCopyWithImpl<$Res, _$AddNewRecipeStateImpl>
    implements _$$AddNewRecipeStateImplCopyWith<$Res> {
  __$$AddNewRecipeStateImplCopyWithImpl(_$AddNewRecipeStateImpl _value,
      $Res Function(_$AddNewRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? ingredientList = null,
    Object? recipeName = null,
    Object? description = null,
    Object? instruction = null,
    Object? recipeImage = null,
    Object? uploadRecipeStatus = null,
  }) {
    return _then(_$AddNewRecipeStateImpl(
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      ingredientList: null == ingredientList
          ? _value._ingredientList
          : ingredientList // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      recipeImage: null == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String,
      uploadRecipeStatus: null == uploadRecipeStatus
          ? _value.uploadRecipeStatus
          : uploadRecipeStatus // ignore: cast_nullable_to_non_nullable
              as UploadRecipeStatus,
    ));
  }
}

/// @nodoc

class _$AddNewRecipeStateImpl implements _AddNewRecipeState {
  const _$AddNewRecipeStateImpl(
      {this.mess = '',
      this.code = 200,
      final List<Ingredient> ingredientList = const [],
      this.recipeName = '',
      this.description = '',
      this.instruction = '',
      this.recipeImage = '',
      this.uploadRecipeStatus = UploadRecipeStatus.initial})
      : _ingredientList = ingredientList;

  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int code;
  final List<Ingredient> _ingredientList;
  @override
  @JsonKey()
  List<Ingredient> get ingredientList {
    if (_ingredientList is EqualUnmodifiableListView) return _ingredientList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientList);
  }

  @override
  @JsonKey()
  final String recipeName;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String instruction;
  @override
  @JsonKey()
  final String recipeImage;
// file path
  @override
  @JsonKey()
  final UploadRecipeStatus uploadRecipeStatus;

  @override
  String toString() {
    return 'AddNewRecipeState(mess: $mess, code: $code, ingredientList: $ingredientList, recipeName: $recipeName, description: $description, instruction: $instruction, recipeImage: $recipeImage, uploadRecipeStatus: $uploadRecipeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewRecipeStateImpl &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._ingredientList, _ingredientList) &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.recipeImage, recipeImage) ||
                other.recipeImage == recipeImage) &&
            (identical(other.uploadRecipeStatus, uploadRecipeStatus) ||
                other.uploadRecipeStatus == uploadRecipeStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mess,
      code,
      const DeepCollectionEquality().hash(_ingredientList),
      recipeName,
      description,
      instruction,
      recipeImage,
      uploadRecipeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewRecipeStateImplCopyWith<_$AddNewRecipeStateImpl> get copyWith =>
      __$$AddNewRecipeStateImplCopyWithImpl<_$AddNewRecipeStateImpl>(
          this, _$identity);
}

abstract class _AddNewRecipeState implements AddNewRecipeState {
  const factory _AddNewRecipeState(
      {final String mess,
      final int code,
      final List<Ingredient> ingredientList,
      final String recipeName,
      final String description,
      final String instruction,
      final String recipeImage,
      final UploadRecipeStatus uploadRecipeStatus}) = _$AddNewRecipeStateImpl;

  @override
  String get mess;
  @override
  int get code;
  @override
  List<Ingredient> get ingredientList;
  @override
  String get recipeName;
  @override
  String get description;
  @override
  String get instruction;
  @override
  String get recipeImage;
  @override // file path
  UploadRecipeStatus get uploadRecipeStatus;
  @override
  @JsonKey(ignore: true)
  _$$AddNewRecipeStateImplCopyWith<_$AddNewRecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
