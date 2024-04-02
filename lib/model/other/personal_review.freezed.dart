// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonalReview _$PersonalReviewFromJson(Map<String, dynamic> json) {
  return _PersonalReview.fromJson(json);
}

/// @nodoc
mixin _$PersonalReview {
  @JsonKey(name: 'review_recipe_image')
  String? get reviewRecipeImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at')
  String? get updateAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_at')
  String? get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'review')
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalReviewCopyWith<PersonalReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalReviewCopyWith<$Res> {
  factory $PersonalReviewCopyWith(
          PersonalReview value, $Res Function(PersonalReview) then) =
      _$PersonalReviewCopyWithImpl<$Res, PersonalReview>;
  @useResult
  $Res call(
      {@JsonKey(name: 'review_recipe_image') String? reviewRecipeImage,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'review') String? review,
      @JsonKey(name: 'rating') double? rating});
}

/// @nodoc
class _$PersonalReviewCopyWithImpl<$Res, $Val extends PersonalReview>
    implements $PersonalReviewCopyWith<$Res> {
  _$PersonalReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewRecipeImage = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? review = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      reviewRecipeImage: freezed == reviewRecipeImage
          ? _value.reviewRecipeImage
          : reviewRecipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalReviewImplCopyWith<$Res>
    implements $PersonalReviewCopyWith<$Res> {
  factory _$$PersonalReviewImplCopyWith(_$PersonalReviewImpl value,
          $Res Function(_$PersonalReviewImpl) then) =
      __$$PersonalReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'review_recipe_image') String? reviewRecipeImage,
      @JsonKey(name: 'update_at') String? updateAt,
      @JsonKey(name: 'create_at') String? createAt,
      @JsonKey(name: 'review') String? review,
      @JsonKey(name: 'rating') double? rating});
}

/// @nodoc
class __$$PersonalReviewImplCopyWithImpl<$Res>
    extends _$PersonalReviewCopyWithImpl<$Res, _$PersonalReviewImpl>
    implements _$$PersonalReviewImplCopyWith<$Res> {
  __$$PersonalReviewImplCopyWithImpl(
      _$PersonalReviewImpl _value, $Res Function(_$PersonalReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewRecipeImage = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? review = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$PersonalReviewImpl(
      reviewRecipeImage: freezed == reviewRecipeImage
          ? _value.reviewRecipeImage
          : reviewRecipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalReviewImpl implements _PersonalReview {
  const _$PersonalReviewImpl(
      {@JsonKey(name: 'review_recipe_image') this.reviewRecipeImage,
      @JsonKey(name: 'update_at') this.updateAt,
      @JsonKey(name: 'create_at') this.createAt,
      @JsonKey(name: 'review') this.review,
      @JsonKey(name: 'rating') this.rating});

  factory _$PersonalReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalReviewImplFromJson(json);

  @override
  @JsonKey(name: 'review_recipe_image')
  final String? reviewRecipeImage;
  @override
  @JsonKey(name: 'update_at')
  final String? updateAt;
  @override
  @JsonKey(name: 'create_at')
  final String? createAt;
  @override
  @JsonKey(name: 'review')
  final String? review;
  @override
  @JsonKey(name: 'rating')
  final double? rating;

  @override
  String toString() {
    return 'PersonalReview(reviewRecipeImage: $reviewRecipeImage, updateAt: $updateAt, createAt: $createAt, review: $review, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalReviewImpl &&
            (identical(other.reviewRecipeImage, reviewRecipeImage) ||
                other.reviewRecipeImage == reviewRecipeImage) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, reviewRecipeImage, updateAt, createAt, review, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalReviewImplCopyWith<_$PersonalReviewImpl> get copyWith =>
      __$$PersonalReviewImplCopyWithImpl<_$PersonalReviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalReviewImplToJson(
      this,
    );
  }
}

abstract class _PersonalReview implements PersonalReview {
  const factory _PersonalReview(
      {@JsonKey(name: 'review_recipe_image') final String? reviewRecipeImage,
      @JsonKey(name: 'update_at') final String? updateAt,
      @JsonKey(name: 'create_at') final String? createAt,
      @JsonKey(name: 'review') final String? review,
      @JsonKey(name: 'rating') final double? rating}) = _$PersonalReviewImpl;

  factory _PersonalReview.fromJson(Map<String, dynamic> json) =
      _$PersonalReviewImpl.fromJson;

  @override
  @JsonKey(name: 'review_recipe_image')
  String? get reviewRecipeImage;
  @override
  @JsonKey(name: 'update_at')
  String? get updateAt;
  @override
  @JsonKey(name: 'create_at')
  String? get createAt;
  @override
  @JsonKey(name: 'review')
  String? get review;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$PersonalReviewImplCopyWith<_$PersonalReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
