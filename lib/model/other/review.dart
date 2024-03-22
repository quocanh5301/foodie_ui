// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: 'recipe_id') int? recipeId,
    @JsonKey(name: 'account_id') int? userId,
    @JsonKey(name: 'recipe_name') String? recipeName,
    @JsonKey(name: 'recipe_image') String? recipeImage,
    @JsonKey(name: 'update_at') String? updateAt,
    @JsonKey(name: 'create_at') String? createAt,
    @JsonKey(name: 'user_image') String? userImage,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'review') String? review,
    @JsonKey(name: 'rating') double? rating,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
}
