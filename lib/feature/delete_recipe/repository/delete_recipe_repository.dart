import 'package:foodie/feature/delete_recipe/provider/delete_recipe_provider.dart';
import 'package:foodie/model/recipe/name_intrsuct_desciption.dart';
import 'package:fpdart/fpdart.dart';

class DeleteRecipeRepository {
  const DeleteRecipeRepository({required this.deleteRecipeProvider});

  final DeleteRecipeProvider deleteRecipeProvider;

  TaskEither<String, bool> deleteRecipe({required String recipeId}) {
    return TaskEither.tryCatch(
      () async {
        final response = await deleteRecipeProvider.deleteRecipe(
          recipeId: recipeId,
        );
        if (response.data['mess'] == 'success') {
          return true;
        } else {
          throw Exception(response.data['mess'] ?? 'deleteRecipe failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }

  TaskEither<String, RecipeInstruction> getRecipeInfo({
    //!WRONG, must return mess, code, data not just data
    required String recipeId,
  }) {
    return TaskEither.tryCatch(() async {
      final response =
          await deleteRecipeProvider.getRecipeInfo(recipeId: recipeId);
      if (response.data['mess'] == 'success') {
        try {
          return RecipeInstruction.fromJson(response.data['data']);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getRecipeInfo failed');
      }
    }, (error, stackTrace) => error.toString());
  }
}
