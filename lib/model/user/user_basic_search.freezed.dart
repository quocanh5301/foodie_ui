// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_basic_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserBasicSearch _$UserBasicSearchFromJson(Map<String, dynamic> json) {
  return _UserBasicSearch.fromJson(json);
}

/// @nodoc
mixin _$UserBasicSearch {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String? get userEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBasicSearchCopyWith<UserBasicSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBasicSearchCopyWith<$Res> {
  factory $UserBasicSearchCopyWith(
          UserBasicSearch value, $Res Function(UserBasicSearch) then) =
      _$UserBasicSearchCopyWithImpl<$Res, UserBasicSearch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'user_email') String? userEmail});
}

/// @nodoc
class _$UserBasicSearchCopyWithImpl<$Res, $Val extends UserBasicSearch>
    implements $UserBasicSearchCopyWith<$Res> {
  _$UserBasicSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userImage = freezed,
    Object? userEmail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBasicSearchImplCopyWith<$Res>
    implements $UserBasicSearchCopyWith<$Res> {
  factory _$$UserBasicSearchImplCopyWith(_$UserBasicSearchImpl value,
          $Res Function(_$UserBasicSearchImpl) then) =
      __$$UserBasicSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'user_email') String? userEmail});
}

/// @nodoc
class __$$UserBasicSearchImplCopyWithImpl<$Res>
    extends _$UserBasicSearchCopyWithImpl<$Res, _$UserBasicSearchImpl>
    implements _$$UserBasicSearchImplCopyWith<$Res> {
  __$$UserBasicSearchImplCopyWithImpl(
      _$UserBasicSearchImpl _value, $Res Function(_$UserBasicSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? userImage = freezed,
    Object? userEmail = freezed,
  }) {
    return _then(_$UserBasicSearchImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBasicSearchImpl implements _UserBasicSearch {
  const _$UserBasicSearchImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_image') this.userImage,
      @JsonKey(name: 'user_email') this.userEmail});

  factory _$UserBasicSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBasicSearchImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_image')
  final String? userImage;
  @override
  @JsonKey(name: 'user_email')
  final String? userEmail;

  @override
  String toString() {
    return 'UserBasicSearch(id: $id, userName: $userName, userImage: $userImage, userEmail: $userEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBasicSearchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userName, userImage, userEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBasicSearchImplCopyWith<_$UserBasicSearchImpl> get copyWith =>
      __$$UserBasicSearchImplCopyWithImpl<_$UserBasicSearchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBasicSearchImplToJson(
      this,
    );
  }
}

abstract class _UserBasicSearch implements UserBasicSearch {
  const factory _UserBasicSearch(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'user_name') final String? userName,
          @JsonKey(name: 'user_image') final String? userImage,
          @JsonKey(name: 'user_email') final String? userEmail}) =
      _$UserBasicSearchImpl;

  factory _UserBasicSearch.fromJson(Map<String, dynamic> json) =
      _$UserBasicSearchImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_image')
  String? get userImage;
  @override
  @JsonKey(name: 'user_email')
  String? get userEmail;
  @override
  @JsonKey(ignore: true)
  _$$UserBasicSearchImplCopyWith<_$UserBasicSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
