// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_num_follower_following.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRecipeNumFollowerFollowing _$UserRecipeNumFollowerFollowingFromJson(
    Map<String, dynamic> json) {
  return _UserRecipeNumFollowerFollowing.fromJson(json);
}

/// @nodoc
mixin _$UserRecipeNumFollowerFollowing {
  @JsonKey(name: 'numFollower')
  String? get numFollower => throw _privateConstructorUsedError;
  @JsonKey(name: 'numFollowing')
  String? get numFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: 'numRecipe')
  String? get numRecipe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRecipeNumFollowerFollowingCopyWith<UserRecipeNumFollowerFollowing>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRecipeNumFollowerFollowingCopyWith<$Res> {
  factory $UserRecipeNumFollowerFollowingCopyWith(
          UserRecipeNumFollowerFollowing value,
          $Res Function(UserRecipeNumFollowerFollowing) then) =
      _$UserRecipeNumFollowerFollowingCopyWithImpl<$Res,
          UserRecipeNumFollowerFollowing>;
  @useResult
  $Res call(
      {@JsonKey(name: 'numFollower') String? numFollower,
      @JsonKey(name: 'numFollowing') String? numFollowing,
      @JsonKey(name: 'numRecipe') String? numRecipe});
}

/// @nodoc
class _$UserRecipeNumFollowerFollowingCopyWithImpl<$Res,
        $Val extends UserRecipeNumFollowerFollowing>
    implements $UserRecipeNumFollowerFollowingCopyWith<$Res> {
  _$UserRecipeNumFollowerFollowingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numFollower = freezed,
    Object? numFollowing = freezed,
    Object? numRecipe = freezed,
  }) {
    return _then(_value.copyWith(
      numFollower: freezed == numFollower
          ? _value.numFollower
          : numFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      numFollowing: freezed == numFollowing
          ? _value.numFollowing
          : numFollowing // ignore: cast_nullable_to_non_nullable
              as String?,
      numRecipe: freezed == numRecipe
          ? _value.numRecipe
          : numRecipe // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRecipeNumFollowerFollowingImplCopyWith<$Res>
    implements $UserRecipeNumFollowerFollowingCopyWith<$Res> {
  factory _$$UserRecipeNumFollowerFollowingImplCopyWith(
          _$UserRecipeNumFollowerFollowingImpl value,
          $Res Function(_$UserRecipeNumFollowerFollowingImpl) then) =
      __$$UserRecipeNumFollowerFollowingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'numFollower') String? numFollower,
      @JsonKey(name: 'numFollowing') String? numFollowing,
      @JsonKey(name: 'numRecipe') String? numRecipe});
}

/// @nodoc
class __$$UserRecipeNumFollowerFollowingImplCopyWithImpl<$Res>
    extends _$UserRecipeNumFollowerFollowingCopyWithImpl<$Res,
        _$UserRecipeNumFollowerFollowingImpl>
    implements _$$UserRecipeNumFollowerFollowingImplCopyWith<$Res> {
  __$$UserRecipeNumFollowerFollowingImplCopyWithImpl(
      _$UserRecipeNumFollowerFollowingImpl _value,
      $Res Function(_$UserRecipeNumFollowerFollowingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numFollower = freezed,
    Object? numFollowing = freezed,
    Object? numRecipe = freezed,
  }) {
    return _then(_$UserRecipeNumFollowerFollowingImpl(
      numFollower: freezed == numFollower
          ? _value.numFollower
          : numFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      numFollowing: freezed == numFollowing
          ? _value.numFollowing
          : numFollowing // ignore: cast_nullable_to_non_nullable
              as String?,
      numRecipe: freezed == numRecipe
          ? _value.numRecipe
          : numRecipe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRecipeNumFollowerFollowingImpl
    implements _UserRecipeNumFollowerFollowing {
  const _$UserRecipeNumFollowerFollowingImpl(
      {@JsonKey(name: 'numFollower') this.numFollower,
      @JsonKey(name: 'numFollowing') this.numFollowing,
      @JsonKey(name: 'numRecipe') this.numRecipe});

  factory _$UserRecipeNumFollowerFollowingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserRecipeNumFollowerFollowingImplFromJson(json);

  @override
  @JsonKey(name: 'numFollower')
  final String? numFollower;
  @override
  @JsonKey(name: 'numFollowing')
  final String? numFollowing;
  @override
  @JsonKey(name: 'numRecipe')
  final String? numRecipe;

  @override
  String toString() {
    return 'UserRecipeNumFollowerFollowing(numFollower: $numFollower, numFollowing: $numFollowing, numRecipe: $numRecipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRecipeNumFollowerFollowingImpl &&
            (identical(other.numFollower, numFollower) ||
                other.numFollower == numFollower) &&
            (identical(other.numFollowing, numFollowing) ||
                other.numFollowing == numFollowing) &&
            (identical(other.numRecipe, numRecipe) ||
                other.numRecipe == numRecipe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numFollower, numFollowing, numRecipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRecipeNumFollowerFollowingImplCopyWith<
          _$UserRecipeNumFollowerFollowingImpl>
      get copyWith => __$$UserRecipeNumFollowerFollowingImplCopyWithImpl<
          _$UserRecipeNumFollowerFollowingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRecipeNumFollowerFollowingImplToJson(
      this,
    );
  }
}

abstract class _UserRecipeNumFollowerFollowing
    implements UserRecipeNumFollowerFollowing {
  const factory _UserRecipeNumFollowerFollowing(
          {@JsonKey(name: 'numFollower') final String? numFollower,
          @JsonKey(name: 'numFollowing') final String? numFollowing,
          @JsonKey(name: 'numRecipe') final String? numRecipe}) =
      _$UserRecipeNumFollowerFollowingImpl;

  factory _UserRecipeNumFollowerFollowing.fromJson(Map<String, dynamic> json) =
      _$UserRecipeNumFollowerFollowingImpl.fromJson;

  @override
  @JsonKey(name: 'numFollower')
  String? get numFollower;
  @override
  @JsonKey(name: 'numFollowing')
  String? get numFollowing;
  @override
  @JsonKey(name: 'numRecipe')
  String? get numRecipe;
  @override
  @JsonKey(ignore: true)
  _$$UserRecipeNumFollowerFollowingImplCopyWith<
          _$UserRecipeNumFollowerFollowingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
