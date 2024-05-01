// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_recipe_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRecipeSearchResult _$GetRecipeSearchResultFromJson(
    Map<String, dynamic> json) {
  return _GetRecipeSearchResult.fromJson(json);
}

/// @nodoc
mixin _$GetRecipeSearchResult {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'mess')
  String? get mess => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<RecipeBasic>? get recipeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRecipeSearchResultCopyWith<GetRecipeSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecipeSearchResultCopyWith<$Res> {
  factory $GetRecipeSearchResultCopyWith(GetRecipeSearchResult value,
          $Res Function(GetRecipeSearchResult) then) =
      _$GetRecipeSearchResultCopyWithImpl<$Res, GetRecipeSearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') List<RecipeBasic>? recipeList});
}

/// @nodoc
class _$GetRecipeSearchResultCopyWithImpl<$Res,
        $Val extends GetRecipeSearchResult>
    implements $GetRecipeSearchResultCopyWith<$Res> {
  _$GetRecipeSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? recipeList = freezed,
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
      recipeList: freezed == recipeList
          ? _value.recipeList
          : recipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecipeSearchResultImplCopyWith<$Res>
    implements $GetRecipeSearchResultCopyWith<$Res> {
  factory _$$GetRecipeSearchResultImplCopyWith(
          _$GetRecipeSearchResultImpl value,
          $Res Function(_$GetRecipeSearchResultImpl) then) =
      __$$GetRecipeSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') List<RecipeBasic>? recipeList});
}

/// @nodoc
class __$$GetRecipeSearchResultImplCopyWithImpl<$Res>
    extends _$GetRecipeSearchResultCopyWithImpl<$Res,
        _$GetRecipeSearchResultImpl>
    implements _$$GetRecipeSearchResultImplCopyWith<$Res> {
  __$$GetRecipeSearchResultImplCopyWithImpl(_$GetRecipeSearchResultImpl _value,
      $Res Function(_$GetRecipeSearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? recipeList = freezed,
  }) {
    return _then(_$GetRecipeSearchResultImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      recipeList: freezed == recipeList
          ? _value._recipeList
          : recipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRecipeSearchResultImpl implements _GetRecipeSearchResult {
  const _$GetRecipeSearchResultImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'mess') this.mess,
      @JsonKey(name: 'data') final List<RecipeBasic>? recipeList})
      : _recipeList = recipeList;

  factory _$GetRecipeSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRecipeSearchResultImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'mess')
  final String? mess;
  final List<RecipeBasic>? _recipeList;
  @override
  @JsonKey(name: 'data')
  List<RecipeBasic>? get recipeList {
    final value = _recipeList;
    if (value == null) return null;
    if (_recipeList is EqualUnmodifiableListView) return _recipeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetRecipeSearchResult(code: $code, mess: $mess, recipeList: $recipeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecipeSearchResultImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            const DeepCollectionEquality()
                .equals(other._recipeList, _recipeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, mess,
      const DeepCollectionEquality().hash(_recipeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecipeSearchResultImplCopyWith<_$GetRecipeSearchResultImpl>
      get copyWith => __$$GetRecipeSearchResultImplCopyWithImpl<
          _$GetRecipeSearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRecipeSearchResultImplToJson(
      this,
    );
  }
}

abstract class _GetRecipeSearchResult implements GetRecipeSearchResult {
  const factory _GetRecipeSearchResult(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'mess') final String? mess,
          @JsonKey(name: 'data') final List<RecipeBasic>? recipeList}) =
      _$GetRecipeSearchResultImpl;

  factory _GetRecipeSearchResult.fromJson(Map<String, dynamic> json) =
      _$GetRecipeSearchResultImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'mess')
  String? get mess;
  @override
  @JsonKey(name: 'data')
  List<RecipeBasic>? get recipeList;
  @override
  @JsonKey(ignore: true)
  _$$GetRecipeSearchResultImplCopyWith<_$GetRecipeSearchResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
