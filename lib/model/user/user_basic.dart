// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_basic.freezed.dart';
part 'user_basic.g.dart';

@freezed
class UserBasic with _$UserBasic {
  const factory UserBasic({
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_image') String? userImage,
  }) = _UserBasic;

  factory UserBasic.fromJson(Map<String, dynamic> json) => _$UserBasicFromJson(json);
}
