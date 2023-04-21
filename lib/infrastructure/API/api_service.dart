import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/todo/dto/model/todo_model.dart';
import 'package:todo_app/domain/todo/todo_Enitity.dart';
import '../../core/failures/server/server_failure.dart';
import '../../core/utils/utils.dart';

@singleton
class ApiService {
  const ApiService({required this.dio});
  final Dio dio;

  Future<Either<Failures, Unit>> create(
      {required String title,
      required String description,
      required String uid,
      required bool isComplated}) async {
    final body = <String, dynamic>{
      "uid": uid,
      "title": title,
      "description": description,
      "isCompleted": isComplated
    };
    try {
      final response = await dio.post(endPoint('/create'),
          data: body, options: Options(headers: headerBearerOption()));

      if (response.statusCode == 201) {
        return const Right(unit);
      }
      return left(const Failures.failedToSave());
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectionTimeout:
          return left(const Failures.timeout());
        case DioErrorType.receiveTimeout:
          return left(const Failures.timeout());
        case DioErrorType.connectionError:
          return left(const Failures.internetConnectionOut());
        default:
          break;
      }
      return left(const Failures.internetConnectionOut());
    }
  }

  Future<Either<Failures, List<Todo>>> getAllTodo(String uid) async {
    try {
      final response = await dio.get(endPoint('/getalltodo?uid=$uid'),
          options: Options(headers: headerBearerOption()));

      if (response.statusCode == 201) {
        if (response.data.isEmpty) {
          return right(<Todo>[]);
        }
        final data = response.data! as List;
        final dto = data.map((e) => TodoModel.fromJson(e).toDomain()).toList();
        return right(dto);
      }
      return left(const Failures.failedToGet());
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectionTimeout:
          return left(const Failures.timeout());

        case DioErrorType.connectionError:
          return left(const Failures.internetConnectionOut());
        default:
          break;
      }
      return left(const Failures.internetConnectionOut());
    }
  }

  Future<Either<Failures, Unit>> update(
      {required String title,
      required String description,
      required String uid,
      required String id,
      required bool isComplated}) async {
    final body = <String, dynamic>{
      "uid": uid,
      "id": id,
      "title": title,
      "description": description,
      "isCompleted": isComplated
    };
    try {
      final response = await dio.put(endPoint('/update'),
          data: body, options: Options(headers: headerBearerOption()));

      if (response.statusCode == 201) {
        return const Right(unit);
      }
      return left(const Failures.failedToUpdate());
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectionTimeout:
          return left(const Failures.timeout());
        case DioErrorType.receiveTimeout:
          return left(const Failures.timeout());
        case DioErrorType.connectionError:
          return left(const Failures.internetConnectionOut());
        default:
          break;
      }
      return left(const Failures.internetConnectionOut());
    }
  }

  Future<Either<Failures, Unit>> delete({
    required String id,
    required String uid,
  }) async {
    final body = <String, dynamic>{"uid": uid, "id": id};
    try {
      final response = await dio.delete(endPoint('/delete'),
          data: body, options: Options(headers: headerBearerOption()));

      if (response.statusCode == 201) {
        return const Right(unit);
      }
      return left(const Failures.failedToDelete());
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectionTimeout:
          return left(const Failures.timeout());
        case DioErrorType.receiveTimeout:
          return left(const Failures.timeout());
        case DioErrorType.connectionError:
          return left(const Failures.internetConnectionOut());
        default:
          break;
      }
      return left(const Failures.internetConnectionOut());
    }
  }
}
