import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/application/todo/todo_events.dart';
import 'package:todo_app/application/todo/todo_states.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_events.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_watcher_bloc.dart';
import 'package:todo_app/domain/todo/i_todo_Repository.dart';
import 'package:todo_app/domain/todo/todo_Enitity.dart';
import 'package:todo_app/infrastructure/todo/todo_repository.dart';
import 'package:todo_app/injectable/configure.dart';

final todoBloc = StateNotifierProvider<TodoBloc, TodoStates>(
    (ref) => TodoBloc(ref, iTodoRepository: getIt<TodoRepository>()));

@injectable
class TodoBloc extends StateNotifier<TodoStates> {
  TodoBloc(this.ref, {required this.iTodoRepository})
      : super(TodoStates.intial());

  final ITodoRepository iTodoRepository;
  final Ref ref;

  void eventToStateMap(TodoEvents events) {
    events.when(editing: (uid, id, body, title, isCompleted) async {
      final failureOrSuccess = await iTodoRepository.editTodo(
          uid,
          Todo(
              id: id,
              titile: title,
              description: body,
              isCompleted: isCompleted));
      failureOrSuccess.fold((failed) {
        state = state.copyWith(failure: some(failed));
      }, (r) {
        ref
            .refresh(todoWatcherBloc.notifier)
            .eventToStateMap(TodoWatcherEvents.fetchTodos(uid: uid));
        state = state.copyWith(isEdit: true, failure: none());
      });
    }, delete: (id, uid) async {
      final failureOrSuccess = await iTodoRepository.deleteTodo(id, uid);
      failureOrSuccess.fold((failure) {
        state = state.copyWith(failure: some(failure));
      }, (r) {
        ref
            .refresh(todoWatcherBloc.notifier)
            .eventToStateMap(TodoWatcherEvents.fetchTodos(uid: uid));
      });
    }, save: (todo) async {
      final failureOrSuccess = await iTodoRepository.addTodo(todo);
      failureOrSuccess.fold((failure) {
        state = state.copyWith(failure: some(failure));
      }, (r) {
        state = state.copyWith(isSave: true, failure: none());
      });
    });
  }
}
