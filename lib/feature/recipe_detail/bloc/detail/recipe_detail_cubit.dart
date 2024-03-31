import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/feature/recipe_detail/repository/recipe_detail_repository.dart';

class RecipeDetailCubit extends Cubit<RecipeDetailState> {
  RecipeDetailCubit({
    required this.recipeDetailRepository,
  }) : super(const RecipeDetailState());

  final RecipeDetailRepository recipeDetailRepository;

  Future<void> getReviewOfRecipe() async {
    emit(
      state.copyWith(
        getUserReviewStatus: GetUserReviewStatus.loading,
        mess: '',
      ),
    );
    final result = await recipeDetailRepository
        .getReviewOfRecipe(
          page: state.userReviewPage,
          recipeId: state.recipeId,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          getUserReviewStatus: GetUserReviewStatus.failure,
          mess: error,
        ),
      ),
      (success) {
        if (success.reviewList != null) {
          if (success.reviewList!.length <
              recipeDetailRepository.recipeDetailProvider.pageSize) {
            emit(
              state.copyWith(
                getUserReviewStatus: GetUserReviewStatus.noMore,
                userReviewList: [
                  ...state.userReviewList,
                  ...success.reviewList!,
                ],
                userReviewPage: state.userReviewPage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getUserReviewStatus: GetUserReviewStatus.success,
                userReviewList: [
                  ...state.userReviewList,
                  ...success.reviewList!,
                ],
                userReviewPage: state.userReviewPage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getUserReviewStatus: GetUserReviewStatus.failure,
              mess: 'userReviewList is null',
            ),
          );
        }
      },
    );
  }

  Future<void> refreshReview() async {
    emit(
      state.copyWith(
        userReviewPage: 0,
        userReviewList: [],
        getUserReviewStatus: GetUserReviewStatus.initial,
        mess: '',
      ),
    );
    await getReviewOfRecipe();
  }

  Future<void> getRecipeDetail({required int recipeId}) async {
    emit(
      state.copyWith(
        getRecipeDetailStatus: GetRecipeDetailStatus.loading,
        mess: '',
        recipeId: recipeId,
      ),
    );
    final result =
        await recipeDetailRepository.getRecipeDetail(recipeId: recipeId).run();
    result.match(
      (error) => emit(
        state.copyWith(
          getRecipeDetailStatus: GetRecipeDetailStatus.failure,
          mess: error,
        ),
      ),
      (success) {
        return emit(
          state.copyWith(
            getRecipeDetailStatus: GetRecipeDetailStatus.success,
            recipeDetail: success.recipeDetail ?? state.recipeDetail,
          ),
        );
      },
    );
  }

  void setCurrentTab(int newTab) => emit(state.copyWith(currentTab: newTab));
}
