import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_cubit.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_state.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/list_follow_user_recipe.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/list_new_recipe.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/list_top_recipe.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/search_field.dart';
import 'package:foodie/feature/setting/bloc/app_cubit.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/generated/l10n.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      debugPrint('app resumed ExploreTab');
      sl<AppCubit>().notificationCheck();//!qa
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpace(60),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppStyles.width(10),
              horizontal: AppStyles.width(16),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: AppStyles.height(71),
                      child: BlocProvider<AppCubit>(
                        create: (context) =>
                            sl<AppCubit>()..notificationCheck(),
                        child: BlocBuilder<AppCubit, AppState>(
                          buildWhen: (previous, current) =>
                              current.haveNewNotification !=
                              previous.haveNewNotification,
                          builder: (context, state) {
                            debugPrint(
                                'have new notification ${state.haveNewNotification}');//!qa
                            return Row(
                              children: [
                                IconButton(
                                  onPressed: () =>
                                      const UserSettingRoute().push(context),
                                  icon: SvgPicture.asset(
                                    AppImage.icProfile,
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    sl<AppCubit>().checkedNotification();
                                    //do sthg
                                    const NotificationRoute().push(context);
                                  },
                                  icon: Stack(
                                    children: [
                                      SvgPicture.asset(
                                        AppImage.icNotification,
                                        colorFilter: const ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      state.haveNewNotification
                                          ? Positioned(
                                              right: 0,
                                              top: 0,
                                              child: Container(
                                                height: AppStyles.width(8),
                                                width: AppStyles.width(8),
                                                decoration: BoxDecoration(
                                                  color: '#FF6B00'.toColor(),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: AppStyles.height(71),
                        width: AppStyles.width(75),
                        child: Image.asset(AppImage.appIcon),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const VerticalSpace(10),
          BlocProvider<ExploreCubit>(
            create: (context) => sl<ExploreCubit>()
              ..getTopRecipe()
              ..getNewRecipe()
              ..getFollowedUserNewRecipe(),
            child: BlocBuilder<ExploreCubit, ExploreState>(
              buildWhen: (previous, current) =>
                  current.getTopRecipeStatus == GetTopRecipeStatus.onRefresh &&
                  current.getNewRecipeStatus == GetNewRecipeStatus.onRefresh &&
                  current.getFollowUserRecipeStatus ==
                      GetFollowUserRecipeStatus.onRefresh,
              builder: (context, state) {
                return Expanded(
                  child: EasyRefresh(
                    header: MaterialHeader(
                      backgroundColor: '#FF6B00'.toColor(),
                      color: Colors.white,
                    ),
                    triggerAxis: Axis.vertical,
                    canLoadAfterNoMore: false,
                    footer: MaterialFooter(
                      backgroundColor: '#FF6B00'.toColor(),
                      color: Colors.white,
                    ),
                    onRefresh: () async =>
                        await context.read<ExploreCubit>().refreshRecipe(),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppStyles.width(15),
                              vertical: AppStyles.height(10),
                            ),
                            child: Text(
                              S.of(context).explore,
                              style: AppStyles.f16sb().copyWith(
                                color: Colors.white,
                                fontSize: AppStyles.fontSize(20),
                              ),
                            ),
                          ),
                          const VerticalSpace(10),
                          const SearchField(),
                          const VerticalSpace(10),
                          const TopRecipeList(),
                          const VerticalSpace(15),
                          const NewRecipeList(),
                          const VerticalSpace(15),
                          const FollowUserRecipeList(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
