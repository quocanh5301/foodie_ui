// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteRecipeState {
  String get mess => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  RecipeInstruction get recipeInstructionData =>
      throw _privateConstructorUsedError;
  GetRecipeInstructStatus get getRecipeInstructStatus =>
      throw _privateConstructorUsedError;
  DeleteRecipeStatus get deleteRecipeStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteRecipeStateCopyWith<DeleteRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRecipeStateCopyWith<$Res> {
  factory $DeleteRecipeStateCopyWith(
          DeleteRecipeState value, $Res Function(DeleteRecipeState) then) =
      _$DeleteRecipeStateCopyWithImpl<$Res, DeleteRecipeState>;
  @useResult
  $Res call(
      {String mess,
      int code,
      RecipeInstruction recipeInstructionData,
      GetRecipeInstructStatus getRecipeInstructStatus,
      DeleteRecipeStatus deleteRecipeStatus});

  $RecipeInstructionCopyWith<$Res> get recipeInstructionData;
}

/// @nodoc
class _$DeleteRecipeStateCopyWithImpl<$Res, $Val extends DeleteRecipeState>
    implements $DeleteRecipeStateCopyWith<$Res> {
  _$DeleteRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? recipeInstructionData = null,
    Object? getRecipeInstructStatus = null,
    Object? deleteRecipeStatus = null,
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
      recipeInstructionData: null == recipeInstructionData
          ? _value.recipeInstructionData
          : recipeInstructionData // ignore: cast_nullable_to_non_nullable
              as RecipeInstruction,
      getRecipeInstructStatus: null == getRecipeInstructStatus
          ? _value.getRecipeInstructStatus
          : getRecipeInstructStatus // ignore: cast_nullable_to_non_nullable
              as GetRecipeInstructStatus,
      deleteRecipeStatus: null == deleteRecipeStatus
          ? _value.deleteRecipeStatus
          : deleteRecipeStatus // ignore: cast_nullable_to_non_nullable
              as DeleteRecipeStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeInstructionCopyWith<$Res> get recipeInstructionData {
    return $RecipeInstructionCopyWith<$Res>(_value.recipeInstructionData,
        (value) {
      return _then(_value.copyWith(recipeInstructionData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteRecipeStateImplCopyWith<$Res>
    implements $DeleteRecipeStateCopyWith<$Res> {
  factory _$$DeleteRecipeStateImplCopyWith(_$DeleteRecipeStateImpl value,
          $Res Function(_$DeleteRecipeStateImpl) then) =
      __$$DeleteRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mess,
      int code,
      RecipeInstruction recipeInstructionData,
      GetRecipeInstructStatus getRecipeInstructStatus,
      DeleteRecipeStatus deleteRecipeStatus});

  @override
  $RecipeInstructionCopyWith<$Res> get recipeInstructionData;
}

/// @nodoc
class __$$DeleteRecipeStateImplCopyWithImpl<$Res>
    extends _$DeleteRecipeStateCopyWithImpl<$Res, _$DeleteRecipeStateImpl>
    implements _$$DeleteRecipeStateImplCopyWith<$Res> {
  __$$DeleteRecipeStateImplCopyWithImpl(_$DeleteRecipeStateImpl _value,
      $Res Function(_$DeleteRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? recipeInstructionData = null,
    Object? getRecipeInstructStatus = null,
    Object? deleteRecipeStatus = null,
  }) {
    return _then(_$DeleteRecipeStateImpl(
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      recipeInstructionData: null == recipeInstructionData
          ? _value.recipeInstructionData
          : recipeInstructionData // ignore: cast_nullable_to_non_nullable
              as RecipeInstruction,
      getRecipeInstructStatus: null == getRecipeInstructStatus
          ? _value.getRecipeInstructStatus
          : getRecipeInstructStatus // ignore: cast_nullable_to_non_nullable
              as GetRecipeInstructStatus,
      deleteRecipeStatus: null == deleteRecipeStatus
          ? _value.deleteRecipeStatus
          : deleteRecipeStatus // ignore: cast_nullable_to_non_nullable
              as DeleteRecipeStatus,
    ));
  }
}

/// @nodoc

class _$DeleteRecipeStateImpl implements _DeleteRecipeState {
  const _$DeleteRecipeStateImpl(
      {this.mess = '',
      this.code = 200,
      this.recipeInstructionData = const RecipeInstruction(),
      this.getRecipeInstructStatus = GetRecipeInstructStatus.initial,
      this.deleteRecipeStatus = DeleteRecipeStatus.initial});

  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final RecipeInstruction recipeInstructionData;
  @override
  @JsonKey()
  final GetRecipeInstructStatus getRecipeInstructStatus;
  @override
  @JsonKey()
  final DeleteRecipeStatus deleteRecipeStatus;

  @override
  String toString() {
    return 'DeleteRecipeState(mess: $mess, code: $code, recipeInstructionData: $recipeInstructionData, getRecipeInstructStatus: $getRecipeInstructStatus, deleteRecipeStatus: $deleteRecipeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRecipeStateImpl &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.recipeInstructionData, recipeInstructionData) ||
                other.recipeInstructionData == recipeInstructionData) &&
            (identical(
                    other.getRecipeInstructStatus, getRecipeInstructStatus) ||
                other.getRecipeInstructStatus == getRecipeInstructStatus) &&
            (identical(other.deleteRecipeStatus, deleteRecipeStatus) ||
                other.deleteRecipeStatus == deleteRecipeStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mess, code,
      recipeInstructionData, getRecipeInstructStatus, deleteRecipeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRecipeStateImplCopyWith<_$DeleteRecipeStateImpl> get copyWith =>
      __$$DeleteRecipeStateImplCopyWithImpl<_$DeleteRecipeStateImpl>(
          this, _$identity);
}

abstract class _DeleteRecipeState implements DeleteRecipeState {
  const factory _DeleteRecipeState(
      {final String mess,
      final int code,
      final RecipeInstruction recipeInstructionData,
      final GetRecipeInstructStatus getRecipeInstructStatus,
      final DeleteRecipeStatus deleteRecipeStatus}) = _$DeleteRecipeStateImpl;

  @override
  String get mess;
  @override
  int get code;
  @override
  RecipeInstruction get recipeInstructionData;
  @override
  GetRecipeInstructStatus get getRecipeInstructStatus;
  @override
  DeleteRecipeStatus get deleteRecipeStatus;
  @override
  @JsonKey(ignore: true)
  _$$DeleteRecipeStateImplCopyWith<_$DeleteRecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
