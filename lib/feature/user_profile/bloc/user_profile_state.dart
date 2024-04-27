import 'package:foodie/feature/home/profile_tab/bloc/profile_state.dart';
import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/model/other/review.dart';
import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:foodie/model/user/recipe_num_follower_following.dart';
import 'package:foodie/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @Default(200) int code,
    @Default('') String mess,
    @Default(0) int userId,
    @Default(UserRecipeNumFollowerFollowing())
    UserRecipeNumFollowerFollowing
        userData, //follower, following, recipe number of user
    //
    @Default([]) List<RecipeBasic> userRecipeList,
    @Default([]) List<Review> userReviewList,
    //
    @Default(0) int userRecipePage,
    @Default(0) int userReviewPage,
    @Default(0) int currentTab,
    //
    @Default(User()) User userInfo,
    @Default(false) bool isFollowedByCurrentuser,
    //
    @Default(GetUserRecipeStatus.initial)
    GetUserRecipeStatus getUserRecipeStatus,
    @Default(GetUserReviewStatus.initial)
    GetUserReviewStatus getUserReviewStatus,
    @Default(CheckUserFollowStatus.initial)
    CheckUserFollowStatus checkUserFollowStatus,
    @Default(GetUSerInfoStatus.initial) GetUSerInfoStatus getUSerInfoStatus,
    @Default(GetUserFollowerFollowingStatus.initial)
    GetUserFollowerFollowingStatus getUserFollowerFollowingStatus,
    @Default(FollowUserStatus.initial) FollowUserStatus followUserStatus,
  }) = _UserProfileState;
}

enum CheckUserFollowStatus { initial, loading, noMore, success, failure }

enum FollowUserStatus { initial, loading, success, failure }
