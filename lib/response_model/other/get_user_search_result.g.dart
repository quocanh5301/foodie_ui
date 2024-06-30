// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserSearchResultImpl _$$GetUserSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserSearchResultImpl(
      code: json['code'] as int?,
      mess: json['mess'] as String?,
      userList: (json['data'] as List<dynamic>?)
          ?.map((e) => UserBasicSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetUserSearchResultImplToJson(
        _$GetUserSearchResultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mess': instance.mess,
      'data': instance.userList,
    };
