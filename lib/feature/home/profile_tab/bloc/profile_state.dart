import 'package:foodie/feature/setting/bloc/app_state.dart';
import 'package:foodie/model/other/review.dart';
import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:foodie/model/user/recipe_num_follower_following.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(200) int code,
    @Default('') String mess,
    @Default(UserRecipeNumFollowerFollowing())
    UserRecipeNumFollowerFollowing
        userData, //follower, following, recipe number of user
    @Default([]) List<RecipeBasic> userRecipeList,
    @Default([]) List<Review> userReviewList,
    @Default(0) int userRecipePage,
    @Default(0) int userReviewPage,
    @Default(0) int currentTab,
    @Default(GetUSerInfoStatus.initial) GetUSerInfoStatus getUSerInfoStatus,
    @Default(GetUserRecipeStatus.initial)
    GetUserRecipeStatus getUserRecipeStatus,
    @Default(GetUserReviewStatus.initial)
    GetUserReviewStatus getUserReviewStatus,
    @Default(GetUserFollowerFollowingStatus.initial)
    GetUserFollowerFollowingStatus getUserFollowerFollowingStatus,
  }) = _ProfileState;
}

enum GetUserRecipeStatus { initial, loading, noMore, success, failure }

enum GetUserReviewStatus { initial, loading, noMore, success, failure }

enum GetUserFollowerFollowingStatus { initial, loading, success, failure }
