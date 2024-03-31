
import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class RecipeDetailProvider {
  const RecipeDetailProvider({required this.apiRequest});

  final APIRequest apiRequest;
  final int pageSize = 5;

  Future<Response> getRecipeDetail({required int recipeId}) async =>
      await apiRequest.post(
        endpoint: Endpoints.getRecipeDetail,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'recipeId': recipeId,
        },
      );

  Future<Response> getReviewOfRecipe({
    required int recipeId,
    required int page,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getReviewsOfRecipe,
        data: {
          'recipeId': recipeId,
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> addNewRating({
    required int recipeId,
    required int rating,
    required String review,
    required String? reviewRecipeImagePath,
  }) async {
    FormData data = FormData.fromMap({
      'userId': SharedPref.getUserInfo().id,
      'recipeId': recipeId,
      "review": review,
      "rating": rating,
    });

    if (reviewRecipeImagePath != null) {
      MultipartFile multipartFile =
          await MultipartFile.fromFile(reviewRecipeImagePath);
      data.files.add(MapEntry(
        'reviewRecipeImage',
        multipartFile,
      ));
    }

    return await apiRequest.post(
      endpoint: Endpoints.rateRecipe,
      data: data,
    );
  }
}
