// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      recipeId: json['recipe_id'] as int?,
      userId: json['account_id'] as int?,
      recipeName: json['recipe_name'] as String?,
      recipeImage: json['recipe_image'] as String?,
      reviewRecipeImage: json['review_recipe_image'] as String?,
      updateAt: json['update_at'] as String?,
      createAt: json['create_at'] as String?,
      userImage: json['user_image'] as String?,
      userName: json['user_name'] as String?,
      review: json['review'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'recipe_id': instance.recipeId,
      'account_id': instance.userId,
      'recipe_name': instance.recipeName,
      'recipe_image': instance.recipeImage,
      'review_recipe_image': instance.reviewRecipeImage,
      'update_at': instance.updateAt,
      'create_at': instance.createAt,
      'user_image': instance.userImage,
      'user_name': instance.userName,
      'review': instance.review,
      'rating': instance.rating,
    };
