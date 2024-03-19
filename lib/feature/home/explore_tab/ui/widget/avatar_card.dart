import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';

class AvatarCard extends StatelessWidget {
  final Function? onTap;
  final Widget? child;
  final double? height;

  const AvatarCard({super.key, this.onTap, this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Stack(
        children: [
          Container(
            height: height ?? AppStyles.height(120),
            width: height ?? AppStyles.height(120),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: '#FF6B00'.toColor(),
            ),
            clipBehavior: Clip.hardEdge,
            child: child ??
                Image.asset(
                  AppImage.defaultAvatar,
                  width: AppStyles.width(217),
                  height: AppStyles.height(86),
                ),
          ),
          onTap != null
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    height: AppStyles.height(30),
                    width: AppStyles.height(30),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      height: AppStyles.height(8),
                      width: AppStyles.width(8),
                      AppImage.icEditAvatar,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
