import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/recipe_image_bottomsheet.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/avatar_card.dart';
import 'package:foodie/feature/setting/bloc/app_cubit.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/feature/setting/ui/widget/custom_setting_item.dart';
import 'package:foodie/feature/setting/ui/widget/logout_button.dart';
import 'package:foodie/feature/setting/ui/widget/notification_switch.dart';
import 'package:foodie/feature/setting/ui/widget/swap_language_button.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class UserSettingScreen extends StatelessWidget {
  const UserSettingScreen({super.key});

  FutureOr<bool?> _showDialog({
    //!qa
    required BuildContext currentCtx,
    required void Function() onConfirm,
    required void Function() onDeny,
    required String title,
    required String content,
    required bool isLogout,
  }) async =>
      await showDialog(
        context: currentCtx,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 89, 26, 26),
            title: Center(
              child: Text(
                title,
                style: AppStyles.f15sb().copyWith(color: Colors.white),
              ),
            ),
            content: Text(
              content,
              style: AppStyles.f14m().copyWith(color: Colors.white),
            ),
            actions: <Widget>[
              SizedBox(
                height: AppStyles.height(50),
                child: Row(
                  children: [
                    Expanded(
                      flex: 50,
                      child: InkWell(
                        onTap: () => onConfirm(),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                isLogout ? "#8f1d2e".toColor() : Colors.black,
                            // color: '#08357C'.toColor(),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              S.of(context).confirm,
                              style: AppStyles.f16m()
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const HorizontalSpace(10),
                    Expanded(
                      flex: 50,
                      child: InkWell(
                        onTap: () => onDeny(),
                        child: Container(
                          decoration: BoxDecoration(
                            color: '#DBA510'.toColor(),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              S.of(context).cancel,
                              style: AppStyles.f16m()
                                  .copyWith(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );

  _showImagePickerChoices({
    //!qa
    required BuildContext parrentContext,
    required FutureOr<dynamic> Function(dynamic) callBack,
  }) {
    showModalBottomSheet(
      context: parrentContext,
      builder: (BuildContext imagePickerContext) {
        return RecipeImagePicker();
      },
    ).then(callBack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      appBar: AppBar(
        backgroundColor: '#FF6B00'.toColor().withOpacity(0.3),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: AppStyles.screenW,
            height: AppStyles.height(180),
            child: SvgPicture.asset(
              fit: BoxFit.fill,
              AppImage.icUserScreenCurve,
              colorFilter: ColorFilter.mode(
                '#FF6B00'.toColor().withOpacity(0.3),
                BlendMode.srcIn,
              ),
              semanticsLabel: 'user screen\'s curve',
            ),
          ),
          BlocConsumer<AppCubit, AppState>(
            listener: (BuildContext context, AppState state) {
              if (state.logOutStatus == LogOutStatus.success) {
                const LoginRoute().go(context);
              }
              if (state.updateProfileImageStatus ==
                  UpdateProfileImageStatus.success) {
                context.read<AppCubit>().getUserProfile();
              }
            },
            buildWhen: (previous, current) =>
                previous.getUSerInfoStatus != current.getUSerInfoStatus,
            builder: (context, state) {
              return Container(
                width: AppStyles.screenW,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const VerticalSpace(100),
                    AvatarCard(
                      onTap: () => _showImagePickerChoices(
                        parrentContext: context,
                        callBack: (chosenImg) async {
                          if (chosenImg != null) {
                            //do sthg
                            await context.read<AppCubit>().updateProfileImage(
                                  imagPath: (chosenImg as File).path,
                                );
                          }
                        },
                      ),
                      imagePath: SharedPref.getUserInfo().userImage ?? '',
                      height: AppStyles.width(100),
                    ),
                    const VerticalSpace(10),
                    Text(
                      SharedPref.getUserInfo().userName ??
                          S.of(context).noNameUser,
                      textAlign: TextAlign.center,
                      style: AppStyles.f14m().copyWith(
                        color: Colors.white,
                        fontSize: AppStyles.fontSize(21),
                      ),
                    ),
                    const VerticalSpace(5),
                    Text(
                      SharedPref.getUserInfo().userEmail ??
                          S.of(context).noEmail,
                      textAlign: TextAlign.center,
                      style: AppStyles.f14m().copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const VerticalSpace(20),
                    IntrinsicHeight(
                      // height: AppStyles.height(190),
                      child: Card(
                        color: Colors.grey.withOpacity(0.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomSettingItem(
                              title: S.of(context).edit_profile,
                              leading: SvgPicture.asset(
                                AppImage.icEditProfile,
                                fit: BoxFit.fill,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onTap: () async {
                                bool? isChanged =
                                    await const UserInfoUpdateRoute()
                                        .push(context);
                                if ((isChanged ?? false) && context.mounted) {
                                  context.read<AppCubit>().getUserProfile();
                                }
                              },
                            ),
                            CustomSettingItem(
                              title: S.of(context).changePassword,
                              leading: SvgPicture.asset(
                                AppImage.icPrivacy,
                                fit: BoxFit.fill,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                              onTap: () async {
                                bool? isChanged =
                                    await const UserPasswordUpdateRoute()
                                        .push(context);
                                if ((isChanged ?? false) && context.mounted) {
                                  // context.read<AppCubit>().getUserProfile();
                                }
                              },
                            ),
                            CustomSettingItem(
                              title: S.of(context).notification,
                              leading: SvgPicture.asset(
                                AppImage.icNotification,
                                fit: BoxFit.fill,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                              trailing: const NotificationSwitchWidget(),
                            ),
                            CustomSettingItem(
                              title: S.of(context).language,
                              leading: SvgPicture.asset(
                                AppImage.icLanguage,
                                fit: BoxFit.fill,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                              trailing: const SwapLanguageButton(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const VerticalSpace(20),
                    LogoutButton(
                      onPressed: () async {
                        await _showDialog(
                          isLogout: true,
                          currentCtx: context,
                          onConfirm: () => context.read<AppCubit>().logout(),
                          onDeny: () => context.pop(),
                          title: S.of(context).logoutDialogTitle,
                          content: S.of(context).logoutDialogContent,
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          // (state.userAvatarStatus == UserAvatarStatus.updating)
          //     ? const Center(
          //         child: CircularProgressIndicator(),
          //       )
          //     : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
