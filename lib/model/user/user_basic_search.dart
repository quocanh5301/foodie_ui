// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_basic_search.freezed.dart';
part 'user_basic_search.g.dart';

@freezed
class UserBasicSearch with _$UserBasicSearch {
  const factory UserBasicSearch({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_image') String? userImage,
    @JsonKey(name: 'user_email') String? userEmail,
  }) = _UserBasicSearch;

  factory UserBasicSearch.fromJson(Map<String, dynamic> json) => _$UserBasicSearchFromJson(json);
}
