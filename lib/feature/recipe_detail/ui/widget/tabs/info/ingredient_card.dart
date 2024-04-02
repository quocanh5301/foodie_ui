import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:foodie/model/recipe/ingredient.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({super.key, required this.ingredient});

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
      builder: (context, state) {
        return Container(
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
              Radius.circular(25),
            ),
            border: Border.all(
              color: '#FF6B00'.toColor(),
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ingredient.ingredientName ?? S.of(context).noIngredientName,
                style: AppStyles.f15m().copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                ingredient.quantity ?? S.of(context).noIngredientAmount,
                style: AppStyles.f15m().copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
