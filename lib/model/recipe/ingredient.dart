// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    // @Default(0) 
    @JsonKey(name: 'ingredient_id') int? id,
    // @Default('') 
    @JsonKey(name: 'ingredient_name') String? ingredientName,
    // @Default('')
    // @JsonKey(name: 'ingredient_image') String? ingredientImage,
    // @Default('') 
    @JsonKey(name: 'amount') String? quantity,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
