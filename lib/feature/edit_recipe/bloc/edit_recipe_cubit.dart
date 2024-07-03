import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_state.dart';
import 'package:foodie/feature/edit_recipe/repository/edit_recipe_repository.dart';

class EditRecipeCubit extends Cubit<EditRecipeState> {
  EditRecipeCubit({
    required this.editRecipeRepository,
  }) : super(const EditRecipeState());

  EditRecipeRepository editRecipeRepository;

  void setRecipeName({required String recipeName}) =>
      emit(state.copyWith(recipeName: recipeName));

  void setRecipeId({required String recipeId}) =>
      emit(state.copyWith(recipeName: recipeId));

  void setDescription({required String description}) =>
      emit(state.copyWith(recipeDescription: description));

  void setInstruction({required String instruction}) =>
      emit(state.copyWith(recipeInstruction: instruction));

  void setRecipeImagePath({required String imagePath}) =>
      emit(state.copyWith(recipeImagePath: imagePath));

  void setRecipeFirebasePath({required String imageFirebase}) =>
      emit(state.copyWith(recipeImageFirebase: imageFirebase));

  Future<void> editRecipe({
    required String recipeId,
  }) async {
    emit(
      state.copyWith(
        editRecipeStatus: EditRecipeStatus.loading,
      ),
    );
    final result = await editRecipeRepository
        .editRecipe(
          recipeId: recipeId,
          recipeName: state.recipeName,
          recipeDescription: state.recipeDescription,
          recipeInstruction: state.recipeInstruction,
          recipeImage:
              state.recipeImagePath != '' ? File(state.recipeImagePath) : null,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          editRecipeStatus: EditRecipeStatus.failure,
        ),
      ),
      (response) async {
        emit(
          state.copyWith(
            editRecipeStatus: EditRecipeStatus.success,
          ),
        );
      },
    );
  }
}
