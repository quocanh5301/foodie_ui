// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipe_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRecipeSearchResultImpl _$$GetRecipeSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRecipeSearchResultImpl(
      code: json['code'] as int?,
      mess: json['mess'] as String?,
      recipeList: (json['data'] as List<dynamic>?)
          ?.map((e) => RecipeBasic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetRecipeSearchResultImplToJson(
        _$GetRecipeSearchResultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.recipeList,
    };
