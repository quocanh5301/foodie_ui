import 'package:flutter/material.dart';
import 'package:foodie/core/resource/styles.dart';

class CustomSettingItem extends StatelessWidget {
  final Widget? leading;
  final String title;
  final Widget? trailing;
  final void Function()? onTap;
  const CustomSettingItem({
    super.key,
    this.leading,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: AppStyles.height(55),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HorizontalSpace(15),
            (leading != null)
                ? SizedBox(
                    width: AppStyles.height(25),
                    height: AppStyles.height(25),
                    child: leading,
                  )
                : const SizedBox.shrink(),
            const HorizontalSpace(15),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: AppStyles.f14m().copyWith(color: Colors.white),
              ),
            ),
            trailing ?? const SizedBox.shrink(),
            const HorizontalSpace(15),
          ],
        ),
      ),
    );
  }
}
