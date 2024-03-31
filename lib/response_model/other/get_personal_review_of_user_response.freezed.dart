// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_personal_review_of_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPersonalReviewOfUserResponse _$GetPersonalReviewOfUserResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPersonalReviewOfUserResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPersonalReviewOfUserResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'mess')
  String? get mess => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PersonalReview? get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPersonalReviewOfUserResponseCopyWith<GetPersonalReviewOfUserResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPersonalReviewOfUserResponseCopyWith<$Res> {
  factory $GetPersonalReviewOfUserResponseCopyWith(
          GetPersonalReviewOfUserResponse value,
          $Res Function(GetPersonalReviewOfUserResponse) then) =
      _$GetPersonalReviewOfUserResponseCopyWithImpl<$Res,
          GetPersonalReviewOfUserResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') PersonalReview? review});

  $PersonalReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$GetPersonalReviewOfUserResponseCopyWithImpl<$Res,
        $Val extends GetPersonalReviewOfUserResponse>
    implements $GetPersonalReviewOfUserResponseCopyWith<$Res> {
  _$GetPersonalReviewOfUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? review = freezed,
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
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as PersonalReview?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $PersonalReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetPersonalReviewOfUserResponseImplCopyWith<$Res>
    implements $GetPersonalReviewOfUserResponseCopyWith<$Res> {
  factory _$$GetPersonalReviewOfUserResponseImplCopyWith(
          _$GetPersonalReviewOfUserResponseImpl value,
          $Res Function(_$GetPersonalReviewOfUserResponseImpl) then) =
      __$$GetPersonalReviewOfUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') PersonalReview? review});

  @override
  $PersonalReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$GetPersonalReviewOfUserResponseImplCopyWithImpl<$Res>
    extends _$GetPersonalReviewOfUserResponseCopyWithImpl<$Res,
        _$GetPersonalReviewOfUserResponseImpl>
    implements _$$GetPersonalReviewOfUserResponseImplCopyWith<$Res> {
  __$$GetPersonalReviewOfUserResponseImplCopyWithImpl(
      _$GetPersonalReviewOfUserResponseImpl _value,
      $Res Function(_$GetPersonalReviewOfUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? review = freezed,
  }) {
    return _then(_$GetPersonalReviewOfUserResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as PersonalReview?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPersonalReviewOfUserResponseImpl
    implements _GetPersonalReviewOfUserResponse {
  const _$GetPersonalReviewOfUserResponseImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'mess') this.mess,
      @JsonKey(name: 'data') this.review});

  factory _$GetPersonalReviewOfUserResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPersonalReviewOfUserResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'mess')
  final String? mess;
  @override
  @JsonKey(name: 'data')
  final PersonalReview? review;

  @override
  String toString() {
    return 'GetPersonalReviewOfUserResponse(code: $code, mess: $mess, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPersonalReviewOfUserResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, mess, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPersonalReviewOfUserResponseImplCopyWith<
          _$GetPersonalReviewOfUserResponseImpl>
      get copyWith => __$$GetPersonalReviewOfUserResponseImplCopyWithImpl<
          _$GetPersonalReviewOfUserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPersonalReviewOfUserResponseImplToJson(
      this,
    );
  }
}

abstract class _GetPersonalReviewOfUserResponse
    implements GetPersonalReviewOfUserResponse {
  const factory _GetPersonalReviewOfUserResponse(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'mess') final String? mess,
          @JsonKey(name: 'data') final PersonalReview? review}) =
      _$GetPersonalReviewOfUserResponseImpl;

  factory _GetPersonalReviewOfUserResponse.fromJson(Map<String, dynamic> json) =
      _$GetPersonalReviewOfUserResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'mess')
  String? get mess;
  @override
  @JsonKey(name: 'data')
  PersonalReview? get review;
  @override
  @JsonKey(ignore: true)
  _$$GetPersonalReviewOfUserResponseImplCopyWith<
          _$GetPersonalReviewOfUserResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
