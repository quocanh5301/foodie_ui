import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/setting/bloc/app_cubit.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/generated/l10n.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key, this.onPressed});

    final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Container(
          height: AppStyles.height(48),
          width: AppStyles.width(150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: "#8f1d2e".toColor(),
          ),
          child: TextButton(
            onPressed: onPressed,
            child: Stack(
              alignment: Alignment.center,
              children: [
                (state.logOutStatus == LogOutStatus.loading)
                    ? const CircularProgressIndicator.adaptive()
                    : const SizedBox.shrink(),
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
      },
    );
  }
}
