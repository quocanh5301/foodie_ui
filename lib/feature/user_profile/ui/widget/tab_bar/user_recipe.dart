import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/rectangle_recipe.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_cubit.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_state.dart';
import 'package:foodie/generated/l10n.dart';

class UserRecipe extends StatelessWidget {
  UserRecipe({super.key, required this.cubit}) {
    cubit.getRecipeOfUser();
  }

  final UserProfileCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileCubit, UserProfileState>(
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
                      S.of(context).emptyRecipe,
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
