// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileState {
  int get code => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  UserRecipeNumFollowerFollowing get userData =>
      throw _privateConstructorUsedError; //follower, following, recipe number of user
//
  List<RecipeBasic> get userRecipeList => throw _privateConstructorUsedError;
  List<Review> get userReviewList => throw _privateConstructorUsedError; //
  int get userRecipePage => throw _privateConstructorUsedError;
  int get userReviewPage => throw _privateConstructorUsedError;
  int get currentTab => throw _privateConstructorUsedError; //
  User get userInfo => throw _privateConstructorUsedError;
  bool get isFollowedByCurrentuser => throw _privateConstructorUsedError; //
  GetUserRecipeStatus get getUserRecipeStatus =>
      throw _privateConstructorUsedError;
  GetUserReviewStatus get getUserReviewStatus =>
      throw _privateConstructorUsedError;
  CheckUserFollowStatus get checkUserFollowStatus =>
      throw _privateConstructorUsedError;
  GetUSerInfoStatus get getUSerInfoStatus => throw _privateConstructorUsedError;
  GetUserFollowerFollowingStatus get getUserFollowerFollowingStatus =>
      throw _privateConstructorUsedError;
  FollowUserStatus get followUserStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
  @useResult
  $Res call(
      {int code,
      String mess,
      int userId,
      UserRecipeNumFollowerFollowing userData,
      List<RecipeBasic> userRecipeList,
      List<Review> userReviewList,
      int userRecipePage,
      int userReviewPage,
      int currentTab,
      User userInfo,
      bool isFollowedByCurrentuser,
      GetUserRecipeStatus getUserRecipeStatus,
      GetUserReviewStatus getUserReviewStatus,
      CheckUserFollowStatus checkUserFollowStatus,
      GetUSerInfoStatus getUSerInfoStatus,
      GetUserFollowerFollowingStatus getUserFollowerFollowingStatus,
      FollowUserStatus followUserStatus});

  $UserRecipeNumFollowerFollowingCopyWith<$Res> get userData;
  $UserCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? userId = null,
    Object? userData = null,
    Object? userRecipeList = null,
    Object? userReviewList = null,
    Object? userRecipePage = null,
    Object? userReviewPage = null,
    Object? currentTab = null,
    Object? userInfo = null,
    Object? isFollowedByCurrentuser = null,
    Object? getUserRecipeStatus = null,
    Object? getUserReviewStatus = null,
    Object? checkUserFollowStatus = null,
    Object? getUSerInfoStatus = null,
    Object? getUserFollowerFollowingStatus = null,
    Object? followUserStatus = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
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
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as User,
      isFollowedByCurrentuser: null == isFollowedByCurrentuser
          ? _value.isFollowedByCurrentuser
          : isFollowedByCurrentuser // ignore: cast_nullable_to_non_nullable
              as bool,
      getUserRecipeStatus: null == getUserRecipeStatus
          ? _value.getUserRecipeStatus
          : getUserRecipeStatus // ignore: cast_nullable_to_non_nullable
              as GetUserRecipeStatus,
      getUserReviewStatus: null == getUserReviewStatus
          ? _value.getUserReviewStatus
          : getUserReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetUserReviewStatus,
      checkUserFollowStatus: null == checkUserFollowStatus
          ? _value.checkUserFollowStatus
          : checkUserFollowStatus // ignore: cast_nullable_to_non_nullable
              as CheckUserFollowStatus,
      getUSerInfoStatus: null == getUSerInfoStatus
          ? _value.getUSerInfoStatus
          : getUSerInfoStatus // ignore: cast_nullable_to_non_nullable
              as GetUSerInfoStatus,
      getUserFollowerFollowingStatus: null == getUserFollowerFollowingStatus
          ? _value.getUserFollowerFollowingStatus
          : getUserFollowerFollowingStatus // ignore: cast_nullable_to_non_nullable
              as GetUserFollowerFollowingStatus,
      followUserStatus: null == followUserStatus
          ? _value.followUserStatus
          : followUserStatus // ignore: cast_nullable_to_non_nullable
              as FollowUserStatus,
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

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userInfo {
    return $UserCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileStateImplCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$$UserProfileStateImplCopyWith(_$UserProfileStateImpl value,
          $Res Function(_$UserProfileStateImpl) then) =
      __$$UserProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String mess,
      int userId,
      UserRecipeNumFollowerFollowing userData,
      List<RecipeBasic> userRecipeList,
      List<Review> userReviewList,
      int userRecipePage,
      int userReviewPage,
      int currentTab,
      User userInfo,
      bool isFollowedByCurrentuser,
      GetUserRecipeStatus getUserRecipeStatus,
      GetUserReviewStatus getUserReviewStatus,
      CheckUserFollowStatus checkUserFollowStatus,
      GetUSerInfoStatus getUSerInfoStatus,
      GetUserFollowerFollowingStatus getUserFollowerFollowingStatus,
      FollowUserStatus followUserStatus});

  @override
  $UserRecipeNumFollowerFollowingCopyWith<$Res> get userData;
  @override
  $UserCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$UserProfileStateImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileStateImpl>
    implements _$$UserProfileStateImplCopyWith<$Res> {
  __$$UserProfileStateImplCopyWithImpl(_$UserProfileStateImpl _value,
      $Res Function(_$UserProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? mess = null,
    Object? userId = null,
    Object? userData = null,
    Object? userRecipeList = null,
    Object? userReviewList = null,
    Object? userRecipePage = null,
    Object? userReviewPage = null,
    Object? currentTab = null,
    Object? userInfo = null,
    Object? isFollowedByCurrentuser = null,
    Object? getUserRecipeStatus = null,
    Object? getUserReviewStatus = null,
    Object? checkUserFollowStatus = null,
    Object? getUSerInfoStatus = null,
    Object? getUserFollowerFollowingStatus = null,
    Object? followUserStatus = null,
  }) {
    return _then(_$UserProfileStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      mess: null == mess
          ? _value.mess
          : mess // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
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
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as User,
      isFollowedByCurrentuser: null == isFollowedByCurrentuser
          ? _value.isFollowedByCurrentuser
          : isFollowedByCurrentuser // ignore: cast_nullable_to_non_nullable
              as bool,
      getUserRecipeStatus: null == getUserRecipeStatus
          ? _value.getUserRecipeStatus
          : getUserRecipeStatus // ignore: cast_nullable_to_non_nullable
              as GetUserRecipeStatus,
      getUserReviewStatus: null == getUserReviewStatus
          ? _value.getUserReviewStatus
          : getUserReviewStatus // ignore: cast_nullable_to_non_nullable
              as GetUserReviewStatus,
      checkUserFollowStatus: null == checkUserFollowStatus
          ? _value.checkUserFollowStatus
          : checkUserFollowStatus // ignore: cast_nullable_to_non_nullable
              as CheckUserFollowStatus,
      getUSerInfoStatus: null == getUSerInfoStatus
          ? _value.getUSerInfoStatus
          : getUSerInfoStatus // ignore: cast_nullable_to_non_nullable
              as GetUSerInfoStatus,
      getUserFollowerFollowingStatus: null == getUserFollowerFollowingStatus
          ? _value.getUserFollowerFollowingStatus
          : getUserFollowerFollowingStatus // ignore: cast_nullable_to_non_nullable
              as GetUserFollowerFollowingStatus,
      followUserStatus: null == followUserStatus
          ? _value.followUserStatus
          : followUserStatus // ignore: cast_nullable_to_non_nullable
              as FollowUserStatus,
    ));
  }
}

/// @nodoc

class _$UserProfileStateImpl implements _UserProfileState {
  const _$UserProfileStateImpl(
      {this.code = 200,
      this.mess = '',
      this.userId = 0,
      this.userData = const UserRecipeNumFollowerFollowing(),
      final List<RecipeBasic> userRecipeList = const [],
      final List<Review> userReviewList = const [],
      this.userRecipePage = 0,
      this.userReviewPage = 0,
      this.currentTab = 0,
      this.userInfo = const User(),
      this.isFollowedByCurrentuser = false,
      this.getUserRecipeStatus = GetUserRecipeStatus.initial,
      this.getUserReviewStatus = GetUserReviewStatus.initial,
      this.checkUserFollowStatus = CheckUserFollowStatus.initial,
      this.getUSerInfoStatus = GetUSerInfoStatus.initial,
      this.getUserFollowerFollowingStatus =
          GetUserFollowerFollowingStatus.initial,
      this.followUserStatus = FollowUserStatus.initial})
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
  final int userId;
  @override
  @JsonKey()
  final UserRecipeNumFollowerFollowing userData;
//follower, following, recipe number of user
//
  final List<RecipeBasic> _userRecipeList;
//follower, following, recipe number of user
//
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

//
  @override
  @JsonKey()
  final int userRecipePage;
  @override
  @JsonKey()
  final int userReviewPage;
  @override
  @JsonKey()
  final int currentTab;
//
  @override
  @JsonKey()
  final User userInfo;
  @override
  @JsonKey()
  final bool isFollowedByCurrentuser;
//
  @override
  @JsonKey()
  final GetUserRecipeStatus getUserRecipeStatus;
  @override
  @JsonKey()
  final GetUserReviewStatus getUserReviewStatus;
  @override
  @JsonKey()
  final CheckUserFollowStatus checkUserFollowStatus;
  @override
  @JsonKey()
  final GetUSerInfoStatus getUSerInfoStatus;
  @override
  @JsonKey()
  final GetUserFollowerFollowingStatus getUserFollowerFollowingStatus;
  @override
  @JsonKey()
  final FollowUserStatus followUserStatus;

  @override
  String toString() {
    return 'UserProfileState(code: $code, mess: $mess, userId: $userId, userData: $userData, userRecipeList: $userRecipeList, userReviewList: $userReviewList, userRecipePage: $userRecipePage, userReviewPage: $userReviewPage, currentTab: $currentTab, userInfo: $userInfo, isFollowedByCurrentuser: $isFollowedByCurrentuser, getUserRecipeStatus: $getUserRecipeStatus, getUserReviewStatus: $getUserReviewStatus, checkUserFollowStatus: $checkUserFollowStatus, getUSerInfoStatus: $getUSerInfoStatus, getUserFollowerFollowingStatus: $getUserFollowerFollowingStatus, followUserStatus: $followUserStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(
                    other.isFollowedByCurrentuser, isFollowedByCurrentuser) ||
                other.isFollowedByCurrentuser == isFollowedByCurrentuser) &&
            (identical(other.getUserRecipeStatus, getUserRecipeStatus) ||
                other.getUserRecipeStatus == getUserRecipeStatus) &&
            (identical(other.getUserReviewStatus, getUserReviewStatus) ||
                other.getUserReviewStatus == getUserReviewStatus) &&
            (identical(other.checkUserFollowStatus, checkUserFollowStatus) ||
                other.checkUserFollowStatus == checkUserFollowStatus) &&
            (identical(other.getUSerInfoStatus, getUSerInfoStatus) ||
                other.getUSerInfoStatus == getUSerInfoStatus) &&
            (identical(other.getUserFollowerFollowingStatus,
                    getUserFollowerFollowingStatus) ||
                other.getUserFollowerFollowingStatus ==
                    getUserFollowerFollowingStatus) &&
            (identical(other.followUserStatus, followUserStatus) ||
                other.followUserStatus == followUserStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      mess,
      userId,
      userData,
      const DeepCollectionEquality().hash(_userRecipeList),
      const DeepCollectionEquality().hash(_userReviewList),
      userRecipePage,
      userReviewPage,
      currentTab,
      userInfo,
      isFollowedByCurrentuser,
      getUserRecipeStatus,
      getUserReviewStatus,
      checkUserFollowStatus,
      getUSerInfoStatus,
      getUserFollowerFollowingStatus,
      followUserStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      __$$UserProfileStateImplCopyWithImpl<_$UserProfileStateImpl>(
          this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  const factory _UserProfileState(
      {final int code,
      final String mess,
      final int userId,
      final UserRecipeNumFollowerFollowing userData,
      final List<RecipeBasic> userRecipeList,
      final List<Review> userReviewList,
      final int userRecipePage,
      final int userReviewPage,
      final int currentTab,
      final User userInfo,
      final bool isFollowedByCurrentuser,
      final GetUserRecipeStatus getUserRecipeStatus,
      final GetUserReviewStatus getUserReviewStatus,
      final CheckUserFollowStatus checkUserFollowStatus,
      final GetUSerInfoStatus getUSerInfoStatus,
      final GetUserFollowerFollowingStatus getUserFollowerFollowingStatus,
      final FollowUserStatus followUserStatus}) = _$UserProfileStateImpl;

  @override
  int get code;
  @override
  String get mess;
  @override
  int get userId;
  @override
  UserRecipeNumFollowerFollowing get userData;
  @override //follower, following, recipe number of user
//
  List<RecipeBasic> get userRecipeList;
  @override
  List<Review> get userReviewList;
  @override //
  int get userRecipePage;
  @override
  int get userReviewPage;
  @override
  int get currentTab;
  @override //
  User get userInfo;
  @override
  bool get isFollowedByCurrentuser;
  @override //
  GetUserRecipeStatus get getUserRecipeStatus;
  @override
  GetUserReviewStatus get getUserReviewStatus;
  @override
  CheckUserFollowStatus get checkUserFollowStatus;
  @override
  GetUSerInfoStatus get getUSerInfoStatus;
  @override
  GetUserFollowerFollowingStatus get getUserFollowerFollowingStatus;
  @override
  FollowUserStatus get followUserStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
