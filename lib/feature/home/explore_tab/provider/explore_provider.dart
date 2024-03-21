import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class ExploreProvider {
  const ExploreProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> getTopRecipe({
    required int page,
    required int pageSize,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getTopRecipe,
        data: {
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> getNewRecipe({
    required int page,
    required int pageSize,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getNewRecipe,
        data: {
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> searchAll({
    required int page,
    required int pageSize,
    required String searchKey,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.searchAll,
        data: {
          'searchKey': searchKey,
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> getFollowedUserNewRecipe({
    required int page,
    required int pageSize,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getFollowedUserNewRecipe,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'page': page,
          'pageSize': pageSize,
        },
      );
}
