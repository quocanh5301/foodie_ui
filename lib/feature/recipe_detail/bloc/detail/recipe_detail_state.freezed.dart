// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeDetailState {
  int get code => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  int get currentTab => throw _privateConstructorUsedError;
  int get recipeId => throw _privateConstructorUsedError; //
  RecipeDetail get recipeDetail => throw _privateConstructorUsedError; //
  List<Review> get userReviewList => throw _privateConstructorUsedError;
  int get userReviewPage => throw _privateConstructorUsedError; //
  PersonalReview get personalReview => throw _privateConstructorUsedError; //
  GetRecipeDetailStatus get getRecipeDetailStatus =>
      throw _privateConstructorUsedError;
  GetUserReviewStatus get getUserReviewStatus =>
      throw _privateConstructorUsedError;
  GetPersonalReviewStatus get getPersonalReviewStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailStateCopyWith<RecipeDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailStateCopyWith<$Res> {
  factory $RecipeDetailStateCopyWith(
          RecipeDetailState value, $Res Function(RecipeDetailState) then) =
      _$RecipeDetailStateCopyWithImpl<$Res, RecipeDetailState>;
  @useResult
  $Res call(
      {int code,
      String mess,
      int currentTab,
      int recipeId,
      RecipeDetail recipeDetail,
      List<Review> userReviewList,
      int userReviewPage,
      PersonalReview personalReview,
      GetRecipeDetailStatus getRecipeDetailStatus,
      GetUserReviewStatus getUserReviewStatus,
      GetPersonalReviewStatus getPersonalReviewStatus});

  $RecipeDetailCopyWith<$Res> get recipeDetail;
  $PersonalReviewCopyWith<$Res> get personalReview;
}

/// @nodoc
class _$RecipeDetailStateCopyWithImpl<$Res, $Val extends RecipeDetailState>
    implements $RecipeDetailStateCopyWith<$Res> {
  _$RecipeDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? currentTab = null,
    Object? recipeId = null,
    Object? recipeDetail = null,
    Object? userReviewList = null,
    Object? userReviewPage = null,
    Object? personalReview = null,
    Object? getRecipeDetailStatus = null,
    Object? getUserReviewStatus = null,
    Object? getPersonalReviewStatus = null,
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
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      recipeDetail: null == recipeDetail
          ? _value.recipeDetail
          : recipeDetail // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
      userReviewList: null == userReviewList
          ? _value.userReviewList
          : userReviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      userReviewPage: null == userReviewPage
          ? _value.userReviewPage
          : userReviewPage // ignore: cast_nullable_to_non_nullable
              as int,
      personalReview: null == personalReview
          ? _value.personalReview
          : personalReview // ignore: cast_nullable_to_non_nullable
              as PersonalReview,
      getRecipeDetailStatus: null == getRecipeDetailStatus
          ? _value.getRecipeDetailStatus
          : getRecipeDetailStatus // ignore: cast_nullable_to_non_nullable
              as GetRecipeDetailStatus,
      getUserReviewStatus: null == getUserReviewStatus
          ? _value.getUserReviewStatus
          : getUserReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetUserReviewStatus,
      getPersonalReviewStatus: null == getPersonalReviewStatus
          ? _value.getPersonalReviewStatus
          : getPersonalReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetPersonalReviewStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeDetailCopyWith<$Res> get recipeDetail {
    return $RecipeDetailCopyWith<$Res>(_value.recipeDetail, (value) {
      return _then(_value.copyWith(recipeDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalReviewCopyWith<$Res> get personalReview {
    return $PersonalReviewCopyWith<$Res>(_value.personalReview, (value) {
      return _then(_value.copyWith(personalReview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeDetailStateImplCopyWith<$Res>
    implements $RecipeDetailStateCopyWith<$Res> {
  factory _$$RecipeDetailStateImplCopyWith(_$RecipeDetailStateImpl value,
          $Res Function(_$RecipeDetailStateImpl) then) =
      __$$RecipeDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String mess,
      int currentTab,
      int recipeId,
      RecipeDetail recipeDetail,
      List<Review> userReviewList,
      int userReviewPage,
      PersonalReview personalReview,
      GetRecipeDetailStatus getRecipeDetailStatus,
      GetUserReviewStatus getUserReviewStatus,
      GetPersonalReviewStatus getPersonalReviewStatus});

  @override
  $RecipeDetailCopyWith<$Res> get recipeDetail;
  @override
  $PersonalReviewCopyWith<$Res> get personalReview;
}

/// @nodoc
class __$$RecipeDetailStateImplCopyWithImpl<$Res>
    extends _$RecipeDetailStateCopyWithImpl<$Res, _$RecipeDetailStateImpl>
    implements _$$RecipeDetailStateImplCopyWith<$Res> {
  __$$RecipeDetailStateImplCopyWithImpl(_$RecipeDetailStateImpl _value,
      $Res Function(_$RecipeDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? currentTab = null,
    Object? recipeId = null,
    Object? recipeDetail = null,
    Object? userReviewList = null,
    Object? userReviewPage = null,
    Object? personalReview = null,
    Object? getRecipeDetailStatus = null,
    Object? getUserReviewStatus = null,
    Object? getPersonalReviewStatus = null,
  }) {
    return _then(_$RecipeDetailStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      recipeDetail: null == recipeDetail
          ? _value.recipeDetail
          : recipeDetail // ignore: cast_nullable_to_non_nullable
              as RecipeDetail,
      userReviewList: null == userReviewList
          ? _value._userReviewList
          : userReviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      userReviewPage: null == userReviewPage
          ? _value.userReviewPage
          : userReviewPage // ignore: cast_nullable_to_non_nullable
              as int,
      personalReview: null == personalReview
          ? _value.personalReview
          : personalReview // ignore: cast_nullable_to_non_nullable
              as PersonalReview,
      getRecipeDetailStatus: null == getRecipeDetailStatus
          ? _value.getRecipeDetailStatus
          : getRecipeDetailStatus // ignore: cast_nullable_to_non_nullable
              as GetRecipeDetailStatus,
      getUserReviewStatus: null == getUserReviewStatus
          ? _value.getUserReviewStatus
          : getUserReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetUserReviewStatus,
      getPersonalReviewStatus: null == getPersonalReviewStatus
          ? _value.getPersonalReviewStatus
          : getPersonalReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetPersonalReviewStatus,
    ));
  }
}

/// @nodoc

class _$RecipeDetailStateImpl implements _RecipeDetailState {
  const _$RecipeDetailStateImpl(
      {this.code = 200,
      this.mess = '',
      this.currentTab = 0,
      this.recipeId = 0,
      this.recipeDetail = const RecipeDetail(),
      final List<Review> userReviewList = const [],
      this.userReviewPage = 0,
      this.personalReview = const PersonalReview(),
      this.getRecipeDetailStatus = GetRecipeDetailStatus.initial,
      this.getUserReviewStatus = GetUserReviewStatus.initial,
      this.getPersonalReviewStatus = GetPersonalReviewStatus.initial})
      : _userReviewList = userReviewList;

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int currentTab;
  @override
  @JsonKey()
  final int recipeId;
//
  @override
  @JsonKey()
  final RecipeDetail recipeDetail;
//
  final List<Review> _userReviewList;
//
  @override
  @JsonKey()
  List<Review> get userReviewList {
    if (_userReviewList is EqualUnmodifiableListView) return _userReviewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userReviewList);
  }

  @override
  @JsonKey()
  final int userReviewPage;
//
  @override
  @JsonKey()
  final PersonalReview personalReview;
//
  @override
  @JsonKey()
  final GetRecipeDetailStatus getRecipeDetailStatus;
  @override
  @JsonKey()
  final GetUserReviewStatus getUserReviewStatus;
  @override
  @JsonKey()
  final GetPersonalReviewStatus getPersonalReviewStatus;

  @override
  String toString() {
    return 'RecipeDetailState(code: $code, mess: $mess, currentTab: $currentTab, recipeId: $recipeId, recipeDetail: $recipeDetail, userReviewList: $userReviewList, userReviewPage: $userReviewPage, personalReview: $personalReview, getRecipeDetailStatus: $getRecipeDetailStatus, getUserReviewStatus: $getUserReviewStatus, getPersonalReviewStatus: $getPersonalReviewStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.recipeDetail, recipeDetail) ||
                other.recipeDetail == recipeDetail) &&
            const DeepCollectionEquality()
                .equals(other._userReviewList, _userReviewList) &&
            (identical(other.userReviewPage, userReviewPage) ||
                other.userReviewPage == userReviewPage) &&
            (identical(other.personalReview, personalReview) ||
                other.personalReview == personalReview) &&
            (identical(other.getRecipeDetailStatus, getRecipeDetailStatus) ||
                other.getRecipeDetailStatus == getRecipeDetailStatus) &&
            (identical(other.getUserReviewStatus, getUserReviewStatus) ||
                other.getUserReviewStatus == getUserReviewStatus) &&
            (identical(
                    other.getPersonalReviewStatus, getPersonalReviewStatus) ||
                other.getPersonalReviewStatus == getPersonalReviewStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      mess,
      currentTab,
      recipeId,
      recipeDetail,
      const DeepCollectionEquality().hash(_userReviewList),
      userReviewPage,
      personalReview,
      getRecipeDetailStatus,
      getUserReviewStatus,
      getPersonalReviewStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailStateImplCopyWith<_$RecipeDetailStateImpl> get copyWith =>
      __$$RecipeDetailStateImplCopyWithImpl<_$RecipeDetailStateImpl>(
          this, _$identity);
}

abstract class _RecipeDetailState implements RecipeDetailState {
  const factory _RecipeDetailState(
          {final int code,
          final String mess,
          final int currentTab,
          final int recipeId,
          final RecipeDetail recipeDetail,
          final List<Review> userReviewList,
          final int userReviewPage,
          final PersonalReview personalReview,
          final GetRecipeDetailStatus getRecipeDetailStatus,
          final GetUserReviewStatus getUserReviewStatus,
          final GetPersonalReviewStatus getPersonalReviewStatus}) =
      _$RecipeDetailStateImpl;

  @override
  int get code;
  @override
  String get mess;
  @override
  int get currentTab;
  @override
  int get recipeId;
  @override //
  RecipeDetail get recipeDetail;
  @override //
  List<Review> get userReviewList;
  @override
  int get userReviewPage;
  @override //
  PersonalReview get personalReview;
  @override //
  GetRecipeDetailStatus get getRecipeDetailStatus;
  @override
  GetUserReviewStatus get getUserReviewStatus;
  @override
  GetPersonalReviewStatus get getPersonalReviewStatus;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailStateImplCopyWith<_$RecipeDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
