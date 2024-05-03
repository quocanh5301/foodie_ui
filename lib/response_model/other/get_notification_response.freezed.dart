// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNotificationResponse _$GetNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _GetNotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'mess')
  String? get mess => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Notification? get notification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNotificationResponseCopyWith<GetNotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationResponseCopyWith<$Res> {
  factory $GetNotificationResponseCopyWith(GetNotificationResponse value,
          $Res Function(GetNotificationResponse) then) =
      _$GetNotificationResponseCopyWithImpl<$Res, GetNotificationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') Notification? notification});

  $NotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class _$GetNotificationResponseCopyWithImpl<$Res,
        $Val extends GetNotificationResponse>
    implements $GetNotificationResponseCopyWith<$Res> {
  _$GetNotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? notification = freezed,
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
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $NotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetNotificationResponseImplCopyWith<$Res>
    implements $GetNotificationResponseCopyWith<$Res> {
  factory _$$GetNotificationResponseImplCopyWith(
          _$GetNotificationResponseImpl value,
          $Res Function(_$GetNotificationResponseImpl) then) =
      __$$GetNotificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') Notification? notification});

  @override
  $NotificationCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$GetNotificationResponseImplCopyWithImpl<$Res>
    extends _$GetNotificationResponseCopyWithImpl<$Res,
        _$GetNotificationResponseImpl>
    implements _$$GetNotificationResponseImplCopyWith<$Res> {
  __$$GetNotificationResponseImplCopyWithImpl(
      _$GetNotificationResponseImpl _value,
      $Res Function(_$GetNotificationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? notification = freezed,
  }) {
    return _then(_$GetNotificationResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNotificationResponseImpl implements _GetNotificationResponse {
  const _$GetNotificationResponseImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'mess') this.mess,
      @JsonKey(name: 'data') this.notification});

  factory _$GetNotificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotificationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'mess')
  final String? mess;
  @override
  @JsonKey(name: 'data')
  final Notification? notification;

  @override
  String toString() {
    return 'GetNotificationResponse(code: $code, mess: $mess, notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, mess, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationResponseImplCopyWith<_$GetNotificationResponseImpl>
      get copyWith => __$$GetNotificationResponseImplCopyWithImpl<
          _$GetNotificationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotificationResponseImplToJson(
      this,
    );
  }
}

abstract class _GetNotificationResponse implements GetNotificationResponse {
  const factory _GetNotificationResponse(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'mess') final String? mess,
          @JsonKey(name: 'data') final Notification? notification}) =
      _$GetNotificationResponseImpl;

  factory _GetNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$GetNotificationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'mess')
  String? get mess;
  @override
  @JsonKey(name: 'data')
  Notification? get notification;
  @override
  @JsonKey(ignore: true)
  _$$GetNotificationResponseImplCopyWith<_$GetNotificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
