import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_state.dart';
import 'package:foodie/feature/home/explore_tab/repository/explore_repository.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit({required this.exploreRepository}) : super(const ExploreState());

  final ExploreRepository exploreRepository;
  final int topPageSize = 5;
  final int followUserPageSize = 5;
  final int newPageSize = 10;

  Future<void> getTopRecipe() async {
    emit(
      state.copyWith(
        getTopRecipeStatus: GetTopRecipeStatus.loading,
        mess: '',
      ),
    );
    final result = await exploreRepository
        .getTopRecipe(
          page: state.topRecipePage,
          pageSize: topPageSize,
        )
        .run();

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
          if (response.recipeList!.length < topPageSize) {
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

  Future<void> getNewRecipe() async {
    debugPrint('getNewRecipe');
    emit(
      state.copyWith(
        getNewRecipeStatus: GetNewRecipeStatus.loading,
        mess: '',
      ),
    );
    final result = await exploreRepository
        .getNewRecipe(
          page: state.newRecipePage,
          pageSize: newPageSize,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          getNewRecipeStatus: GetNewRecipeStatus.failure,
          mess: error,
        ),
      ),
      (response) {
        if (response.recipeList != null) {
          if (response.recipeList!.length < newPageSize) {
            emit(
              state.copyWith(
                getNewRecipeStatus: GetNewRecipeStatus.noMore,
                newRecipeList: [
                  ...state.newRecipeList,
                  ...response.recipeList!,
                ],
                newRecipePage: state.newRecipePage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getNewRecipeStatus: GetNewRecipeStatus.success,
                newRecipeList: [
                  ...state.newRecipeList,
                  ...response.recipeList!,
                ],
                newRecipePage: state.newRecipePage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getNewRecipeStatus: GetNewRecipeStatus.noMore,
              newRecipePage: state.newRecipePage + 1,
            ),
          );
        }
      },
    );
  }

  Future<void> getFollowedUserNewRecipe() async {
    debugPrint('getFollowedUserNewRecipe');
    emit(
      state.copyWith(
        getFollowUserRecipeStatus: GetFollowUserRecipeStatus.loading,
        mess: '',
      ),
    );
    final result = await exploreRepository
        .getFollowedUserNewRecipe(
          page: state.followUserRecipePage,
          pageSize: followUserPageSize,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          getFollowUserRecipeStatus: GetFollowUserRecipeStatus.failure,
          mess: error,
        ),
      ),
      (response) {
        debugPrint(response.recipeList.toString());
        if (response.recipeList != null) {
          if (response.recipeList!.length < followUserPageSize) {
            emit(
              state.copyWith(
                getFollowUserRecipeStatus: GetFollowUserRecipeStatus.noMore,
                followUserRecipeList: [
                  ...state.followUserRecipeList,
                  ...response.recipeList!,
                ],
                followUserRecipePage: state.followUserRecipePage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getFollowUserRecipeStatus: GetFollowUserRecipeStatus.success,
                followUserRecipeList: [
                  ...state.followUserRecipeList,
                  ...response.recipeList!,
                ],
                followUserRecipePage: state.followUserRecipePage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getFollowUserRecipeStatus: GetFollowUserRecipeStatus.noMore,
              followUserRecipePage: state.followUserRecipePage + 1,
            ),
          );
        }
      },
    );
  }

  Future<void> refreshRecipe() async {
    debugPrint('refreshRecipe');
    emit(
      state.copyWith(
        topRecipePage: 0,
        newRecipePage: 0,
        followUserRecipePage: 0,
        mess: '',
      ),
    );
    await getTopRecipe();
    await getNewRecipe();
    await getFollowedUserNewRecipe();
  }


  // Future<void> refreshNewRecipe() async {
  //   emit(
  //     state.copyWith(
  //       newRecipePage: 0,
  //       mess: '',
  //     ),
  //   );
  //   await getNewRecipe();
  // }

  // Future<void> refreshFollowedUserNewRecipe() async {
  //   emit(
  //     state.copyWith(
  //       followUserRecipePage: 0,
  //       mess: '',
  //     ),
  //   );
  //   await getFollowedUserNewRecipe();
  // }
}
