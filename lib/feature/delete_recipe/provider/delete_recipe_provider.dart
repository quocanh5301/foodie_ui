import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';

class DeleteRecipeProvider {
  DeleteRecipeProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> editRecipe({
    required String recipeId,
    required String recipeName,
    required String recipeDescription,
    required String recipeInstruction,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.editRecipe,
        data: {
          'recipeId': recipeId,
          'recipeName': recipeName,
          'recipeDescription': recipeDescription,
          'recipeInstruction': recipeInstruction,
        },
      );

  Future<Response> deleteRecipe({
    required String recipeId,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.deleteRecipe,
        data: {
          'recipeId': recipeId,
        },
      );

  Future<Response> getRecipeInfo({
    required String recipeId,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getRecipeInfo,
        data: {
          'recipeId': recipeId,
        },
      );
}
