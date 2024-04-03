import 'package:flutter/material.dart';
import 'package:foodie/core/app_state/provider/app_provider.dart';
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
        debugPrint('set firebase token result ${response.data['mess']}');
        if (response.data['mess'] == 'success') {
          return true;
        } else {
          throw Exception(response.data['mess'] ?? 'setFirebaseToken failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }
}
