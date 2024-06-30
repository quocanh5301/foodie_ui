import 'package:foodie/model/other/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(200) int code,
    @Default('') String mess,
    @Default(0) int notificationPage,
    @Default([]) List<MyNotification> notificationList,
    @Default(GetNotificationStatus.initial)
    GetNotificationStatus getNotificationStatus,
    @Default(SeenNotificationStatus.initial)
    SeenNotificationStatus seenNotificationStatus,
    @Default(DeleteNotificationStatus.initial)
    DeleteNotificationStatus deleteNotificationStatus,
  }) = _NotificationState;
}

enum GetNotificationStatus { initial, loading, noMore, success, failure }

enum SeenNotificationStatus { initial, loading, success, failure }

enum DeleteNotificationStatus { initial, loading, success, failure }
