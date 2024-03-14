import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/generated/l10n.dart';

class SubmitRecipeButton extends StatelessWidget {
  const SubmitRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppStyles.screenW,
      height: AppStyles.height(48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: '#FF6B00'.toColor(),
      ),
      child: TextButton(
        onPressed: () {
          // if (formKey.currentState?.validate() ?? false) {
          //   context.read<LoginCubit>().login();
          // }
        },
        child:
            // BlocBuilder<LoginCubit, LoginState>(
            //   buildWhen: (previous, current) =>
            //       previous.loginStatus != current.loginStatus,
            //   builder: (context, state) {
            //     return
            Stack(
          alignment: Alignment.centerLeft,
          children: [
            // state.loginStatus == LoginStatus.loading
            //     ? const CupertinoActivityIndicator(color: Colors.white)
            //     : const SizedBox(),
            Center(
              child: Text(
                S.of(context).login,
                style: AppStyles.f16m().copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
        //   },
        // ),
      ),
    );
  }
}
