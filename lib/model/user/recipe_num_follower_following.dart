// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_num_follower_following.freezed.dart';
part 'recipe_num_follower_following.g.dart';

@freezed
class UserRecipeNumFollowerFollowing with _$UserRecipeNumFollowerFollowing {
  const factory UserRecipeNumFollowerFollowing({
    @JsonKey(name: 'numFollower') String? numFollower,
    @JsonKey(name: 'numFollowing') String? numFollowing,
    @JsonKey(name: 'numRecipe') String? numRecipe,
  }) = _UserRecipeNumFollowerFollowing;

  factory UserRecipeNumFollowerFollowing.fromJson(Map<String, dynamic> json) =>
      _$UserRecipeNumFollowerFollowingFromJson(json);
}
