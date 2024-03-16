// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDetail _$RecipeDetailFromJson(Map<String, dynamic> json) {
  return _RecipeDetail.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetail {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_id')
  int? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_name')
  String? get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'instruction')
  String? get instruction => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get joinAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_of_followers')
  int? get numOfFollower => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_of_rating')
  int? get numOfRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_of_comments')
  int? get numOfComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at')
  String? get updateAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_at')
  String? get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_image')
  String? get recipeImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'isBookmark')
  int? get isBookmark => throw _privateConstructorUsedError;
  @JsonKey(name: 'ingredients')
  List<Ingredient>? get ingredients => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  User? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailCopyWith<RecipeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailCopyWith<$Res> {
  factory $RecipeDetailCopyWith(
          RecipeDetail value, $Res Function(RecipeDetail) then) =
      _$RecipeDetailCopyWithImpl<$Res, RecipeDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'account_id') int? userName,
      @JsonKey(name: 'recipe_name') String? userEmail,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'instruction') String? instruction,
      @JsonKey(name: 'rating') double? joinAt,
      @JsonKey(name: 'num_of_followers') int? numOfFollower,
      @JsonKey(name: 'num_of_rating') int? numOfRating,
      @JsonKey(name: 'num_of_comments') int? numOfComment,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'recipe_image') String? recipeImage,
      @JsonKey(name: 'isBookmark') int? isBookmark,
      @JsonKey(name: 'ingredients') List<Ingredient>? ingredients,
      @JsonKey(name: 'owner') User? owner});

  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class _$RecipeDetailCopyWithImpl<$Res, $Val extends RecipeDetail>
    implements $RecipeDetailCopyWith<$Res> {
  _$RecipeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? description = freezed,
    Object? instruction = freezed,
    Object? joinAt = freezed,
    Object? numOfFollower = freezed,
    Object? numOfRating = freezed,
    Object? numOfComment = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? recipeImage = freezed,
    Object? isBookmark = freezed,
    Object? ingredients = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as int?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      instruction: freezed == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String?,
      joinAt: freezed == joinAt
          ? _value.joinAt
          : joinAt // ignore: cast_nullable_to_non_nullable
              as double?,
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
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recipeImage: freezed == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBookmark: freezed == isBookmark
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeDetailImplCopyWith<$Res>
    implements $RecipeDetailCopyWith<$Res> {
  factory _$$RecipeDetailImplCopyWith(
          _$RecipeDetailImpl value, $Res Function(_$RecipeDetailImpl) then) =
      __$$RecipeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'account_id') int? userName,
      @JsonKey(name: 'recipe_name') String? userEmail,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'instruction') String? instruction,
      @JsonKey(name: 'rating') double? joinAt,
      @JsonKey(name: 'num_of_followers') int? numOfFollower,
      @JsonKey(name: 'num_of_rating') int? numOfRating,
      @JsonKey(name: 'num_of_comments') int? numOfComment,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'recipe_image') String? recipeImage,
      @JsonKey(name: 'isBookmark') int? isBookmark,
      @JsonKey(name: 'ingredients') List<Ingredient>? ingredients,
      @JsonKey(name: 'owner') User? owner});

  @override
  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$RecipeDetailImplCopyWithImpl<$Res>
    extends _$RecipeDetailCopyWithImpl<$Res, _$RecipeDetailImpl>
    implements _$$RecipeDetailImplCopyWith<$Res> {
  __$$RecipeDetailImplCopyWithImpl(
      _$RecipeDetailImpl _value, $Res Function(_$RecipeDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? description = freezed,
    Object? instruction = freezed,
    Object? joinAt = freezed,
    Object? numOfFollower = freezed,
    Object? numOfRating = freezed,
    Object? numOfComment = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? recipeImage = freezed,
    Object? isBookmark = freezed,
    Object? ingredients = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$RecipeDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as int?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      instruction: freezed == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String?,
      joinAt: freezed == joinAt
          ? _value.joinAt
          : joinAt // ignore: cast_nullable_to_non_nullable
              as double?,
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
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recipeImage: freezed == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBookmark: freezed == isBookmark
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDetailImpl implements _RecipeDetail {
  const _$RecipeDetailImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'account_id') this.userName,
      @JsonKey(name: 'recipe_name') this.userEmail,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'instruction') this.instruction,
      @JsonKey(name: 'rating') this.joinAt,
      @JsonKey(name: 'num_of_followers') this.numOfFollower,
      @JsonKey(name: 'num_of_rating') this.numOfRating,
      @JsonKey(name: 'num_of_comments') this.numOfComment,
      @JsonKey(name: 'update_at') this.updateAt,
      @JsonKey(name: 'create_at') this.createAt,
      @JsonKey(name: 'recipe_image') this.recipeImage,
      @JsonKey(name: 'isBookmark') this.isBookmark,
      @JsonKey(name: 'ingredients') final List<Ingredient>? ingredients,
      @JsonKey(name: 'owner') this.owner})
      : _ingredients = ingredients;

  factory _$RecipeDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'account_id')
  final int? userName;
  @override
  @JsonKey(name: 'recipe_name')
  final String? userEmail;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'instruction')
  final String? instruction;
  @override
  @JsonKey(name: 'rating')
  final double? joinAt;
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
  @JsonKey(name: 'update_at')
  final String? updateAt;
  @override
  @JsonKey(name: 'create_at')
  final String? createAt;
  @override
  @JsonKey(name: 'recipe_image')
  final String? recipeImage;
  @override
  @JsonKey(name: 'isBookmark')
  final int? isBookmark;
  final List<Ingredient>? _ingredients;
  @override
  @JsonKey(name: 'ingredients')
  List<Ingredient>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'owner')
  final User? owner;

  @override
  String toString() {
    return 'RecipeDetail(id: $id, userName: $userName, userEmail: $userEmail, description: $description, instruction: $instruction, joinAt: $joinAt, numOfFollower: $numOfFollower, numOfRating: $numOfRating, numOfComment: $numOfComment, updateAt: $updateAt, createAt: $createAt, recipeImage: $recipeImage, isBookmark: $isBookmark, ingredients: $ingredients, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.joinAt, joinAt) || other.joinAt == joinAt) &&
            (identical(other.numOfFollower, numOfFollower) ||
                other.numOfFollower == numOfFollower) &&
            (identical(other.numOfRating, numOfRating) ||
                other.numOfRating == numOfRating) &&
            (identical(other.numOfComment, numOfComment) ||
                other.numOfComment == numOfComment) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.recipeImage, recipeImage) ||
                other.recipeImage == recipeImage) &&
            (identical(other.isBookmark, isBookmark) ||
                other.isBookmark == isBookmark) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      userEmail,
      description,
      instruction,
      joinAt,
      numOfFollower,
      numOfRating,
      numOfComment,
      updateAt,
      createAt,
      recipeImage,
      isBookmark,
      const DeepCollectionEquality().hash(_ingredients),
      owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailImplCopyWith<_$RecipeDetailImpl> get copyWith =>
      __$$RecipeDetailImplCopyWithImpl<_$RecipeDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDetailImplToJson(
      this,
    );
  }
}

abstract class _RecipeDetail implements RecipeDetail {
  const factory _RecipeDetail(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'account_id') final int? userName,
      @JsonKey(name: 'recipe_name') final String? userEmail,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'instruction') final String? instruction,
      @JsonKey(name: 'rating') final double? joinAt,
      @JsonKey(name: 'num_of_followers') final int? numOfFollower,
      @JsonKey(name: 'num_of_rating') final int? numOfRating,
      @JsonKey(name: 'num_of_comments') final int? numOfComment,
      @JsonKey(name: 'update_at') final String? updateAt,
      @JsonKey(name: 'create_at') final String? createAt,
      @JsonKey(name: 'recipe_image') final String? recipeImage,
      @JsonKey(name: 'isBookmark') final int? isBookmark,
      @JsonKey(name: 'ingredients') final List<Ingredient>? ingredients,
      @JsonKey(name: 'owner') final User? owner}) = _$RecipeDetailImpl;

  factory _RecipeDetail.fromJson(Map<String, dynamic> json) =
      _$RecipeDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'account_id')
  int? get userName;
  @override
  @JsonKey(name: 'recipe_name')
  String? get userEmail;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'instruction')
  String? get instruction;
  @override
  @JsonKey(name: 'rating')
  double? get joinAt;
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
  @JsonKey(name: 'update_at')
  String? get updateAt;
  @override
  @JsonKey(name: 'create_at')
  String? get createAt;
  @override
  @JsonKey(name: 'recipe_image')
  String? get recipeImage;
  @override
  @JsonKey(name: 'isBookmark')
  int? get isBookmark;
  @override
  @JsonKey(name: 'ingredients')
  List<Ingredient>? get ingredients;
  @override
  @JsonKey(name: 'owner')
  User? get owner;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailImplCopyWith<_$RecipeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
