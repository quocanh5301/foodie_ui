import 'package:flutter/foundation.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/feature/setting/provider/app_provider.dart';
import 'package:foodie/model/user/user.dart';
import 'package:fpdart/fpdart.dart';

class AppRepository {
  const AppRepository({required this.appProvider});

  final AppProvider appProvider;

  TaskEither<String, String> changeLocale(String languageCode) =>
      TaskEither.tryCatch(
        () async => appProvider.changeLocale(languageCode),
        (error, stackTrace) => error.toString(),
      );

  TaskEither<String, String> loadCurrentLanguage() => TaskEither.tryCatch(
        () async => appProvider.loadCurrentLanguage(),
        (error, stackTrace) => error.toString(),
      );

  TaskEither<String, bool> setNotificationSetting({required bool isEnable}) =>
      TaskEither.tryCatch(
        () async => await appProvider.setNotificationSetting(
          isEnable: isEnable,
        ),
        (error, stackTrace) => error.toString(),
      );

  TaskEither<String, bool> setFirebaseToken({required String firebaseToken}) {
    return TaskEither.tryCatch(
      () async {
        final response = await appProvider.setFirebaseToken(
          firebaseToken: firebaseToken,
        );
        if (response.data['mess'] == 'success') {
          return true;
        } else {
          throw Exception(response.data['mess'] ?? 'setFirebaseToken failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }

  TaskEither<String, bool> getUserProfile() {
    return TaskEither.tryCatch(
      () async {
        final response = await appProvider.getUserProfile();
        if (response.data['mess'] == 'success') {
          try {
            SharedPref.setUserInfo(
              User.fromJson(response.data['data']),
            );
            return true;
          } catch (e) {
            throw Exception(e);
          }
        } else {
          throw Exception(response.data['mess'] ?? 'getUserProfile failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }

  TaskEither<String, bool> logout() {
    return TaskEither.tryCatch(
      () async {
        final response = await appProvider.logout();
        if (response.data['mess'] == 'success') {
          SharedPref.deleteAll();
          return true;
        } else {
          debugPrint(response.data['mess']);
          throw Exception(response.data['mess'] ?? 'logout failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }
}
