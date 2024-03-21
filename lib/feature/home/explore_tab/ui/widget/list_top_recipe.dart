import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_cubit.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_state.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/rectangle_recipe.dart';

class TopRecipeList extends StatelessWidget {
  const TopRecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreCubit, ExploreState>(
      buildWhen: (previous, current) =>
          previous.getTopRecipeStatus != current.getTopRecipeStatus,
      builder: (context, state) {
        return EasyRefresh(
          triggerAxis: Axis.horizontal,
          canLoadAfterNoMore: false,
          footer: const MaterialFooter(
            color: Colors.white,
          ),
          onLoad: () async {
            await context.read<ExploreCubit>().getTopRecipe();
            if (state.getTopRecipeStatus == GetTopRecipeStatus.noMore) {
              return IndicatorResult.noMore;
            }
          },
          child: Padding(
            padding: EdgeInsets.only(left: AppStyles.width(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Recipe',
                  style: AppStyles.f16sb().copyWith(color: Colors.white),
                ),
                const VerticalSpace(10),
                SizedBox(
                  height: AppStyles.screenW / 2,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.topRecipeList.length,
                    separatorBuilder: (context, index) =>
                        const HorizontalSpace(10),
                    itemBuilder: (context, index) => RectangleRecipeItem(
                      recipeBasic: state.topRecipeList[index],
                      cardWidth: AppStyles.screenW * 5 / 6,
                      cardHeight: AppStyles.screenW / 2,
                    ),
                  ),
                ),
                const VerticalSpace(20),
              ],
            ),
          ),
        );
      },
    );
  }
}
