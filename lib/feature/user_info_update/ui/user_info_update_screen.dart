import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/user_info_update/bloc/user_info_update_cubit.dart';
import 'package:foodie/feature/user_info_update/bloc/user_info_update_state.dart';
import 'package:foodie/feature/user_info_update/ui/widget/basic_input_field.dart';
import 'package:foodie/feature/user_info_update/ui/widget/submit_button.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:foodie/model/user/user.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class UserInfoUpdateScreen extends StatelessWidget {
  UserInfoUpdateScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    User user = SharedPref.getUserInfo();
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
      body: BlocProvider<UserInfoUpdateCubit>(
        create: (context) => sl<UserInfoUpdateCubit>()
          ..setUserName(user.userName ?? '')
          ..setUserEmail(user.userEmail ?? '')
          ..setDescription(user.description ?? ''),
        child: BlocConsumer<UserInfoUpdateCubit, UserInfoUpdateState>(
          listener: (context, state) {
            if (state.userInfoUpdateStatus == UserInfoUpdateStatus.success) {
              context.pop(true);
            } else if (state.userInfoUpdateStatus ==
                UserInfoUpdateStatus.failure) {
              context.pop(false);//!qa
            }
          },
          buildWhen: (previous, current) =>
              previous.userInfoUpdateStatus != current.userInfoUpdateStatus,
          builder: (context, state) {
            debugPrint('state mess: ${state.userInfoUpdateStatus}');
            return Padding(
              padding: EdgeInsets.all(AppStyles.width(15)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const VerticalSpace(20),
                    BasicInputField(
                      name: 'name',
                      initialValue: SharedPref.getUserInfo().userName,
                      labelText: S.of(context).name,
                      hintText: S.of(context).nameHint,
                      validator: FormBuilderValidators.required(
                        errorText: S.of(context).nameError,
                      ),
                      onChanged: (value) => context
                          .read<UserInfoUpdateCubit>()
                          .setUserName(value ?? ''),
                    ),
                    const VerticalSpace(20),
                    BasicInputField(
                      name: 'email',
                      initialValue: SharedPref.getUserInfo().userEmail,
                      labelText: S.of(context).email,
                      hintText: S.of(context).email,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: S.of(context).emailEmpty,
                        ),
                        FormBuilderValidators.email(
                          errorText: S.of(context).emailFormatError,
                        ),
                      ]),
                      onChanged: (value) => context
                          .read<UserInfoUpdateCubit>()
                          .setUserEmail(value ?? ''),
                    ),
                    const VerticalSpace(20),
                    BasicInputField(
                      name: 'description',
                      initialValue: SharedPref.getUserInfo().description,
                      labelText: S.of(context).userDescription,
                      hintText: S.of(context).userDescription,
                      // validator: FormBuilderValidators.required(
                      //   errorText: 'S.of(context).companyError',
                      // ),
                      onChanged: (value) => context
                          .read<UserInfoUpdateCubit>()
                          .setDescription(value ?? ''),
                    ),
                    const VerticalSpace(25),
                    SubmitButton(formKey: _formKey),
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
