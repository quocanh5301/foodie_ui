import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';

class SearchResultProvider {
  const SearchResultProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> searchRecipeAndUser({
    required int page,
    required int pageSize,
    required String searchKey,
    required int isRecipeSearch,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.searchRecipeAndUser,
        data: {
          'searchKey': searchKey,
          'page': page,
          'pageSize': pageSize,
          'isRecipe': isRecipeSearch,
        },
      );
}
