// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_review.freezed.dart';
part 'personal_review.g.dart';

@freezed
class PersonalReview with _$PersonalReview {
  const factory PersonalReview({
    @JsonKey(name: 'review_recipe_image') String? reviewRecipeImage,
    @JsonKey(name: 'update_at') String? updateAt,
    @JsonKey(name: 'create_at') String? createAt,
    @JsonKey(name: 'review') String? review,
    @JsonKey(name: 'rating') double? rating,
  }) = _PersonalReview;

  factory PersonalReview.fromJson(Map<String, dynamic> json) =>
      _$PersonalReviewFromJson(json);
}
