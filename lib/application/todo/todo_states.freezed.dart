// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoStates {
  Todo get todo => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;
  bool get isSave => throw _privateConstructorUsedError;
  Option<Failures> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStatesCopyWith<TodoStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStatesCopyWith<$Res> {
  factory $TodoStatesCopyWith(
          TodoStates value, $Res Function(TodoStates) then) =
      _$TodoStatesCopyWithImpl<$Res, TodoStates>;
  @useResult
  $Res call({Todo todo, bool isEdit, bool isSave, Option<Failures> failure});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoStatesCopyWithImpl<$Res, $Val extends TodoStates>
    implements $TodoStatesCopyWith<$Res> {
  _$TodoStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? isEdit = null,
    Object? isSave = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failures>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoStatesCopyWith<$Res>
    implements $TodoStatesCopyWith<$Res> {
  factory _$$_TodoStatesCopyWith(
          _$_TodoStates value, $Res Function(_$_TodoStates) then) =
      __$$_TodoStatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Todo todo, bool isEdit, bool isSave, Option<Failures> failure});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_TodoStatesCopyWithImpl<$Res>
    extends _$TodoStatesCopyWithImpl<$Res, _$_TodoStates>
    implements _$$_TodoStatesCopyWith<$Res> {
  __$$_TodoStatesCopyWithImpl(
      _$_TodoStates _value, $Res Function(_$_TodoStates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? isEdit = null,
    Object? isSave = null,
    Object? failure = null,
  }) {
    return _then(_$_TodoStates(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failures>,
    ));
  }
}

/// @nodoc

class _$_TodoStates extends _TodoStates {
  const _$_TodoStates(
      {required this.todo,
      required this.isEdit,
      required this.isSave,
      required this.failure})
      : super._();

  @override
  final Todo todo;
  @override
  final bool isEdit;
  @override
  final bool isSave;
  @override
  final Option<Failures> failure;

  @override
  String toString() {
    return 'TodoStates(todo: $todo, isEdit: $isEdit, isSave: $isSave, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoStates &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.isSave, isSave) || other.isSave == isSave) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo, isEdit, isSave, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStatesCopyWith<_$_TodoStates> get copyWith =>
      __$$_TodoStatesCopyWithImpl<_$_TodoStates>(this, _$identity);
}

abstract class _TodoStates extends TodoStates {
  const factory _TodoStates(
      {required final Todo todo,
      required final bool isEdit,
      required final bool isSave,
      required final Option<Failures> failure}) = _$_TodoStates;
  const _TodoStates._() : super._();

  @override
  Todo get todo;
  @override
  bool get isEdit;
  @override
  bool get isSave;
  @override
  Option<Failures> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStatesCopyWith<_$_TodoStates> get copyWith =>
      throw _privateConstructorUsedError;
}
