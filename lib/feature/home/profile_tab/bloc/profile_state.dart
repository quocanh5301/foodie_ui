import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(200) int code,
    @Default('') String mess,
    @Default([]) List<RecipeBasic> userRecipeList,
    @Default(0) int userRecipePage,
    @Default(0) int currentTab,
    @Default(GetUserRecipeStatus.initial) GetUserRecipeStatus getUserRecipeStatus,
  }) = _ProfileState;
}

enum GetUserRecipeStatus { initial, loading, noMore, success, failure }
