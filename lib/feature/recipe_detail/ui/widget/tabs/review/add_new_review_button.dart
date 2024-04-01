import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/tabs/review/add_new_review_dialog.dart';
import 'package:foodie/generated/l10n.dart';

class AddNewReviewButton extends StatelessWidget {
  const AddNewReviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
      builder: (context, state) {
        return Container(
          width: AppStyles.screenW,
          height: AppStyles.height(40),
          padding: EdgeInsets.symmetric(
            horizontal: AppStyles.width(15),
          ),
          child: InkWell(
            onTap: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (dialogContext) {
                return AddReviewDialog(
                  recipeId: state.recipeId,
                );
              },
            ).then((change) {
              if (!change) {
                return;
              }
              context.read<RecipeDetailCubit>()
                ..refreshReview()
                ..getRecipeDetail(recipeId: state.recipeId);
            }),
            child: Container(
              width: AppStyles.screenW,
              height: AppStyles.height(40),
              padding: EdgeInsets.symmetric(
                horizontal: AppStyles.width(15),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: '#2b2b2b'.toColor(),
                border: Border.all(
                  color: '#FF6B00'.toColor(),
                  width: 2,
                ),
              ),
              child: Center(
                child: Text(
                  S.of(context).rateThisRecipe,
                  style: AppStyles.f15sb().copyWith(color: '#DBA510'.toColor()),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
