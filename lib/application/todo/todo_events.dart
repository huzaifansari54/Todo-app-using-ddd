import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/todo/todo_Enitity.dart';
part 'todo_events.freezed.dart';

@freezed
abstract class TodoEvents with _$TodoEvents {
  const factory TodoEvents.editing(
      {required String uid,
      required String id,
      required String body,
      required String title,
      required bool isCompleted}) = _Editing;
  const factory TodoEvents.delete({required String id, required String uid}) =
      _Delete;
  const factory TodoEvents.save(Todo todo) = _Save;
}
