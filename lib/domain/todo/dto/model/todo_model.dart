import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/todo/todo_Enitity.dart';
part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
abstract class TodoModel with _$TodoModel {
  const TodoModel._();
  const factory TodoModel(
      {required String id,
      required String uid,
      required String title,
      required String description,
      required bool isCompleted}) = _TodoModel;
  Todo toDomain() {
    return Todo(
        id: id,
        titile: title,
        description: description,
        isCompleted: isCompleted);
  }

  factory TodoModel.fromJson(Map<String, Object?> json) =>
      _$TodoModelFromJson(json);
}
