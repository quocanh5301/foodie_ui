import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_recipe_state.freezed.dart';

@freezed
class BookmarkRecipeState with _$BookmarkRecipeState {
  const factory BookmarkRecipeState({
    @Default('') String mess,
    @Default(200) int code,
    @Default([]) List<RecipeBasic> bookmarkRecipeList,
    @Default([]) List<RecipeBasic> filterBookmarkRecipeList,
    @Default(0) int page,
    @Default('') String searchString,
    @Default(FilterMode.none) FilterMode filterRecipe,
    @Default(GetBookmarkRecipeStatus.initial)
    GetBookmarkRecipeStatus getBookmarkRecipeStatus,
    @Default(FilterBookmarkRecipeStatus.initial)
    FilterBookmarkRecipeStatus filterBookmarkRecipeStatus,
    @Default(SearchBookmarkRecipeStatus.initial)
    SearchBookmarkRecipeStatus searchBookmarkRecipeStatus,
  }) = _BookmarkRecipeState;
}

enum GetBookmarkRecipeStatus { initial, loading, noMore, success, failure }

enum FilterBookmarkRecipeStatus { initial, start, finish }

enum SearchBookmarkRecipeStatus { initial, start, finish }

enum FilterMode { none, rating, comments, bookmarkNum }
