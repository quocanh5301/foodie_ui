// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail.freezed.dart';
part 'user_detail.g.dart';

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_email') String? userEmail,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'update_at') String? updateAt,
    @JsonKey(name: 'join_at') String? joinAt,
    @JsonKey(name: 'user_image') String? userImage,
    @JsonKey(name: 'num_of_followers') int? numOfFollower,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);
}
