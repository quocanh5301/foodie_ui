import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_state.freezed.dart';

@freezed
class ExploreState with _$ExploreState {
  const factory ExploreState({
    @Default('') String mess,
    @Default(200) int code,
    @Default([]) List<RecipeBasic> topRecipeList,
    @Default([]) List<RecipeBasic> newRecipeList,
    @Default([]) List<RecipeBasic> followUserRecipeList,
    @Default(0) int topRecipePage,
    @Default(0) int newRecipePage,
    @Default(0) int followUserRecipePage,
    @Default(GetTopRecipeStatus.initial) GetTopRecipeStatus getTopRecipeStatus,
    @Default(GetNewRecipeStatus.initial) GetNewRecipeStatus getNewRecipeStatus,
    @Default(GetFollowUserRecipeStatus.initial)
    GetFollowUserRecipeStatus getFollowUserRecipeStatus,
  }) = _ExploreState;
}

enum GetTopRecipeStatus { initial, loading, onRefresh, noMore, success, failure }

enum GetNewRecipeStatus { initial, loading, onRefresh, noMore, success, failure }

enum GetFollowUserRecipeStatus { initial, loading, onRefresh, noMore, success, failure }
