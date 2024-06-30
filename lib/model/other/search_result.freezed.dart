// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  @JsonKey(name: 'recipe')
  List<RecipeBasic>? get recipeList => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  List<UserBasic>? get userList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'recipe') List<RecipeBasic>? recipeList,
      @JsonKey(name: 'user') List<UserBasic>? userList});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeList = freezed,
    Object? userList = freezed,
  }) {
    return _then(_value.copyWith(
      recipeList: freezed == recipeList
          ? _value.recipeList
          : recipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>?,
      userList: freezed == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserBasic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'recipe') List<RecipeBasic>? recipeList,
      @JsonKey(name: 'user') List<UserBasic>? userList});
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeList = freezed,
    Object? userList = freezed,
  }) {
    return _then(_$SearchResultImpl(
      recipeList: freezed == recipeList
          ? _value._recipeList
          : recipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>?,
      userList: freezed == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserBasic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultImpl implements _SearchResult {
  const _$SearchResultImpl(
      {@JsonKey(name: 'recipe') final List<RecipeBasic>? recipeList,
      @JsonKey(name: 'user') final List<UserBasic>? userList})
      : _recipeList = recipeList,
        _userList = userList;

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

  final List<RecipeBasic>? _recipeList;
  @override
  @JsonKey(name: 'recipe')
  List<RecipeBasic>? get recipeList {
    final value = _recipeList;
    if (value == null) return null;
    if (_recipeList is EqualUnmodifiableListView) return _recipeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserBasic>? _userList;
  @override
  @JsonKey(name: 'user')
  List<UserBasic>? get userList {
    final value = _userList;
    if (value == null) return null;
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResult(recipeList: $recipeList, userList: $userList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            const DeepCollectionEquality()
                .equals(other._recipeList, _recipeList) &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipeList),
      const DeepCollectionEquality().hash(_userList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
          {@JsonKey(name: 'recipe') final List<RecipeBasic>? recipeList,
          @JsonKey(name: 'user') final List<UserBasic>? userList}) =
      _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  @JsonKey(name: 'recipe')
  List<RecipeBasic>? get recipeList;
  @override
  @JsonKey(name: 'user')
  List<UserBasic>? get userList;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
