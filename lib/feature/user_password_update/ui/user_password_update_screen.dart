import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/user_info_update/ui/widget/basic_input_field.dart';
import 'package:foodie/feature/user_password_update/bloc/user_password_update_cubit.dart';
import 'package:foodie/feature/user_password_update/bloc/user_password_update_state.dart';
import 'package:foodie/feature/user_password_update/ui/widgets/submit_new_password_button.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class UserPasswordUpdateScreen extends StatelessWidget {
  UserPasswordUpdateScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).editProfile,
          style: AppStyles.f15m().copyWith(color: Colors.white),
        ),
        backgroundColor: '#FF6B00'.toColor().withOpacity(0.3),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocProvider<UserPasswordUpdateCubit>(
        create: (context) => sl<UserPasswordUpdateCubit>(),
        child: BlocConsumer<UserPasswordUpdateCubit, UserPasswordUpdateState>(
          listener: (context, state) {
            if (state.userPasswordUpdateStatus ==
                UserPasswordUpdateStatus.success) {
              context.pop(true);
            } else if (state.userPasswordUpdateStatus ==
                UserPasswordUpdateStatus.failure) {
              context.pop(false);//!qa
            }
          },
          // buildWhen: (previous, current) =>
          //     previous.userInfoUpdateStatus != current.userInfoUpdateStatus,
          builder: (context, state) {
            debugPrint('state mess: ${state.userPasswordUpdateStatus}');
            return Padding(
              padding: EdgeInsets.all(AppStyles.width(15)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const VerticalSpace(20),
                    BasicInputField(
                      name: 'oldPassword',
                      labelText: S.of(context).oldPassword,
                      hintText: S.of(context).oldPasswordHint,
                      validator: FormBuilderValidators.required(
                        errorText: S.of(context).oldPasswordEmpty,
                      ),
                      onChanged: (value) => context
                          .read<UserPasswordUpdateCubit>()
                          .setOldPassword(value ?? ''),
                    ),
                    const VerticalSpace(20),
                    BasicInputField(
                      name: 'newPassword',
                      labelText: S.of(context).newPassword,
                      hintText: S.of(context).newPasswordHint,
                      validator: FormBuilderValidators.required(
                        errorText: S.of(context).newPasswordEmpty,
                      ),
                      onChanged: (value) => context
                          .read<UserPasswordUpdateCubit>()
                          .setNewPassword(value ?? ''),
                    ),
                    const VerticalSpace(20),
                    BasicInputField(
                      name: 'confirmNewPassword',
                      labelText: S.of(context).confirmNewPassword,
                      hintText: S.of(context).confirmNewPasswordHint,
                      validator: FormBuilderValidators.required(
                        errorText: S.of(context).confirmNewPasswordEmpty,
                      ),
                      onChanged: (value) => context
                          .read<UserPasswordUpdateCubit>()
                          .setConfirmNewPassword(value ?? ''),
                    ),
                    const VerticalSpace(25),
                    SubmitNewPasswordButton(formKey: _formKey),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
