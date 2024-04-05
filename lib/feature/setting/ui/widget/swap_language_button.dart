import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/setting/bloc/app_cubit.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/generated/l10n.dart';

class SwapLanguageButton extends StatelessWidget {
  const SwapLanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return TextButton(
          child: Text(
            S.of(context).lang,
            textAlign: TextAlign.center,
            style: AppStyles.f14sb().copyWith(
              color: "#DBA510".toColor(),
              height: 1,
            ),
          ),
          onPressed: () => context.read<AppCubit>().changeLocale(),
        );
      },
    );
  }
}
