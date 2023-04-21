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
mixin _$TodoEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uid, String id, String body, String title, bool isCompleted)
        editing,
    required TResult Function(String id, String uid) delete,
    required TResult Function(Todo todo) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult? Function(String id, String uid)? delete,
    TResult? Function(Todo todo)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult Function(String id, String uid)? delete,
    TResult Function(Todo todo)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Editing value) editing,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Editing value)? editing,
    TResult Function(_Delete value)? delete,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventsCopyWith<$Res> {
  factory $TodoEventsCopyWith(
          TodoEvents value, $Res Function(TodoEvents) then) =
      _$TodoEventsCopyWithImpl<$Res, TodoEvents>;
}

/// @nodoc
class _$TodoEventsCopyWithImpl<$Res, $Val extends TodoEvents>
    implements $TodoEventsCopyWith<$Res> {
  _$TodoEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EditingCopyWith<$Res> {
  factory _$$_EditingCopyWith(
          _$_Editing value, $Res Function(_$_Editing) then) =
      __$$_EditingCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String uid, String id, String body, String title, bool isCompleted});
}

/// @nodoc
class __$$_EditingCopyWithImpl<$Res>
    extends _$TodoEventsCopyWithImpl<$Res, _$_Editing>
    implements _$$_EditingCopyWith<$Res> {
  __$$_EditingCopyWithImpl(_$_Editing _value, $Res Function(_$_Editing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? id = null,
    Object? body = null,
    Object? title = null,
    Object? isCompleted = null,
  }) {
    return _then(_$_Editing(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Editing implements _Editing {
  const _$_Editing(
      {required this.uid,
      required this.id,
      required this.body,
      required this.title,
      required this.isCompleted});

  @override
  final String uid;
  @override
  final String id;
  @override
  final String body;
  @override
  final String title;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'TodoEvents.editing(uid: $uid, id: $id, body: $body, title: $title, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Editing &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, id, body, title, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditingCopyWith<_$_Editing> get copyWith =>
      __$$_EditingCopyWithImpl<_$_Editing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uid, String id, String body, String title, bool isCompleted)
        editing,
    required TResult Function(String id, String uid) delete,
    required TResult Function(Todo todo) save,
  }) {
    return editing(uid, id, body, title, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult? Function(String id, String uid)? delete,
    TResult? Function(Todo todo)? save,
  }) {
    return editing?.call(uid, id, body, title, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult Function(String id, String uid)? delete,
    TResult Function(Todo todo)? save,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(uid, id, body, title, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Editing value) editing,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Save value) save,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Save value)? save,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Editing value)? editing,
    TResult Function(_Delete value)? delete,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements TodoEvents {
  const factory _Editing(
      {required final String uid,
      required final String id,
      required final String body,
      required final String title,
      required final bool isCompleted}) = _$_Editing;

  String get uid;
  String get id;
  String get body;
  String get title;
  bool get isCompleted;
  @JsonKey(ignore: true)
  _$$_EditingCopyWith<_$_Editing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String uid});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$TodoEventsCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
  }) {
    return _then(_$_Delete(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete({required this.id, required this.uid});

  @override
  final String id;
  @override
  final String uid;

  @override
  String toString() {
    return 'TodoEvents.delete(id: $id, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uid, String id, String body, String title, bool isCompleted)
        editing,
    required TResult Function(String id, String uid) delete,
    required TResult Function(Todo todo) save,
  }) {
    return delete(id, uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult? Function(String id, String uid)? delete,
    TResult? Function(Todo todo)? save,
  }) {
    return delete?.call(id, uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult Function(String id, String uid)? delete,
    TResult Function(Todo todo)? save,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Editing value) editing,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Save value) save,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Save value)? save,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Editing value)? editing,
    TResult Function(_Delete value)? delete,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements TodoEvents {
  const factory _Delete({required final String id, required final String uid}) =
      _$_Delete;

  String get id;
  String get uid;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res>
    extends _$TodoEventsCopyWithImpl<$Res, _$_Save>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$_Save(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvents.save(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Save &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveCopyWith<_$_Save> get copyWith =>
      __$$_SaveCopyWithImpl<_$_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uid, String id, String body, String title, bool isCompleted)
        editing,
    required TResult Function(String id, String uid) delete,
    required TResult Function(Todo todo) save,
  }) {
    return save(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult? Function(String id, String uid)? delete,
    TResult? Function(Todo todo)? save,
  }) {
    return save?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uid, String id, String body, String title, bool isCompleted)?
        editing,
    TResult Function(String id, String uid)? delete,
    TResult Function(Todo todo)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Editing value) editing,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Editing value)? editing,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Editing value)? editing,
    TResult Function(_Delete value)? delete,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements TodoEvents {
  const factory _Save(final Todo todo) = _$_Save;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_SaveCopyWith<_$_Save> get copyWith => throw _privateConstructorUsedError;
}
