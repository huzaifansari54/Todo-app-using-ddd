import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/application/auth/events.dart';
import 'package:todo_app/application/auth/states.dart';
import 'package:todo_app/domain/auth/i_auth_faced.dart';
import 'package:todo_app/infrastructure/auth/auth_service.dart';
import 'package:todo_app/injectable/configure.dart';

final authBloc = StateNotifierProvider<AuthBloc, AuthSates>(
    (ref) => AuthBloc(iauthFaced: getIt<AuthService>()));

@injectable
class AuthBloc extends StateNotifier<AuthSates> {
  AuthBloc({required this.iauthFaced}) : super(const AuthSates.intial()) {
    iauthFaced.currentUser().fold((l) {
      state = const AuthSates.unautherised();
    }, (r) {
      state = AuthSates.autherised(uid: r);
    });
  }
  final IauthFaced iauthFaced;
  void eventToState(AuthEvents events) {
    events.when(signUp: (email, password) async {
      final failureOrSuccess =
          await iauthFaced.signUp(email: email, password: password);
      failureOrSuccess.fold((l) {
        state = AuthSates.failures(failures: l);
      }, (r) {
        state = AuthSates.autherised(uid: r);
      });
    }, signOut: () async {
      await iauthFaced.singOut();
      state = const AuthSates.unautherised();
    }, signIn: (String email, String password) async {
      final failureOrSuccess =
          await iauthFaced.signIn(email: email, password: password);
      failureOrSuccess.fold((l) {
        state = const AuthSates.unautherised();
      }, (r) {
        state = AuthSates.autherised(uid: r);
      });
    });
  }
}
