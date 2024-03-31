import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/feature/recipe_detail/bloc/review/recipe_review_state.dart';
import 'package:foodie/feature/recipe_detail/repository/recipe_detail_repository.dart';

class RecipeReviewCubit extends Cubit<RecipeReviewState> {
  RecipeReviewCubit({
    required this.recipeDetailRepository,
  }) : super(const RecipeReviewState());

  final RecipeDetailRepository recipeDetailRepository;

  // Future<void> getRecipeDetail({required int recipeId}) async {
  //   emit(
  //     state.copyWith(
  //       getRecipeDetailStatus: GetRecipeDetailStatus.loading,
  //       mess: '',
  //       recipeId: recipeId,
  //     ),
  //   );
  //   final result =
  //       await recipeDetailRepository.getRecipeDetail(recipeId: recipeId).run();
  //   result.match(
  //     (error) => emit(
  //       state.copyWith(
  //         getRecipeDetailStatus: GetRecipeDetailStatus.failure,
  //         mess: error,
  //       ),
  //     ),
  //     (success) {
  //       return emit(
  //         state.copyWith(
  //           getRecipeDetailStatus: GetRecipeDetailStatus.success,
  //           recipeDetail: success.recipeDetail ?? state.recipeDetail,
  //         ),
  //       );
  //     },
  //   );
  // }

  // void setCurrentTab(int newTab) => emit(state.copyWith(currentTab: newTab));
}
