// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_review_of_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetReviewOfUserResponse _$GetReviewOfUserResponseFromJson(
    Map<String, dynamic> json) {
  return _GetReviewOfUserResponse.fromJson(json);
}

/// @nodoc
mixin _$GetReviewOfUserResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'mess')
  String? get mess => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Review>? get reviewList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetReviewOfUserResponseCopyWith<GetReviewOfUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReviewOfUserResponseCopyWith<$Res> {
  factory $GetReviewOfUserResponseCopyWith(GetReviewOfUserResponse value,
          $Res Function(GetReviewOfUserResponse) then) =
      _$GetReviewOfUserResponseCopyWithImpl<$Res, GetReviewOfUserResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') List<Review>? reviewList});
}

/// @nodoc
class _$GetReviewOfUserResponseCopyWithImpl<$Res,
        $Val extends GetReviewOfUserResponse>
    implements $GetReviewOfUserResponseCopyWith<$Res> {
  _$GetReviewOfUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? reviewList = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewList: freezed == reviewList
          ? _value.reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetReviewOfUserResponseImplCopyWith<$Res>
    implements $GetReviewOfUserResponseCopyWith<$Res> {
  factory _$$GetReviewOfUserResponseImplCopyWith(
          _$GetReviewOfUserResponseImpl value,
          $Res Function(_$GetReviewOfUserResponseImpl) then) =
      __$$GetReviewOfUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') List<Review>? reviewList});
}

/// @nodoc
class __$$GetReviewOfUserResponseImplCopyWithImpl<$Res>
    extends _$GetReviewOfUserResponseCopyWithImpl<$Res,
        _$GetReviewOfUserResponseImpl>
    implements _$$GetReviewOfUserResponseImplCopyWith<$Res> {
  __$$GetReviewOfUserResponseImplCopyWithImpl(
      _$GetReviewOfUserResponseImpl _value,
      $Res Function(_$GetReviewOfUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? reviewList = freezed,
  }) {
    return _then(_$GetReviewOfUserResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewList: freezed == reviewList
          ? _value._reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetReviewOfUserResponseImpl implements _GetReviewOfUserResponse {
  const _$GetReviewOfUserResponseImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'mess') this.mess,
      @JsonKey(name: 'data') final List<Review>? reviewList})
      : _reviewList = reviewList;

  factory _$GetReviewOfUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetReviewOfUserResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'mess')
  final String? mess;
  final List<Review>? _reviewList;
  @override
  @JsonKey(name: 'data')
  List<Review>? get reviewList {
    final value = _reviewList;
    if (value == null) return null;
    if (_reviewList is EqualUnmodifiableListView) return _reviewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetReviewOfUserResponse(code: $code, mess: $mess, reviewList: $reviewList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReviewOfUserResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            const DeepCollectionEquality()
                .equals(other._reviewList, _reviewList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, mess,
      const DeepCollectionEquality().hash(_reviewList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReviewOfUserResponseImplCopyWith<_$GetReviewOfUserResponseImpl>
      get copyWith => __$$GetReviewOfUserResponseImplCopyWithImpl<
          _$GetReviewOfUserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetReviewOfUserResponseImplToJson(
      this,
    );
  }
}

abstract class _GetReviewOfUserResponse implements GetReviewOfUserResponse {
  const factory _GetReviewOfUserResponse(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'mess') final String? mess,
          @JsonKey(name: 'data') final List<Review>? reviewList}) =
      _$GetReviewOfUserResponseImpl;

  factory _GetReviewOfUserResponse.fromJson(Map<String, dynamic> json) =
      _$GetReviewOfUserResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'mess')
  String? get mess;
  @override
  @JsonKey(name: 'data')
  List<Review>? get reviewList;
  @override
  @JsonKey(ignore: true)
  _$$GetReviewOfUserResponseImplCopyWith<_$GetReviewOfUserResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
