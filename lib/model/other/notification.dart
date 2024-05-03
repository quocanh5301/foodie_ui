// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    @JsonKey(name: 'id') double? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'notification_content') String? notificationContent,
    @JsonKey(name: 'notification_image') String? notificationImage,
    @JsonKey(name: 'on_click_type') String? onClickType,
    @JsonKey(name: 'relevant_data') double? relevantData,
    @JsonKey(name: 'create_at') String? createAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
