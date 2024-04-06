import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_password_update_state.freezed.dart';

@freezed
class UserPasswordUpdateState with _$UserPasswordUpdateState {
  const factory UserPasswordUpdateState({
    @Default('') String mess,
    @Default(200) int code,
    @Default('') String oldPassword,
    @Default('') String newPassword,
    @Default('') String confirmNewPassword,
    @Default(UserPasswordUpdateStatus.initial) UserPasswordUpdateStatus userPasswordUpdateStatus,
  }) = _UserPasswordUpdateState;
}

enum UserPasswordUpdateStatus { initial, loading, success, failure }
