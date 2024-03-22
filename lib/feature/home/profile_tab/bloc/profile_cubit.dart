import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/home/profile_tab/repository/profile_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.profileRepository}) : super(const ProfileState());

  final ProfileRepository profileRepository;

  Future<void> getRecipeOfUser() async {
    emit(
      state.copyWith(
        getUserRecipeStatus: GetUserRecipeStatus.loading,
        mess: '',
      ),
    );
    final result = await profileRepository
        .getRecipeOfUser(page: state.userRecipePage)
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          getUserRecipeStatus: GetUserRecipeStatus.failure,
          mess: error,
        ),
      ),
      (success) {
        if (success.recipeList != null) {
          if (success.recipeList!.length < profileRepository.profileProvider.pageSize) {
            emit(
              state.copyWith(
                getUserRecipeStatus: GetUserRecipeStatus.noMore,
                userRecipeList: [
                  ...state.userRecipeList,
                  ...success.recipeList!,
                ],
                userRecipePage: state.userRecipePage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getUserRecipeStatus: GetUserRecipeStatus.success,
                userRecipeList: [
                  ...state.userRecipeList,
                  ...success.recipeList!,
                ],
                userRecipePage: state.userRecipePage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getUserRecipeStatus: GetUserRecipeStatus.failure,
              mess: 'userRecipeList is null',
            ),
          );
        }
      },
    );
  }

  void setCurrentTab(int newTab) => emit(state.copyWith(currentTab: newTab));
}
