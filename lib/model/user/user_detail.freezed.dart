// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
mixin _$UserDetail {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String? get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at')
  String? get updateAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'join_at')
  String? get joinAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_of_followers')
  int? get numOfFollower => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_email') String? userEmail,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'join_at') String? joinAt,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'num_of_followers') int? numOfFollower});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

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
    Object? updateAt = freezed,
    Object? joinAt = freezed,
    Object? userImage = freezed,
    Object? numOfFollower = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      joinAt: freezed == joinAt
          ? _value.joinAt
          : joinAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfFollower: freezed == numOfFollower
          ? _value.numOfFollower
          : numOfFollower // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailImplCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$UserDetailImplCopyWith(
          _$UserDetailImpl value, $Res Function(_$UserDetailImpl) then) =
      __$$UserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_email') String? userEmail,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'join_at') String? joinAt,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'num_of_followers') int? numOfFollower});
}

/// @nodoc
class __$$UserDetailImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$UserDetailImpl>
    implements _$$UserDetailImplCopyWith<$Res> {
  __$$UserDetailImplCopyWithImpl(
      _$UserDetailImpl _value, $Res Function(_$UserDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? description = freezed,
    Object? updateAt = freezed,
    Object? joinAt = freezed,
    Object? userImage = freezed,
    Object? numOfFollower = freezed,
  }) {
    return _then(_$UserDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      joinAt: freezed == joinAt
          ? _value.joinAt
          : joinAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      numOfFollower: freezed == numOfFollower
          ? _value.numOfFollower
          : numOfFollower // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailImpl implements _UserDetail {
  const _$UserDetailImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_email') this.userEmail,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'update_at') this.updateAt,
      @JsonKey(name: 'join_at') this.joinAt,
      @JsonKey(name: 'user_image') this.userImage,
      @JsonKey(name: 'num_of_followers') this.numOfFollower});

  factory _$UserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_email')
  final String? userEmail;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'update_at')
  final String? updateAt;
  @override
  @JsonKey(name: 'join_at')
  final String? joinAt;
  @override
  @JsonKey(name: 'user_image')
  final String? userImage;
  @override
  @JsonKey(name: 'num_of_followers')
  final int? numOfFollower;

  @override
  String toString() {
    return 'UserDetail(id: $id, userName: $userName, userEmail: $userEmail, description: $description, updateAt: $updateAt, joinAt: $joinAt, userImage: $userImage, numOfFollower: $numOfFollower)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.joinAt, joinAt) || other.joinAt == joinAt) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.numOfFollower, numOfFollower) ||
                other.numOfFollower == numOfFollower));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, userEmail,
      description, updateAt, joinAt, userImage, numOfFollower);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      __$$UserDetailImplCopyWithImpl<_$UserDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailImplToJson(
      this,
    );
  }
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'user_name') final String? userName,
          @JsonKey(name: 'user_email') final String? userEmail,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'update_at') final String? updateAt,
          @JsonKey(name: 'join_at') final String? joinAt,
          @JsonKey(name: 'user_image') final String? userImage,
          @JsonKey(name: 'num_of_followers') final int? numOfFollower}) =
      _$UserDetailImpl;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$UserDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_email')
  String? get userEmail;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'update_at')
  String? get updateAt;
  @override
  @JsonKey(name: 'join_at')
  String? get joinAt;
  @override
  @JsonKey(name: 'user_image')
  String? get userImage;
  @override
  @JsonKey(name: 'num_of_followers')
  int? get numOfFollower;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
