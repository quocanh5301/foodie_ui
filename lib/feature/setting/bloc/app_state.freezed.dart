// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  String get mess => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;
  bool get notificationOn => throw _privateConstructorUsedError;
  SetFirebaseTokenStatus get setFirebaseTokenStatus =>
      throw _privateConstructorUsedError;
  GetUSerInfoStatus get getUSerInfoStatus => throw _privateConstructorUsedError;
  LogOutStatus get logOutStatus => throw _privateConstructorUsedError;
  UpdateProfileImageStatus get updateProfileImageStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {String mess,
      int code,
      String languageCode,
      bool notificationOn,
      SetFirebaseTokenStatus setFirebaseTokenStatus,
      GetUSerInfoStatus getUSerInfoStatus,
      LogOutStatus logOutStatus,
      UpdateProfileImageStatus updateProfileImageStatus});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? languageCode = null,
    Object? notificationOn = null,
    Object? setFirebaseTokenStatus = null,
    Object? getUSerInfoStatus = null,
    Object? logOutStatus = null,
    Object? updateProfileImageStatus = null,
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
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      notificationOn: null == notificationOn
          ? _value.notificationOn
          : notificationOn // ignore: cast_nullable_to_non_nullable
              as bool,
      setFirebaseTokenStatus: null == setFirebaseTokenStatus
          ? _value.setFirebaseTokenStatus
          : setFirebaseTokenStatus // ignore: cast_nullable_to_non_nullable
              as SetFirebaseTokenStatus,
      getUSerInfoStatus: null == getUSerInfoStatus
          ? _value.getUSerInfoStatus
          : getUSerInfoStatus // ignore: cast_nullable_to_non_nullable
              as GetUSerInfoStatus,
      logOutStatus: null == logOutStatus
          ? _value.logOutStatus
          : logOutStatus // ignore: cast_nullable_to_non_nullable
              as LogOutStatus,
      updateProfileImageStatus: null == updateProfileImageStatus
          ? _value.updateProfileImageStatus
          : updateProfileImageStatus // ignore: cast_nullable_to_non_nullable
              as UpdateProfileImageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mess,
      int code,
      String languageCode,
      bool notificationOn,
      SetFirebaseTokenStatus setFirebaseTokenStatus,
      GetUSerInfoStatus getUSerInfoStatus,
      LogOutStatus logOutStatus,
      UpdateProfileImageStatus updateProfileImageStatus});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mess = null,
    Object? code = null,
    Object? languageCode = null,
    Object? notificationOn = null,
    Object? setFirebaseTokenStatus = null,
    Object? getUSerInfoStatus = null,
    Object? logOutStatus = null,
    Object? updateProfileImageStatus = null,
  }) {
    return _then(_$AppStateImpl(
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      notificationOn: null == notificationOn
          ? _value.notificationOn
          : notificationOn // ignore: cast_nullable_to_non_nullable
              as bool,
      setFirebaseTokenStatus: null == setFirebaseTokenStatus
          ? _value.setFirebaseTokenStatus
          : setFirebaseTokenStatus // ignore: cast_nullable_to_non_nullable
              as SetFirebaseTokenStatus,
      getUSerInfoStatus: null == getUSerInfoStatus
          ? _value.getUSerInfoStatus
          : getUSerInfoStatus // ignore: cast_nullable_to_non_nullable
              as GetUSerInfoStatus,
      logOutStatus: null == logOutStatus
          ? _value.logOutStatus
          : logOutStatus // ignore: cast_nullable_to_non_nullable
              as LogOutStatus,
      updateProfileImageStatus: null == updateProfileImageStatus
          ? _value.updateProfileImageStatus
          : updateProfileImageStatus // ignore: cast_nullable_to_non_nullable
              as UpdateProfileImageStatus,
    ));
  }
}

/// @nodoc

class _$AppStateImpl with DiagnosticableTreeMixin implements _AppState {
  const _$AppStateImpl(
      {this.mess = '',
      this.code = 200,
      this.languageCode = "vi",
      this.notificationOn = false,
      this.setFirebaseTokenStatus = SetFirebaseTokenStatus.initial,
      this.getUSerInfoStatus = GetUSerInfoStatus.initial,
      this.logOutStatus = LogOutStatus.initial,
      this.updateProfileImageStatus = UpdateProfileImageStatus.initial});

  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String languageCode;
  @override
  @JsonKey()
  final bool notificationOn;
  @override
  @JsonKey()
  final SetFirebaseTokenStatus setFirebaseTokenStatus;
  @override
  @JsonKey()
  final GetUSerInfoStatus getUSerInfoStatus;
  @override
  @JsonKey()
  final LogOutStatus logOutStatus;
  @override
  @JsonKey()
  final UpdateProfileImageStatus updateProfileImageStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(mess: $mess, code: $code, languageCode: $languageCode, notificationOn: $notificationOn, setFirebaseTokenStatus: $setFirebaseTokenStatus, getUSerInfoStatus: $getUSerInfoStatus, logOutStatus: $logOutStatus, updateProfileImageStatus: $updateProfileImageStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('mess', mess))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('languageCode', languageCode))
      ..add(DiagnosticsProperty('notificationOn', notificationOn))
      ..add(
          DiagnosticsProperty('setFirebaseTokenStatus', setFirebaseTokenStatus))
      ..add(DiagnosticsProperty('getUSerInfoStatus', getUSerInfoStatus))
      ..add(DiagnosticsProperty('logOutStatus', logOutStatus))
      ..add(DiagnosticsProperty(
          'updateProfileImageStatus', updateProfileImageStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.notificationOn, notificationOn) ||
                other.notificationOn == notificationOn) &&
            (identical(other.setFirebaseTokenStatus, setFirebaseTokenStatus) ||
                other.setFirebaseTokenStatus == setFirebaseTokenStatus) &&
            (identical(other.getUSerInfoStatus, getUSerInfoStatus) ||
                other.getUSerInfoStatus == getUSerInfoStatus) &&
            (identical(other.logOutStatus, logOutStatus) ||
                other.logOutStatus == logOutStatus) &&
            (identical(
                    other.updateProfileImageStatus, updateProfileImageStatus) ||
                other.updateProfileImageStatus == updateProfileImageStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mess,
      code,
      languageCode,
      notificationOn,
      setFirebaseTokenStatus,
      getUSerInfoStatus,
      logOutStatus,
      updateProfileImageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
          {final String mess,
          final int code,
          final String languageCode,
          final bool notificationOn,
          final SetFirebaseTokenStatus setFirebaseTokenStatus,
          final GetUSerInfoStatus getUSerInfoStatus,
          final LogOutStatus logOutStatus,
          final UpdateProfileImageStatus updateProfileImageStatus}) =
      _$AppStateImpl;

  @override
  String get mess;
  @override
  int get code;
  @override
  String get languageCode;
  @override
  bool get notificationOn;
  @override
  SetFirebaseTokenStatus get setFirebaseTokenStatus;
  @override
  GetUSerInfoStatus get getUSerInfoStatus;
  @override
  LogOutStatus get logOutStatus;
  @override
  UpdateProfileImageStatus get updateProfileImageStatus;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
