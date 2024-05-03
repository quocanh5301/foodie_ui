// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/other/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notification_response.freezed.dart';
part 'get_notification_response.g.dart';

@freezed
class GetNotificationResponse with _$GetNotificationResponse {
  const factory GetNotificationResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') Notification? notification,
  }) = _GetNotificationResponse;

  factory GetNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationResponseFromJson(json);
}
