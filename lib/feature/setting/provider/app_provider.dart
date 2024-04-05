import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/generated/l10n.dart';

class AppProvider {
  AppProvider({required this.apiRequest});

  final APIRequest apiRequest;

  String changeLocale(String languageCode) {
    S.delegate.load(Locale(languageCode, ""));
    SharedPref.setLanguage(languageCode);
    DateTimeHelper.setMessage(languageCode);
    return languageCode;
  }

  String loadCurrentLanguage() {
    String currLanguageCode = SharedPref.getLanguage();
    S.delegate.load(Locale(currLanguageCode, ""));
    DateTimeHelper.setMessage(currLanguageCode);
    return currLanguageCode;
  }

  Future<bool> setNotificationSetting({required bool isEnable}) async {
    return await SharedPref.setNotificationSetting(isEnable);
  }

  Future<Response> setFirebaseToken({required String firebaseToken}) async =>
      await apiRequest.post(
        endpoint: Endpoints.setFirebaseToken,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'firebaseToken': firebaseToken,
        },
      );

  Future<Response> getUserProfile() async => await apiRequest.post(
        endpoint: Endpoints.getUserProfile,
        data: {
          'userId': SharedPref.getUserInfo().id,
        },
      );

  Future<Response> logout() async => await apiRequest.post(
        endpoint: Endpoints.logout,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'email': SharedPref.getUserInfo().userEmail,
          'accessToken': SharedPref.getAccessToken(),
          'firebaseToken': SharedPref.getFirebaseToken(),
        },
      );
}
