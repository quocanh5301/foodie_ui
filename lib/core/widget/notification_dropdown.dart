import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/core/widget/controller/core_widget_controller.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';

class DropdownNotification extends StatefulWidget {
  final String title;
  final String content;
  final String createAt;
  final String? image;
  final VoidCallback? onTap;
  final Key dismissibleKeyHorizontal;
  final Key dismissibleKeyVertical;

  const DropdownNotification({
    super.key,
    required this.title,
    required this.content,
    this.image,
    this.onTap,
    required this.dismissibleKeyHorizontal,
    required this.dismissibleKeyVertical,
    required this.createAt,
  });

  @override
  DropdownNotificationState createState() => DropdownNotificationState();
}

class DropdownNotificationState extends State<DropdownNotification>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Timer timer;
  double dismissibleFade = 1;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animationController.forward();
    _startTimer();
  }

  void _startTimer() {
    timer = Timer(const Duration(seconds: 7), () async {
      // Your task to be executed after 5 seconds
      if (mounted) {
        await _animationController.reverse();
        sl<CoreWidgetController>().removeOverlay();
        _animationController.dispose();
      }
    });
  }

  double get opacity => [_animationController.value, dismissibleFade]
      .reduce((currentMin, next) => currentMin < next ? currentMin : next);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Align(
            alignment: Alignment.topCenter,
            child: Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(0.0, -40 + (40 * _animationController.value)),
                child: IntrinsicHeight(
                  child: Dismissible(
                    key: widget.dismissibleKeyVertical,
                    onUpdate: (updateDetail) {
                      setState(() {
                        dismissibleFade = 1 - updateDetail.progress;
                      });
                    },
                    onDismissed: (direction) {
                      if (direction == DismissDirection.up) {
                        timer.cancel();
                        sl<CoreWidgetController>().removeOverlay();
                        _animationController.dispose();
                      }
                    },
                    direction: DismissDirection.up,
                    dismissThresholds: (const {DismissDirection.up: 0.5}),
                    child: Dismissible(
                      key: widget.dismissibleKeyHorizontal,
                      onUpdate: (updateDetail) {
                        setState(() {
                          dismissibleFade = 1 - updateDetail.progress;
                        });
                      },
                      onDismissed: (direction) {
                        if (direction == DismissDirection.startToEnd ||
                            direction == DismissDirection.endToStart) {
                          timer.cancel();
                          sl<CoreWidgetController>().removeOverlay();
                          _animationController.dispose();
                        }
                      },
                      dismissThresholds: (const {
                        DismissDirection.horizontal: 0.5
                      }),
                      child: GestureDetector(
                        onTap: () async {
                          widget.onTap?.call();
                          await _animationController.reverse();
                          timer.cancel();
                          sl<CoreWidgetController>().removeOverlay();
                          _animationController.dispose();
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: AppStyles.width(20),
                            vertical: AppStyles.width(10),
                          ),
                          padding: EdgeInsets.all(AppStyles.width(10)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FirebaseImage(
                                imagePath: widget.image ?? '',
                                emptyImagePath: AppImage.emptyImageRecipe,
                                cardHeight: AppStyles.height(30),
                                cardWidth: AppStyles.height(30),
                              ),
                              const HorizontalSpace(10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.title,
                                      style: AppStyles.f13sb().copyWith(
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    const VerticalSpace(7),
                                    Text(
                                      widget.content,
                                      style: AppStyles.f13m().copyWith(
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    const VerticalSpace(7),
                                    Text(
                                      DateTimeHelper.getTimeAgo(
                                        dateFormat: DateTimeHelper.dateFormat4,
                                        dateTimeString: widget.createAt,
                                      ),
                                      style: AppStyles.f12r().copyWith(
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
