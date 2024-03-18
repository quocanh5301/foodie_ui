// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bookmark_recipe_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBookmarkRecipeResponseImpl _$$GetBookmarkRecipeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBookmarkRecipeResponseImpl(
      code: json['code'] as int?,
      mess: json['mess'] as String?,
      bookmarkRecipeList: (json['data'] as List<dynamic>?)
          ?.map((e) => RecipeBasic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetBookmarkRecipeResponseImplToJson(
        _$GetBookmarkRecipeResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.bookmarkRecipeList,
    };
