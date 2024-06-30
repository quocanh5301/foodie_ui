import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/notification/bloc/notification_cubit.dart';
import 'package:foodie/feature/notification/bloc/notification_state.dart';
import 'package:foodie/feature/notification/ui/widget/notification_card.dart';
import 'package:foodie/generated/l10n.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: '#FF6B00'.toColor().withOpacity(0.3),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Notifications',
          style: AppStyles.f16sb().copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: BlocProvider<NotificationCubit>(
        create: (context) => sl<NotificationCubit>()..getNotification(),
        child: BlocBuilder<NotificationCubit, NotificationState>(
          buildWhen: (previous, current) =>
              previous.getNotificationStatus != current.getNotificationStatus,
          builder: (context, state) {
            return EasyRefresh(
              header: MaterialHeader(
                backgroundColor: '#FF6B00'.toColor(),
                color: Colors.white,
              ),
              triggerAxis: Axis.vertical,
              canLoadAfterNoMore: false,
              footer: MaterialFooter(
                backgroundColor: '#FF6B00'.toColor(),
                color: Colors.white,
              ),
              onLoad: () async {
                await context.read<NotificationCubit>().getNotification();
                if (state.getNotificationStatus ==
                    GetNotificationStatus.noMore) {
                  return IndicatorResult.noMore;
                }
              },
              onRefresh: () =>
                  context.read<NotificationCubit>().refreshNotification(),
              child: state.notificationList.isNotEmpty
                  ? SingleChildScrollView(
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppStyles.width(10),
                          vertical: AppStyles.width(5),
                        ),
                        itemCount: state.notificationList.length,
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            const VerticalSpace(20),
                        itemBuilder: (context, index) {
                          return NotificationCard(
                            dismissibleKey:
                                ValueKey(state.notificationList[index].id),
                            notification: state.notificationList[index],
                          );
                        },
                      ),
                    )
                  : SingleChildScrollView(
                      child: SizedBox(
                        height: AppStyles.screenH,
                        child: Center(
                          child: Text(
                            S.of(context).noUserMatchSearch,
                            style: AppStyles.f16sb().copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
