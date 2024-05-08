import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/model/other/notification.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});

  final MyNotification notification;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HorizontalSpace(15),
        (notification.notificationImage == '' ||
                notification.notificationImage == null)
            ? SizedBox(
                height: AppStyles.height(50),
                width: AppStyles.height(50),
                child: SvgPicture.asset(AppImage.icNotification),
              )
            : FirebaseImage(
                imagePath: notification.notificationImage!,
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
                notification.title ?? "No title",
                style: AppStyles.f16sb().copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const VerticalSpace(5),
              Text(
                notification.notificationContent ?? "No content",
                style: AppStyles.f13m().copyWith(color: Colors.black),
              ),
              const VerticalSpace(10),
            ],
          ),
        ),
        const HorizontalSpace(15),
        Text(
          DateTimeHelper.getTimeAgo(
            dateFormat: DateTimeHelper.dateFormat4,
            dateTimeString: notification.createAt ?? 'error',
          ),
          style: AppStyles.f12r().copyWith(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
        const HorizontalSpace(15),
      ],
    );
  }
}
