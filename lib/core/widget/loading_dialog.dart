// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/widget/animation/twisted_animation.dart';

//! DON'T use this widget directly, use it through it's controller
class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    super.key,
    required this.asset_1,
    required this.asset_2,
    required this.backgroundIcon,
  });
  final String asset_1;
  final String asset_2;
  final String backgroundIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: Center(
        child: Container(
          width: AppStyles.screenW - AppStyles.width(30),
          height: AppStyles.screenW - AppStyles.width(30),
          // color: Colors.black,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            borderRadius: BorderRadius.circular(300),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: AppStyles.screenW - AppStyles.width(40),
                  height: AppStyles.screenW - AppStyles.width(40),
                  padding: EdgeInsets.all(AppStyles.width(40)),
                  child: Image.asset(
                    backgroundIcon,
                    fit: BoxFit.cover,
                    color: Colors.white,
                  ),
                ),
                TwistingAnimation(
                  asset_1: asset_1,
                  asset_2: asset_2,
                  size: AppStyles.screenW - AppStyles.width(40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
