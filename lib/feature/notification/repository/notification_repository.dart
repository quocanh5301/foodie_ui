import 'package:foodie/feature/notification/provider/notification_provider.dart';
import 'package:foodie/response_model/other/get_notification_response.dart';
import 'package:fpdart/fpdart.dart';

class NotificationRepository {
  const NotificationRepository({
    required this.notificationProvider,
  });

  final NotificationProvider notificationProvider;

  TaskEither<String, GetNotificationResponse> getNotification({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await notificationProvider.getNotification(page: page);
      if (response.data['mess'] == 'success') {
        try {
          return GetNotificationResponse.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getNotification failed');
      }
    }, (error, stackTrace) => error.toString());
  }

  TaskEither<String, bool> seenNotification({
    required double notificationId,
    required double isSeen,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await notificationProvider.seenNotification(
        notificationId: notificationId,
        isSeen: isSeen,
      );
      if (response.data['mess'] == 'success') {
        return true;
      } else {
        throw Exception(response.data['mess'] ?? 'getNotification failed');
      }
    }, (error, stackTrace) => error.toString());
  }

  TaskEither<String, bool> deleteNotification({
    required double notificationId,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await notificationProvider.deleteNotification(
        notificationId: notificationId,
      );
      if (response.data['mess'] == 'success') {
        return true;
      } else {
        throw Exception(response.data['mess'] ?? 'deleteNotification failed');
      }
    }, (error, stackTrace) => error.toString());
  }
}
