import 'package:flutter/material.dart';
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
    debugPrint('getBookmarkRecipe 1');
    return TaskEither.tryCatch(() async {
      final response =
          await bookmarkRecipeProvider.getBookmarkRecipe(page: page);
      if (response.data['mess'] == 'success') {
        debugPrint('getBookmarkRecipe 2');
        try {
          return GetBasicRecipeResponse.fromJson(response.data);
        } catch (e) {
          debugPrint('getBookmarkRecipe error $e');
          throw Exception(e);
        }
      } else {
        debugPrint('getBookmarkRecipe 3');
        throw Exception(response.data['mess'] ?? 'getBookmarkRecipe failed');
      }
    }, (error, stackTrace) => error.toString());
  }
}
