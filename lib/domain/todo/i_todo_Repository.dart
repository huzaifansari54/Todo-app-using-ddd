import 'package:dartz/dartz.dart';
import 'package:todo_app/core/failures/server/server_failure.dart';
import 'package:todo_app/core/failures/todo/todo_failure.dart';
import 'package:todo_app/domain/todo/todo_Enitity.dart';

abstract class ITodoRepository {
  Future<Either<Failures, Unit>> editTodo(String uid, Todo todo);
  Future<Either<Failures, Unit>> addTodo(Todo todo);
  Future<Either<Failures, Unit>> deleteTodo(String id, String uid);
  Future<Either<Failures, List<Todo>>> getAllTodo(String uid);
  Future<Either<Failures, Unit>> markAsTodoComplete(String id);
}
