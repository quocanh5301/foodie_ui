import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_cubit.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_state.dart';
import 'package:foodie/feature/user_profile/ui/widget/user_profile_tabbar.dart';
import 'package:foodie/generated/l10n.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key, required this.userId});

  final int userId;

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool allowFollowBtnClick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        title: Text(
          S.of(context).userProfile,
          style: AppStyles.f16sb().copyWith(
            color: '#FF6B00'.toColor(),
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: '#FF6B00'.toColor(),
        ),
      ),
      body: BlocProvider<UserProfileCubit>(
        create: (context) => sl<UserProfileCubit>()
          ..getUserProfile(userId: widget.userId)
          ..checkIsFollowOrNot(userId: widget.userId)
          ..getUserRecipeNumFollowerFollowing(userId: widget.userId),
        child: BlocConsumer<UserProfileCubit, UserProfileState>(
          listener: (context, state) {
            if (state.followUserStatus == FollowUserStatus.success) {
              context
                  .read<UserProfileCubit>()
                  .getUserRecipeNumFollowerFollowing(userId: widget.userId);
            }
          },
          listenWhen: (previous, current) =>
              previous.followUserStatus != current.followUserStatus,
          buildWhen: (previous, current) =>
              previous.getUSerInfoStatus != current.getUSerInfoStatus ||
              previous.checkUserFollowStatus != current.checkUserFollowStatus ||
              previous.getUserFollowerFollowingStatus !=
                  current.getUserFollowerFollowingStatus ||
              previous.followUserStatus != current.followUserStatus,
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
                  await context.read<UserProfileCubit>().getRecipeOfUser();
                } else {
                  if (state.getUserReviewStatus == GetUserReviewStatus.noMore) {
                    return IndicatorResult.noMore;
                  }
                  await context
                      .read<UserProfileCubit>()
                      .getReviewOfUserRecipe();
                }
              },
              onRefresh: () {
                context
                    .read<UserProfileCubit>()
                    .getUserRecipeNumFollowerFollowing(userId: widget.userId);
                if (state.currentTab == 0) {
                  context.read<UserProfileCubit>().refreshUserRecipe();
                } else {
                  context.read<UserProfileCubit>().refreshReview();
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
                                  IntrinsicHeight(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const HorizontalSpace(15),
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
                                        const HorizontalSpace(15),
                                        Container(
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            color: '#2b2b2b'.toColor(),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: '#FF6B00'.toColor(),
                                              width: 2,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: AppStyles.width(5),
                                            horizontal: AppStyles.width(10),
                                          ),
                                          child: IntrinsicHeight(
                                            child: Column(
                                              //!qa
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  S.of(context).recipeProfile,
                                                  style:
                                                      AppStyles.f11m().copyWith(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  '${state.userData.numRecipe}', //!qa
                                                  style: AppStyles.f12sb()
                                                      .copyWith(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const HorizontalSpace(10),
                                        Container(
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            color: '#2b2b2b'.toColor(),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: '#FF6B00'.toColor(),
                                              width: 2,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: AppStyles.width(5),
                                            horizontal: AppStyles.width(10),
                                          ),
                                          child: IntrinsicHeight(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  S.of(context).follower,
                                                  style:
                                                      AppStyles.f11m().copyWith(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  '${state.userData.numFollower}',
                                                  style: AppStyles.f12sb()
                                                      .copyWith(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const HorizontalSpace(10),
                                        Container(
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            color: '#2b2b2b'.toColor(),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: '#FF6B00'.toColor(),
                                              width: 2,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: AppStyles.width(5),
                                            horizontal: AppStyles.width(10),
                                          ),
                                          child: IntrinsicHeight(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  S.of(context).following,
                                                  style:
                                                      AppStyles.f11m().copyWith(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  '${state.userData.numFollowing}',
                                                  style: AppStyles.f12sb()
                                                      .copyWith(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const VerticalSpace(15),
                    Padding(
                      padding: EdgeInsets.all(AppStyles.width(25)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.userInfo.userName ?? S.of(context).noNameUser,
                            style: AppStyles.f16sb().copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const VerticalSpace(15),
                          Text(
                            state.userInfo.userEmail ?? S.of(context).noEmail,
                            style: AppStyles.f16sb().copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const VerticalSpace(15),
                          Text(
                            state.userInfo.description == '' ||
                                    state.userInfo.description == null
                                ? S.of(context).noDescription
                                : state.userInfo.description!,
                            style: AppStyles.f16sb().copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const VerticalSpace(15),
                          InkWell(
                            onTap: allowFollowBtnClick
                                ? () => state.isFollowedByCurrentuser
                                    ? context
                                        .read<UserProfileCubit>()
                                        .followUser(
                                          userId: widget.userId,
                                          isFollow: 0,
                                        )
                                    : context
                                        .read<UserProfileCubit>()
                                        .followUser(
                                          userId: widget.userId,
                                          isFollow: 1,
                                        )
                                : () {},
                            child: Container(
                              width: AppStyles.screenW,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: state.isFollowedByCurrentuser
                                    ? '#DBA510'.toColor()
                                    : '#2b2b2b'.toColor(),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: state.isFollowedByCurrentuser
                                      ? Colors.black
                                      : '#FF6B00'.toColor(),
                                  width: 2,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: AppStyles.width(5),
                                horizontal: AppStyles.width(10),
                              ),
                              child: Text(
                                state.isFollowedByCurrentuser
                                    ? S.of(context).following
                                    : S.of(context).follow,
                                textAlign: TextAlign.center,
                                style: AppStyles.f16sb().copyWith(
                                  color: state.isFollowedByCurrentuser
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const UserProfileTabWidget(),
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
