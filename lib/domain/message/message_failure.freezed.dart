// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageFailureTearOff {
  const _$MessageFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _FileTooLarge fileTooLarge() {
    return const _FileTooLarge();
  }

  _BadRequest badRequest(String message) {
    return _BadRequest(
      message,
    );
  }
}

/// @nodoc
const $MessageFailure = _$MessageFailureTearOff();

/// @nodoc
mixin _$MessageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() fileTooLarge,
    required TResult Function(String message) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_FileTooLarge value) fileTooLarge,
    required TResult Function(_BadRequest value) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageFailureCopyWith<$Res> {
  factory $MessageFailureCopyWith(
          MessageFailure value, $Res Function(MessageFailure) then) =
      _$MessageFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageFailureCopyWithImpl<$Res>
    implements $MessageFailureCopyWith<$Res> {
  _$MessageFailureCopyWithImpl(this._value, this._then);

  final MessageFailure _value;
  // ignore: unused_field
  final $Res Function(MessageFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$MessageFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'MessageFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() fileTooLarge,
    required TResult Function(String message) badRequest,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_FileTooLarge value) fileTooLarge,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements MessageFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$FileTooLargeCopyWith<$Res> {
  factory _$FileTooLargeCopyWith(
          _FileTooLarge value, $Res Function(_FileTooLarge) then) =
      __$FileTooLargeCopyWithImpl<$Res>;
}

/// @nodoc
class __$FileTooLargeCopyWithImpl<$Res>
    extends _$MessageFailureCopyWithImpl<$Res>
    implements _$FileTooLargeCopyWith<$Res> {
  __$FileTooLargeCopyWithImpl(
      _FileTooLarge _value, $Res Function(_FileTooLarge) _then)
      : super(_value, (v) => _then(v as _FileTooLarge));

  @override
  _FileTooLarge get _value => super._value as _FileTooLarge;
}

/// @nodoc

class _$_FileTooLarge implements _FileTooLarge {
  const _$_FileTooLarge();

  @override
  String toString() {
    return 'MessageFailure.fileTooLarge()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FileTooLarge);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() fileTooLarge,
    required TResult Function(String message) badRequest,
  }) {
    return fileTooLarge();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
  }) {
    return fileTooLarge?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (fileTooLarge != null) {
      return fileTooLarge();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_FileTooLarge value) fileTooLarge,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return fileTooLarge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return fileTooLarge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (fileTooLarge != null) {
      return fileTooLarge(this);
    }
    return orElse();
  }
}

abstract class _FileTooLarge implements MessageFailure {
  const factory _FileTooLarge() = _$_FileTooLarge;
}

/// @nodoc
abstract class _$BadRequestCopyWith<$Res> {
  factory _$BadRequestCopyWith(
          _BadRequest value, $Res Function(_BadRequest) then) =
      __$BadRequestCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$BadRequestCopyWithImpl<$Res> extends _$MessageFailureCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(
      _BadRequest _value, $Res Function(_BadRequest) _then)
      : super(_value, (v) => _then(v as _BadRequest));

  @override
  _BadRequest get _value => super._value as _BadRequest;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_BadRequest(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MessageFailure.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadRequest &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BadRequestCopyWith<_BadRequest> get copyWith =>
      __$BadRequestCopyWithImpl<_BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() fileTooLarge,
    required TResult Function(String message) badRequest,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? fileTooLarge,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_FileTooLarge value) fileTooLarge,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_FileTooLarge value)? fileTooLarge,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements MessageFailure {
  const factory _BadRequest(String message) = _$_BadRequest;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BadRequestCopyWith<_BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
