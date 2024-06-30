// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationState {
  int get code => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  int get notificationPage => throw _privateConstructorUsedError;
  List<MyNotification> get notificationList =>
      throw _privateConstructorUsedError;
  GetNotificationStatus get getNotificationStatus =>
      throw _privateConstructorUsedError;
  SeenNotificationStatus get seenNotificationStatus =>
      throw _privateConstructorUsedError;
  DeleteNotificationStatus get deleteNotificationStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {int code,
      String mess,
      int notificationPage,
      List<MyNotification> notificationList,
      GetNotificationStatus getNotificationStatus,
      SeenNotificationStatus seenNotificationStatus,
      DeleteNotificationStatus deleteNotificationStatus});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? notificationPage = null,
    Object? notificationList = null,
    Object? getNotificationStatus = null,
    Object? seenNotificationStatus = null,
    Object? deleteNotificationStatus = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      notificationPage: null == notificationPage
          ? _value.notificationPage
          : notificationPage // ignore: cast_nullable_to_non_nullable
              as int,
      notificationList: null == notificationList
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<MyNotification>,
      getNotificationStatus: null == getNotificationStatus
          ? _value.getNotificationStatus
          : getNotificationStatus // ignore: cast_nullable_to_non_nullable
              as GetNotificationStatus,
      seenNotificationStatus: null == seenNotificationStatus
          ? _value.seenNotificationStatus
          : seenNotificationStatus // ignore: cast_nullable_to_non_nullable
              as SeenNotificationStatus,
      deleteNotificationStatus: null == deleteNotificationStatus
          ? _value.deleteNotificationStatus
          : deleteNotificationStatus // ignore: cast_nullable_to_non_nullable
              as DeleteNotificationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String mess,
      int notificationPage,
      List<MyNotification> notificationList,
      GetNotificationStatus getNotificationStatus,
      SeenNotificationStatus seenNotificationStatus,
      DeleteNotificationStatus deleteNotificationStatus});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? notificationPage = null,
    Object? notificationList = null,
    Object? getNotificationStatus = null,
    Object? seenNotificationStatus = null,
    Object? deleteNotificationStatus = null,
  }) {
    return _then(_$NotificationStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      notificationPage: null == notificationPage
          ? _value.notificationPage
          : notificationPage // ignore: cast_nullable_to_non_nullable
              as int,
      notificationList: null == notificationList
          ? _value._notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<MyNotification>,
      getNotificationStatus: null == getNotificationStatus
          ? _value.getNotificationStatus
          : getNotificationStatus // ignore: cast_nullable_to_non_nullable
              as GetNotificationStatus,
      seenNotificationStatus: null == seenNotificationStatus
          ? _value.seenNotificationStatus
          : seenNotificationStatus // ignore: cast_nullable_to_non_nullable
              as SeenNotificationStatus,
      deleteNotificationStatus: null == deleteNotificationStatus
          ? _value.deleteNotificationStatus
          : deleteNotificationStatus // ignore: cast_nullable_to_non_nullable
              as DeleteNotificationStatus,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {this.code = 200,
      this.mess = '',
      this.notificationPage = 0,
      final List<MyNotification> notificationList = const [],
      this.getNotificationStatus = GetNotificationStatus.initial,
      this.seenNotificationStatus = SeenNotificationStatus.initial,
      this.deleteNotificationStatus = DeleteNotificationStatus.initial})
      : _notificationList = notificationList;

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int notificationPage;
  final List<MyNotification> _notificationList;
  @override
  @JsonKey()
  List<MyNotification> get notificationList {
    if (_notificationList is EqualUnmodifiableListView)
      return _notificationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationList);
  }

  @override
  @JsonKey()
  final GetNotificationStatus getNotificationStatus;
  @override
  @JsonKey()
  final SeenNotificationStatus seenNotificationStatus;
  @override
  @JsonKey()
  final DeleteNotificationStatus deleteNotificationStatus;

  @override
  String toString() {
    return 'NotificationState(code: $code, mess: $mess, notificationPage: $notificationPage, notificationList: $notificationList, getNotificationStatus: $getNotificationStatus, seenNotificationStatus: $seenNotificationStatus, deleteNotificationStatus: $deleteNotificationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.notificationPage, notificationPage) ||
                other.notificationPage == notificationPage) &&
            const DeepCollectionEquality()
                .equals(other._notificationList, _notificationList) &&
            (identical(other.getNotificationStatus, getNotificationStatus) ||
                other.getNotificationStatus == getNotificationStatus) &&
            (identical(other.seenNotificationStatus, seenNotificationStatus) ||
                other.seenNotificationStatus == seenNotificationStatus) &&
            (identical(
                    other.deleteNotificationStatus, deleteNotificationStatus) ||
                other.deleteNotificationStatus == deleteNotificationStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      mess,
      notificationPage,
      const DeepCollectionEquality().hash(_notificationList),
      getNotificationStatus,
      seenNotificationStatus,
      deleteNotificationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
          {final int code,
          final String mess,
          final int notificationPage,
          final List<MyNotification> notificationList,
          final GetNotificationStatus getNotificationStatus,
          final SeenNotificationStatus seenNotificationStatus,
          final DeleteNotificationStatus deleteNotificationStatus}) =
      _$NotificationStateImpl;

  @override
  int get code;
  @override
  String get mess;
  @override
  int get notificationPage;
  @override
  List<MyNotification> get notificationList;
  @override
  GetNotificationStatus get getNotificationStatus;
  @override
  SeenNotificationStatus get seenNotificationStatus;
  @override
  DeleteNotificationStatus get deleteNotificationStatus;
  @override
  @JsonKey(ignore: true)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
