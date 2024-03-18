import 'dart:io';

import 'package:foodie/feature/home/add_new_recipe_tab/provider/add_new_recipe_provider.dart';
import 'package:foodie/model/recipe/ingredient.dart';
import 'package:fpdart/fpdart.dart';

class AddNewRecipeRepository {
  const AddNewRecipeRepository({required this.addNewRecipeProvider});

  final AddNewRecipeProvider addNewRecipeProvider;

  TaskEither<String, bool> addNewRecipe({
    required String recipeName,
    String? recipeDescription,
    String? recipeInstruction,
    List<Ingredient>? ingredients,
    File? recipeImage,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await addNewRecipeProvider.addNewRecipe(
        recipeName: recipeName,
        recipeDescription: recipeDescription,
        recipeInstruction: recipeInstruction,
        ingredients: ingredients,
        recipeImage: recipeImage,
      );
      if (response.data['mess'] == 'success') {
        return true;
      } else {
        throw Exception(response.data['mess'] ?? 'Register failed');
      }
    }, (error, stackTrace) => error.toString());
  }
}
