// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_review_of_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetReviewOfUserResponseImpl _$$GetReviewOfUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetReviewOfUserResponseImpl(
      code: json['code'] as int?,
      mess: json['mess'] as String?,
      reviewList: (json['data'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetReviewOfUserResponseImplToJson(
        _$GetReviewOfUserResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.reviewList,
    };
