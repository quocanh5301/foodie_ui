import 'package:foodie/model/recipe/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_recipe_state.freezed.dart';

@freezed
class AddNewRecipeState with _$AddNewRecipeState {
  const factory AddNewRecipeState({
    @Default('') String mess,
    @Default(200) int code,
    @Default([]) List<Ingredient> ingredientList,
    @Default('') String recipeName,
    @Default('') String description,
    @Default('') String instruction,
    @Default('') String recipeImage, // file path
    
    @Default(UpdateIngredientListStatus.initial)
    UpdateIngredientListStatus updateIngredientListStatus,
    @Default(UploadRecipeStatus.initial) UploadRecipeStatus uploadRecipeStatus,
  }) = _AddNewRecipeState;
}

enum UploadRecipeStatus { initial, loading, success, failure }

enum UpdateRecipeImageStatus {
  initial,
  loading,
  success,
  failure,
} // add new recipe image, show on UI when choosed img

enum UploadIngredientImageStatus { initial, loading, success, failure }

enum UpdateIngredientListStatus {
  initial,
  loading,
  success,
  failure,
} //add new ingredient row

