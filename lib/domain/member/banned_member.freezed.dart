// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banned_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannedMemberTearOff {
  const _$BannedMemberTearOff();

  _BannedMember call(
      {required String id, required String username, required String image}) {
    return _BannedMember(
      id: id,
      username: username,
      image: image,
    );
  }
}

/// @nodoc
const $BannedMember = _$BannedMemberTearOff();

/// @nodoc
mixin _$BannedMember {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannedMemberCopyWith<BannedMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannedMemberCopyWith<$Res> {
  factory $BannedMemberCopyWith(
          BannedMember value, $Res Function(BannedMember) then) =
      _$BannedMemberCopyWithImpl<$Res>;
  $Res call({String id, String username, String image});
}

/// @nodoc
class _$BannedMemberCopyWithImpl<$Res> implements $BannedMemberCopyWith<$Res> {
  _$BannedMemberCopyWithImpl(this._value, this._then);

  final BannedMember _value;
  // ignore: unused_field
  final $Res Function(BannedMember) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BannedMemberCopyWith<$Res>
    implements $BannedMemberCopyWith<$Res> {
  factory _$BannedMemberCopyWith(
          _BannedMember value, $Res Function(_BannedMember) then) =
      __$BannedMemberCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String image});
}

/// @nodoc
class __$BannedMemberCopyWithImpl<$Res> extends _$BannedMemberCopyWithImpl<$Res>
    implements _$BannedMemberCopyWith<$Res> {
  __$BannedMemberCopyWithImpl(
      _BannedMember _value, $Res Function(_BannedMember) _then)
      : super(_value, (v) => _then(v as _BannedMember));

  @override
  _BannedMember get _value => super._value as _BannedMember;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
  }) {
    return _then(_BannedMember(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BannedMember extends _BannedMember {
  const _$_BannedMember(
      {required this.id, required this.username, required this.image})
      : super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String image;

  @override
  String toString() {
    return 'BannedMember(id: $id, username: $username, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannedMember &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$BannedMemberCopyWith<_BannedMember> get copyWith =>
      __$BannedMemberCopyWithImpl<_BannedMember>(this, _$identity);
}

abstract class _BannedMember extends BannedMember {
  const factory _BannedMember(
      {required String id,
      required String username,
      required String image}) = _$_BannedMember;
  const _BannedMember._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannedMemberCopyWith<_BannedMember> get copyWith =>
      throw _privateConstructorUsedError;
}
