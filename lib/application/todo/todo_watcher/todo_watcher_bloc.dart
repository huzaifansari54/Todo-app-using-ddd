import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_events.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_state.dart';
import 'package:todo_app/domain/todo/i_todo_Repository.dart';
import 'package:todo_app/infrastructure/todo/todo_repository.dart';
import 'package:todo_app/injectable/configure.dart';

final todoWatcherBloc =
    StateNotifierProvider<TodoWatcherBloc, TodoWatcherState>(
        (ref) => TodoWatcherBloc(todoRepository: getIt<TodoRepository>()));

@injectable
class TodoWatcherBloc extends StateNotifier<TodoWatcherState> {
  TodoWatcherBloc({required this.todoRepository})
      : super(const TodoWatcherState.intial());

  final ITodoRepository todoRepository;

  void eventToStateMap(TodoWatcherEvents events) {
    events.when(fetchTodos: (uid) async {
      state = const TodoWatcherState.loading();
      final successOrFailure = await todoRepository.getAllTodo(uid);
      successOrFailure.fold((failure) {
        state = TodoWatcherState.failure(failures: failure);
      }, (todos) {
        state = TodoWatcherState.loaded(todos: todos);
      });
    });
  }
}
