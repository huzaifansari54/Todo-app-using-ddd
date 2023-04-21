// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoWatcherEvents {
  String get uid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchTodos value) fetchTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchTodos value)? fetchTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchTodos value)? fetchTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoWatcherEventsCopyWith<TodoWatcherEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoWatcherEventsCopyWith<$Res> {
  factory $TodoWatcherEventsCopyWith(
          TodoWatcherEvents value, $Res Function(TodoWatcherEvents) then) =
      _$TodoWatcherEventsCopyWithImpl<$Res, TodoWatcherEvents>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class _$TodoWatcherEventsCopyWithImpl<$Res, $Val extends TodoWatcherEvents>
    implements $TodoWatcherEventsCopyWith<$Res> {
  _$TodoWatcherEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_fetchTodosCopyWith<$Res>
    implements $TodoWatcherEventsCopyWith<$Res> {
  factory _$$_fetchTodosCopyWith(
          _$_fetchTodos value, $Res Function(_$_fetchTodos) then) =
      __$$_fetchTodosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$_fetchTodosCopyWithImpl<$Res>
    extends _$TodoWatcherEventsCopyWithImpl<$Res, _$_fetchTodos>
    implements _$$_fetchTodosCopyWith<$Res> {
  __$$_fetchTodosCopyWithImpl(
      _$_fetchTodos _value, $Res Function(_$_fetchTodos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$_fetchTodos(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_fetchTodos implements _fetchTodos {
  const _$_fetchTodos({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'TodoWatcherEvents.fetchTodos(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_fetchTodos &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_fetchTodosCopyWith<_$_fetchTodos> get copyWith =>
      __$$_fetchTodosCopyWithImpl<_$_fetchTodos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) fetchTodos,
  }) {
    return fetchTodos(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? fetchTodos,
  }) {
    return fetchTodos?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? fetchTodos,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchTodos value) fetchTodos,
  }) {
    return fetchTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchTodos value)? fetchTodos,
  }) {
    return fetchTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchTodos value)? fetchTodos,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos(this);
    }
    return orElse();
  }
}

abstract class _fetchTodos implements TodoWatcherEvents {
  const factory _fetchTodos({required final String uid}) = _$_fetchTodos;

  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$_fetchTodosCopyWith<_$_fetchTodos> get copyWith =>
      throw _privateConstructorUsedError;
}
