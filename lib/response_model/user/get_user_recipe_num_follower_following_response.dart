// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/user/recipe_num_follower_following.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_recipe_num_follower_following_response.freezed.dart';
part 'get_user_recipe_num_follower_following_response.g.dart';

@freezed
class GetUserRecipeNumFollowerFollowingResponse with _$GetUserRecipeNumFollowerFollowingResponse {
  const factory GetUserRecipeNumFollowerFollowingResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') UserRecipeNumFollowerFollowing? userRecipeNumFollowerFollowing,
  }) = _GetUserRecipeNumFollowerFollowingResponse;

  factory GetUserRecipeNumFollowerFollowingResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserRecipeNumFollowerFollowingResponseFromJson(json);
}

