import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';

class AvatarCard extends StatelessWidget {
  final Function? onTap;
  final String imagePath;
  final double? height;

  const AvatarCard({
    super.key,
    this.onTap,
    this.height,
    required this.imagePath,
  });

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
            child: FirebaseImage(
              imagePath: imagePath,
              emptyImagePath: AppImage.defaultAvatar,
              cardHeight: height ?? AppStyles.height(30),
              cardWidth: height ?? AppStyles.height(30),
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
