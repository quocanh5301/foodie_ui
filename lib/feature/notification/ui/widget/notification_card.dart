import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/core/widget/controller/loading_controller.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/notification/bloc/notification_cubit.dart';
import 'package:foodie/feature/notification/bloc/notification_state.dart';
import 'package:foodie/model/other/notification.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({
    super.key,
    required this.notification,
    required this.dismissibleKey,
  });

  final MyNotification notification;
  final Key dismissibleKey;

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  double basicCardWidth = AppStyles.screenW - AppStyles.width(30);
  double backGroundWidth = 0;
  double fadeOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: widget.dismissibleKey,
      onUpdate: (updateDetail) {
        setState(() {
          backGroundWidth = basicCardWidth * updateDetail.progress;
          fadeOpacity = 1 - updateDetail.progress;
        });
      },
      confirmDismiss: (DismissDirection direction) async {
        NotificationCubit notificationCubit = context.read<NotificationCubit>();
        sl<LoadingDialogController>().showLoadingDialog();
        await notificationCubit.deleteNotification(
          notificationId: widget.notification.id!,
        );
        sl<LoadingDialogController>().removeOverlay();
        if (notificationCubit.state.deleteNotificationStatus ==
            DeleteNotificationStatus.success) {
          return true;
        } else {
          return false;
        }
      },
      direction: DismissDirection.endToStart,
      background: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            // color: Colors.transparent,
            width: backGroundWidth,
            child: SvgPicture.asset(
              AppImage.icDismiss,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              // height: AppStyles.height(20),
              // width: AppStyles.height(20),
            ),
          ),
        ],
      ),
      child: AnimatedOpacity(
        opacity: fadeOpacity,
        duration: const Duration(milliseconds: 100),
        child: InkWell(
          onTap: () => debugPrint('notification clicked'),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HorizontalSpace(15),
              (widget.notification.notificationImage == '' ||
                      widget.notification.notificationImage == null)
                  ? SizedBox(
                      height: AppStyles.height(50),
                      width: AppStyles.height(50),
                      child: SvgPicture.asset(
                        AppImage.icNotification,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    )
                  : FirebaseImage(
                      imagePath: widget.notification.notificationImage!,
                      emptyImagePath: AppImage.emptyImageRecipe,
                      cardHeight: AppStyles.height(50),
                      cardWidth: AppStyles.height(50),
                    ),
              const HorizontalSpace(15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalSpace(10),
                    Text(
                      widget.notification.title ?? "No title",
                      style: AppStyles.f16sb().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const VerticalSpace(5),
                    Text(
                      widget.notification.notificationContent ?? "No content",
                      style: AppStyles.f13m().copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const VerticalSpace(10),
                  ],
                ),
              ),
              const HorizontalSpace(15),
              Text(
                DateTimeHelper.getTimeAgo(
                  dateFormat: DateTimeHelper.dateFormat4,
                  dateTimeString: widget.notification.createAt ?? 'error',
                ),
                style: AppStyles.f12r().copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              const HorizontalSpace(15),
            ],
          ),
        ),
      ),
    );
  }
}
