import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/owner_info_card.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/recipe_basic_info_card.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/tabs/recipe_detail_tabbar.dart';
import 'package:foodie/generated/l10n.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key, required this.recipeId});

  final int recipeId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecipeDetailCubit>(
      create: (context) => sl<RecipeDetailCubit>()
        ..getRecipeDetail(recipeId: recipeId)
        ..getReviewOfRecipe()
        ..getRecipePersonalReview(recipeId: recipeId),
      child: BlocConsumer<RecipeDetailCubit, RecipeDetailState>(
        listener: (context, state) {
          if (state.bookmarkRecipeStatus == BookmarkRecipeStatus.success) {
            context
                .read<RecipeDetailCubit>()
                .getRecipeDetail(recipeId: recipeId);
          }
        },
        buildWhen: (previous, current) =>
            previous.getRecipeDetailStatus != current.getRecipeDetailStatus ||
            previous.bookmarkRecipeStatus != current.bookmarkRecipeStatus,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: '#2b2b2b'.toColor(),
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(100, 0, 0, 0),
              title: Text(
                S.of(context).recipe,
                style: AppStyles.f16sb().copyWith(
                  color: '#FF6B00'.toColor(),
                ),
              ),
              centerTitle: true,
              iconTheme: IconThemeData(
                color: '#FF6B00'.toColor(),
              ),
              actions: [
                IconButton(
                  onPressed: state.bookmarkRecipeStatus !=
                          BookmarkRecipeStatus.loading
                      ? () => context.read<RecipeDetailCubit>().bookmarkRecipe()
                      : () => {},
                  icon: SvgPicture.asset(
                    AppImage.icBookmark,
                    colorFilter: ColorFilter.mode(
                      ((state.recipeDetail.isBookmark ?? 0) == 0)
                          ? Colors.white
                          : '#DBA510'.toColor(),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
            body: EasyRefresh(
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
                if (state.currentTab == 1) {
                  if (state.getUserReviewStatus == GetUserReviewStatus.noMore) {
                    return IndicatorResult.noMore;
                  }
                  await context.read<RecipeDetailCubit>().getReviewOfRecipe();
                }
              },
              onRefresh: () {
                if (state.currentTab == 0) {
                  context
                      .read<RecipeDetailCubit>()
                      .getRecipeDetail(recipeId: recipeId);
                } else {
                  context.read<RecipeDetailCubit>().refreshReview();
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
                          height: AppStyles.height(265),
                          child: FirebaseImage(
                              imagePath: state.recipeDetail.recipeImage ?? '',
                              emptyImagePath: AppImage.profileBackground,
                              cardHeight: AppStyles.height(265),
                              cardWidth: AppStyles.screenW),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: AppStyles.height(15),
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
                      ],
                    ),
                    const VerticalSpace(10),
                    Container(
                      width: AppStyles.screenW,
                      margin: EdgeInsets.symmetric(
                        horizontal: AppStyles.width(15),
                      ),
                      padding: EdgeInsets.all(
                        AppStyles.width(15),
                      ),
                      decoration: BoxDecoration(
                        color: '#2b2b2b'.toColor(),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(
                          color: '#FF6B00'.toColor(),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          state.recipeDetail.recipeName ?? '',
                          style: AppStyles.f16sb().copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const VerticalSpace(20),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: AppStyles.width(15),
                      ),
                      child: Text(
                        S.of(context).author,
                        style: AppStyles.f16sb().copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const VerticalSpace(10),
                    const OwnerInfoCard(),
                    const VerticalSpace(15),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: AppStyles.width(15),
                      ),
                      child: Text(
                        S.of(context).recipeInfo,
                        style: AppStyles.f16sb().copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const VerticalSpace(10),
                    const RecipeBasicInfoCard(),
                    const VerticalSpace(40),
                    const RecipeDeatilTabbar(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
