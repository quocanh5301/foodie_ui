// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_detail_recipe_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDetailRecipeResponse _$GetDetailRecipeResponseFromJson(
    Map<String, dynamic> json) {
  return _GetDetailRecipeResponse.fromJson(json);
}

/// @nodoc
mixin _$GetDetailRecipeResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'mess')
  String? get mess => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  RecipeDetail? get recipeDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDetailRecipeResponseCopyWith<GetDetailRecipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailRecipeResponseCopyWith<$Res> {
  factory $GetDetailRecipeResponseCopyWith(GetDetailRecipeResponse value,
          $Res Function(GetDetailRecipeResponse) then) =
      _$GetDetailRecipeResponseCopyWithImpl<$Res, GetDetailRecipeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') RecipeDetail? recipeDetail});

  $RecipeDetailCopyWith<$Res>? get recipeDetail;
}

/// @nodoc
class _$GetDetailRecipeResponseCopyWithImpl<$Res,
        $Val extends GetDetailRecipeResponse>
    implements $GetDetailRecipeResponseCopyWith<$Res> {
  _$GetDetailRecipeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? recipeDetail = freezed,
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
      recipeDetail: freezed == recipeDetail
          ? _value.recipeDetail
          : recipeDetail // ignore: cast_nullable_to_non_nullable
              as RecipeDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeDetailCopyWith<$Res>? get recipeDetail {
    if (_value.recipeDetail == null) {
      return null;
    }

    return $RecipeDetailCopyWith<$Res>(_value.recipeDetail!, (value) {
      return _then(_value.copyWith(recipeDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDetailRecipeResponseImplCopyWith<$Res>
    implements $GetDetailRecipeResponseCopyWith<$Res> {
  factory _$$GetDetailRecipeResponseImplCopyWith(
          _$GetDetailRecipeResponseImpl value,
          $Res Function(_$GetDetailRecipeResponseImpl) then) =
      __$$GetDetailRecipeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') RecipeDetail? recipeDetail});

  @override
  $RecipeDetailCopyWith<$Res>? get recipeDetail;
}

/// @nodoc
class __$$GetDetailRecipeResponseImplCopyWithImpl<$Res>
    extends _$GetDetailRecipeResponseCopyWithImpl<$Res,
        _$GetDetailRecipeResponseImpl>
    implements _$$GetDetailRecipeResponseImplCopyWith<$Res> {
  __$$GetDetailRecipeResponseImplCopyWithImpl(
      _$GetDetailRecipeResponseImpl _value,
      $Res Function(_$GetDetailRecipeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? recipeDetail = freezed,
  }) {
    return _then(_$GetDetailRecipeResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      recipeDetail: freezed == recipeDetail
          ? _value.recipeDetail
          : recipeDetail // ignore: cast_nullable_to_non_nullable
              as RecipeDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDetailRecipeResponseImpl implements _GetDetailRecipeResponse {
  const _$GetDetailRecipeResponseImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'mess') this.mess,
      @JsonKey(name: 'data') this.recipeDetail});

  factory _$GetDetailRecipeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDetailRecipeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'mess')
  final String? mess;
  @override
  @JsonKey(name: 'data')
  final RecipeDetail? recipeDetail;

  @override
  String toString() {
    return 'GetDetailRecipeResponse(code: $code, mess: $mess, recipeDetail: $recipeDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailRecipeResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.recipeDetail, recipeDetail) ||
                other.recipeDetail == recipeDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, mess, recipeDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailRecipeResponseImplCopyWith<_$GetDetailRecipeResponseImpl>
      get copyWith => __$$GetDetailRecipeResponseImplCopyWithImpl<
          _$GetDetailRecipeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailRecipeResponseImplToJson(
      this,
    );
  }
}

abstract class _GetDetailRecipeResponse implements GetDetailRecipeResponse {
  const factory _GetDetailRecipeResponse(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'mess') final String? mess,
          @JsonKey(name: 'data') final RecipeDetail? recipeDetail}) =
      _$GetDetailRecipeResponseImpl;

  factory _GetDetailRecipeResponse.fromJson(Map<String, dynamic> json) =
      _$GetDetailRecipeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'mess')
  String? get mess;
  @override
  @JsonKey(name: 'data')
  RecipeDetail? get recipeDetail;
  @override
  @JsonKey(ignore: true)
  _$$GetDetailRecipeResponseImplCopyWith<_$GetDetailRecipeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
