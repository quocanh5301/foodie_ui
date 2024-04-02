import 'package:flutter/material.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/generated/l10n.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppStyles.height(48),
      width: AppStyles.width(150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.red,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // (state.userLogoutStatus == UserLogoutStatus.loggingOut)
            //     ? const CircularProgressIndicator.adaptive()
            //     : const SizedBox.shrink(),
            Center(
              child: Text(
                S.of(context).logout,
                style: AppStyles.f16m().copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
