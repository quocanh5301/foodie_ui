import 'package:foodie/model/recipe/name_intrsuct_desciption.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_recipe_state.freezed.dart';

@freezed
class DeleteRecipeState with _$DeleteRecipeState {
  const factory DeleteRecipeState({
    @Default('') String mess,
    @Default(200) int code,
    @Default(RecipeInstruction()) RecipeInstruction recipeInstructionData,
    @Default(GetRecipeInstructStatus.initial)
    GetRecipeInstructStatus getRecipeInstructStatus,
    @Default(DeleteRecipeStatus.initial) DeleteRecipeStatus deleteRecipeStatus,
  }) = _DeleteRecipeState;
}

enum DeleteRecipeStatus { initial, loading, success, failure }

enum GetRecipeInstructStatus { initial, loading, success, failure }
