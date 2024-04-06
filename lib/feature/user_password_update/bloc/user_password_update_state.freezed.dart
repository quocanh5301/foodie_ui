// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_password_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPasswordUpdateState {
  String get mess => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get confirmNewPassword => throw _privateConstructorUsedError;
  UserPasswordUpdateStatus get userPasswordUpdateStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPasswordUpdateStateCopyWith<UserPasswordUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPasswordUpdateStateCopyWith<$Res> {
  factory $UserPasswordUpdateStateCopyWith(UserPasswordUpdateState value,
          $Res Function(UserPasswordUpdateState) then) =
      _$UserPasswordUpdateStateCopyWithImpl<$Res, UserPasswordUpdateState>;
  @useResult
  $Res call(
      {String mess,
      int code,
      String oldPassword,
      String newPassword,
      String confirmNewPassword,
      UserPasswordUpdateStatus userPasswordUpdateStatus});
}

/// @nodoc
class _$UserPasswordUpdateStateCopyWithImpl<$Res,
        $Val extends UserPasswordUpdateState>
    implements $UserPasswordUpdateStateCopyWith<$Res> {
  _$UserPasswordUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? userPasswordUpdateStatus = null,
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
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userPasswordUpdateStatus: null == userPasswordUpdateStatus
          ? _value.userPasswordUpdateStatus
          : userPasswordUpdateStatus // ignore: cast_nullable_to_non_nullable
              as UserPasswordUpdateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPasswordUpdateStateImplCopyWith<$Res>
    implements $UserPasswordUpdateStateCopyWith<$Res> {
  factory _$$UserPasswordUpdateStateImplCopyWith(
          _$UserPasswordUpdateStateImpl value,
          $Res Function(_$UserPasswordUpdateStateImpl) then) =
      __$$UserPasswordUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mess,
      int code,
      String oldPassword,
      String newPassword,
      String confirmNewPassword,
      UserPasswordUpdateStatus userPasswordUpdateStatus});
}

/// @nodoc
class __$$UserPasswordUpdateStateImplCopyWithImpl<$Res>
    extends _$UserPasswordUpdateStateCopyWithImpl<$Res,
        _$UserPasswordUpdateStateImpl>
    implements _$$UserPasswordUpdateStateImplCopyWith<$Res> {
  __$$UserPasswordUpdateStateImplCopyWithImpl(
      _$UserPasswordUpdateStateImpl _value,
      $Res Function(_$UserPasswordUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? userPasswordUpdateStatus = null,
  }) {
    return _then(_$UserPasswordUpdateStateImpl(
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userPasswordUpdateStatus: null == userPasswordUpdateStatus
          ? _value.userPasswordUpdateStatus
          : userPasswordUpdateStatus // ignore: cast_nullable_to_non_nullable
              as UserPasswordUpdateStatus,
    ));
  }
}

/// @nodoc

class _$UserPasswordUpdateStateImpl implements _UserPasswordUpdateState {
  const _$UserPasswordUpdateStateImpl(
      {this.mess = '',
      this.code = 200,
      this.oldPassword = '',
      this.newPassword = '',
      this.confirmNewPassword = '',
      this.userPasswordUpdateStatus = UserPasswordUpdateStatus.initial});

  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String oldPassword;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String confirmNewPassword;
  @override
  @JsonKey()
  final UserPasswordUpdateStatus userPasswordUpdateStatus;

  @override
  String toString() {
    return 'UserPasswordUpdateState(mess: $mess, code: $code, oldPassword: $oldPassword, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, userPasswordUpdateStatus: $userPasswordUpdateStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPasswordUpdateStateImpl &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                other.confirmNewPassword == confirmNewPassword) &&
            (identical(
                    other.userPasswordUpdateStatus, userPasswordUpdateStatus) ||
                other.userPasswordUpdateStatus == userPasswordUpdateStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mess, code, oldPassword,
      newPassword, confirmNewPassword, userPasswordUpdateStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPasswordUpdateStateImplCopyWith<_$UserPasswordUpdateStateImpl>
      get copyWith => __$$UserPasswordUpdateStateImplCopyWithImpl<
          _$UserPasswordUpdateStateImpl>(this, _$identity);
}

abstract class _UserPasswordUpdateState implements UserPasswordUpdateState {
  const factory _UserPasswordUpdateState(
          {final String mess,
          final int code,
          final String oldPassword,
          final String newPassword,
          final String confirmNewPassword,
          final UserPasswordUpdateStatus userPasswordUpdateStatus}) =
      _$UserPasswordUpdateStateImpl;

  @override
  String get mess;
  @override
  int get code;
  @override
  String get oldPassword;
  @override
  String get newPassword;
  @override
  String get confirmNewPassword;
  @override
  UserPasswordUpdateStatus get userPasswordUpdateStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserPasswordUpdateStateImplCopyWith<_$UserPasswordUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
