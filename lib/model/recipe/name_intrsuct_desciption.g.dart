// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_intrsuct_desciption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeInstructionImpl _$$RecipeInstructionImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeInstructionImpl(
      recipeId: json['id'] as int?,
      recipeName: json['recipe_name'] as String?,
      description: json['description'] as String?,
      instruction: json['instruction'] as String?,
    );

Map<String, dynamic> _$$RecipeInstructionImplToJson(
        _$RecipeInstructionImpl instance) =>
    <String, dynamic>{
      'id': instance.recipeId,
      'recipe_name': instance.recipeName,
      'description': instance.description,
      'instruction': instance.instruction,
    };
