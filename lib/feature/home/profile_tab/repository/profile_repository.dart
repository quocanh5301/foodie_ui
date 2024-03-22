import 'package:foodie/feature/home/profile_tab/provider/profile_provider.dart';
import 'package:foodie/response_model/other/get_review_of_user_response.dart';
import 'package:foodie/response_model/recipe/get_basic_recipe_response.dart';
import 'package:fpdart/fpdart.dart';

class ProfileRepository {
  const ProfileRepository({required this.profileProvider});

  final ProfileProvider profileProvider;

  TaskEither<String, GetBasicRecipeResponse> getRecipeOfUser({
    required int page,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await profileProvider.getRecipeOfUser(page: page);
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
  }) {
    return TaskEither.tryCatch(() async {
      final response = await profileProvider.getReviewOfUserRecipe(page: page);
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
}
