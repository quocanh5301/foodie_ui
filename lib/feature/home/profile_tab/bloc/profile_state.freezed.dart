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
  UserRecipeNumFollowerFollowing get userData =>
      throw _privateConstructorUsedError; //follower, following, recipe number of user
  List<RecipeBasic> get userRecipeList => throw _privateConstructorUsedError;
  List<Review> get userReviewList => throw _privateConstructorUsedError;
  int get userRecipePage => throw _privateConstructorUsedError;
  int get userReviewPage => throw _privateConstructorUsedError;
  int get currentTab => throw _privateConstructorUsedError;
  GetUSerInfoStatus get getUSerInfoStatus => throw _privateConstructorUsedError;
  GetUserRecipeStatus get getUserRecipeStatus =>
      throw _privateConstructorUsedError;
  GetUserReviewStatus get getUserReviewStatus =>
      throw _privateConstructorUsedError;
  GetUserFollowerFollowingStatus get getUserFollowerFollowingStatus =>
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
      UserRecipeNumFollowerFollowing userData,
      List<RecipeBasic> userRecipeList,
      List<Review> userReviewList,
      int userRecipePage,
      int userReviewPage,
      int currentTab,
      GetUSerInfoStatus getUSerInfoStatus,
      GetUserRecipeStatus getUserRecipeStatus,
      GetUserReviewStatus getUserReviewStatus,
      GetUserFollowerFollowingStatus getUserFollowerFollowingStatus});

  $UserRecipeNumFollowerFollowingCopyWith<$Res> get userData;
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
    Object? userData = null,
    Object? userRecipeList = null,
    Object? userReviewList = null,
    Object? userRecipePage = null,
    Object? userReviewPage = null,
    Object? currentTab = null,
    Object? getUSerInfoStatus = null,
    Object? getUserRecipeStatus = null,
    Object? getUserReviewStatus = null,
    Object? getUserFollowerFollowingStatus = null,
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
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserRecipeNumFollowerFollowing,
      userRecipeList: null == userRecipeList
          ? _value.userRecipeList
          : userRecipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>,
      userReviewList: null == userReviewList
          ? _value.userReviewList
          : userReviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      userRecipePage: null == userRecipePage
          ? _value.userRecipePage
          : userRecipePage // ignore: cast_nullable_to_non_nullable
              as int,
      userReviewPage: null == userReviewPage
          ? _value.userReviewPage
          : userReviewPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      getUSerInfoStatus: null == getUSerInfoStatus
          ? _value.getUSerInfoStatus
          : getUSerInfoStatus // ignore: cast_nullable_to_non_nullable
              as GetUSerInfoStatus,
      getUserRecipeStatus: null == getUserRecipeStatus
          ? _value.getUserRecipeStatus
          : getUserRecipeStatus // ignore: cast_nullable_to_non_nullable
              as GetUserRecipeStatus,
      getUserReviewStatus: null == getUserReviewStatus
          ? _value.getUserReviewStatus
          : getUserReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetUserReviewStatus,
      getUserFollowerFollowingStatus: null == getUserFollowerFollowingStatus
          ? _value.getUserFollowerFollowingStatus
          : getUserFollowerFollowingStatus // ignore: cast_nullable_to_non_nullable
              as GetUserFollowerFollowingStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRecipeNumFollowerFollowingCopyWith<$Res> get userData {
    return $UserRecipeNumFollowerFollowingCopyWith<$Res>(_value.userData,
        (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
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
      UserRecipeNumFollowerFollowing userData,
      List<RecipeBasic> userRecipeList,
      List<Review> userReviewList,
      int userRecipePage,
      int userReviewPage,
      int currentTab,
      GetUSerInfoStatus getUSerInfoStatus,
      GetUserRecipeStatus getUserRecipeStatus,
      GetUserReviewStatus getUserReviewStatus,
      GetUserFollowerFollowingStatus getUserFollowerFollowingStatus});

  @override
  $UserRecipeNumFollowerFollowingCopyWith<$Res> get userData;
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
    Object? userData = null,
    Object? userRecipeList = null,
    Object? userReviewList = null,
    Object? userRecipePage = null,
    Object? userReviewPage = null,
    Object? currentTab = null,
    Object? getUSerInfoStatus = null,
    Object? getUserRecipeStatus = null,
    Object? getUserReviewStatus = null,
    Object? getUserFollowerFollowingStatus = null,
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
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserRecipeNumFollowerFollowing,
      userRecipeList: null == userRecipeList
          ? _value._userRecipeList
          : userRecipeList // ignore: cast_nullable_to_non_nullable
              as List<RecipeBasic>,
      userReviewList: null == userReviewList
          ? _value._userReviewList
          : userReviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      userRecipePage: null == userRecipePage
          ? _value.userRecipePage
          : userRecipePage // ignore: cast_nullable_to_non_nullable
              as int,
      userReviewPage: null == userReviewPage
          ? _value.userReviewPage
          : userReviewPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      getUSerInfoStatus: null == getUSerInfoStatus
          ? _value.getUSerInfoStatus
          : getUSerInfoStatus // ignore: cast_nullable_to_non_nullable
              as GetUSerInfoStatus,
      getUserRecipeStatus: null == getUserRecipeStatus
          ? _value.getUserRecipeStatus
          : getUserRecipeStatus // ignore: cast_nullable_to_non_nullable
              as GetUserRecipeStatus,
      getUserReviewStatus: null == getUserReviewStatus
          ? _value.getUserReviewStatus
          : getUserReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetUserReviewStatus,
      getUserFollowerFollowingStatus: null == getUserFollowerFollowingStatus
          ? _value.getUserFollowerFollowingStatus
          : getUserFollowerFollowingStatus // ignore: cast_nullable_to_non_nullable
              as GetUserFollowerFollowingStatus,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.code = 200,
      this.mess = '',
      this.userData = const UserRecipeNumFollowerFollowing(),
      final List<RecipeBasic> userRecipeList = const [],
      final List<Review> userReviewList = const [],
      this.userRecipePage = 0,
      this.userReviewPage = 0,
      this.currentTab = 0,
      this.getUSerInfoStatus = GetUSerInfoStatus.initial,
      this.getUserRecipeStatus = GetUserRecipeStatus.initial,
      this.getUserReviewStatus = GetUserReviewStatus.initial,
      this.getUserFollowerFollowingStatus =
          GetUserFollowerFollowingStatus.initial})
      : _userRecipeList = userRecipeList,
        _userReviewList = userReviewList;

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final UserRecipeNumFollowerFollowing userData;
//follower, following, recipe number of user
  final List<RecipeBasic> _userRecipeList;
//follower, following, recipe number of user
  @override
  @JsonKey()
  List<RecipeBasic> get userRecipeList {
    if (_userRecipeList is EqualUnmodifiableListView) return _userRecipeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userRecipeList);
  }

  final List<Review> _userReviewList;
  @override
  @JsonKey()
  List<Review> get userReviewList {
    if (_userReviewList is EqualUnmodifiableListView) return _userReviewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userReviewList);
  }

  @override
  @JsonKey()
  final int userRecipePage;
  @override
  @JsonKey()
  final int userReviewPage;
  @override
  @JsonKey()
  final int currentTab;
  @override
  @JsonKey()
  final GetUSerInfoStatus getUSerInfoStatus;
  @override
  @JsonKey()
  final GetUserRecipeStatus getUserRecipeStatus;
  @override
  @JsonKey()
  final GetUserReviewStatus getUserReviewStatus;
  @override
  @JsonKey()
  final GetUserFollowerFollowingStatus getUserFollowerFollowingStatus;

  @override
  String toString() {
    return 'ProfileState(code: $code, mess: $mess, userData: $userData, userRecipeList: $userRecipeList, userReviewList: $userReviewList, userRecipePage: $userRecipePage, userReviewPage: $userReviewPage, currentTab: $currentTab, getUSerInfoStatus: $getUSerInfoStatus, getUserRecipeStatus: $getUserRecipeStatus, getUserReviewStatus: $getUserReviewStatus, getUserFollowerFollowingStatus: $getUserFollowerFollowingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            const DeepCollectionEquality()
                .equals(other._userRecipeList, _userRecipeList) &&
            const DeepCollectionEquality()
                .equals(other._userReviewList, _userReviewList) &&
            (identical(other.userRecipePage, userRecipePage) ||
                other.userRecipePage == userRecipePage) &&
            (identical(other.userReviewPage, userReviewPage) ||
                other.userReviewPage == userReviewPage) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.getUSerInfoStatus, getUSerInfoStatus) ||
                other.getUSerInfoStatus == getUSerInfoStatus) &&
            (identical(other.getUserRecipeStatus, getUserRecipeStatus) ||
                other.getUserRecipeStatus == getUserRecipeStatus) &&
            (identical(other.getUserReviewStatus, getUserReviewStatus) ||
                other.getUserReviewStatus == getUserReviewStatus) &&
            (identical(other.getUserFollowerFollowingStatus,
                    getUserFollowerFollowingStatus) ||
                other.getUserFollowerFollowingStatus ==
                    getUserFollowerFollowingStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      mess,
      userData,
      const DeepCollectionEquality().hash(_userRecipeList),
      const DeepCollectionEquality().hash(_userReviewList),
      userRecipePage,
      userReviewPage,
      currentTab,
      getUSerInfoStatus,
      getUserRecipeStatus,
      getUserReviewStatus,
      getUserFollowerFollowingStatus);

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
      final UserRecipeNumFollowerFollowing userData,
      final List<RecipeBasic> userRecipeList,
      final List<Review> userReviewList,
      final int userRecipePage,
      final int userReviewPage,
      final int currentTab,
      final GetUSerInfoStatus getUSerInfoStatus,
      final GetUserRecipeStatus getUserRecipeStatus,
      final GetUserReviewStatus getUserReviewStatus,
      final GetUserFollowerFollowingStatus
          getUserFollowerFollowingStatus}) = _$ProfileStateImpl;

  @override
  int get code;
  @override
  String get mess;
  @override
  UserRecipeNumFollowerFollowing get userData;
  @override //follower, following, recipe number of user
  List<RecipeBasic> get userRecipeList;
  @override
  List<Review> get userReviewList;
  @override
  int get userRecipePage;
  @override
  int get userReviewPage;
  @override
  int get currentTab;
  @override
  GetUSerInfoStatus get getUSerInfoStatus;
  @override
  GetUserRecipeStatus get getUserRecipeStatus;
  @override
  GetUserReviewStatus get getUserReviewStatus;
  @override
  GetUserFollowerFollowingStatus get getUserFollowerFollowingStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
