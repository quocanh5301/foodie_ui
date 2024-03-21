import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_cubit.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_state.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/square_recipe.dart';

class FollowUserRecipeList extends StatelessWidget {
  const FollowUserRecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreCubit, ExploreState>(
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
            await context.read<ExploreCubit>().getFollowedUserNewRecipe();
            if (state.getFollowUserRecipeStatus ==
                GetFollowUserRecipeStatus.noMore) {
              return IndicatorResult.noMore;
            }
          },
          child: state.followUserRecipeList.isNotEmpty
              ? Padding(
                  padding: EdgeInsets.only(left: AppStyles.width(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Recipe From Your Followed User',
                        style: AppStyles.f16sb().copyWith(color: Colors.white),
                      ),
                      const VerticalSpace(10),
                      SizedBox(
                        height: AppStyles.screenW / 1.8,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.followUserRecipeList.length,
                          separatorBuilder: (context, index) =>
                              const HorizontalSpace(10),
                          itemBuilder: (context, index) => SquareRecipeItem(
                            cardWidth: AppStyles.screenW / 2.6,
                            cardHeight: AppStyles.screenW / 1.8,
                            recipeBasic: state.followUserRecipeList[index],
                          ),
                        ),
                      ),
                      const VerticalSpace(20),
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.all(AppStyles.width(15)),
                  child: Text(
                    'No new recipe from your followed user',
                    style: AppStyles.f16sb().copyWith(color: Colors.white),
                  ),
                ),
        );
      },
    );
  }
}
