import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class NotificationProvider {
  const NotificationProvider({required this.apiRequest});

  final APIRequest apiRequest;
  final double pageSize = 10;

  Future<Response> getNotification({
    required int page,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getNotificationOfUser,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> seenNotification({
    required double notificationId,
    required double isSeen,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.seenNotification,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'notificationId': notificationId,
          'isSeen': isSeen,
        },
      );

  Future<Response> deleteNotification({
    required double notificationId,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.deleteNotification,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'notificationId': notificationId,
        },
      );
}
