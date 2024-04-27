import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class ProfileProvider {
  const ProfileProvider({required this.apiRequest});

  final APIRequest apiRequest;
  final int pageSize = 5;

  Future<Response> getMyRecipe({required int page}) async =>
      await apiRequest.post(
        endpoint: Endpoints.getRecipeOfUser,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> getReviewOfMyRecipe({required int page}) async =>
      await apiRequest.post(
        endpoint: Endpoints.getReviewOfUserRecipe,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> getUserProfile() async => await apiRequest.post(
        endpoint: Endpoints.getUserProfile,
        data: {
          'userId': SharedPref.getUserInfo().id,
        },
      );

  Future<Response> getRecipeNumFollowerFollowing() async =>
      await apiRequest.post(
        endpoint: Endpoints.getRecipeNumFollowerFollowing,
        data: {
          'userId': SharedPref.getUserInfo().id,
        },
      );
}
