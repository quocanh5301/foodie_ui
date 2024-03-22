import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/home/profile_tab/repository/profile_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.profileRepository}) : super(const ProfileState());

  final ProfileRepository profileRepository;

  Future<void> getReviewOfUserRecipe() async {
    emit(
      state.copyWith(
        getUserReviewStatus: GetUserReviewStatus.loading,
        mess: '',
      ),
    );
    final result = await profileRepository
        .getReviewOfUserRecipe(page: state.userReviewPage)
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          getUserReviewStatus: GetUserReviewStatus.failure,
          mess: error,
        ),
      ),
      (success) {
        if (success.reviewList != null) {
          if (success.reviewList!.length <
              profileRepository.profileProvider.pageSize) {
            emit(
              state.copyWith(
                getUserReviewStatus: GetUserReviewStatus.noMore,
                userReviewList: [
                  ...state.userReviewList,
                  ...success.reviewList!,
                ],
                userReviewPage: state.userReviewPage + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getUserReviewStatus: GetUserReviewStatus.success,
                userReviewList: [
                  ...state.userReviewList,
                  ...success.reviewList!,
                ],
                userReviewPage: state.userReviewPage + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getUserReviewStatus: GetUserReviewStatus.failure,
              mess: 'userReviewList is null',
            ),
          );
        }
      },
    );
  }

  Future<void> refreshReview() async {
    emit(
      state.copyWith(
        userReviewPage: 0,
        userReviewList: [],
        getUserReviewStatus: GetUserReviewStatus.initial,
        mess: '',
      ),
    );
    await getReviewOfUserRecipe();
  }

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
          if (success.recipeList!.length <
              profileRepository.profileProvider.pageSize) {
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

  Future<void> refreshUserRecipe() async {
    emit(
      state.copyWith(
        userRecipePage: 0,
        userRecipeList: [],
        getUserRecipeStatus: GetUserRecipeStatus.initial,
        mess: '',
      ),
    );
    await getRecipeOfUser();
  }

  void setCurrentTab(int newTab) => emit(state.copyWith(currentTab: newTab));
}
