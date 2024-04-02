// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalReviewImpl _$$PersonalReviewImplFromJson(Map<String, dynamic> json) =>
    _$PersonalReviewImpl(
      reviewRecipeImage: json['review_recipe_image'] as String?,
      updateAt: json['update_at'] as String?,
      createAt: json['create_at'] as String?,
      review: json['review'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PersonalReviewImplToJson(
        _$PersonalReviewImpl instance) =>
    <String, dynamic>{
      'review_recipe_image': instance.reviewRecipeImage,
      'update_at': instance.updateAt,
      'create_at': instance.createAt,
      'review': instance.review,
      'rating': instance.rating,
    };
