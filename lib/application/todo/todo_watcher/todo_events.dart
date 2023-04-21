import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/todo/todo_Enitity.dart';
part 'todo_events.freezed.dart';

@freezed
abstract class TodoWatcherEvents with _$TodoWatcherEvents {
  const factory TodoWatcherEvents.fetchTodos({required String uid}) =
      _fetchTodos;
}
