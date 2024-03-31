// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_detail_recipe_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDetailRecipeResponseImpl _$$GetDetailRecipeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDetailRecipeResponseImpl(
      code: json['code'] as int?,
      mess: json['mess'] as String?,
      recipeDetail: json['data'] == null
          ? null
          : RecipeDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetDetailRecipeResponseImplToJson(
        _$GetDetailRecipeResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.recipeDetail,
    };
