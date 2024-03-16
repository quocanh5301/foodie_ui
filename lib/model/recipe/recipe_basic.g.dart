// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeBasicImpl _$$RecipeBasicImplFromJson(Map<String, dynamic> json) =>
    _$RecipeBasicImpl(
      id: json['id'] as int?,
      userName: json['account_id'] as int?,
      userEmail: json['recipe_name'] as String?,
      recipeImage: json['recipe_image'] as String?,
      updateAt: json['update_at'] as String?,
      createAt: json['create_at'] as String?,
      numOfFollower: json['num_of_followers'] as int?,
      numOfRating: json['num_of_rating'] as int?,
      numOfComment: json['num_of_comments'] as int?,
      joinAt: (json['rating'] as num?)?.toDouble(),
      owner: json['owner'] == null
          ? null
          : UserBasic.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecipeBasicImplToJson(_$RecipeBasicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_id': instance.userName,
      'recipe_name': instance.userEmail,
      'recipe_image': instance.recipeImage,
      'update_at': instance.updateAt,
      'create_at': instance.createAt,
      'num_of_followers': instance.numOfFollower,
      'num_of_rating': instance.numOfRating,
      'num_of_comments': instance.numOfComment,
      'rating': instance.joinAt,
      'owner': instance.owner,
    };
