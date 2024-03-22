// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: 'recipe_id')
  int? get recipeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_name')
  String? get recipeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_image')
  String? get recipeImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at')
  String? get updateAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_at')
  String? get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'review')
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: 'recipe_id') int? recipeId,
      @JsonKey(name: 'account_id') int? userId,
      @JsonKey(name: 'recipe_name') String? recipeName,
      @JsonKey(name: 'recipe_image') String? recipeImage,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'review') String? review,
      @JsonKey(name: 'rating') double? rating});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = freezed,
    Object? userId = freezed,
    Object? recipeName = freezed,
    Object? recipeImage = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? userImage = freezed,
    Object? userName = freezed,
    Object? review = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeName: freezed == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipeImage: freezed == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'recipe_id') int? recipeId,
      @JsonKey(name: 'account_id') int? userId,
      @JsonKey(name: 'recipe_name') String? recipeName,
      @JsonKey(name: 'recipe_image') String? recipeImage,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'review') String? review,
      @JsonKey(name: 'rating') double? rating});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = freezed,
    Object? userId = freezed,
    Object? recipeName = freezed,
    Object? recipeImage = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? userImage = freezed,
    Object? userName = freezed,
    Object? review = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$ReviewImpl(
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeName: freezed == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipeImage: freezed == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {@JsonKey(name: 'recipe_id') this.recipeId,
      @JsonKey(name: 'account_id') this.userId,
      @JsonKey(name: 'recipe_name') this.recipeName,
      @JsonKey(name: 'recipe_image') this.recipeImage,
      @JsonKey(name: 'update_at') this.updateAt,
      @JsonKey(name: 'create_at') this.createAt,
      @JsonKey(name: 'user_image') this.userImage,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'review') this.review,
      @JsonKey(name: 'rating') this.rating});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  @JsonKey(name: 'recipe_id')
  final int? recipeId;
  @override
  @JsonKey(name: 'account_id')
  final int? userId;
  @override
  @JsonKey(name: 'recipe_name')
  final String? recipeName;
  @override
  @JsonKey(name: 'recipe_image')
  final String? recipeImage;
  @override
  @JsonKey(name: 'update_at')
  final String? updateAt;
  @override
  @JsonKey(name: 'create_at')
  final String? createAt;
  @override
  @JsonKey(name: 'user_image')
  final String? userImage;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'review')
  final String? review;
  @override
  @JsonKey(name: 'rating')
  final double? rating;

  @override
  String toString() {
    return 'Review(recipeId: $recipeId, userId: $userId, recipeName: $recipeName, recipeImage: $recipeImage, updateAt: $updateAt, createAt: $createAt, userImage: $userImage, userName: $userName, review: $review, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.recipeImage, recipeImage) ||
                other.recipeImage == recipeImage) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipeId, userId, recipeName,
      recipeImage, updateAt, createAt, userImage, userName, review, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@JsonKey(name: 'recipe_id') final int? recipeId,
      @JsonKey(name: 'account_id') final int? userId,
      @JsonKey(name: 'recipe_name') final String? recipeName,
      @JsonKey(name: 'recipe_image') final String? recipeImage,
      @JsonKey(name: 'update_at') final String? updateAt,
      @JsonKey(name: 'create_at') final String? createAt,
      @JsonKey(name: 'user_image') final String? userImage,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'review') final String? review,
      @JsonKey(name: 'rating') final double? rating}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  @JsonKey(name: 'recipe_id')
  int? get recipeId;
  @override
  @JsonKey(name: 'account_id')
  int? get userId;
  @override
  @JsonKey(name: 'recipe_name')
  String? get recipeName;
  @override
  @JsonKey(name: 'recipe_image')
  String? get recipeImage;
  @override
  @JsonKey(name: 'update_at')
  String? get updateAt;
  @override
  @JsonKey(name: 'create_at')
  String? get createAt;
  @override
  @JsonKey(name: 'user_image')
  String? get userImage;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'review')
  String? get review;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
