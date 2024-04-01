import 'package:foodie/model/other/personal_review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_review_state.freezed.dart';

@freezed
class RecipeReviewState with _$RecipeReviewState {
  const factory RecipeReviewState({
    @Default(200) int code,
    @Default('') String mess,
    @Default(0) int recipeId,
    //old data
    @Default(PersonalReview()) PersonalReview personalReview,
    //new input data
    @Default('') String reviewImagePath,
    @Default('') String reviewContent,
    @Default(0) double rating,
    //state controller
    @Default(GetPersonalReviewStatus.initial)
    GetPersonalReviewStatus getPersonalReviewStatus,
    @Default(AddRecipeReviewStatus.initial)
    AddRecipeReviewStatus addRecipeReviewStatus,
  }) = _RecipeReviewState;
}

enum AddRecipeReviewStatus { initial, loading, success, failure }

enum GetPersonalReviewStatus { initial, loading, success, failure }
