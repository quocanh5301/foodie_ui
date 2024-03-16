// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/recipe/ingredient.dart';
import 'package:foodie/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail.freezed.dart';
part 'recipe_detail.g.dart';

@freezed
class RecipeDetail with _$RecipeDetail {
  const factory RecipeDetail({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'account_id') int? userName,
    @JsonKey(name: 'recipe_name') String? userEmail,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'instruction') String? instruction,
    @JsonKey(name: 'rating') double? joinAt,
    @JsonKey(name: 'num_of_followers') int? numOfFollower,
    @JsonKey(name: 'num_of_rating') int? numOfRating,
    @JsonKey(name: 'num_of_comments') int? numOfComment,
    @JsonKey(name: 'update_at') String? updateAt,
    @JsonKey(name: 'create_at') String? createAt,
    @JsonKey(name: 'recipe_image') String? recipeImage,
    @JsonKey(name: 'isBookmark') int? isBookmark,
    @JsonKey(name: 'ingredients') List<Ingredient>? ingredients,
    @JsonKey(name: 'owner') User? owner,
  }) = _RecipeDetail;

  factory RecipeDetail.fromJson(Map<String, dynamic> json) => _$RecipeDetailFromJson(json);
}
