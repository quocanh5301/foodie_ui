import 'dart:convert';

import 'package:foodie/model/user/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences? prefs;
  static String accessTokenKey = 'kACCESSTOKEN';
  static String refreshTokenKey = 'kREFRESHTOKEN';
  static String userInfoKey = 'kUSERINFO';
  static String notificationSettingKey = 'kNOTIFICATIONSETTING';
  static String languageKey = 'kLANGUAGE';

  static Future<bool> setUserInfo(User user) async =>
      await prefs!.setString(userInfoKey, jsonEncode(user.toJson()));

  static User getUserInfo() {
    String? userInfo = prefs!.getString(userInfoKey);
    if (userInfo != null) {
      try {
        return User.fromJson(jsonDecode(userInfo));
      } catch (e) {
        return const User();
      }
    } else {
      return const User();
    }
  }

  static Future<bool> setAccessToken(String accessToken) async =>
      await prefs!.setString(accessTokenKey, accessToken);

  static String getAccessToken() => prefs!.getString(accessTokenKey) ?? '';

  static Future<bool> setRefreshToken(String refreshToken) async =>
      await prefs!.setString(refreshTokenKey, refreshToken);

  static String getRefreshToken() => prefs!.getString(refreshTokenKey) ?? '';

  static void setLanguage(String languageCode) async {
    await prefs!.setString(languageKey, languageCode);
  }

  static String getLanguage() {
    return prefs!.getString(languageKey) ?? "vi";
  }

  static Future<bool> setNotificationSetting(bool notificationOn) async {
    return prefs!.setBool(notificationSettingKey, notificationOn);
  }

  static bool getNotificationSetting() =>
      prefs!.getBool(notificationSettingKey) ?? false;

  static Future<void> deleteAll() async {
    Set<String> listKey = prefs!.getKeys();
    for (var i = 0; i < listKey.length; i++) {
      await prefs!.remove(listKey.elementAt(i));
    }
  }
}
