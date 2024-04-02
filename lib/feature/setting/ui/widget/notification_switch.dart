import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/app_state/bloc/app_cubit.dart';
import 'package:foodie/core/app_state/bloc/app_state.dart';

class NotificationSwitchWidget extends StatelessWidget {
  const NotificationSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Switch(
          value: state.notificationOn,
          onChanged: (value) => context.read<AppCubit>().switchNoti(),
        );
      },
    );
  }
}
