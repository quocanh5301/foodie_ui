import 'package:foodie/feature/home/explore_tab/provider/explore_provider.dart';
import 'package:foodie/response_model/recipe/get_basic_recipe_response.dart';
import 'package:fpdart/fpdart.dart';

class ExploreRepository {
  const ExploreRepository({
    required this.exploreProvider,
  });

  final ExploreProvider exploreProvider;

  TaskEither<String, GetBasicRecipeResponse> getFollowedUserNewRecipe({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response =
          await exploreProvider.getFollowedUserNewRecipe(page: page);
      if (response.data['code'] == 'success') {
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

  TaskEither<String, GetBasicRecipeResponse> getTopRecipe({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response =
          await exploreProvider.getTopRecipe(page: page);
      if (response.data['code'] == 'success') {
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

  TaskEither<String, GetBasicRecipeResponse> getNewRecipe({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response =
          await exploreProvider.getNewRecipe(page: page);
      if (response.data['code'] == 'success') {
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
