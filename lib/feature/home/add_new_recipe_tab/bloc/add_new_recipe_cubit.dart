import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_state.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/repository/add_new_recipe_repository.dart';
import 'package:foodie/model/recipe/ingredient.dart';

class AddNewRecipeCubit extends Cubit<AddNewRecipeState> {
  AddNewRecipeCubit({required this.addNewRecipeRepository})
      : super(const AddNewRecipeState());

  final AddNewRecipeRepository addNewRecipeRepository;

  // void setEmail(String email) => emit(state.copyWith(email: email));

  void setRecipeName({required String recipeName}) =>
      emit(state.copyWith(recipeName: recipeName));
  void setDescription({required String description}) =>
      emit(state.copyWith(description: description));
  void setInstruction({required String instruction}) =>
      emit(state.copyWith(instruction: instruction));

  void setRecipeImage({required String imagePath}) =>
      emit(state.copyWith(recipeImage: imagePath));

  void setIngredientName({required int index, required String ingredientName}) {
    List<Ingredient> currentIngredientList = [...state.ingredientList];
    currentIngredientList[index] = currentIngredientList[index].copyWith(
      ingredientName: ingredientName,
    );

    emit(state.copyWith(ingredientList: currentIngredientList));
  }

  void setIngredientQuantity({required int index, required String quantity}) {
    List<Ingredient> currentIngredientList = [...state.ingredientList];
    currentIngredientList[index] = currentIngredientList[index].copyWith(
      quantity: quantity,
    );

    emit(state.copyWith(ingredientList: currentIngredientList));
  }

  void deleteIngredient({required int index}) {
    List<Ingredient> currentIngredientList = [...state.ingredientList];
    currentIngredientList.removeAt(index);
    emit(state.copyWith(ingredientList: currentIngredientList));
  }

  void addNewIngredient() {
    List<Ingredient> currentIngredientList = [...state.ingredientList];
    currentIngredientList
        .add(const Ingredient(ingredientName: '', quantity: ''));
    emit(state.copyWith(ingredientList: currentIngredientList));
  }

  Future<void> addNewRecipe() async {
    emit(state.copyWith(
      uploadRecipeStatus: UploadRecipeStatus.loading,
      mess: '',
    ));
    _removeEmptyIngredient();

    final result = await addNewRecipeRepository
        .addNewRecipe(
          recipeName: state.recipeName,
          recipeDescription: state.description,
          recipeInstruction: state.instruction,
          ingredients: state.ingredientList,
          recipeImage: state.recipeImage != '' ? File(state.recipeImage) : null,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          uploadRecipeStatus: UploadRecipeStatus.failure,
          mess: error,
        ),
      ),
      (success) => emit(
        state.copyWith(
          recipeName: '',
          description: '',
          instruction: '',
          recipeImage: '',
          ingredientList: [],
          uploadRecipeStatus: UploadRecipeStatus.success,
        ),
      ),
    );
  }

  void _removeEmptyIngredient() {
    List<Ingredient> currentIngredientList = [...state.ingredientList];
    currentIngredientList.removeWhere(
        (element) => element.ingredientName == '' || element.quantity == '');
    emit(state.copyWith(ingredientList: currentIngredientList));
  }
}
