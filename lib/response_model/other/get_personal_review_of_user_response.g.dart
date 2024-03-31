// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_personal_review_of_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPersonalReviewOfUserResponseImpl
    _$$GetPersonalReviewOfUserResponseImplFromJson(Map<String, dynamic> json) =>
        _$GetPersonalReviewOfUserResponseImpl(
          code: json['code'] as int?,
          mess: json['mess'] as String?,
          review: json['data'] == null
              ? null
              : PersonalReview.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetPersonalReviewOfUserResponseImplToJson(
        _$GetPersonalReviewOfUserResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.review,
    };
