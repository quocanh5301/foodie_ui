import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/feature/home/profile_tab/provider/profile_provider.dart';
import 'package:foodie/model/user/user.dart';
import 'package:foodie/response_model/other/get_review_of_user_response.dart';
import 'package:foodie/response_model/recipe/get_basic_recipe_response.dart';
import 'package:foodie/response_model/user/get_user_recipe_num_follower_following_response.dart';
import 'package:fpdart/fpdart.dart';

class ProfileRepository {
  const ProfileRepository({required this.profileProvider});

  final ProfileProvider profileProvider;

  TaskEither<String, GetBasicRecipeResponse> getMyRecipe({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await profileProvider.getMyRecipe(page: page);
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

  TaskEither<String, GetReviewOfUserResponse> getReviewOfMyRecipe({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await profileProvider.getReviewOfMyRecipe(page: page);
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

  TaskEither<String, bool> getUserProfile() {
    return TaskEither.tryCatch(
      () async {
        final response = await profileProvider.getUserProfile();
        if (response.data['mess'] == 'success') {
          try {
            SharedPref.setUserInfo(
              User.fromJson(response.data['data']),
            );
            return true;
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

  TaskEither<String, GetUserRecipeNumFollowerFollowingResponse> getUserRecipeNumFollowerFollowing() {
    return TaskEither.tryCatch(
      () async {
        final response = await profileProvider.getRecipeNumFollowerFollowing();
        if (response.data['mess'] == 'success') {
        try {
          return GetUserRecipeNumFollowerFollowingResponse.fromJson(response.data);
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(
            response.data['mess'] ?? 'GetUserRecipeNumFollowerFollowingResponse failed');
      }
      },
      (error, stackTrace) => error.toString(),
    );
  }
  
}
