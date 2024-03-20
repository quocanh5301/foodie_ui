import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_cubit.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_state.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/rectangle_recipe.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/search_field.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/square_recipe.dart';
import 'package:foodie/generated/l10n.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

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
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => {},
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
                            onPressed: () => {},
                            icon: SvgPicture.asset(
                              AppImage.icNotification,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ],
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
                    header: const MaterialHeader(),
                    triggerAxis: Axis.vertical,
                    canLoadAfterNoMore: false,
                    footer: const MaterialFooter(
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
                          BlocBuilder<ExploreCubit, ExploreState>(
                            buildWhen: (previous, current) =>
                                previous.getTopRecipeStatus !=
                                current.getTopRecipeStatus,
                            builder: (context, state) {
                              return EasyRefresh(
                                triggerAxis: Axis.horizontal,
                                canLoadAfterNoMore: false,
                                footer: const MaterialFooter(
                                  color: Colors.white,
                                ),
                                onLoad: () async {
                                  await context
                                      .read<ExploreCubit>()
                                      .getTopRecipe();
                                  if (state.getTopRecipeStatus ==
                                      GetTopRecipeStatus.noMore) {
                                    return IndicatorResult.noMore;
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: AppStyles.width(15)),
                                  height: AppStyles.screenW / 2,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: state.topRecipeList.length,
                                    separatorBuilder: (context, index) =>
                                        const HorizontalSpace(10),
                                    itemBuilder: (context, index) =>
                                        RectangleRecipeItem(
                                      recipeBasic: state.topRecipeList[index],
                                      cardWidth: AppStyles.screenW * 5 / 6,
                                      cardHeight: AppStyles.screenW / 2,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const VerticalSpace(15),
                          BlocBuilder<ExploreCubit, ExploreState>(
                            buildWhen: (previous, current) =>
                                previous.getFollowUserRecipeStatus !=
                                current.getFollowUserRecipeStatus,
                            builder: (context, state) {
                              return EasyRefresh(
                                triggerAxis: Axis.horizontal,
                                canLoadAfterNoMore: false,
                                footer: const MaterialFooter(
                                  color: Colors.white,
                                ),
                                onLoad: () async {
                                  await context
                                      .read<ExploreCubit>()
                                      .getFollowedUserNewRecipe();
                                  if (state.getFollowUserRecipeStatus ==
                                      GetFollowUserRecipeStatus.noMore) {
                                    return IndicatorResult.noMore;
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: AppStyles.width(15)),
                                  height: AppStyles.screenW / 1.8,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        state.followUserRecipeList.length,
                                    separatorBuilder: (context, index) =>
                                        const HorizontalSpace(10),
                                    itemBuilder: (context, index) =>
                                        SquareRecipeItem(
                                      cardWidth: AppStyles.screenW / 2.6,
                                      cardHeight: AppStyles.screenW / 1.8,
                                      recipeBasic:
                                          state.followUserRecipeList[index],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const VerticalSpace(15),
                          BlocBuilder<ExploreCubit, ExploreState>(
                            buildWhen: (previous, current) =>
                                previous.getNewRecipeStatus !=
                                current.getNewRecipeStatus,
                            builder: (context, state) {
                              return EasyRefresh(
                                triggerAxis: Axis.horizontal,
                                canLoadAfterNoMore: false,
                                footer: const MaterialFooter(
                                  color: Colors.white,
                                ),
                                onLoad: () async {
                                  await context
                                      .read<ExploreCubit>()
                                      .getNewRecipe();
                                  if (state.getNewRecipeStatus ==
                                      GetNewRecipeStatus.noMore) {
                                    return IndicatorResult.noMore;
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: AppStyles.width(15)),
                                  height: AppStyles.screenW / 1.8,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: state.newRecipeList.length,
                                    separatorBuilder: (context, index) =>
                                        const HorizontalSpace(10),
                                    itemBuilder: (context, index) =>
                                        SquareRecipeItem(
                                      cardWidth: AppStyles.screenW / 2.6,
                                      cardHeight: AppStyles.screenW / 1.8,
                                      recipeBasic: state.newRecipeList[index],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
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
