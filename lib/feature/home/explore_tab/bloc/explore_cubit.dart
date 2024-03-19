import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_state.dart';
import 'package:foodie/feature/home/explore_tab/repository/explore_repository.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit({required this.exploreRepository}) : super(const ExploreState());

  final ExploreRepository exploreRepository;

  Future<void> getTopRecipe() async {
    emit(
      state.copyWith(
        getTopRecipeStatus: GetTopRecipeStatus.loading,
        mess: '',
      ),
    );
    final result =
        await exploreRepository.getTopRecipe(page: state.topRecipePage).run();

    result.match(
      (error) => emit(
        state.copyWith(
          getTopRecipeStatus: GetTopRecipeStatus.failure,
          mess: error,
        ),
      ),
      (response) {
        debugPrint(response.recipeList.toString());
        if (response.recipeList != null) {
          if (response.recipeList!.length <
              exploreRepository.exploreProvider.pageSize) {
            emit(
              state.copyWith(
                getTopRecipeStatus: GetTopRecipeStatus.noMore,
                topRecipeList: [
                  ...state.topRecipeList,
                  ...response.recipeList!,
                ],
                topRecipePage: state.topRecipePage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getTopRecipeStatus: GetTopRecipeStatus.success,
                topRecipeList: [
                  ...state.topRecipeList,
                  ...response.recipeList!,
                ],
                topRecipePage: state.topRecipePage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getTopRecipeStatus: GetTopRecipeStatus.noMore,
              topRecipePage: state.topRecipePage + 1,
            ),
          );
        }
      },
    );
  }

  Future<void> refreshTopRecipe() async {
    emit(
      state.copyWith(
        topRecipePage: 0,
        mess: '',
      ),
    );
    await getTopRecipe();
  }
}
