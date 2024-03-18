import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:foodie/core/data/share_pref.dart';

class NotificationHelper {
  static const String channelId = "Foodie";
  static const String channelName = "Foodie_app";

  static bool helperNotificationOn = true;

  NotificationHelper() {
    // helperNotificationOn = SharedPref.getNotificationSetting();
  }

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotifications(
      {required Future<void> Function(RemoteMessage) backgroundNoti}) async {
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

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (notiRes) async {},
    );

    //firebase
    final fcmToken = FirebaseMessaging.instance;

    NotificationSettings settings = await fcmToken.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    debugPrint('User granted permission: ${settings.authorizationStatus}');

    await fcmToken.getToken().then((token) {
      // if (token != null) {

      // debugPrint('token $token');
      // }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        // get user to update sthg
        debugPrint('message $message');
      }
    });

    FirebaseMessaging.onBackgroundMessage(backgroundNoti);
  }

  Future<void> handleNotificationSetting(
    String title,
    String body,
  ) async {
    if (helperNotificationOn) {
      await scheduleNotification(title, body);
    } else {
      await cancelNotification();
    }
  }

  Future<void> scheduleNotification(String title, String body) async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      channelId,
      channelName,
      styleInformation: BigTextStyleInformation(''),
    );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0, // Notification ID
      title, // Notification title
      body, // Notification body
      platformChannelSpecifics,
    );
  }

  Future<void> cancelNotification() async {
    await flutterLocalNotificationsPlugin.cancel(0);
  }
}
