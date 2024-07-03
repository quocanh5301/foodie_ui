import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_cubit.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_state.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/recipe_image_bottomsheet.dart';
import 'package:foodie/generated/l10n.dart';

class EditRecipeButton extends StatelessWidget {
  const EditRecipeButton({super.key});

  _showImagePickerChoices(
    BuildContext parrentContext,
    EditRecipeCubit editRecipeCubit,
  ) {
    showModalBottomSheet(
      context: parrentContext,
      builder: (BuildContext imagePickerContext) {
        return RecipeImagePicker();
      },
    ).then((chosenImg) async {
      if (chosenImg != null) {
        editRecipeCubit.setRecipeImagePath(imagePath: (chosenImg as File).path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditRecipeCubit, EditRecipeState>(
      buildWhen: (previous, current) =>
          previous.recipeImagePath != current.recipeImagePath,
      builder: (context, state) {
        return InkWell(
          onTap: () => _showImagePickerChoices(
            context,
            context.read<EditRecipeCubit>(),
          ),
          child: SizedBox(
            height: AppStyles.width(40),
            child: IntrinsicWidth(
              child: Container(
                decoration: BoxDecoration(
                  color: state.recipeImagePath == ''
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
                          state.recipeImagePath == ''
                              ? '#FF6B00'.toColor()
                              : Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      const HorizontalSpace(10),
                      Text(
                        state.recipeImagePath == ''
                            ? S.of(context).addPhotoButton
                            : S.of(context).chooseAnotherPhotoButton,
                        style: AppStyles.f12m().copyWith(
                          color: state.recipeImagePath == ''
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
