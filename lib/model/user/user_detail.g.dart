// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailImpl _$$UserDetailImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailImpl(
      id: json['id'] as int?,
      userName: json['user_name'] as String?,
      userEmail: json['user_email'] as String?,
      description: json['description'] as String?,
      updateAt: json['update_at'] as String?,
      joinAt: json['join_at'] as String?,
      userImage: json['user_image'] as String?,
      numOfFollower: json['num_of_followers'] as int?,
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'user_email': instance.userEmail,
      'description': instance.description,
      'update_at': instance.updateAt,
      'join_at': instance.joinAt,
      'user_image': instance.userImage,
      'num_of_followers': instance.numOfFollower,
    };
