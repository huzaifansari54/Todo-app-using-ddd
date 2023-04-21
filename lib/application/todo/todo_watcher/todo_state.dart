import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/core/failures/server/server_failure.dart';
import '../../../domain/todo/todo_Enitity.dart';
part 'todo_state.freezed.dart';

@freezed
abstract class TodoWatcherState with _$TodoWatcherState {
  const factory TodoWatcherState.intial() = _Intial;
  const factory TodoWatcherState.loading() = _loading;
  const factory TodoWatcherState.loaded({required List<Todo> todos}) = _Loaded;
  const factory TodoWatcherState.failure({required Failures failures}) =
      _Failure;
}
