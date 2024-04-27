// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_recipe_num_follower_following_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserRecipeNumFollowerFollowingResponse
    _$GetUserRecipeNumFollowerFollowingResponseFromJson(
        Map<String, dynamic> json) {
  return _GetUserRecipeNumFollowerFollowingResponse.fromJson(json);
}

/// @nodoc
mixin _$GetUserRecipeNumFollowerFollowingResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'mess')
  String? get mess => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UserRecipeNumFollowerFollowing? get userRecipeNumFollowerFollowing =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserRecipeNumFollowerFollowingResponseCopyWith<
          GetUserRecipeNumFollowerFollowingResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserRecipeNumFollowerFollowingResponseCopyWith<$Res> {
  factory $GetUserRecipeNumFollowerFollowingResponseCopyWith(
          GetUserRecipeNumFollowerFollowingResponse value,
          $Res Function(GetUserRecipeNumFollowerFollowingResponse) then) =
      _$GetUserRecipeNumFollowerFollowingResponseCopyWithImpl<$Res,
          GetUserRecipeNumFollowerFollowingResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data')
      UserRecipeNumFollowerFollowing? userRecipeNumFollowerFollowing});

  $UserRecipeNumFollowerFollowingCopyWith<$Res>?
      get userRecipeNumFollowerFollowing;
}

/// @nodoc
class _$GetUserRecipeNumFollowerFollowingResponseCopyWithImpl<$Res,
        $Val extends GetUserRecipeNumFollowerFollowingResponse>
    implements $GetUserRecipeNumFollowerFollowingResponseCopyWith<$Res> {
  _$GetUserRecipeNumFollowerFollowingResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? userRecipeNumFollowerFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      userRecipeNumFollowerFollowing: freezed == userRecipeNumFollowerFollowing
          ? _value.userRecipeNumFollowerFollowing
          : userRecipeNumFollowerFollowing // ignore: cast_nullable_to_non_nullable
              as UserRecipeNumFollowerFollowing?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRecipeNumFollowerFollowingCopyWith<$Res>?
      get userRecipeNumFollowerFollowing {
    if (_value.userRecipeNumFollowerFollowing == null) {
      return null;
    }

    return $UserRecipeNumFollowerFollowingCopyWith<$Res>(
        _value.userRecipeNumFollowerFollowing!, (value) {
      return _then(
          _value.copyWith(userRecipeNumFollowerFollowing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetUserRecipeNumFollowerFollowingResponseImplCopyWith<$Res>
    implements $GetUserRecipeNumFollowerFollowingResponseCopyWith<$Res> {
  factory _$$GetUserRecipeNumFollowerFollowingResponseImplCopyWith(
          _$GetUserRecipeNumFollowerFollowingResponseImpl value,
          $Res Function(_$GetUserRecipeNumFollowerFollowingResponseImpl) then) =
      __$$GetUserRecipeNumFollowerFollowingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data')
      UserRecipeNumFollowerFollowing? userRecipeNumFollowerFollowing});

  @override
  $UserRecipeNumFollowerFollowingCopyWith<$Res>?
      get userRecipeNumFollowerFollowing;
}

/// @nodoc
class __$$GetUserRecipeNumFollowerFollowingResponseImplCopyWithImpl<$Res>
    extends _$GetUserRecipeNumFollowerFollowingResponseCopyWithImpl<$Res,
        _$GetUserRecipeNumFollowerFollowingResponseImpl>
    implements _$$GetUserRecipeNumFollowerFollowingResponseImplCopyWith<$Res> {
  __$$GetUserRecipeNumFollowerFollowingResponseImplCopyWithImpl(
      _$GetUserRecipeNumFollowerFollowingResponseImpl _value,
      $Res Function(_$GetUserRecipeNumFollowerFollowingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? userRecipeNumFollowerFollowing = freezed,
  }) {
    return _then(_$GetUserRecipeNumFollowerFollowingResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      userRecipeNumFollowerFollowing: freezed == userRecipeNumFollowerFollowing
          ? _value.userRecipeNumFollowerFollowing
          : userRecipeNumFollowerFollowing // ignore: cast_nullable_to_non_nullable
              as UserRecipeNumFollowerFollowing?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserRecipeNumFollowerFollowingResponseImpl
    implements _GetUserRecipeNumFollowerFollowingResponse {
  const _$GetUserRecipeNumFollowerFollowingResponseImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'mess') this.mess,
      @JsonKey(name: 'data') this.userRecipeNumFollowerFollowing});

  factory _$GetUserRecipeNumFollowerFollowingResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetUserRecipeNumFollowerFollowingResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'mess')
  final String? mess;
  @override
  @JsonKey(name: 'data')
  final UserRecipeNumFollowerFollowing? userRecipeNumFollowerFollowing;

  @override
  String toString() {
    return 'GetUserRecipeNumFollowerFollowingResponse(code: $code, mess: $mess, userRecipeNumFollowerFollowing: $userRecipeNumFollowerFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserRecipeNumFollowerFollowingResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.userRecipeNumFollowerFollowing,
                    userRecipeNumFollowerFollowing) ||
                other.userRecipeNumFollowerFollowing ==
                    userRecipeNumFollowerFollowing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, mess, userRecipeNumFollowerFollowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserRecipeNumFollowerFollowingResponseImplCopyWith<
          _$GetUserRecipeNumFollowerFollowingResponseImpl>
      get copyWith =>
          __$$GetUserRecipeNumFollowerFollowingResponseImplCopyWithImpl<
                  _$GetUserRecipeNumFollowerFollowingResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserRecipeNumFollowerFollowingResponseImplToJson(
      this,
    );
  }
}

abstract class _GetUserRecipeNumFollowerFollowingResponse
    implements GetUserRecipeNumFollowerFollowingResponse {
  const factory _GetUserRecipeNumFollowerFollowingResponse(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'mess') final String? mess,
          @JsonKey(name: 'data')
          final UserRecipeNumFollowerFollowing?
              userRecipeNumFollowerFollowing}) =
      _$GetUserRecipeNumFollowerFollowingResponseImpl;

  factory _GetUserRecipeNumFollowerFollowingResponse.fromJson(
          Map<String, dynamic> json) =
      _$GetUserRecipeNumFollowerFollowingResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'mess')
  String? get mess;
  @override
  @JsonKey(name: 'data')
  UserRecipeNumFollowerFollowing? get userRecipeNumFollowerFollowing;
  @override
  @JsonKey(ignore: true)
  _$$GetUserRecipeNumFollowerFollowingResponseImplCopyWith<
          _$GetUserRecipeNumFollowerFollowingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
