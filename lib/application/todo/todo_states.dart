import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/core/failures/server/server_failure.dart';

import '../../core/failures/todo/todo_failure.dart';
import '../../domain/todo/todo_Enitity.dart';
part 'todo_states.freezed.dart';

@freezed
abstract class TodoStates with _$TodoStates {
  const TodoStates._();
  const factory TodoStates(
      {required Todo todo,
      required bool isEdit,
      required bool isSave,
      required Option<Failures> failure}) = _TodoStates;

  factory TodoStates.intial() {
    return TodoStates(
        todo: Todo.empty(), isEdit: false, isSave: false, failure: none());
  }
}
