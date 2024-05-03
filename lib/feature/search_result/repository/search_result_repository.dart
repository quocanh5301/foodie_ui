import 'package:foodie/feature/search_result/provider/search_result_provider.dart';
import 'package:foodie/response_model/other/get_recipe_search_result.dart';
import 'package:foodie/response_model/other/get_user_search_result.dart';
import 'package:fpdart/fpdart.dart';

class SearchResultRepository {
  const SearchResultRepository({
    required this.searchResultProvider,
  });

  final SearchResultProvider searchResultProvider;

  TaskEither<String, GetRecipeSearchResult> getRecipeSearchResult({
    required int page,
    required int pageSize,
    required String searchKey,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await searchResultProvider.searchRecipeAndUser(
        page: page,
        pageSize: pageSize,
        searchKey: searchKey,
        isRecipeSearch: 1,
      );
      if (response.data['mess'] == 'success') {
        try {
          return GetRecipeSearchResult.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getSearchResult failed');
      }
    }, (error, stackTrace) => error.toString());
  }

TaskEither<String, GetUserSearchResult> getUserSearchResult({
    required int page,
    required int pageSize,
    required String searchKey,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await searchResultProvider.searchRecipeAndUser(
        page: page,
        pageSize: pageSize,
        searchKey: searchKey,
        isRecipeSearch: 0,
      );
      if (response.data['mess'] == 'success') {
        try {
          return GetUserSearchResult.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getSearchResult failed');
      }
    }, (error, stackTrace) => error.toString());
  }
  
}
