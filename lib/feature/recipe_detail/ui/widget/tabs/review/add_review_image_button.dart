import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/recipe_image_bottomsheet.dart';
import 'package:foodie/feature/recipe_detail/bloc/review/recipe_review_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/review/recipe_review_state.dart';
import 'package:foodie/generated/l10n.dart';

class AddReviewImageButton extends StatelessWidget {
  const AddReviewImageButton({super.key});

  _showImagePickerChoices(
    BuildContext parrentContext,
    RecipeReviewCubit recipeReviewCubit,
  ) {
    showModalBottomSheet(
      context: parrentContext,
      builder: (BuildContext imagePickerContext) {
        return RecipeImagePicker();
      },
    ).then((chosenImg) async {
      if (chosenImg != null) {
        recipeReviewCubit.setReviewImagePath((chosenImg as File).path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeReviewCubit, RecipeReviewState>(
      buildWhen: (previous, current) =>
          previous.reviewImagePath != current.reviewImagePath,
      builder: (context, state) {
        return InkWell(
          onTap: () => _showImagePickerChoices(
            context,
            context.read<RecipeReviewCubit>(),
          ),
          child: Container(
            height: AppStyles.height(50),
            padding: EdgeInsets.only(
              left: AppStyles.width(15),
              bottom: AppStyles.width(15),
            ),
            child: IntrinsicWidth(
              child: Container(
                decoration: BoxDecoration(
                  color: state.reviewImagePath == '' &&
                          state.personalReview.reviewRecipeImage == ''
                      ? '#2b2b2b'.toColor().withOpacity(0.6)
                      : '#FF6B00'.toColor().withOpacity(0.6),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppStyles.width(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        AppImage.icAddRecipe,
                        colorFilter: ColorFilter.mode(
                          state.reviewImagePath == '' &&
                                  state.personalReview.reviewRecipeImage == ''
                              ? '#FF6B00'.toColor()
                              : Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      const HorizontalSpace(10),
                      Text(
                        state.reviewImagePath == '' &&
                                state.personalReview.reviewRecipeImage == ''
                            ? S.of(context).addPhotoButton
                            : S.of(context).chooseAnotherPhotoButton,
                        style: AppStyles.f12m().copyWith(
                          color: state.reviewImagePath == '' &&
                                  state.personalReview.reviewRecipeImage == ''
                              ? '#FF6B00'.toColor()
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
