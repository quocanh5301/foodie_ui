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
    required int pageSize,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await exploreProvider.getFollowedUserNewRecipe(
        page: page,
        pageSize: pageSize,
      );
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

  TaskEither<String, GetBasicRecipeResponse> getTopRecipe({
    required int page,
    required int pageSize,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await exploreProvider.getTopRecipe(
        page: page,
        pageSize: pageSize,
      );
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

  TaskEither<String, GetBasicRecipeResponse> getNewRecipe({
    required int page,
    required int pageSize,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await exploreProvider.getNewRecipe(
        page: page,
        pageSize: pageSize,
      );
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
