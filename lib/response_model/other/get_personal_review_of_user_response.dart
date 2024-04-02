// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/other/personal_review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_personal_review_of_user_response.freezed.dart';
part 'get_personal_review_of_user_response.g.dart';

@freezed
class GetPersonalReviewOfUserResponse with _$GetPersonalReviewOfUserResponse {
  const factory GetPersonalReviewOfUserResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') PersonalReview? review,
  }) = _GetPersonalReviewOfUserResponse;

  factory GetPersonalReviewOfUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPersonalReviewOfUserResponseFromJson(json);
}
