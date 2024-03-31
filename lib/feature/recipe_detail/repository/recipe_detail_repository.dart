import 'package:foodie/feature/recipe_detail/provider/recipe_detail_provider.dart';
import 'package:foodie/response_model/other/get_review_of_user_response.dart';
import 'package:foodie/response_model/recipe/get_detail_recipe_response.dart';
import 'package:fpdart/fpdart.dart';

class RecipeDetailRepository {
  const RecipeDetailRepository({required this.recipeDetailProvider});

  final RecipeDetailProvider recipeDetailProvider;

  TaskEither<String, GetDetailRecipeResponse> getRecipeDetail({
    required int recipeId,
  }) {
    return TaskEither.tryCatch(() async {
      final response =
          await recipeDetailProvider.getRecipeDetail(recipeId: recipeId);
      if (response.data['mess'] == 'success') {
        try {
          return GetDetailRecipeResponse.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getRecipeDetail failed');
      }
    }, (error, stackTrace) => error.toString());
  }

  TaskEither<String, GetReviewOfUserResponse> getReviewOfRecipe({
    required int recipeId,
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await recipeDetailProvider.getReviewOfRecipe(
        recipeId: recipeId,
        page: page,
      );
      if (response.data['mess'] == 'success') {
        try {
          return GetReviewOfUserResponse.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getReviewOfRecipe failed');
      }
    }, (error, stackTrace) => error.toString());
  }
}
