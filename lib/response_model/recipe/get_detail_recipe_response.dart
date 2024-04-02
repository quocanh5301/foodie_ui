// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/recipe/recipe_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_detail_recipe_response.freezed.dart';
part 'get_detail_recipe_response.g.dart';

@freezed
class GetDetailRecipeResponse with _$GetDetailRecipeResponse {
  const factory GetDetailRecipeResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') RecipeDetail? recipeDetail,
  }) = _GetDetailRecipeResponse;

  factory GetDetailRecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDetailRecipeResponseFromJson(json);
}
