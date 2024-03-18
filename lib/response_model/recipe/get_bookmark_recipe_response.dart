// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'get_bookmark_recipe_response.freezed.dart';
part 'get_bookmark_recipe_response.g.dart';

@freezed
class GetBookmarkRecipeResponse with _$GetBookmarkRecipeResponse {
  const factory GetBookmarkRecipeResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') List<RecipeBasic>? bookmarkRecipeList,
  }) = _GetBookmarkRecipeResponse;

  factory GetBookmarkRecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBookmarkRecipeResponseFromJson(json);
}
