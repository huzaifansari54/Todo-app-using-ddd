import 'package:injectable/injectable.dart';
import 'package:todo_app/core/failures/server/server_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_app/domain/todo/todo_Enitity.dart';
import '../../domain/todo/i_todo_Repository.dart';
import '../API/api_service.dart';

@injectable
@Singleton(as: ITodoRepository)
class TodoRepository extends ITodoRepository {
  TodoRepository({required this.apiService});
  final ApiService apiService;
  @override
  Future<Either<Failures, Unit>> addTodo(Todo todo) async {
    return apiService.create(
        title: todo.titile,
        description: todo.description,
        uid: todo.id,
        isComplated: todo.isCompleted);
  }

  @override
  Future<Either<Failures, Unit>> deleteTodo(String id, String uid) {
    return apiService.delete(id: id, uid: uid);
  }

  @override
  Future<Either<Failures, Unit>> editTodo(String uid, Todo todo) {
    return apiService.update(
        id: todo.id,
        title: todo.titile,
        description: todo.description,
        uid: uid,
        isComplated: todo.isCompleted);
  }

  @override
  Future<Either<Failures, Unit>> markAsTodoComplete(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<Todo>>> getAllTodo(String uid) {
    return apiService.getAllTodo(uid);
  }
}
