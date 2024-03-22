import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/rectangle_recipe.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_cubit.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';

class MyRecipe extends StatelessWidget {
  MyRecipe({super.key, required this.cubit}) {
    cubit.getRecipeOfUser();
  }

  final ProfileCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) =>
          previous.getUserRecipeStatus != current.getUserRecipeStatus,
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: state.userRecipeList.isNotEmpty
              ? Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppStyles.width(15),
                      vertical: AppStyles.width(10)),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.userRecipeList.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => RectangleRecipeItem(
                      cardWidth: AppStyles.screenW - AppStyles.width(30),
                      cardHeight: AppStyles.screenW / 1.7,
                      recipeBasic: state.userRecipeList[index],
                    ),
                    separatorBuilder: (context, index) =>
                        const VerticalSpace(20),
                  ),
                )
              : SizedBox(
                  height: AppStyles.screenH / 2,
                  child: Center(
                    child: Text(
                      'No recipe found',
                      style: AppStyles.f16sb().copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
