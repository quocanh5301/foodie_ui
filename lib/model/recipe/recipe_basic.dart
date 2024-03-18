// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/user/user_basic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_basic.freezed.dart';
part 'recipe_basic.g.dart';

@freezed
class RecipeBasic with _$RecipeBasic {
  const factory RecipeBasic({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'account_id') int? userId,
    @JsonKey(name: 'recipe_name') String? recipeName,
    @JsonKey(name: 'recipe_image') String? recipeImage,
    @JsonKey(name: 'update_at') String? updateAt,
    @JsonKey(name: 'create_at') String? createAt,
    @JsonKey(name: 'num_of_followers') int? numOfFollower,
    @JsonKey(name: 'num_of_rating') int? numOfRating,
    @JsonKey(name: 'num_of_comments') int? numOfComment,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: 'owner') UserBasic? owner,
  }) = _RecipeBasic;

  factory RecipeBasic.fromJson(Map<String, dynamic> json) =>
      _$RecipeBasicFromJson(json);
}
