import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:foodie/model/user/user_basic_search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_state.freezed.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState({
    @Default('') String mess,
    @Default(200) int code,
    @Default('') String searchKey,
    //
    @Default([]) List<RecipeBasic> recipeList,
    @Default([]) List<UserBasicSearch> userList,
    //
    @Default(0) int userSearchPage,
    @Default(0) int recipeSearchPage,
    //
    @Default(0) int isRecipeSearch,
    //
    @Default(GetRecipeSearchResultStatus.initial)
    GetRecipeSearchResultStatus getRecipeSearchResultStatus,
    @Default(GetUserSearchResultStatus.initial)
    GetUserSearchResultStatus getUserSearchResultStatus,
  }) = _SearchResultState;
}

enum GetRecipeSearchResultStatus {
  initial,
  loading,
  onRefresh,
  noMore,
  success,
  failure
}

enum GetUserSearchResultStatus {
  initial,
  loading,
  onRefresh,
  noMore,
  success,
  failure
}
