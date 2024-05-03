// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_recipe_search_result.freezed.dart';
part 'get_recipe_search_result.g.dart';

@freezed
class GetRecipeSearchResult with _$GetRecipeSearchResult {
  const factory GetRecipeSearchResult({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') List<RecipeBasic>? recipeList,
  }) = _GetRecipeSearchResult;

  factory GetRecipeSearchResult.fromJson(Map<String, dynamic> json) =>
      _$GetRecipeSearchResultFromJson(json);
}
