import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_update_state.freezed.dart';

@freezed
class UserInfoUpdateState with _$UserInfoUpdateState {
  const factory UserInfoUpdateState({
    @Default('') String mess,
    @Default(200) int code,
    @Default('') String userName,
    @Default('') String userEmail,
    @Default('') String description,
    @Default(UserInfoUpdateStatus.initial) UserInfoUpdateStatus userInfoUpdateStatus,
  }) = _UserInfoUpdateState;
}

enum UserInfoUpdateStatus { initial, loading, success, failure }
