// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyNotification _$MyNotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$MyNotification {
  @JsonKey(name: 'id')
  double? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_content')
  String? get notificationContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_image')
  String? get notificationImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_click_type')
  String? get onClickType => throw _privateConstructorUsedError;
  @JsonKey(name: 'relevant_data')
  double? get relevantData => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_at')
  String? get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_seen')
  int? get isSeen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyNotificationCopyWith<MyNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyNotificationCopyWith<$Res> {
  factory $MyNotificationCopyWith(
          MyNotification value, $Res Function(MyNotification) then) =
      _$MyNotificationCopyWithImpl<$Res, MyNotification>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') double? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'notification_content') String? notificationContent,
      @JsonKey(name: 'notification_image') String? notificationImage,
      @JsonKey(name: 'on_click_type') String? onClickType,
      @JsonKey(name: 'relevant_data') double? relevantData,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'is_seen') int? isSeen});
}

/// @nodoc
class _$MyNotificationCopyWithImpl<$Res, $Val extends MyNotification>
    implements $MyNotificationCopyWith<$Res> {
  _$MyNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? notificationContent = freezed,
    Object? notificationImage = freezed,
    Object? onClickType = freezed,
    Object? relevantData = freezed,
    Object? createAt = freezed,
    Object? isSeen = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationContent: freezed == notificationContent
          ? _value.notificationContent
          : notificationContent // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationImage: freezed == notificationImage
          ? _value.notificationImage
          : notificationImage // ignore: cast_nullable_to_non_nullable
              as String?,
      onClickType: freezed == onClickType
          ? _value.onClickType
          : onClickType // ignore: cast_nullable_to_non_nullable
              as String?,
      relevantData: freezed == relevantData
          ? _value.relevantData
          : relevantData // ignore: cast_nullable_to_non_nullable
              as double?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationImplCopyWith<$Res>
    implements $MyNotificationCopyWith<$Res> {
  factory _$$NotificationImplCopyWith(
          _$NotificationImpl value, $Res Function(_$NotificationImpl) then) =
      __$$NotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') double? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'notification_content') String? notificationContent,
      @JsonKey(name: 'notification_image') String? notificationImage,
      @JsonKey(name: 'on_click_type') String? onClickType,
      @JsonKey(name: 'relevant_data') double? relevantData,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'is_seen') int? isSeen});
}

/// @nodoc
class __$$NotificationImplCopyWithImpl<$Res>
    extends _$MyNotificationCopyWithImpl<$Res, _$NotificationImpl>
    implements _$$NotificationImplCopyWith<$Res> {
  __$$NotificationImplCopyWithImpl(
      _$NotificationImpl _value, $Res Function(_$NotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? notificationContent = freezed,
    Object? notificationImage = freezed,
    Object? onClickType = freezed,
    Object? relevantData = freezed,
    Object? createAt = freezed,
    Object? isSeen = freezed,
  }) {
    return _then(_$NotificationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationContent: freezed == notificationContent
          ? _value.notificationContent
          : notificationContent // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationImage: freezed == notificationImage
          ? _value.notificationImage
          : notificationImage // ignore: cast_nullable_to_non_nullable
              as String?,
      onClickType: freezed == onClickType
          ? _value.onClickType
          : onClickType // ignore: cast_nullable_to_non_nullable
              as String?,
      relevantData: freezed == relevantData
          ? _value.relevantData
          : relevantData // ignore: cast_nullable_to_non_nullable
              as double?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationImpl implements _Notification {
  const _$NotificationImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'notification_content') this.notificationContent,
      @JsonKey(name: 'notification_image') this.notificationImage,
      @JsonKey(name: 'on_click_type') this.onClickType,
      @JsonKey(name: 'relevant_data') this.relevantData,
      @JsonKey(name: 'create_at') this.createAt,
      @JsonKey(name: 'is_seen') this.isSeen});

  factory _$NotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final double? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'notification_content')
  final String? notificationContent;
  @override
  @JsonKey(name: 'notification_image')
  final String? notificationImage;
  @override
  @JsonKey(name: 'on_click_type')
  final String? onClickType;
  @override
  @JsonKey(name: 'relevant_data')
  final double? relevantData;
  @override
  @JsonKey(name: 'create_at')
  final String? createAt;
  @override
  @JsonKey(name: 'is_seen')
  final int? isSeen;

  @override
  String toString() {
    return 'MyNotification(id: $id, title: $title, notificationContent: $notificationContent, notificationImage: $notificationImage, onClickType: $onClickType, relevantData: $relevantData, createAt: $createAt, isSeen: $isSeen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.notificationContent, notificationContent) ||
                other.notificationContent == notificationContent) &&
            (identical(other.notificationImage, notificationImage) ||
                other.notificationImage == notificationImage) &&
            (identical(other.onClickType, onClickType) ||
                other.onClickType == onClickType) &&
            (identical(other.relevantData, relevantData) ||
                other.relevantData == relevantData) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, notificationContent,
      notificationImage, onClickType, relevantData, createAt, isSeen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      __$$NotificationImplCopyWithImpl<_$NotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationImplToJson(
      this,
    );
  }
}

abstract class _Notification implements MyNotification {
  const factory _Notification(
      {@JsonKey(name: 'id') final double? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'notification_content') final String? notificationContent,
      @JsonKey(name: 'notification_image') final String? notificationImage,
      @JsonKey(name: 'on_click_type') final String? onClickType,
      @JsonKey(name: 'relevant_data') final double? relevantData,
      @JsonKey(name: 'create_at') final String? createAt,
      @JsonKey(name: 'is_seen') final int? isSeen}) = _$NotificationImpl;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$NotificationImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  double? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'notification_content')
  String? get notificationContent;
  @override
  @JsonKey(name: 'notification_image')
  String? get notificationImage;
  @override
  @JsonKey(name: 'on_click_type')
  String? get onClickType;
  @override
  @JsonKey(name: 'relevant_data')
  double? get relevantData;
  @override
  @JsonKey(name: 'create_at')
  String? get createAt;
  @override
  @JsonKey(name: 'is_seen')
  int? get isSeen;
  @override
  @JsonKey(ignore: true)
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
