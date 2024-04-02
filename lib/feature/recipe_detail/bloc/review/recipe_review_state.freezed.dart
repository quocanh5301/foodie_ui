// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_review_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeReviewState {
  int get code => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError; //new input data
  String get reviewImagePath => throw _privateConstructorUsedError;
  String get reviewContent => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError; //state controller
  AddRecipeReviewStatus get addRecipeReviewStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeReviewStateCopyWith<RecipeReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeReviewStateCopyWith<$Res> {
  factory $RecipeReviewStateCopyWith(
          RecipeReviewState value, $Res Function(RecipeReviewState) then) =
      _$RecipeReviewStateCopyWithImpl<$Res, RecipeReviewState>;
  @useResult
  $Res call(
      {int code,
      String mess,
      String reviewImagePath,
      String reviewContent,
      double rating,
      AddRecipeReviewStatus addRecipeReviewStatus});
}

/// @nodoc
class _$RecipeReviewStateCopyWithImpl<$Res, $Val extends RecipeReviewState>
    implements $RecipeReviewStateCopyWith<$Res> {
  _$RecipeReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? reviewImagePath = null,
    Object? reviewContent = null,
    Object? rating = null,
    Object? addRecipeReviewStatus = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      reviewImagePath: null == reviewImagePath
          ? _value.reviewImagePath
          : reviewImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      addRecipeReviewStatus: null == addRecipeReviewStatus
          ? _value.addRecipeReviewStatus
          : addRecipeReviewStatus // ignore: cast_nullable_to_non_nullable
              as AddRecipeReviewStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeReviewStateImplCopyWith<$Res>
    implements $RecipeReviewStateCopyWith<$Res> {
  factory _$$RecipeReviewStateImplCopyWith(_$RecipeReviewStateImpl value,
          $Res Function(_$RecipeReviewStateImpl) then) =
      __$$RecipeReviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String mess,
      String reviewImagePath,
      String reviewContent,
      double rating,
      AddRecipeReviewStatus addRecipeReviewStatus});
}

/// @nodoc
class __$$RecipeReviewStateImplCopyWithImpl<$Res>
    extends _$RecipeReviewStateCopyWithImpl<$Res, _$RecipeReviewStateImpl>
    implements _$$RecipeReviewStateImplCopyWith<$Res> {
  __$$RecipeReviewStateImplCopyWithImpl(_$RecipeReviewStateImpl _value,
      $Res Function(_$RecipeReviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? reviewImagePath = null,
    Object? reviewContent = null,
    Object? rating = null,
    Object? addRecipeReviewStatus = null,
  }) {
    return _then(_$RecipeReviewStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      reviewImagePath: null == reviewImagePath
          ? _value.reviewImagePath
          : reviewImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      addRecipeReviewStatus: null == addRecipeReviewStatus
          ? _value.addRecipeReviewStatus
          : addRecipeReviewStatus // ignore: cast_nullable_to_non_nullable
              as AddRecipeReviewStatus,
    ));
  }
}

/// @nodoc

class _$RecipeReviewStateImpl implements _RecipeReviewState {
  const _$RecipeReviewStateImpl(
      {this.code = 200,
      this.mess = '',
      this.reviewImagePath = '',
      this.reviewContent = '',
      this.rating = 0,
      this.addRecipeReviewStatus = AddRecipeReviewStatus.initial});

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String mess;
//new input data
  @override
  @JsonKey()
  final String reviewImagePath;
  @override
  @JsonKey()
  final String reviewContent;
  @override
  @JsonKey()
  final double rating;
//state controller
  @override
  @JsonKey()
  final AddRecipeReviewStatus addRecipeReviewStatus;

  @override
  String toString() {
    return 'RecipeReviewState(code: $code, mess: $mess, reviewImagePath: $reviewImagePath, reviewContent: $reviewContent, rating: $rating, addRecipeReviewStatus: $addRecipeReviewStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeReviewStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.reviewImagePath, reviewImagePath) ||
                other.reviewImagePath == reviewImagePath) &&
            (identical(other.reviewContent, reviewContent) ||
                other.reviewContent == reviewContent) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.addRecipeReviewStatus, addRecipeReviewStatus) ||
                other.addRecipeReviewStatus == addRecipeReviewStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, mess, reviewImagePath,
      reviewContent, rating, addRecipeReviewStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeReviewStateImplCopyWith<_$RecipeReviewStateImpl> get copyWith =>
      __$$RecipeReviewStateImplCopyWithImpl<_$RecipeReviewStateImpl>(
          this, _$identity);
}

abstract class _RecipeReviewState implements RecipeReviewState {
  const factory _RecipeReviewState(
          {final int code,
          final String mess,
          final String reviewImagePath,
          final String reviewContent,
          final double rating,
          final AddRecipeReviewStatus addRecipeReviewStatus}) =
      _$RecipeReviewStateImpl;

  @override
  int get code;
  @override
  String get mess;
  @override //new input data
  String get reviewImagePath;
  @override
  String get reviewContent;
  @override
  double get rating;
  @override //state controller
  AddRecipeReviewStatus get addRecipeReviewStatus;
  @override
  @JsonKey(ignore: true)
  _$$RecipeReviewStateImplCopyWith<_$RecipeReviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
