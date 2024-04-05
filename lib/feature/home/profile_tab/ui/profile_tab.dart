import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_cubit.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/home/profile_tab/ui/widget/profile_tabbar.dart';
import 'package:foodie/generated/l10n.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        title: Text(
          S.of(context).yourProfile,
          style: AppStyles.f16sb().copyWith(
            color: '#FF6B00'.toColor(),
          ),
        ),
        centerTitle: true,
      ),
      body: BlocProvider<ProfileCubit>(
        create: (context) => sl<ProfileCubit>(),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return EasyRefresh(
              header: MaterialHeader(
                backgroundColor: '#FF6B00'.toColor(),
                color: Colors.white,
              ),
              triggerAxis: Axis.vertical,
              footer: MaterialFooter(
                backgroundColor: '#FF6B00'.toColor(),
                color: Colors.white,
              ),
              onLoad: () async {
                if (state.currentTab == 0) {
                  if (state.getUserRecipeStatus == GetUserRecipeStatus.noMore) {
                    return IndicatorResult.noMore;
                  }
                  await context.read<ProfileCubit>().getRecipeOfUser();
                } else {
                  if (state.getUserReviewStatus == GetUserReviewStatus.noMore) {
                    return IndicatorResult.noMore;
                  }
                  await context.read<ProfileCubit>().getReviewOfUserRecipe();
                }
              },
              onRefresh: () {
                if (state.currentTab == 0) {
                  context.read<ProfileCubit>().refreshUserRecipe();
                } else {
                  context.read<ProfileCubit>().refreshReview();
                }
              },
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: AppStyles.screenW,
                          color: Colors.grey,
                          height: AppStyles.height(300),
                          child: Image.asset(
                            AppImage.profileBackground,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: AppStyles.screenW,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: AppStyles.height(50),
                                        decoration: BoxDecoration(
                                          color: '#2b2b2b'.toColor(),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          ),
                                          border: BorderDirectional(
                                            top: BorderSide(
                                              color: '#FF6B00'.toColor(),
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const HorizontalSpace(35),
                                      Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 128, 122, 122),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: '#FF6B00'.toColor(),
                                            width: 2,
                                          ),
                                        ),
                                        child: FirebaseImage(
                                          imagePath: '',
                                          emptyImagePath:
                                              AppImage.defaultAvatar,
                                          cardHeight: AppStyles.height(100),
                                          cardWidth: AppStyles.height(100),
                                        ),
                                      ),
                                      const HorizontalSpace(20),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 128, 122, 122),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(25),
                                            ),
                                            border: Border.all(
                                              color: '#FF6B00'.toColor(),
                                              width: 2,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: AppStyles.width(8),
                                            horizontal: AppStyles.width(12),
                                          ),
                                          child: Text(
                                            SharedPref.getUserInfo().userName ??
                                                S.of(context).noNameUser,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: AppStyles.f16sb()
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const HorizontalSpace(35),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const VerticalSpace(15),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(AppStyles.width(15)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  SharedPref.getUserInfo().userEmail ??
                                      S.of(context).noEmail,
                                  style: AppStyles.f16sb().copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                const VerticalSpace(15),
                                Text(
                                  SharedPref.getUserInfo().description == '' ||
                                          SharedPref.getUserInfo()
                                                  .description ==
                                              null
                                      ? S.of(context).noDescription
                                      : SharedPref.getUserInfo().description!,
                                  style: AppStyles.f16sb().copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const VerticalSpace(15),
                    const ProfileTabWidget(),
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
