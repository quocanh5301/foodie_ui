// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDetailImpl _$$RecipeDetailImplFromJson(Map<String, dynamic> json) =>
    _$RecipeDetailImpl(
      id: json['id'] as int?,
      userId: json['account_id'] as int?,
      recipeName: json['recipe_name'] as String?,
      description: json['description'] as String?,
      instruction: json['instruction'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      numOfFollower: json['num_of_followers'] as int?,
      numOfRating: json['num_of_rating'] as int?,
      numOfComment: json['num_of_comments'] as int?,
      updateAt: json['update_at'] as String?,
      createAt: json['create_at'] as String?,
      recipeImage: json['recipe_image'] as String?,
      isBookmark: json['isBookmark'] as int?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: json['owner'] == null
          ? null
          : UserDetail.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecipeDetailImplToJson(_$RecipeDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_id': instance.userId,
      'recipe_name': instance.recipeName,
      'description': instance.description,
      'instruction': instance.instruction,
      'rating': instance.rating,
      'num_of_followers': instance.numOfFollower,
      'num_of_rating': instance.numOfRating,
      'num_of_comments': instance.numOfComment,
      'update_at': instance.updateAt,
      'create_at': instance.createAt,
      'recipe_image': instance.recipeImage,
      'isBookmark': instance.isBookmark,
      'ingredients': instance.ingredients,
      'owner': instance.owner,
    };
