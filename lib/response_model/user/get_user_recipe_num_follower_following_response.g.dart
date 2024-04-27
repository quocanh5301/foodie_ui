// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_recipe_num_follower_following_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserRecipeNumFollowerFollowingResponseImpl
    _$$GetUserRecipeNumFollowerFollowingResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$GetUserRecipeNumFollowerFollowingResponseImpl(
          code: json['code'] as int?,
          mess: json['mess'] as String?,
          userRecipeNumFollowerFollowing: json['data'] == null
              ? null
              : UserRecipeNumFollowerFollowing.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetUserRecipeNumFollowerFollowingResponseImplToJson(
        _$GetUserRecipeNumFollowerFollowingResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.userRecipeNumFollowerFollowing,
    };
