// ignore_for_file: invalid_annotation_target

import 'package:foodie/model/user/user_basic_search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_search_result.freezed.dart';
part 'get_user_search_result.g.dart';

@freezed
class GetUserSearchResult with _$GetUserSearchResult {
  const factory GetUserSearchResult({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'mess') String? mess,
    @JsonKey(name: 'data') List<UserBasicSearch>? userList,
  }) = _GetUserSearchResult;

  factory GetUserSearchResult.fromJson(Map<String, dynamic> json) =>
      _$GetUserSearchResultFromJson(json);
}
