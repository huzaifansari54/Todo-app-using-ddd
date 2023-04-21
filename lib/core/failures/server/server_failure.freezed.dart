// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailuresCopyWith<$Res> {
  factory $FailuresCopyWith(Failures value, $Res Function(Failures) then) =
      _$FailuresCopyWithImpl<$Res, Failures>;
}

/// @nodoc
class _$FailuresCopyWithImpl<$Res, $Val extends Failures>
    implements $FailuresCopyWith<$Res> {
  _$FailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerCopyWith<$Res> {
  factory _$$_ServerCopyWith(_$_Server value, $Res Function(_$_Server) then) =
      __$$_ServerCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ServerCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_Server>
    implements _$$_ServerCopyWith<$Res> {
  __$$_ServerCopyWithImpl(_$_Server _value, $Res Function(_$_Server) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Server(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Server implements _Server {
  const _$_Server({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'Failures.server(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Server &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      __$$_ServerCopyWithImpl<_$_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return server(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return server?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements Failures {
  const factory _Server({required final String error}) = _$_Server;

  String get error;
  @JsonKey(ignore: true)
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeOutCopyWith<$Res> {
  factory _$$_TimeOutCopyWith(
          _$_TimeOut value, $Res Function(_$_TimeOut) then) =
      __$$_TimeOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimeOutCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_TimeOut>
    implements _$$_TimeOutCopyWith<$Res> {
  __$$_TimeOutCopyWithImpl(_$_TimeOut _value, $Res Function(_$_TimeOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TimeOut implements _TimeOut {
  const _$_TimeOut();

  @override
  String toString() {
    return 'Failures.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements Failures {
  const factory _TimeOut() = _$_TimeOut;
}

/// @nodoc
abstract class _$$_InternetConnectionOutCopyWith<$Res> {
  factory _$$_InternetConnectionOutCopyWith(_$_InternetConnectionOut value,
          $Res Function(_$_InternetConnectionOut) then) =
      __$$_InternetConnectionOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InternetConnectionOutCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_InternetConnectionOut>
    implements _$$_InternetConnectionOutCopyWith<$Res> {
  __$$_InternetConnectionOutCopyWithImpl(_$_InternetConnectionOut _value,
      $Res Function(_$_InternetConnectionOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InternetConnectionOut implements _InternetConnectionOut {
  const _$_InternetConnectionOut();

  @override
  String toString() {
    return 'Failures.internetConnectionOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InternetConnectionOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return internetConnectionOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return internetConnectionOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (internetConnectionOut != null) {
      return internetConnectionOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return internetConnectionOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return internetConnectionOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (internetConnectionOut != null) {
      return internetConnectionOut(this);
    }
    return orElse();
  }
}

abstract class _InternetConnectionOut implements Failures {
  const factory _InternetConnectionOut() = _$_InternetConnectionOut;
}

/// @nodoc
abstract class _$$_FailedToDeleteCopyWith<$Res> {
  factory _$$_FailedToDeleteCopyWith(
          _$_FailedToDelete value, $Res Function(_$_FailedToDelete) then) =
      __$$_FailedToDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedToDeleteCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_FailedToDelete>
    implements _$$_FailedToDeleteCopyWith<$Res> {
  __$$_FailedToDeleteCopyWithImpl(
      _$_FailedToDelete _value, $Res Function(_$_FailedToDelete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailedToDelete implements _FailedToDelete {
  const _$_FailedToDelete();

  @override
  String toString() {
    return 'Failures.failedToDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailedToDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return failedToDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return failedToDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToDelete != null) {
      return failedToDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return failedToDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return failedToDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToDelete != null) {
      return failedToDelete(this);
    }
    return orElse();
  }
}

abstract class _FailedToDelete implements Failures {
  const factory _FailedToDelete() = _$_FailedToDelete;
}

/// @nodoc
abstract class _$$_FailedToSignCopyWith<$Res> {
  factory _$$_FailedToSignCopyWith(
          _$_FailedToSign value, $Res Function(_$_FailedToSign) then) =
      __$$_FailedToSignCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedToSignCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_FailedToSign>
    implements _$$_FailedToSignCopyWith<$Res> {
  __$$_FailedToSignCopyWithImpl(
      _$_FailedToSign _value, $Res Function(_$_FailedToSign) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailedToSign implements _FailedToSign {
  const _$_FailedToSign();

  @override
  String toString() {
    return 'Failures.failedToSign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailedToSign);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return failedToSign();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return failedToSign?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToSign != null) {
      return failedToSign();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return failedToSign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return failedToSign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToSign != null) {
      return failedToSign(this);
    }
    return orElse();
  }
}

abstract class _FailedToSign implements Failures {
  const factory _FailedToSign() = _$_FailedToSign;
}

/// @nodoc
abstract class _$$_FailedToUpdateCopyWith<$Res> {
  factory _$$_FailedToUpdateCopyWith(
          _$_FailedToUpdate value, $Res Function(_$_FailedToUpdate) then) =
      __$$_FailedToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedToUpdateCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_FailedToUpdate>
    implements _$$_FailedToUpdateCopyWith<$Res> {
  __$$_FailedToUpdateCopyWithImpl(
      _$_FailedToUpdate _value, $Res Function(_$_FailedToUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailedToUpdate implements _FailedToUpdate {
  const _$_FailedToUpdate();

  @override
  String toString() {
    return 'Failures.failedToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailedToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return failedToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return failedToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToUpdate != null) {
      return failedToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return failedToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return failedToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToUpdate != null) {
      return failedToUpdate(this);
    }
    return orElse();
  }
}

abstract class _FailedToUpdate implements Failures {
  const factory _FailedToUpdate() = _$_FailedToUpdate;
}

/// @nodoc
abstract class _$$_FailedToSaveCopyWith<$Res> {
  factory _$$_FailedToSaveCopyWith(
          _$_FailedToSave value, $Res Function(_$_FailedToSave) then) =
      __$$_FailedToSaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedToSaveCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_FailedToSave>
    implements _$$_FailedToSaveCopyWith<$Res> {
  __$$_FailedToSaveCopyWithImpl(
      _$_FailedToSave _value, $Res Function(_$_FailedToSave) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailedToSave implements _FailedToSave {
  const _$_FailedToSave();

  @override
  String toString() {
    return 'Failures.failedToSave()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailedToSave);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return failedToSave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return failedToSave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToSave != null) {
      return failedToSave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return failedToSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return failedToSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToSave != null) {
      return failedToSave(this);
    }
    return orElse();
  }
}

abstract class _FailedToSave implements Failures {
  const factory _FailedToSave() = _$_FailedToSave;
}

/// @nodoc
abstract class _$$_FailedToGetCopyWith<$Res> {
  factory _$$_FailedToGetCopyWith(
          _$_FailedToGet value, $Res Function(_$_FailedToGet) then) =
      __$$_FailedToGetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedToGetCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$_FailedToGet>
    implements _$$_FailedToGetCopyWith<$Res> {
  __$$_FailedToGetCopyWithImpl(
      _$_FailedToGet _value, $Res Function(_$_FailedToGet) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailedToGet implements _FailedToGet {
  const _$_FailedToGet();

  @override
  String toString() {
    return 'Failures.failedToGet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailedToGet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) server,
    required TResult Function() timeout,
    required TResult Function() internetConnectionOut,
    required TResult Function() failedToDelete,
    required TResult Function() failedToSign,
    required TResult Function() failedToUpdate,
    required TResult Function() failedToSave,
    required TResult Function() failedToGet,
  }) {
    return failedToGet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? server,
    TResult? Function()? timeout,
    TResult? Function()? internetConnectionOut,
    TResult? Function()? failedToDelete,
    TResult? Function()? failedToSign,
    TResult? Function()? failedToUpdate,
    TResult? Function()? failedToSave,
    TResult? Function()? failedToGet,
  }) {
    return failedToGet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? server,
    TResult Function()? timeout,
    TResult Function()? internetConnectionOut,
    TResult Function()? failedToDelete,
    TResult Function()? failedToSign,
    TResult Function()? failedToUpdate,
    TResult Function()? failedToSave,
    TResult Function()? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToGet != null) {
      return failedToGet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_TimeOut value) timeout,
    required TResult Function(_InternetConnectionOut value)
        internetConnectionOut,
    required TResult Function(_FailedToDelete value) failedToDelete,
    required TResult Function(_FailedToSign value) failedToSign,
    required TResult Function(_FailedToUpdate value) failedToUpdate,
    required TResult Function(_FailedToSave value) failedToSave,
    required TResult Function(_FailedToGet value) failedToGet,
  }) {
    return failedToGet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_TimeOut value)? timeout,
    TResult? Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult? Function(_FailedToDelete value)? failedToDelete,
    TResult? Function(_FailedToSign value)? failedToSign,
    TResult? Function(_FailedToUpdate value)? failedToUpdate,
    TResult? Function(_FailedToSave value)? failedToSave,
    TResult? Function(_FailedToGet value)? failedToGet,
  }) {
    return failedToGet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_TimeOut value)? timeout,
    TResult Function(_InternetConnectionOut value)? internetConnectionOut,
    TResult Function(_FailedToDelete value)? failedToDelete,
    TResult Function(_FailedToSign value)? failedToSign,
    TResult Function(_FailedToUpdate value)? failedToUpdate,
    TResult Function(_FailedToSave value)? failedToSave,
    TResult Function(_FailedToGet value)? failedToGet,
    required TResult orElse(),
  }) {
    if (failedToGet != null) {
      return failedToGet(this);
    }
    return orElse();
  }
}

abstract class _FailedToGet implements Failures {
  const factory _FailedToGet() = _$_FailedToGet;
}
