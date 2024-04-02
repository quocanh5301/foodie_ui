import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/model/other/personal_review.dart';
import 'package:foodie/model/other/review.dart';
import 'package:foodie/model/recipe/recipe_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail_state.freezed.dart';

@freezed
class RecipeDetailState with _$RecipeDetailState {
  const factory RecipeDetailState({
    @Default(200) int code,
    @Default('') String mess,
    @Default(0) int currentTab,
    @Default(0) int recipeId,
    //
    @Default(RecipeDetail()) RecipeDetail recipeDetail,
    //
    @Default([]) List<Review> userReviewList,
    @Default(0) int userReviewPage,
    //
    @Default(PersonalReview()) PersonalReview personalReview,
    //
    @Default(GetRecipeDetailStatus.initial)
    GetRecipeDetailStatus getRecipeDetailStatus,
    @Default(GetUserReviewStatus.initial)
    GetUserReviewStatus getUserReviewStatus,
    @Default(GetPersonalReviewStatus.initial)
    GetPersonalReviewStatus getPersonalReviewStatus,
  }) = _RecipeDetailState;
}

enum GetRecipeDetailStatus { initial, loading, success, failure }

enum GetPersonalReviewStatus { initial, loading, success, failure }
