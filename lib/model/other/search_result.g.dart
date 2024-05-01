// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      recipeList: (json['recipe'] as List<dynamic>?)
          ?.map((e) => RecipeBasic.fromJson(e as Map<String, dynamic>))
          .toList(),
      userList: (json['user'] as List<dynamic>?)
          ?.map((e) => UserBasic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'recipe': instance.recipeList,
      'user': instance.userList,
    };
