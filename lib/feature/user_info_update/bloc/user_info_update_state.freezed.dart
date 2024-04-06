// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserInfoUpdateState {
  String get mess => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  UserInfoUpdateStatus get userInfoUpdateStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoUpdateStateCopyWith<UserInfoUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoUpdateStateCopyWith<$Res> {
  factory $UserInfoUpdateStateCopyWith(
          UserInfoUpdateState value, $Res Function(UserInfoUpdateState) then) =
      _$UserInfoUpdateStateCopyWithImpl<$Res, UserInfoUpdateState>;
  @useResult
  $Res call(
      {String mess,
      int code,
      String userName,
      String userEmail,
      String description,
      UserInfoUpdateStatus userInfoUpdateStatus});
}

/// @nodoc
class _$UserInfoUpdateStateCopyWithImpl<$Res, $Val extends UserInfoUpdateState>
    implements $UserInfoUpdateStateCopyWith<$Res> {
  _$UserInfoUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? userName = null,
    Object? userEmail = null,
    Object? description = null,
    Object? userInfoUpdateStatus = null,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoUpdateStatus: null == userInfoUpdateStatus
          ? _value.userInfoUpdateStatus
          : userInfoUpdateStatus // ignore: cast_nullable_to_non_nullable
              as UserInfoUpdateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoUpdateStateImplCopyWith<$Res>
    implements $UserInfoUpdateStateCopyWith<$Res> {
  factory _$$UserInfoUpdateStateImplCopyWith(_$UserInfoUpdateStateImpl value,
          $Res Function(_$UserInfoUpdateStateImpl) then) =
      __$$UserInfoUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mess,
      int code,
      String userName,
      String userEmail,
      String description,
      UserInfoUpdateStatus userInfoUpdateStatus});
}

/// @nodoc
class __$$UserInfoUpdateStateImplCopyWithImpl<$Res>
    extends _$UserInfoUpdateStateCopyWithImpl<$Res, _$UserInfoUpdateStateImpl>
    implements _$$UserInfoUpdateStateImplCopyWith<$Res> {
  __$$UserInfoUpdateStateImplCopyWithImpl(_$UserInfoUpdateStateImpl _value,
      $Res Function(_$UserInfoUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? userName = null,
    Object? userEmail = null,
    Object? description = null,
    Object? userInfoUpdateStatus = null,
  }) {
    return _then(_$UserInfoUpdateStateImpl(
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoUpdateStatus: null == userInfoUpdateStatus
          ? _value.userInfoUpdateStatus
          : userInfoUpdateStatus // ignore: cast_nullable_to_non_nullable
              as UserInfoUpdateStatus,
    ));
  }
}

/// @nodoc

class _$UserInfoUpdateStateImpl implements _UserInfoUpdateState {
  const _$UserInfoUpdateStateImpl(
      {this.mess = '',
      this.code = 200,
      this.userName = '',
      this.userEmail = '',
      this.description = '',
      this.userInfoUpdateStatus = UserInfoUpdateStatus.initial});

  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String userEmail;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final UserInfoUpdateStatus userInfoUpdateStatus;

  @override
  String toString() {
    return 'UserInfoUpdateState(mess: $mess, code: $code, userName: $userName, userEmail: $userEmail, description: $description, userInfoUpdateStatus: $userInfoUpdateStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoUpdateStateImpl &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userInfoUpdateStatus, userInfoUpdateStatus) ||
                other.userInfoUpdateStatus == userInfoUpdateStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mess, code, userName, userEmail,
      description, userInfoUpdateStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoUpdateStateImplCopyWith<_$UserInfoUpdateStateImpl> get copyWith =>
      __$$UserInfoUpdateStateImplCopyWithImpl<_$UserInfoUpdateStateImpl>(
          this, _$identity);
}

abstract class _UserInfoUpdateState implements UserInfoUpdateState {
  const factory _UserInfoUpdateState(
          {final String mess,
          final int code,
          final String userName,
          final String userEmail,
          final String description,
          final UserInfoUpdateStatus userInfoUpdateStatus}) =
      _$UserInfoUpdateStateImpl;

  @override
  String get mess;
  @override
  int get code;
  @override
  String get userName;
  @override
  String get userEmail;
  @override
  String get description;
  @override
  UserInfoUpdateStatus get userInfoUpdateStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoUpdateStateImplCopyWith<_$UserInfoUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
