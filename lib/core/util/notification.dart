import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:foodie/core/data/share_pref.dart';

class LocalNotificationHelper {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static const String _channelId = "Foodie";
  static const String _channelName = "Foodie_app";
  static const int _notificationId = 5042230;

  static Future<bool?> initNotificationLocal() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      // requestAlertPermission: true,
      onDidReceiveLocalNotification: (id, title, body, payload) async {},
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    return await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (notiRes) async {},
      // onDidReceiveBackgroundNotificationResponse: (details) async {},
    );
  }

  static Future<void> _scheduleNotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      _channelId,
      _channelName,
      styleInformation: BigTextStyleInformation(''),
    );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails();

    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      _notificationId, // Notification ID
      title, // Notification title
      body, // Notification body
      platformChannelSpecifics,
    );
  }

  static Future<void> handleNotificationSetting(
    String title,
    String body,
  ) async {
    debugPrint('handleNotificationSetting $title ANDDDD $body');
    if (SharedPref.getNotificationSetting()) {
      await _scheduleNotification(title, body);
    } else {
      await _cancelNotification();
    }
  }

  static Future<void> _cancelNotification() async {
    await flutterLocalNotificationsPlugin.cancel(_notificationId);
  }
}
