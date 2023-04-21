import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_app/domain/auth/i_auth_faced.dart';
import 'package:todo_app/infrastructure/API/auth_api_service.dart';
import '../../core/failures/server/server_failure.dart';

@injectable
@Singleton(as: IauthFaced)
class AuthService extends IauthFaced {
  AuthService({
    required this.authApiService,
  });
  final AuthApiService authApiService;

  @override
  Future<Either<Failures, String>> signIn(
      {required String email, required String password}) async {
    return authApiService.signIn(email: email, password: password);
  }

  @override
  Future<void> singOut() async {
    await authApiService.signOut();
  }

  @override
  Future<Either<Failures, String>> signUp(
      {required String email, required String password}) {
    return authApiService.signUp(email: email, password: password);
  }

  @override
  Either<Failures, String> currentUser() {
    return authApiService.currentUser;
  }
}
