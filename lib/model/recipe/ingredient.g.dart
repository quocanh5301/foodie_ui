// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
      id: json['ingredient_id'] as int?,
      ingredientName: json['ingredient_name'] as String?,
      ingredientImage: json['ingredient_image'] as String?,
      quantity: json['quantity'] as String?,
    );

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) =>
    <String, dynamic>{
      'ingredient_id': instance.id,
      'ingredient_name': instance.ingredientName,
      'ingredient_image': instance.ingredientImage,
      'quantity': instance.quantity,
    };
