// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_basic_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBasicSearchImpl _$$UserBasicSearchImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBasicSearchImpl(
      id: json['id'] as int?,
      userName: json['user_name'] as String?,
      userImage: json['user_image'] as String?,
      userEmail: json['user_email'] as String?,
    );

Map<String, dynamic> _$$UserBasicSearchImplToJson(
        _$UserBasicSearchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'user_image': instance.userImage,
      'user_email': instance.userEmail,
    };
