// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_basic_recipe_response.freezed.dart';
part 'get_basic_recipe_response.g.dart';

@freezed
class GetBasicRecipeResponse with _$GetBasicRecipeResponse {
  const factory GetBasicRecipeResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') List<RecipeBasic>? recipeList,
  }) = _GetBasicRecipeResponse;

  factory GetBasicRecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBasicRecipeResponseFromJson(json);
}
