import 'package:dartz/dartz.dart';
import 'package:todo_app/core/failures/server/server_failure.dart';

abstract class IauthFaced {
  Either<Failures, String> currentUser();
  Future<Either<Failures, String>> signIn(
      {required String email, required String password});
  Future<Either<Failures, String>> signUp(
      {required String email, required String password});
  Future<void> singOut();
}
