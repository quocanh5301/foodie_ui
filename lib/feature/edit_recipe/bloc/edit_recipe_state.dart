import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_recipe_state.freezed.dart';

@freezed
class EditRecipeState with _$EditRecipeState {
  const factory EditRecipeState({
    @Default('') String mess,
    @Default(200) int code,
    @Default('') String recipeId,
    @Default('') String recipeImageFirebase,
    @Default('') String recipeName,
    @Default('') String recipeDescription,
    @Default('') String recipeInstruction,

    @Default('') String recipeImagePath,

    @Default(EditRecipeStatus.initial) EditRecipeStatus editRecipeStatus,
    
  }) = _EditRecipeState;
}

enum EditRecipeStatus { initial, loading, success, failure }

