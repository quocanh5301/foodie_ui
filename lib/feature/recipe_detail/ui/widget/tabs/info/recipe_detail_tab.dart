import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/tabs/info/ingredient_card.dart';
import 'package:foodie/generated/l10n.dart';

class RecipeDetailTab extends StatelessWidget {
  const RecipeDetailTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: AppStyles.width(15),
                // vertical: AppStyles.width(10),
              ),
              child: Text(
                state.recipeDetail.instruction ??
                    S.of(context).noInstructionRecipe,
                style: AppStyles.f15m().copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            const VerticalSpace(15),
            (state.recipeDetail.ingredients ?? []).isNotEmpty
                ? ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.recipeDetail.ingredients!.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => IngredientCard(
                      ingredient: state.recipeDetail.ingredients![index],
                    ),
                    separatorBuilder: (context, index) =>
                        const VerticalSpace(10),
                  )
                : SizedBox(
                    height: AppStyles.screenH / 4,
                    child: Center(
                      child: Text(
                        S.of(context).emptyIngrdients,
                        style: AppStyles.f16sb().copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
            const VerticalSpace(50),
          ],
        );
      },
    );
  }
}
