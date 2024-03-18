// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_basic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserBasic _$UserBasicFromJson(Map<String, dynamic> json) {
  return _UserBasic.fromJson(json);
}

/// @nodoc
mixin _$UserBasic {
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBasicCopyWith<UserBasic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBasicCopyWith<$Res> {
  factory $UserBasicCopyWith(UserBasic value, $Res Function(UserBasic) then) =
      _$UserBasicCopyWithImpl<$Res, UserBasic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_image') String? userImage});
}

/// @nodoc
class _$UserBasicCopyWithImpl<$Res, $Val extends UserBasic>
    implements $UserBasicCopyWith<$Res> {
  _$UserBasicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userImage = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBasicImplCopyWith<$Res>
    implements $UserBasicCopyWith<$Res> {
  factory _$$UserBasicImplCopyWith(
          _$UserBasicImpl value, $Res Function(_$UserBasicImpl) then) =
      __$$UserBasicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_image') String? userImage});
}

/// @nodoc
class __$$UserBasicImplCopyWithImpl<$Res>
    extends _$UserBasicCopyWithImpl<$Res, _$UserBasicImpl>
    implements _$$UserBasicImplCopyWith<$Res> {
  __$$UserBasicImplCopyWithImpl(
      _$UserBasicImpl _value, $Res Function(_$UserBasicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userImage = freezed,
  }) {
    return _then(_$UserBasicImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBasicImpl implements _UserBasic {
  const _$UserBasicImpl(
      {@JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_image') this.userImage});

  factory _$UserBasicImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBasicImplFromJson(json);

  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_image')
  final String? userImage;

  @override
  String toString() {
    return 'UserBasic(userName: $userName, userImage: $userImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBasicImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, userImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBasicImplCopyWith<_$UserBasicImpl> get copyWith =>
      __$$UserBasicImplCopyWithImpl<_$UserBasicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBasicImplToJson(
      this,
    );
  }
}

abstract class _UserBasic implements UserBasic {
  const factory _UserBasic(
      {@JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'user_image') final String? userImage}) = _$UserBasicImpl;

  factory _UserBasic.fromJson(Map<String, dynamic> json) =
      _$UserBasicImpl.fromJson;

  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_image')
  String? get userImage;
  @override
  @JsonKey(ignore: true)
  _$$UserBasicImplCopyWith<_$UserBasicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
