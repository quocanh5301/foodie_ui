// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  int get code => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  List<RecipeBasic> get userRecipeList => throw _privateConstructorUsedError;
  int get userRecipePage => throw _privateConstructorUsedError;
  int get currentTab => throw _privateConstructorUsedError;
  GetUserRecipeStatus get getUserRecipeStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {int code,
      String mess,
      List<RecipeBasic> userRecipeList,
      int userRecipePage,
      int currentTab,
      GetUserRecipeStatus getUserRecipeStatus});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? userRecipeList = null,
    Object? userRecipePage = null,
    Object? currentTab = null,
    Object? getUserRecipeStatus = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      userRecipeList: null == userRecipeList
          ? _value.userRecipeList
          : userRecipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>,
      userRecipePage: null == userRecipePage
          ? _value.userRecipePage
          : userRecipePage // ignore: cast_nullable_to_non_nullable
              as int,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      getUserRecipeStatus: null == getUserRecipeStatus
          ? _value.getUserRecipeStatus
          : getUserRecipeStatus // ignore: cast_nullable_to_non_nullable
              as GetUserRecipeStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String mess,
      List<RecipeBasic> userRecipeList,
      int userRecipePage,
      int currentTab,
      GetUserRecipeStatus getUserRecipeStatus});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? userRecipeList = null,
    Object? userRecipePage = null,
    Object? currentTab = null,
    Object? getUserRecipeStatus = null,
  }) {
    return _then(_$ProfileStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      userRecipeList: null == userRecipeList
          ? _value._userRecipeList
          : userRecipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>,
      userRecipePage: null == userRecipePage
          ? _value.userRecipePage
          : userRecipePage // ignore: cast_nullable_to_non_nullable
              as int,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      getUserRecipeStatus: null == getUserRecipeStatus
          ? _value.getUserRecipeStatus
          : getUserRecipeStatus // ignore: cast_nullable_to_non_nullable
              as GetUserRecipeStatus,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.code = 200,
      this.mess = '',
      final List<RecipeBasic> userRecipeList = const [],
      this.userRecipePage = 0,
      this.currentTab = 0,
      this.getUserRecipeStatus = GetUserRecipeStatus.initial})
      : _userRecipeList = userRecipeList;

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String mess;
  final List<RecipeBasic> _userRecipeList;
  @override
  @JsonKey()
  List<RecipeBasic> get userRecipeList {
    if (_userRecipeList is EqualUnmodifiableListView) return _userRecipeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userRecipeList);
  }

  @override
  @JsonKey()
  final int userRecipePage;
  @override
  @JsonKey()
  final int currentTab;
  @override
  @JsonKey()
  final GetUserRecipeStatus getUserRecipeStatus;

  @override
  String toString() {
    return 'ProfileState(code: $code, mess: $mess, userRecipeList: $userRecipeList, userRecipePage: $userRecipePage, currentTab: $currentTab, getUserRecipeStatus: $getUserRecipeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            const DeepCollectionEquality()
                .equals(other._userRecipeList, _userRecipeList) &&
            (identical(other.userRecipePage, userRecipePage) ||
                other.userRecipePage == userRecipePage) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.getUserRecipeStatus, getUserRecipeStatus) ||
                other.getUserRecipeStatus == getUserRecipeStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      mess,
      const DeepCollectionEquality().hash(_userRecipeList),
      userRecipePage,
      currentTab,
      getUserRecipeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final int code,
      final String mess,
      final List<RecipeBasic> userRecipeList,
      final int userRecipePage,
      final int currentTab,
      final GetUserRecipeStatus getUserRecipeStatus}) = _$ProfileStateImpl;

  @override
  int get code;
  @override
  String get mess;
  @override
  List<RecipeBasic> get userRecipeList;
  @override
  int get userRecipePage;
  @override
  int get currentTab;
  @override
  GetUserRecipeStatus get getUserRecipeStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
