import 'package:foodie/feature/home/bookmark_tab/provider/bookmark_recipe_provider.dart';
import 'package:foodie/response_model/recipe/get_basic_recipe_response.dart';
import 'package:fpdart/fpdart.dart';

class BookmarkRecipeRepository {
  const BookmarkRecipeRepository({
    required this.bookmarkRecipeProvider,
  });

  final BookmarkRecipeProvider bookmarkRecipeProvider;

  TaskEither<String, GetBasicRecipeResponse> getBookmarkRecipe({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response =
          await bookmarkRecipeProvider.getBookmarkRecipe(page: page);
      if (response.data['mess'] == 'success') {
        try {
          return GetBasicRecipeResponse.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getBookmarkRecipe failed');
      }
    }, (error, stackTrace) => error.toString());
  }
}
