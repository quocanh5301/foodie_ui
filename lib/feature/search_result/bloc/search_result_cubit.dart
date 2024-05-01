import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/search_result/bloc/search_result_state.dart';
import 'package:foodie/feature/search_result/repository/search_result_repository.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit({required this.searchResultRepository})
      : super(const SearchResultState());

  final SearchResultRepository searchResultRepository;
  final int pageSize = 10;

  Future<void> getRecipeSearchResult() async {
    emit(
      state.copyWith(
        getRecipeSearchResultStatus: GetRecipeSearchResultStatus.loading,
        mess: '',
      ),
    );
    final result = await searchResultRepository
        .getRecipeSearchResult(
          page: state.recipeSearchPage,
          pageSize: pageSize,
          searchKey: state.searchKey,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          getRecipeSearchResultStatus: GetRecipeSearchResultStatus.failure,
          mess: error,
        ),
      ),
      (response) {
        if (response.recipeList != null) {
          if (response.recipeList!.length < pageSize) {
            emit(
              state.copyWith(
                getRecipeSearchResultStatus: GetRecipeSearchResultStatus.noMore,
                recipeList: [
                  ...state.recipeList,
                  ...response.recipeList!,
                ],
                recipeSearchPage: state.recipeSearchPage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getRecipeSearchResultStatus:
                    GetRecipeSearchResultStatus.success,
                recipeList: [
                  ...state.recipeList,
                  ...response.recipeList!,
                ],
                recipeSearchPage: state.recipeSearchPage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getRecipeSearchResultStatus: GetRecipeSearchResultStatus.noMore,
              recipeSearchPage: state.recipeSearchPage + 1,
            ),
          );
        }
      },
    );
  }

  Future<void> refreshRecipeSearch() async {
    emit(
      state.copyWith(
        recipeSearchPage: 0,
        recipeList: [],
        mess: '',
      ),
    );
    await getRecipeSearchResult();
  }

  Future<void> getUserSearchResult() async {
    emit(
      state.copyWith(
        getUserSearchResultStatus: GetUserSearchResultStatus.loading,
        mess: '',
      ),
    );
    final result = await searchResultRepository
        .getUserSearchResult(
          page: state.userSearchPage,
          pageSize: pageSize,
          searchKey: state.searchKey,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          getUserSearchResultStatus: GetUserSearchResultStatus.failure,
          mess: error,
        ),
      ),
      (response) {
        if (response.userList != null) {
          if (response.userList!.length < pageSize) {
            emit(
              state.copyWith(
                getUserSearchResultStatus: GetUserSearchResultStatus.noMore,
                userList: [
                  ...state.userList,
                  ...response.userList!,
                ],
                userSearchPage: state.userSearchPage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getUserSearchResultStatus: GetUserSearchResultStatus.success,
                userList: [
                  ...state.userList,
                  ...response.userList!,
                ],
                userSearchPage: state.userSearchPage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getUserSearchResultStatus: GetUserSearchResultStatus.noMore,
              userSearchPage: state.userSearchPage + 1,
            ),
          );
        }
      },
    );
  }

  Future<void> refreshUserSearch() async {
    emit(
      state.copyWith(
        userSearchPage: 0,
        userList: [],
        mess: '',
      ),
    );
    await getUserSearchResult();
  }

  void setSearchKey(String searchKey) =>
      emit(state.copyWith(searchKey: searchKey));

  void setIsRecipeSearch(int isRecipe) =>
      emit(state.copyWith(isRecipeSearch: isRecipe));
}
