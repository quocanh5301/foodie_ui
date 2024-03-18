// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bookmark_recipe_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBookmarkRecipeResponse _$GetBookmarkRecipeResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBookmarkRecipeResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBookmarkRecipeResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'mess')
  String? get mess => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<RecipeBasic>? get bookmarkRecipeList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBookmarkRecipeResponseCopyWith<GetBookmarkRecipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBookmarkRecipeResponseCopyWith<$Res> {
  factory $GetBookmarkRecipeResponseCopyWith(GetBookmarkRecipeResponse value,
          $Res Function(GetBookmarkRecipeResponse) then) =
      _$GetBookmarkRecipeResponseCopyWithImpl<$Res, GetBookmarkRecipeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') List<RecipeBasic>? bookmarkRecipeList});
}

/// @nodoc
class _$GetBookmarkRecipeResponseCopyWithImpl<$Res,
        $Val extends GetBookmarkRecipeResponse>
    implements $GetBookmarkRecipeResponseCopyWith<$Res> {
  _$GetBookmarkRecipeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? bookmarkRecipeList = freezed,
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
      bookmarkRecipeList: freezed == bookmarkRecipeList
          ? _value.bookmarkRecipeList
          : bookmarkRecipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBookmarkRecipeResponseImplCopyWith<$Res>
    implements $GetBookmarkRecipeResponseCopyWith<$Res> {
  factory _$$GetBookmarkRecipeResponseImplCopyWith(
          _$GetBookmarkRecipeResponseImpl value,
          $Res Function(_$GetBookmarkRecipeResponseImpl) then) =
      __$$GetBookmarkRecipeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'mess') String? mess,
      @JsonKey(name: 'data') List<RecipeBasic>? bookmarkRecipeList});
}

/// @nodoc
class __$$GetBookmarkRecipeResponseImplCopyWithImpl<$Res>
    extends _$GetBookmarkRecipeResponseCopyWithImpl<$Res,
        _$GetBookmarkRecipeResponseImpl>
    implements _$$GetBookmarkRecipeResponseImplCopyWith<$Res> {
  __$$GetBookmarkRecipeResponseImplCopyWithImpl(
      _$GetBookmarkRecipeResponseImpl _value,
      $Res Function(_$GetBookmarkRecipeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? mess = freezed,
    Object? bookmarkRecipeList = freezed,
  }) {
    return _then(_$GetBookmarkRecipeResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      mess: freezed == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String?,
      bookmarkRecipeList: freezed == bookmarkRecipeList
          ? _value._bookmarkRecipeList
          : bookmarkRecipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBookmarkRecipeResponseImpl implements _GetBookmarkRecipeResponse {
  const _$GetBookmarkRecipeResponseImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'mess') this.mess,
      @JsonKey(name: 'data') final List<RecipeBasic>? bookmarkRecipeList})
      : _bookmarkRecipeList = bookmarkRecipeList;

  factory _$GetBookmarkRecipeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBookmarkRecipeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'mess')
  final String? mess;
  final List<RecipeBasic>? _bookmarkRecipeList;
  @override
  @JsonKey(name: 'data')
  List<RecipeBasic>? get bookmarkRecipeList {
    final value = _bookmarkRecipeList;
    if (value == null) return null;
    if (_bookmarkRecipeList is EqualUnmodifiableListView)
      return _bookmarkRecipeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetBookmarkRecipeResponse(code: $code, mess: $mess, bookmarkRecipeList: $bookmarkRecipeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookmarkRecipeResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            const DeepCollectionEquality()
                .equals(other._bookmarkRecipeList, _bookmarkRecipeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, mess,
      const DeepCollectionEquality().hash(_bookmarkRecipeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookmarkRecipeResponseImplCopyWith<_$GetBookmarkRecipeResponseImpl>
      get copyWith => __$$GetBookmarkRecipeResponseImplCopyWithImpl<
          _$GetBookmarkRecipeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBookmarkRecipeResponseImplToJson(
      this,
    );
  }
}

abstract class _GetBookmarkRecipeResponse implements GetBookmarkRecipeResponse {
  const factory _GetBookmarkRecipeResponse(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'mess') final String? mess,
          @JsonKey(name: 'data') final List<RecipeBasic>? bookmarkRecipeList}) =
      _$GetBookmarkRecipeResponseImpl;

  factory _GetBookmarkRecipeResponse.fromJson(Map<String, dynamic> json) =
      _$GetBookmarkRecipeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'mess')
  String? get mess;
  @override
  @JsonKey(name: 'data')
  List<RecipeBasic>? get bookmarkRecipeList;
  @override
  @JsonKey(ignore: true)
  _$$GetBookmarkRecipeResponseImplCopyWith<_$GetBookmarkRecipeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
