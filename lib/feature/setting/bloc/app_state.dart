import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default('') String mess,
    @Default(200) int code,
    @Default("vi") String languageCode,
    @Default(false) bool notificationOn,
    @Default(SetFirebaseTokenStatus.initial)
    SetFirebaseTokenStatus setFirebaseTokenStatus,
    @Default(GetUSerInfoStatus.initial) GetUSerInfoStatus getUSerInfoStatus,
    @Default(LogOutStatus.initial) LogOutStatus logOutStatus,
    @Default(UpdateProfileImageStatus.initial) UpdateProfileImageStatus updateProfileImageStatus,
  }) = _AppState;
}

enum SetFirebaseTokenStatus { initial, loading, success, failure }

enum GetUSerInfoStatus { initial, loading, success, failure }

enum LogOutStatus { initial, loading, success, failure }

enum UpdateProfileImageStatus { initial, loading, success, failure }
