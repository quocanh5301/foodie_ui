import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/feature/notification/bloc/notification_state.dart';
import 'package:foodie/feature/notification/repository/notification_repository.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit({required this.notifcationRepository})
      : super(const NotificationState());

  final NotificationRepository notifcationRepository;

  Future<void> getNotification() async {
    debugPrint('user id is ${SharedPref.getUserInfo().id}');
    emit(
      state.copyWith(
        getNotificationStatus: GetNotificationStatus.loading,
        mess: '',
      ),
    );
    final result = await notifcationRepository
        .getNotification(page: state.notificationPage)
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          getNotificationStatus: GetNotificationStatus.failure,
          mess: error,
        ),
      ),
      (success) {
        if (success.notification != null) {
          if (success.notification!.length <
              notifcationRepository.notificationProvider.pageSize) {
            emit(
              state.copyWith(
                getNotificationStatus: GetNotificationStatus.noMore,
                notificationList: [
                  ...state.notificationList,
                  ...success.notification!,
                ],
                notificationPage: state.notificationPage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                mess: success.mess ?? state.mess,
                getNotificationStatus: GetNotificationStatus.success,
                notificationList: [
                  ...state.notificationList,
                  ...success.notification!,
                ],
                notificationPage: state.notificationPage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getNotificationStatus: GetNotificationStatus.failure,
              mess: 'notificationList is null',
            ),
          );
        }
      },
    );
  }

  Future<void> seenNotification({
    required double notificationId,
    required double isSeen,
  }) async {
    emit(
      state.copyWith(
        seenNotificationStatus: SeenNotificationStatus.loading,
        mess: '',
      ),
    );
    final result = await notifcationRepository
        .seenNotification(
          notificationId: notificationId,
          isSeen: isSeen,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          seenNotificationStatus: SeenNotificationStatus.failure,
          mess: error,
        ),
      ),
      (success) => emit(
        state.copyWith(
          seenNotificationStatus: SeenNotificationStatus.success,
        ),
      ),
    );
  }

  Future<void> deleteNotification({required double notificationId}) async {
    emit(
      state.copyWith(
        deleteNotificationStatus: DeleteNotificationStatus.loading,
        mess: '',
      ),
    );
    final result = await notifcationRepository
        .deleteNotification(
          notificationId: notificationId,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          deleteNotificationStatus: DeleteNotificationStatus.failure,
          mess: error,
        ),
      ),
      (success) => emit(
        state.copyWith(
          deleteNotificationStatus: DeleteNotificationStatus.success,
        ),
      ),
    );
  }
}
