import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/delete_recipe/bloc/delete_recipe_state.dart';
import 'package:foodie/feature/delete_recipe/repository/delete_recipe_repository.dart';

class DeleteRecipeCubit extends Cubit<DeleteRecipeState> {
  DeleteRecipeCubit({
    required this.deleteRecipeRepository,
  }) : super(const DeleteRecipeState());

  DeleteRecipeRepository deleteRecipeRepository;

  Future<void> deleteRecipe({required String recipeId}) async {
    emit(
      state.copyWith(
        deleteRecipeStatus: DeleteRecipeStatus.loading,
      ),
    );
    final result = await deleteRecipeRepository
        .deleteRecipe(
          recipeId: recipeId,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          deleteRecipeStatus: DeleteRecipeStatus.failure,
        ),
      ),
      (response) async {
        if (response) {
          emit(
            state.copyWith(
              deleteRecipeStatus: DeleteRecipeStatus.success,
            ),
          );
        } else {
          emit(
            state.copyWith(
              deleteRecipeStatus: DeleteRecipeStatus.failure,
            ),
          );
        }
      },
    );
  }

  Future<void> getRecipeInfo({required String recipeId}) async {
    emit(
      state.copyWith(
        getRecipeInstructStatus: GetRecipeInstructStatus.loading,
      ),
    );
    final result = await deleteRecipeRepository
        .getRecipeInfo(
          recipeId: recipeId,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          getRecipeInstructStatus: GetRecipeInstructStatus.failure,
        ),
      ),
      (response) async {
        emit(
          state.copyWith(
            getRecipeInstructStatus: GetRecipeInstructStatus.success,
            recipeInstructionData: response,
          ),
        );
      },
    );
  }
}
