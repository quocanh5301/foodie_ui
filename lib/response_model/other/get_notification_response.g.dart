// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationResponseImpl _$$GetNotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotificationResponseImpl(
      code: json['code'] as int?,
      mess: json['mess'] as String?,
      notification: json['data'] == null
          ? null
          : Notification.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetNotificationResponseImplToJson(
        _$GetNotificationResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.notification,
    };
