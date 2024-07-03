import 'dart:io';

import 'package:foodie/feature/edit_recipe/provider/edit_recipe_provider.dart';
import 'package:fpdart/fpdart.dart';

class EditRecipeRepository {
  const EditRecipeRepository({required this.editRecipeProvider});

  final EditRecipeProvider editRecipeProvider;

  TaskEither<String, bool> editRecipe({
    required String recipeId,
    required String recipeName,
    required String recipeDescription,
    required String recipeInstruction,
    File? recipeImage,
  }) {
    return TaskEither.tryCatch(
      () async {
        final response = await editRecipeProvider.editRecipe(
          recipeId: recipeId,
          recipeName: recipeName,
          recipeDescription: recipeDescription,
          recipeInstruction: recipeInstruction,
          recipeImage: recipeImage,
        );
        if (response.data['mess'] == 'success') {
          return true;
        } else {
          throw Exception(response.data['mess'] ?? 'editRecipe failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }
}
