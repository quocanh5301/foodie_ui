// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/recipe/recipe_basic.dart';
import 'package:foodie/model/user/user_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    @JsonKey(name: 'recipe') List<RecipeBasic>? recipeList,
    @JsonKey(name: 'user') List<UserBasic>? userList,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
