import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_state.dart';
import 'package:foodie/feature/user_profile/repository/user_profile_repository.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit({required this.userProfileRepository})
      : super(const UserProfileState());

  final UserProfileRepository userProfileRepository;

  Future<void> getReviewOfUserRecipe() async {
    emit(
      state.copyWith(
        getUserReviewStatus: GetUserReviewStatus.loading,
        mess: '',
      ),
    );
    final result = await userProfileRepository
        .getReviewOfUserRecipe(
          page: state.userReviewPage,
          userId: state.userId,
        )
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
              userProfileRepository.userProfileProvider.pageSize) {
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
    final result = await userProfileRepository
        .getRecipeOfUser(
          page: state.userRecipePage,
          userId: state.userId,
        )
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
              userProfileRepository.userProfileProvider.pageSize) {
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

  Future<void> checkIsFollowOrNot({required int userId}) async {
    emit(
      state.copyWith(
        checkUserFollowStatus: CheckUserFollowStatus.loading,
        mess: '',
      ),
    );
    final result = await userProfileRepository
        .checkIsFollowOrNot(
          userId: userId,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          checkUserFollowStatus: CheckUserFollowStatus.failure,
          mess: error,
        ),
      ),
      (checkResult) => emit(
        state.copyWith(
          checkUserFollowStatus: CheckUserFollowStatus.success,
          isFollowedByCurrentuser: checkResult,
        ),
      ),
    );
  }

  Future<void> getUserProfile({required int userId}) async {
    emit(
      state.copyWith(
        getUSerInfoStatus: GetUSerInfoStatus.loading,
        userId: userId,
      ),
    );
    final result = await userProfileRepository
        .getUserProfile(
          userId: state.userId,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          getUSerInfoStatus: GetUSerInfoStatus.failure,
        ),
      ),
      (user) async {
        emit(
          state.copyWith(
            getUSerInfoStatus: GetUSerInfoStatus.success,
            userInfo: user,
          ),
        );
      },
    );
  }

  Future<void> getUserRecipeNumFollowerFollowing({required int userId}) async {
    emit(
      state.copyWith(
        getUserFollowerFollowingStatus: GetUserFollowerFollowingStatus.loading,
      ),
    );
    final result = await userProfileRepository
        .getUserRecipeNumFollowerFollowing(
          userId: userId,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          getUserFollowerFollowingStatus:
              GetUserFollowerFollowingStatus.failure,
        ),
      ),
      (response) async {
        emit(
          state.copyWith(
            userData: response.userRecipeNumFollowerFollowing ?? state.userData,
            getUserFollowerFollowingStatus:
                GetUserFollowerFollowingStatus.success,
          ),
        );
      },
    );
  }

  Future<void> followUser({
    required int userId,
    required int isFollow,
  }) async {
    emit(
      state.copyWith(
        followUserStatus: FollowUserStatus.loading,
      ),
    );
    final result = await userProfileRepository
        .followUser(
          isFollow: isFollow,
          userId: userId,
        )
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          mess: error,
          followUserStatus: FollowUserStatus.failure,
        ),
      ),
      (response) async {
        if (response) {
          emit(
            state.copyWith(
              isFollowedByCurrentuser: isFollow == 1 ? true : false,
              followUserStatus: FollowUserStatus.success,
            ),
          );
        } else {
          emit(
            state.copyWith(
              mess: 'followUser failed',
              followUserStatus: FollowUserStatus.failure,
            ),
          );
        }
      },
    );
  }

  void setCurrentTab(int newTab) => emit(state.copyWith(currentTab: newTab));
}
