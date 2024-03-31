import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/recipe_detail/bloc/review/recipe_review_state.dart';
import 'package:foodie/feature/recipe_detail/repository/recipe_detail_repository.dart';

class RecipeReviewCubit extends Cubit<RecipeReviewState> {
  RecipeReviewCubit({
    required this.recipeDetailRepository,
  }) : super(const RecipeReviewState());

  final RecipeDetailRepository recipeDetailRepository;

  Future<void> getRecipePersonalReview({required int recipeId}) async {
    emit(
      state.copyWith(
        getRecipeReviewStatus: GetRecipeReviewStatus.loading,
        mess: '',
        recipeId: recipeId,
      ),
    );
    final result = await recipeDetailRepository
        .getRecipePersonalReview(recipeId: recipeId)
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          getRecipeReviewStatus: GetRecipeReviewStatus.failure,
          mess: error,
        ),
      ),
      (success) {
        return emit(
          state.copyWith(
            getRecipeReviewStatus: GetRecipeReviewStatus.success,
            personalReview: success.review ?? state.personalReview,
            rating: success.review?.rating ?? 0,
            reviewContent: success.review?.review ?? '',
          ),
        );
      },
    );
  }

  Future<bool> addNewReview() async {
    emit(
      state.copyWith(
        addRecipeReviewStatus: AddRecipeReviewStatus.loading,
        mess: '',
      ),
    );
    final result = await recipeDetailRepository
        .addNewReview(
          recipeId: state.recipeId,
          rating: state.rating,
          review: state.reviewContent,
          reviewImagePath: state.reviewImagePath,
        )
        .run();
    return result.match(
      (error) {
        debugPrint('errorrrrrr $error');
        emit(
          state.copyWith(
            addRecipeReviewStatus: AddRecipeReviewStatus.failure,
            mess: error,
          ),
        );
        return false;
      },
      (success) {
        debugPrint('success ');
        emit(
          state.copyWith(
            addRecipeReviewStatus: AddRecipeReviewStatus.success,
          ),
        );
        return true;
      },
    );
  }

  void setRating(double newRating) => emit(state.copyWith(rating: newRating));

  void setReview(String newReview) =>
      emit(state.copyWith(reviewContent: newReview));

  void setReviewImagePath(String newPath) =>
      emit(state.copyWith(reviewImagePath: newPath));
}
