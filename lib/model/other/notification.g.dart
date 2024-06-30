// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      id: (json['id'] as num?)?.toDouble(),
      title: json['title'] as String?,
      notificationContent: json['notification_content'] as String?,
      notificationImage: json['notification_image'] as String?,
      onClickType: json['on_click_type'] as String?,
      relevantData: (json['relevant_data'] as num?)?.toDouble(),
      createAt: json['create_at'] as String?,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'notification_content': instance.notificationContent,
      'notification_image': instance.notificationImage,
      'on_click_type': instance.onClickType,
      'relevant_data': instance.relevantData,
      'create_at': instance.createAt,
    };
