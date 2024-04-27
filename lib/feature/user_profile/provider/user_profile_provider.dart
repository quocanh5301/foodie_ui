import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class UserProfileProvider {
  const UserProfileProvider({required this.apiRequest});

  final APIRequest apiRequest;
  final int pageSize = 5;

  Future<Response> getRecipeOfUser({
    required int page,
    required int userId,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getRecipeOfUser,
        data: {
          'userId': userId,
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> getReviewOfUserRecipe({
    required int page,
    required int userId,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.getReviewOfUserRecipe,
        data: {
          'userId': userId,
          'page': page,
          'pageSize': pageSize,
        },
      );

  Future<Response> checkIsFollowOrNot({
    required int userId,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.checkIsFollowOrNot,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'toUserId': userId,
        },
      );

  Future<Response> getUserProfile({required int userId}) async =>
      await apiRequest.post(
        endpoint: Endpoints.getUserProfile,
        data: {
          'userId': userId,
        },
      );

  Future<Response> getRecipeNumFollowerFollowing({required int userId}) async =>
      await apiRequest.post(
        endpoint: Endpoints.getRecipeNumFollowerFollowing,
        data: {
          'userId': userId,
        },
      );

  Future<Response> followUser({
    required int userId,
    required int isFollow,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.followUser,
        data: {
          'userId': userId,
          'followerUserId': SharedPref.getUserInfo().id,
          'isFollow': isFollow,
        },
      );
}
