// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_email') String? userEmail,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'update_at') String? updateAt,
    @JsonKey(name: 'join_at') String? joinAt,
    @JsonKey(name: 'user_image') String? userImage,
    @JsonKey(name: 'num_of_followers') int? numOfFollower,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
