import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodie/core/styles.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class GoToLoginButton extends StatelessWidget {
  const GoToLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: S.of(context).loginText1,
        style: AppStyles.f16sb().copyWith(color: Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: S.of(context).loginText2,
            style: AppStyles.f16sb().copyWith(
              decoration: TextDecoration.underline,
              color: '#FF6B00'.toColor(),
            ),
            recognizer: TapGestureRecognizer()..onTap = () => context.pop(),
          )
        ],
      ),
    );
  }
}
