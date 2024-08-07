import 'dart:convert';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/widget/controller/dropdown_widget_controller.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/feature/setting/repository/app_repository.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/model/other/notification.dart';
import 'package:fpdart/fpdart.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({
    required this.appRepository,
  }) : super(const AppState());

  AppRepository appRepository;

  Future<void> changeLocale() async {
    final result = await Right(state.languageCode)
        .map((code) => code == "vi" ? "en" : "vi")
        .toTaskEither()
        .flatMap((newLang) => TaskEither(
            () async => await appRepository.changeLocale(newLang).run()))
        .run();

    result.fold(
      (error) => debugPrint("changeLocale $error"),
      (currLang) => emit(state.copyWith(languageCode: currLang)),
    );
  }

  Future<void> loadCurrentLanguage() async {
    final result = await appRepository.loadCurrentLanguage().run();
    result.fold(
      (error) => debugPrint("loadCurrentLanguage $error"),
      (currLang) => emit(state.copyWith(languageCode: currLang)),
    );
  }

  void setNotificationSetting() async {
    final notificationSetting = await SharedPref.getNotificationSetting();
    final result = await appRepository
        .setNotificationSetting(
          isEnable: notificationSetting,
        )
        .run();
    result.fold(
      (error) => debugPrint("setNotificationSetting error $error"),
      (success) => emit(
        state.copyWith(
          notificationOn: notificationSetting,
        ),
      ),
    );
  }

  void switchNotificationSetting() async {
    final result = await appRepository
        .setNotificationSetting(
          isEnable: !(state.notificationOn),
        )
        .run();
    result.fold(
      (error) => debugPrint("switchNotificationSetting error $error"),
      (success) => emit(
        state.copyWith(
          notificationOn: !(state.notificationOn),
        ),
      ),
    );
  }

  Future<void> _setFirebaseToken({required String token}) async {
    emit(
      state.copyWith(
        setFirebaseTokenStatus: SetFirebaseTokenStatus.loading,
      ),
    );
    final result =
        await appRepository.setFirebaseToken(firebaseToken: token).run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          setFirebaseTokenStatus: SetFirebaseTokenStatus.failure,
        ),
      ),
      (response) async {
        emit(
          state.copyWith(
            setFirebaseTokenStatus: SetFirebaseTokenStatus.success,
          ),
        );
      },
    );
  }

  Future<void> getUserProfile() async {
    emit(
      state.copyWith(
          getUSerInfoStatus: GetUSerInfoStatus.loading,
          updateProfileImageStatus: UpdateProfileImageStatus.initial),
    );
    final result = await appRepository.getUserProfile().run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          getUSerInfoStatus: GetUSerInfoStatus.failure,
        ),
      ),
      (response) async {
        if (response) {
          emit(
            state.copyWith(
              getUSerInfoStatus: GetUSerInfoStatus.success,
            ),
          );
        } else {
          emit(
            state.copyWith(
              getUSerInfoStatus: GetUSerInfoStatus.failure,
            ),
          );
        }
      },
    );
  }

  Future<void> logout() async {
    emit(
      state.copyWith(
        logOutStatus: LogOutStatus.loading,
      ),
    );
    final result = await appRepository.logout().run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          logOutStatus: LogOutStatus.failure,
        ),
      ),
      (response) async {
        if (response) {
          emit(
            state.copyWith(
              logOutStatus: LogOutStatus.success,
            ),
          );
        } else {
          emit(
            state.copyWith(
              logOutStatus: LogOutStatus.failure,
            ),
          );
        }
      },
    );
  }

  Future<void> updateProfileImage({required String imagPath}) async {
    emit(
      state.copyWith(
        updateProfileImageStatus: UpdateProfileImageStatus.loading,
      ),
    );
    final result = await appRepository
        .updateProfileImage(userAvatar: File(imagPath))
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          updateProfileImageStatus: UpdateProfileImageStatus.failure,
        ),
      ),
      (response) async {
        if (response) {
          emit(
            state.copyWith(
              updateProfileImageStatus: UpdateProfileImageStatus.success,
            ),
          );
        } else {
          emit(
            state.copyWith(
              updateProfileImageStatus: UpdateProfileImageStatus.failure,
            ),
          );
        }
      },
    );
  }

  Future<void> initNotificationsFirebase({
    required Future<void> Function(RemoteMessage) backgroundNoti,
  }) async {
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

    await fcmToken.getToken().then(
      (token) async {
        if (token != null) {
          debugPrint('token: $token');
          await _setFirebaseToken(token: token);
          if (state.setFirebaseTokenStatus == SetFirebaseTokenStatus.success) {
            try {
              SharedPref.setFirebaseToken(token);
              debugPrint('set onBackgroundMessage');
              FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
                if (message.data['body'] != null) {
                  debugPrint('onMessage ${message.data['body']}');
                  MyNotification? notification = MyNotification.fromJson(
                      json.decode((message.data['body'])!));
                  await SharedPref.setNewNotificationAlert(true); //!qa
                  emit(
                    state.copyWith(
                      haveNewNotification: true,
                    ),
                  );
                  sl<DropDownWidgetController>().showDropdownNotification(
                      title: notification.title ?? '',
                      content: notification.notificationContent ?? '',
                      createAt: notification.createAt ?? 'error',
                      imagePath: notification.notificationImage ?? '',
                      onTap: () {
                        if (notification.onClickType == 'recipe') {
                          if (notification.relevantData != null &&
                              rootNavigatorKey.currentContext != null) {
                            RecipeDetailRoute(
                                    recipeId:
                                        notification.relevantData!.toInt())
                                .push(rootNavigatorKey.currentContext!);
                          }
                        } else {
                          if (notification.relevantData != null &&
                              rootNavigatorKey.currentContext != null) {
                            UserProfileRoute(
                                    userId: notification.relevantData!.toInt())
                                .push(rootNavigatorKey.currentContext!);
                          }
                        }
                      });
                }
              });
              FirebaseMessaging.onBackgroundMessage(backgroundNoti);
            } catch (e) {
              debugPrint('set onBackgroundMessage fail $e');
            }
          }
        }
      },
    );
  }

  void notificationCheck() async {
    //!qa
    final haveNewNotification = await SharedPref.getNewNotificationAlert();
    debugPrint('notificationCheck haveNewNotification $haveNewNotification');
    emit(
      state.copyWith(
        haveNewNotification: haveNewNotification,
      ),
    );
    debugPrint('state haveNewNotification ${state.haveNewNotification}');
  }

  void checkedNotification() {
    SharedPref.setNewNotificationAlert(false);
    emit(
      state.copyWith(
        haveNewNotification: false,
      ),
    );
  }
}
