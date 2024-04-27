import 'package:foodie/feature/user_profile/provider/user_profile_provider.dart';
import 'package:foodie/model/user/user.dart';
import 'package:foodie/response_model/other/get_review_of_user_response.dart';
import 'package:foodie/response_model/recipe/get_basic_recipe_response.dart';
import 'package:foodie/response_model/user/get_user_recipe_num_follower_following_response.dart';
import 'package:fpdart/fpdart.dart';

class UserProfileRepository {
  const UserProfileRepository({required this.userProfileProvider});

  final UserProfileProvider userProfileProvider;

  TaskEither<String, GetBasicRecipeResponse> getRecipeOfUser({
    required int page,
    required int userId,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await userProfileProvider.getRecipeOfUser(
        page: page,
        userId: userId,
      );
      if (response.data['mess'] == 'success') {
        try {
          return GetBasicRecipeResponse.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(response.data['mess'] ?? 'getRecipeOfUser failed');
      }
    }, (error, stackTrace) => error.toString());
  }

  TaskEither<String, GetReviewOfUserResponse> getReviewOfUserRecipe({
    required int page,
    required int userId,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await userProfileProvider.getReviewOfUserRecipe(
        page: page,
        userId: userId,
      );
      if (response.data['mess'] == 'success') {
        try {
          return GetReviewOfUserResponse.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(
            response.data['mess'] ?? 'getReviewOfUserRecipe failed');
      }
    }, (error, stackTrace) => error.toString());
  }

  TaskEither<String, bool> checkIsFollowOrNot({
    required int userId,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await userProfileProvider.checkIsFollowOrNot(
        userId: userId,
      );
      if (response.data['mess'] == 'success') {
        return response.data['data'];
      } else {
        throw Exception(
            response.data['mess'] ?? 'getReviewOfUserRecipe failed');
      }
    }, (error, stackTrace) => error.toString());
  }

  TaskEither<String, User> getUserProfile({
    required int userId,
  }) {
    return TaskEither.tryCatch(
      () async {
        final response = await userProfileProvider.getUserProfile(
          userId: userId,
        );
        if (response.data['mess'] == 'success') {
          try {
            return User.fromJson(response.data['data']);
          } catch (e) {
            throw Exception(e);
          }
        } else {
          throw Exception(response.data['mess'] ?? 'getUserProfile failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }

  TaskEither<String, GetUserRecipeNumFollowerFollowingResponse>
      getUserRecipeNumFollowerFollowing({required int userId}) {
    return TaskEither.tryCatch(
      () async {
        final response =
            await userProfileProvider.getRecipeNumFollowerFollowing(
          userId: userId,
        );
        if (response.data['mess'] == 'success') {
          try {
            return GetUserRecipeNumFollowerFollowingResponse.fromJson(
              response.data,
            );
          } catch (e) {
            throw Exception(e);
          }
        } else {
          throw Exception(response.data['mess'] ??
              'GetUserRecipeNumFollowerFollowingResponse failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }

  TaskEither<String, bool> followUser({
    required int userId,
    required int isFollow,
  }) {
    return TaskEither.tryCatch(
      () async {
        final response = await userProfileProvider.followUser(
          isFollow: isFollow,
          userId: userId,
        );
        if (response.data['mess'] == 'success') {
          return true;
        } else {
          throw Exception(response.data['mess'] ?? 'followUser failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }
}
