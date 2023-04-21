import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_Enitity.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  const Todo._();
  const factory Todo(
      {required String id,
      required String titile,
      required String description,
      required bool isCompleted}) = _Todo;

  factory Todo.empty() {
    return const Todo(id: "", titile: "", isCompleted: false, description: "");
  }
}
