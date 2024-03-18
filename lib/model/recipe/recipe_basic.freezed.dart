// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_basic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeBasic _$RecipeBasicFromJson(Map<String, dynamic> json) {
  return _RecipeBasic.fromJson(json);
}

/// @nodoc
mixin _$RecipeBasic {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'num_of_followers')
  int? get numOfFollower => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_of_rating')
  int? get numOfRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_of_comments')
  int? get numOfComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  UserBasic? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeBasicCopyWith<RecipeBasic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeBasicCopyWith<$Res> {
  factory $RecipeBasicCopyWith(
          RecipeBasic value, $Res Function(RecipeBasic) then) =
      _$RecipeBasicCopyWithImpl<$Res, RecipeBasic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'account_id') int? userId,
      @JsonKey(name: 'recipe_name') String? recipeName,
      @JsonKey(name: 'recipe_image') String? recipeImage,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'num_of_followers') int? numOfFollower,
      @JsonKey(name: 'num_of_rating') int? numOfRating,
      @JsonKey(name: 'num_of_comments') int? numOfComment,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'owner') UserBasic? owner});

  $UserBasicCopyWith<$Res>? get owner;
}

/// @nodoc
class _$RecipeBasicCopyWithImpl<$Res, $Val extends RecipeBasic>
    implements $RecipeBasicCopyWith<$Res> {
  _$RecipeBasicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? recipeName = freezed,
    Object? recipeImage = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? numOfFollower = freezed,
    Object? numOfRating = freezed,
    Object? numOfComment = freezed,
    Object? rating = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      numOfFollower: freezed == numOfFollower
          ? _value.numOfFollower
          : numOfFollower // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfRating: freezed == numOfRating
          ? _value.numOfRating
          : numOfRating // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfComment: freezed == numOfComment
          ? _value.numOfComment
          : numOfComment // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserBasic?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserBasicCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserBasicCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeBasicImplCopyWith<$Res>
    implements $RecipeBasicCopyWith<$Res> {
  factory _$$RecipeBasicImplCopyWith(
          _$RecipeBasicImpl value, $Res Function(_$RecipeBasicImpl) then) =
      __$$RecipeBasicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'account_id') int? userId,
      @JsonKey(name: 'recipe_name') String? recipeName,
      @JsonKey(name: 'recipe_image') String? recipeImage,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'num_of_followers') int? numOfFollower,
      @JsonKey(name: 'num_of_rating') int? numOfRating,
      @JsonKey(name: 'num_of_comments') int? numOfComment,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'owner') UserBasic? owner});

  @override
  $UserBasicCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$RecipeBasicImplCopyWithImpl<$Res>
    extends _$RecipeBasicCopyWithImpl<$Res, _$RecipeBasicImpl>
    implements _$$RecipeBasicImplCopyWith<$Res> {
  __$$RecipeBasicImplCopyWithImpl(
      _$RecipeBasicImpl _value, $Res Function(_$RecipeBasicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? recipeName = freezed,
    Object? recipeImage = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? numOfFollower = freezed,
    Object? numOfRating = freezed,
    Object? numOfComment = freezed,
    Object? rating = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$RecipeBasicImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      numOfFollower: freezed == numOfFollower
          ? _value.numOfFollower
          : numOfFollower // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfRating: freezed == numOfRating
          ? _value.numOfRating
          : numOfRating // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfComment: freezed == numOfComment
          ? _value.numOfComment
          : numOfComment // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserBasic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeBasicImpl implements _RecipeBasic {
  const _$RecipeBasicImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'account_id') this.userId,
      @JsonKey(name: 'recipe_name') this.recipeName,
      @JsonKey(name: 'recipe_image') this.recipeImage,
      @JsonKey(name: 'update_at') this.updateAt,
      @JsonKey(name: 'create_at') this.createAt,
      @JsonKey(name: 'num_of_followers') this.numOfFollower,
      @JsonKey(name: 'num_of_rating') this.numOfRating,
      @JsonKey(name: 'num_of_comments') this.numOfComment,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'owner') this.owner});

  factory _$RecipeBasicImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeBasicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
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
  @JsonKey(name: 'num_of_followers')
  final int? numOfFollower;
  @override
  @JsonKey(name: 'num_of_rating')
  final int? numOfRating;
  @override
  @JsonKey(name: 'num_of_comments')
  final int? numOfComment;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: 'owner')
  final UserBasic? owner;

  @override
  String toString() {
    return 'RecipeBasic(id: $id, userId: $userId, recipeName: $recipeName, recipeImage: $recipeImage, updateAt: $updateAt, createAt: $createAt, numOfFollower: $numOfFollower, numOfRating: $numOfRating, numOfComment: $numOfComment, rating: $rating, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeBasicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.recipeImage, recipeImage) ||
                other.recipeImage == recipeImage) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.numOfFollower, numOfFollower) ||
                other.numOfFollower == numOfFollower) &&
            (identical(other.numOfRating, numOfRating) ||
                other.numOfRating == numOfRating) &&
            (identical(other.numOfComment, numOfComment) ||
                other.numOfComment == numOfComment) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      recipeName,
      recipeImage,
      updateAt,
      createAt,
      numOfFollower,
      numOfRating,
      numOfComment,
      rating,
      owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeBasicImplCopyWith<_$RecipeBasicImpl> get copyWith =>
      __$$RecipeBasicImplCopyWithImpl<_$RecipeBasicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeBasicImplToJson(
      this,
    );
  }
}

abstract class _RecipeBasic implements RecipeBasic {
  const factory _RecipeBasic(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'account_id') final int? userId,
      @JsonKey(name: 'recipe_name') final String? recipeName,
      @JsonKey(name: 'recipe_image') final String? recipeImage,
      @JsonKey(name: 'update_at') final String? updateAt,
      @JsonKey(name: 'create_at') final String? createAt,
      @JsonKey(name: 'num_of_followers') final int? numOfFollower,
      @JsonKey(name: 'num_of_rating') final int? numOfRating,
      @JsonKey(name: 'num_of_comments') final int? numOfComment,
      @JsonKey(name: 'rating') final double? rating,
      @JsonKey(name: 'owner') final UserBasic? owner}) = _$RecipeBasicImpl;

  factory _RecipeBasic.fromJson(Map<String, dynamic> json) =
      _$RecipeBasicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
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
  @JsonKey(name: 'num_of_followers')
  int? get numOfFollower;
  @override
  @JsonKey(name: 'num_of_rating')
  int? get numOfRating;
  @override
  @JsonKey(name: 'num_of_comments')
  int? get numOfComment;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'owner')
  UserBasic? get owner;
  @override
  @JsonKey(ignore: true)
  _$$RecipeBasicImplCopyWith<_$RecipeBasicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
