import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_cubit.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_state.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/recipe_image_bottomsheet.dart';

class AddPhotoButton extends StatelessWidget {
  const AddPhotoButton({super.key});

  _showImagePickerChoices(
    BuildContext parrentContext,
    AddNewRecipeCubit addNewRecipeCubit,
  ) {
    showModalBottomSheet(
      context: parrentContext,
      builder: (BuildContext imagePickerContext) {
        return RecipeImagePicker();
      },
    ).then((chosenImg) async {
      debugPrint('QA test file 4: ${chosenImg ?? 'null'}');
      if (chosenImg != null) {
        addNewRecipeCubit.setRecipeImage(imagePath: (chosenImg as File).path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNewRecipeCubit, AddNewRecipeState>(
      buildWhen: (previous, current) =>
          previous.recipeImage != current.recipeImage,
      builder: (context, state) {
        return InkWell(
          onTap: () => _showImagePickerChoices(
            context,
            context.read<AddNewRecipeCubit>(),
          ),
          child: SizedBox(
            height: AppStyles.width(40),
            child: IntrinsicWidth(
              child: Container(
                decoration: BoxDecoration(
                  color: state.recipeImage == ''
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
                          state.recipeImage == ''
                              ? '#FF6B00'.toColor()
                              : Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      const HorizontalSpace(10),
                      Text(
                        state.recipeImage == ''
                            ? 'Add Photo'
                            : 'Choose Another Photo',
                        style: AppStyles.f12m().copyWith(
                          color: state.recipeImage == ''
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
