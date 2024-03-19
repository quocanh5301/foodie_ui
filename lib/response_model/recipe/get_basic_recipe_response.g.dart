// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_basic_recipe_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBasicRecipeResponseImpl _$$GetBasicRecipeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBasicRecipeResponseImpl(
      code: json['code'] as int?,
      mess: json['mess'] as String?,
      recipeList: (json['data'] as List<dynamic>?)
          ?.map((e) => RecipeBasic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetBasicRecipeResponseImplToJson(
        _$GetBasicRecipeResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.recipeList,
    };
