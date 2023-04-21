import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/core/failures/server/server_failure.dart';

part 'states.freezed.dart';

@freezed
abstract class AuthSates with _$AuthSates {
  const factory AuthSates.intial() = _Intial;
  const factory AuthSates.unautherised() = _Anautherised;
  const factory AuthSates.failures({required Failures failures}) = _Failures;
  const factory AuthSates.autherised({required String uid}) = _Autherised;
}
