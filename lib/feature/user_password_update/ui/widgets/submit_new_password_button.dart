import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/user_info_update/bloc/user_info_update_cubit.dart';
import 'package:foodie/feature/user_password_update/bloc/user_password_update_cubit.dart';
import 'package:foodie/feature/user_password_update/bloc/user_password_update_state.dart';
import 'package:foodie/generated/l10n.dart';

class SubmitNewPasswordButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SubmitNewPasswordButton({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserPasswordUpdateCubit, UserPasswordUpdateState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (state.userPasswordUpdateStatus == UserPasswordUpdateStatus.failure)
                ? Text(
                    state.mess,
                    style: AppStyles.f13m().copyWith(color: Colors.red),
                  )
                : const SizedBox.shrink(),
            const VerticalSpace(10),
            Container(
              height: AppStyles.height(48),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: '#FF6B00'.toColor(),
              ),
              child: TextButton(
                onPressed: () {
                  if (state.oldPassword != state.newPassword &&
                      state.newPassword == state.confirmNewPassword) {
                    if (formKey.currentState!.validate()) {
                      context.read<UserInfoUpdateCubit>().updateUserInfo();
                    }
                  } else {
                    // SnackBar(content: content)//!qa
                  }
                },
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    (state.userPasswordUpdateStatus ==
                            UserPasswordUpdateStatus.loading)
                        ? const CupertinoActivityIndicator(color: Colors.white)
                        : const SizedBox.shrink(),
                    Center(
                      child: Text(
                        S.of(context).submit,
                        style: AppStyles.f16sb().copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
