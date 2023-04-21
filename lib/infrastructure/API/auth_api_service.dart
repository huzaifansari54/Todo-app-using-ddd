import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/failures/server/api_failure.dart';
import '../../core/failures/server/server_failure.dart';
import '../../core/utils/utils.dart';

@singleton
class AuthApiService {
  const AuthApiService({required this.dio, required this.db});
  final Dio dio;
  final SharedPreferences db;

  Future<Either<Failures, String>> signIn({
    required String email,
    required String password,
  }) async {
    final body = <String, dynamic>{
      "email": email,
      "password": password,
    };
    try {
      final response = await dio.post(endPoint('/signin'),
          data: body, options: Options(headers: headerBearerOption()));

      if (response.statusCode == 200) {
        await db.setString(userKey, response.data);

        return right(response.data);
      }
      return left(const Failures.failedToSign());
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

  Future<void> signOut() async {
    await db.clear();
  }

  Future<Either<Failures, String>> signUp({
    required String email,
    required String password,
  }) async {
    final body = <String, dynamic>{
      "email": email,
      "password": password,
    };
    try {
      final response = await dio.post(endPoint('/signup'),
          data: body, options: Options(headers: headerBearerOption()));

      if (response.statusCode == 201) {
        await db.setString(userKey, response.data);

        return right(response.data);
      } else {
        return left(const Failures.failedToSign());
      }
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

  Either<Failures, String> get currentUser {
    final uid = db.getString(userKey);
    if (uid == null) {
      return left(const Failures.failedToUpdate());
    } else {
      return right(uid);
    }
  }

  // Future<Either<Failures, Unit>> signOut() async {
  //   try {
  //     final response = await dio.get(endPoint('/signout'),
  //         options: Options(headers: headerBearerOption()));

  //     if (response.statusCode == 200) {
  //       return const Right(unit);
  //     }
  //     return left(Failures.apiFailures(
  //         serverError: ServerError.fromJson(response.data)));
  //   } on DioError catch (e) {
  //     switch (e.type) {
  //       case DioErrorType.connectionTimeout:
  //         return left(const Failures.timeout());
  //       case DioErrorType.receiveTimeout:
  //         return left(const Failures.timeout());
  //       case DioErrorType.connectionError:
  //         return left(const Failures.internetConnectionOut());
  //       default:
  //         break;
  //     }
  //     return left(const Failures.internetConnectionOut());
  //   }
  // }
}
