import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/user_info_update/bloc/user_info_update_cubit.dart';
import 'package:foodie/feature/user_info_update/bloc/user_info_update_state.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:foodie/model/user/user.dart';
import 'package:go_router/go_router.dart';

class SubmitButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SubmitButton({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInfoUpdateCubit, UserInfoUpdateState>(
      buildWhen: (previous, current) =>
          previous.userInfoUpdateStatus != current.userInfoUpdateStatus ||
          previous.userName != current.userName ||
          previous.userEmail != current.userEmail ||
          previous.description != current.description,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (state.userInfoUpdateStatus == UserInfoUpdateStatus.failure)
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
                  User user = SharedPref.getUserInfo();
                  if (user.userName != state.userName ||
                      user.userEmail != state.userEmail ||
                      user.description != state.description) {
                    if (formKey.currentState!.validate()) {
                      context.read<UserInfoUpdateCubit>().updateUserInfo();
                    }
                  } else {
                    context.pop(false); //!qa
                  }
                },
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    (state.userInfoUpdateStatus == UserInfoUpdateStatus.loading)
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
