import 'package:freezed_annotation/freezed_annotation.dart';
part 'events.freezed.dart';

@freezed
abstract class AuthEvents with _$AuthEvents {
  const factory AuthEvents.signUp(
      {required String email, required String password}) = _SignUp;
  const factory AuthEvents.signIn(
      {required String email, required String password}) = _SignIn;
  const factory AuthEvents.signOut() = _SignOut;
}
