// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/other/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_review_of_user_response.freezed.dart';
part 'get_review_of_user_response.g.dart';

@freezed
class GetReviewOfUserResponse with _$GetReviewOfUserResponse {
  const factory GetReviewOfUserResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') List<Review>? reviewList,
  }) = _GetReviewOfUserResponse;

  factory GetReviewOfUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetReviewOfUserResponseFromJson(json);
}
