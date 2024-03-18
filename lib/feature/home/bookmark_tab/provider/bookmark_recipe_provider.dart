import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class BookmarkRecipeProvider {
  const BookmarkRecipeProvider({required this.apiRequest});

  final APIRequest apiRequest;

  final int pageSize = 10;

  Future<Response> getBookmarkRecipe({required int page}) async =>
      await apiRequest.post(
        endpoint: Endpoints.login,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'page': page,
          'pageSize': pageSize,
        },
      );
}
